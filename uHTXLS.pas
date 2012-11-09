unit uHTXLS;

interface

uses
  Classes;

type
  TApplicationType=(aptOffice, aptOpenOffice);
  TExcelArray = array of array of String;
  TExcelRangeEnd = (NoValue, xlToLeft, xlToRight, xlUp, xlDown);

  TExcelFunctions = class(TObject)
  private
    { Private declarations }
    FExcelApp, FStarDesktop, FDocument, FActiveWorkSheet: Variant;
    FExcelCreated: Boolean;
    FAppType: TApplicationType;

    function GetCurrentWorksheet: Variant;
    function GetCurrentWorkbook: Variant;
    procedure ConnectToOffice;
    procedure ConnectToOpenOffice;
    function IsOpenOfficeConnected: Boolean;
    function isNullEmpty(thisVariant: Variant): Boolean;
    function CreateUnoService(serviceName: String): Variant;
    procedure DisconnectOpenOffice(closeOpenOffice : Boolean = False);
    function FileName2URL(FileName: string): string;
    function MakePropertyValue(PropName: string; PropValue: variant): variant;
    function GetSheetCount: integer;
    function GetRowCount(aColumn: String): integer;
  protected
    { Protected declarations }
  public
    constructor Create(aApplicationType: TApplicationType);
    destructor Destroy;override;

    function GetCellValueAsString(aCell:String):String;
    function GetCellValueAsNumber(aCell: String): Variant;
    function Open(aFilename: String): Variant;
    function CloseActiveWorkbook(aSaveChanges: Boolean): Boolean;
    function CloseExcel: Boolean;

    function GetCellRange(aCell1: String; aWorksheet: String = ''): Variant;
    function SetWorksheetActive(aName: String): Variant; overload;
    function SetWorksheetActive(aIndex: Integer): Variant; overload;
    procedure VervangTekst(aZoekTekst, aVervangTekst: String; aSheetIndex: Integer); overload;
    procedure VervangTekst(aZoekTekst, aVervangTekst: String;
      aExcelArray: TExcelArray; aReplaceAll: Boolean = True; aNumberFormat: String = '';
       aTextBoxenOokVervangen: Boolean = True; aSheetIndex: Integer = 1); overload;
    function GetExcelDocAsArray(aSheetIndex: Integer): TExcelArray;
    procedure VoegAfbeeldingToe(aSheetIndex: Integer; aBestandsNaam, aZoekTekst: String);
    function ZoekCel(aSheetIndex: Integer; aZoekTekst: String): Variant; overload;
    procedure VervangTekstInTextBox(aSheetIndex: Integer; aZoekTekst, aVervangTekst: String);
    function CopyRow(aTekst: String; aExcelArray: TExcelArray): Variant; overload;
    function CopyRow(aBronRow, aDestRow: Variant; aAppend: Boolean = TRUE): Variant; overload;
    function FindRow(aTekst: String; aExcelArray: TExcelArray): Variant; overload;
    function FindRow(aTekst: String; aSheetIndex: Integer = 1): Variant; overload;
    function FindColumn(aTekst: String; aExcelArray: TExcelArray): Variant;
    function CopyColumn(aBronColumn, aDestColumn: Variant; aAppend: Boolean = TRUE): Variant;
    function ZoekCel(aZoekTekst: String; aExcelArray: TExcelArray): Variant; overload;
    function GetActiveRow: Variant;
    function GetActiveColumn: Variant;
    property RowCount[aRange: String]: integer read GetRowCount;
    property SheetCount: integer read GetSheetCount;
    function URL2FileName(aURL: string): string;

    property ExcelApp: Variant read FExcelApp;
    property ExcelCreated: Boolean read FExcelCreated;
    property CurrentWorkbook: Variant read GetCurrentWorkbook;
    property CurrentWorksheet: Variant read GetCurrentWorksheet;
    property AppType: TApplicationType read FAppType write FAppType;
  end;

  function ReadCSVLine(aLine: String; aFieldSeperator: String = ','
   ; aCheckStartQuote: Boolean = TRUE): TStringList;

procedure Test;

implementation

uses
  ComObj, sysutils, windows, Dialogs, Variants, Forms, Controls, OOoConstants,
    OOoMessages;

function ReadCSVLine(aLine: String; aFieldSeperator: String = ','
  ; aCheckStartQuote: Boolean = TRUE): TStringList;
var
  i: Integer;
  aField: String;
  StartQuote: Boolean;
begin
  try
    Result := TStringList.Create;
    aField := '';
    StartQuote := False;

    with Result do
    begin
      Clear;

      for i := 1 to length(aLine) do
      begin
        if (aLine[i] = aFieldSeperator) and (not StartQuote) then
        begin
          Add(aField);
          aField := '';
        end
        else
        begin
          if (aCheckStartQuote) and
             (aLine[i] = '"') then
          begin
            StartQuote := not StartQuote;
          end
          else
          begin
            aField := aField + aLine[i];
          end;
        end;
      end;
      Add(aField);
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: Test
  Author:    Fokko
  Date:      08-jul-2004
  Arguments: None
  Result:    None

  Kijk hierin voor een voorbeeld
-----------------------------------------------------------------------------}
procedure Test;
begin
  with TExcelFunctions.Create(aptOffice) do
  begin
    try
      Open('d:\test.xls');
      // Zet op sheet 2 twee getallen
      SetWorksheetActive('Sheet2');

      GetCellRange('B6').Value := 10;
      GetCellRange('B7').Value := GetCellRange('B6').Value * 3;


      // Haal het getal uit sheet 2 en maak formule voor sheet 1
      GetCellRange('C2', 'Sheet1').Formula := '=Sheet2!B7 * 12';

      // Sluit file
      CloseActiveWorkbook(True);
    finally
      Free;
    end;
  end
end;

procedure TExcelFunctions.ConnectToOffice;
begin
  FExcelApp := CreateOleObject('Excel.Application');
  FExcelCreated := True;
end;

function  TExcelFunctions.isNullEmpty(thisVariant: Variant): Boolean;
begin
  Result:= VarIsEmpty(thisVariant) or VarIsNull(thisVariant) or VarIsClear(thisVariant);
end;

function  TExcelFunctions.IsOpenOfficeConnected: Boolean;
var
  DeskTopbis: Variant;
begin
  IsOpenOfficeConnected:= False;
  if isNullEmpty(FExcelApp) then exit;
  { vérifier si OpenOffice peut renvoyer un service quelconque
    check if OpenOffice can return any service                   }
  try
    DeskTopbis:= FExcelApp.createInstance('com.sun.star.frame.Desktop');
    IsOpenOfficeConnected:= True;
  except
    { pour que ConnectOpenOffice puisse reconnecter
      allow ConnectOpenOffice to connect again           }
    FExcelApp:= Null;
  end;
end;

function TExcelFunctions.CreateUnoService(serviceName: String): Variant;
begin
  Result:= FExcelApp.createInstance(serviceName);
  if isNullEmpty(Result) then
    Raise Exception.Create(Format(OOo_serviceKO, [serviceName]));
end;


procedure TExcelFunctions.ConnectToOpenOffice;
begin
  if (not IsOpenOfficeConnected) then
  begin
    Screen.Cursor:= crHourglass;
    Application.ProcessMessages;
    try
      FExcelApp:= CreateOleObject('com.sun.star.ServiceManager');
      if isNullEmpty(FExcelApp) then
        Raise Exception.Create(OOo_connectKO);
      FStarDesktop:=       CreateUnoService('com.sun.star.frame.Desktop');
      //disp:=              CreateUnoService('com.sun.star.frame.DispatchHelper');
      //OOoIntrospection:=  CreateUnoService('com.sun.star.beans.Introspection');
      //OOoReflection:=     CreateUnoService('com.sun.star.reflection.CoreReflection');
      FExcelCreated := TRUE;
    finally
      Screen.Cursor:= crDefault;
    end;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TExcelFunctions.Create
  Author:    Fokko
  Date:      07-jul-2004
  Arguments: None
  Result:    None
-----------------------------------------------------------------------------}
constructor TExcelFunctions.Create(aApplicationType: TApplicationType);
begin
  try
    FAppType := aApplicationType;
    case FAppType of
      aptOffice:
      begin
        ConnectToOffice;
        if FExcelCreated then
        begin
          FExcelApp.Visible := False;
        end;
        FExcelApp.Screenupdating := False;
      end;
      aptOpenOffice: ConnectToOpenOffice;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TExcelFunctions.Destroy
  Author:    Fokko
  Date:      07-jul-2004
  Arguments: None
  Result:    None
-----------------------------------------------------------------------------}
destructor TExcelFunctions.Destroy;
begin
  try
    if (FAppType = aptOffice) then
    begin
      if not VarIsEmpty(ExcelApp) then
        FExcelApp.Screenupdating := True;
    end;
    inherited;
  except
    raise;
  end;
end;

function TExcelFunctions.MakePropertyValue(PropName: string;
  PropValue: variant): variant;
var
  vStruct: variant;
begin
  vStruct := FStarDesktop.Bridge_GetStruct('com.sun.star.beans.PropertyValue');
  vStruct.Name := PropName;
  vStruct.Value := PropValue;
  Result := vStruct;
end;

{-----------------------------------------------------------------------------
  Procedure: TExcelFunctions.Open
  Author:    Fokko
  Date:      07-jul-2004
  Arguments: aFilename: String
  Result:    Boolean
-----------------------------------------------------------------------------}

function TExcelFunctions.Open(aFilename: String): Variant;
var
  vArgs: Variant;
begin
  try
    if VarIsEmpty(ExcelApp) then
      Result := EmptyParam
    else
    begin
      if (FAppType = aptOffice) then
      begin
        Result := ExcelApp.Workbooks.Open(aFilename);
      end
      else
      begin
        vArgs := VarArrayCreate([0, 0], varVariant);
        vArgs[0] := MakePropertyValue('Hidden', True);
        FDocument := FStarDesktop.LoadComponentFromURL(FileName2URL(aFileName),'_blank',0,vArgs);
        result := FDocument;
      end;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TExcelFunctions.GetCurrentWorksheet
  Author:    Fokko
  Date:      07-jul-2004
  Arguments: None
  Result:    Variant
-----------------------------------------------------------------------------}
function TExcelFunctions.GetCurrentWorksheet: Variant;
begin
  try
    if VarIsEmpty(ExcelApp) then
      Result := EmptyParam
    else
      Result := FActiveWorkSheet;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TExcelFunctions.GetCurrentWorkbook
  Author:    Fokko
  Date:      07-jul-2004
  Arguments: None
  Result:    Variant
-----------------------------------------------------------------------------}
function TExcelFunctions.GetCurrentWorkbook: Variant;
begin
  try
    if VarIsEmpty(ExcelApp) then
      Result := EmptyParam
    else
    begin
      if (FAppType = aptOffice) then
      begin
        Result := ExcelApp.ActiveWorkbook;
      end
      else
      begin
        Result := FDocument;
      end;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TExcelFunctions.CloseActiveWorkbook
  Author:    Fokko
  Date:      07-jul-2004
  Arguments: None
  Result:    Boolean
-----------------------------------------------------------------------------}
function TExcelFunctions.CloseActiveWorkbook(aSaveChanges: Boolean): Boolean;
begin
  try
    if VarIsEmpty(ExcelApp) then
      Result := False
    else
    begin
      try
        if (FAppType = aptOffice) then
        begin
          if not VarIsEmpty(ExcelApp.ActiveWorkbook) then
            ExcelApp.ActiveWorkbook.Close(aSaveChanges);
        end
        else
        begin
          if not isNullEmpty(FDocument) then
          begin
            try
              if (aSaveChanges) then
              begin
                FDocument.Store;
              end;
            finally
              FDocument.Dispose;
            end;
          end;
        end;
      except
      end;
      Result := True;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TExcelFunctions.GetCellRange
  Author:    Fokko
  Date:      07-jul-2004
  Arguments: aCell1: String
  Result:    Variant

  Haal een cell waarde op
-----------------------------------------------------------------------------}
function TExcelFunctions.GetCellRange(aCell1: String; aWorksheet: String = ''): Variant;
begin
  try
    if VarIsEmpty(ExcelApp) then
      Result := EmptyParam
    else
    begin
      if (FAppType = aptOffice) then
      begin
        if isNullEmpty(FActiveWorkSheet) then
        begin
          FActiveWorkSheet :=  ExcelApp.ActiveSheet;
        end;
        Result := FActiveWorkSheet.Range[aCell1];
      end
      else
      begin
        if not (isNullEmpty(FActiveWorkSheet)) then
        begin
          result := FActiveWorkSheet.GetCellRangeByName(aCell1);
        end;
      end;
    end;
  except
    raise;
  end;
end;

function TExcelFunctions.GetCellValueAsNumber(aCell: String): Variant;
{_tableCellContentTypeEMPTY  = 0;
_tableCellContentTypeVALUE  = 1;
_tableCellContentTypeTEXT  = 2;
_tableCellContentTypeFORMULA  = 3;}
var
  vValue: String;
begin
  if not(isNullEmpty(ExcelApp)) then
  begin
    if (FAppType = aptOffice) then
    begin
      result := GetCellRange(aCell);
    end
    else
    begin
      if (FActiveWorkSheet.getCellRangeByName(aCell).GetType = _tableCellContentTypeTEXT) then
      begin
        vValue := GetCellValueAsString(aCell);

        if FormatSettings.DecimalSeparator = '.' then
        begin
          vValue := StringReplace(vValue,',',FormatSettings.DecimalSeparator,[rfReplaceAll]);
        end
        else
        begin
          vValue := StringReplace(vValue,'.',FormatSettings.DecimalSeparator,[rfReplaceAll]);
        end;

        result := StrToFloat(vValue);
      end
      else if FActiveWorkSheet.getCellRangeByName(aCell).GetType = _tableCellContentTypeVALUE then
      begin
        result := FActiveWorkSheet.getCellRangeByName(aCell).GetValue;
      end
      else
        ShowMessage('Unkown celltype: '+aCell);
     // ShowMessage(FActiveWorkSheet.getCellRangeByName(aCell).String);
    end;
  end;
end;

function TExcelFunctions.GetCellValueAsString(aCell: String): String;
begin
  if not(isNullEmpty(ExcelApp)) then
  begin
    if (FAppType = aptOffice) then
    begin
      result := VarToStr(GetCellRange(aCell));
    end
    else
    begin
      result := FActiveWorkSheet.getCellRangeByName(aCell).String;
    end;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TExcelFunctions.SetWorksheetActive
  Author:    Fokko
  Date:      07-jul-2004
  Arguments: aName: String
  Result:    Boolean
-----------------------------------------------------------------------------}
function TExcelFunctions.SetWorksheetActive(aName: String): Variant;
begin
  try
    if VarIsEmpty(ExcelApp) then
      Result := EmptyParam
    else
    begin
      ExcelApp.ActiveWorkbook.Worksheets[aName].Activate;
      Result := ExcelApp.ActiveWorkbook.ActiveSheet;
    end;
  except
    raise;
  end;
end;

procedure TExcelFunctions.DisconnectOpenOffice(closeOpenOffice : Boolean = False);
begin
  if closeOpenOffice  then
    FStarDesktop.terminate;
  FExcelApp:= unassigned;
  FStarDesktop:= unassigned;
  {disp:= unassigned;
  OOoIntrospection:= unassigned;
  OOoReflection:= unassigned; }
end;

{-----------------------------------------------------------------------------
  Procedure: CloseExcel
  Author:    Gert
  Date:      08-aug-2005
  Arguments: None
  Result:    Boolean
-----------------------------------------------------------------------------}
function TExcelFunctions.CloseExcel: Boolean;
begin
  try
    if VarIsEmpty(ExcelApp) then
      Result := False
    else
    begin
      case FAppType of
        aptOffice: ExcelApp.Quit;
        aptOpenOffice: DisconnectOpenOffice;
      end;
      FExcelApp := EmptyParam;
      Result := True;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Jasper Ruitenbeek
  Datum:     5-2-2010
  Doel:

-----------------------------------------------------------------------------}
procedure TExcelFunctions.VervangTekst(aZoekTekst, aVervangTekst: String; aSheetIndex: Integer);
const
  xlCellTypeLastCell = 11;
var
  vSheet: Variant;
  vLast_column, vLast_row, vKolom, vRij: Integer;
begin
  try
    vSheet := SetWorksheetActive(aSheetIndex);
    vSheet.Activate;
    vSheet.Cells.SpecialCells(xlCellTypeLastCell,EmptyParam).Activate;

    vLast_column := ExcelApp.ActiveCell.Column;
    vLast_row := ExcelApp.ActiveCell.Row;

    for vRij := 1 to vLast_row do
    begin
      for vKolom := 1 to vLast_column do
      begin
        if (Pos(aZoekTekst, ExcelApp.Cells.Item[vRij, vKolom].Value) > 0) then
        begin
          ExcelApp.Cells[vRij, vKolom].Value := aVervangTekst;
          Exit;
        end;
      end;
    end;

  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Jasper Ruitenbeek
  Datum:     8-2-2010
  Doel:      Sheet van exceldocument uitlezen en alle waarden in array teruggeven.

-----------------------------------------------------------------------------}
function TExcelFunctions.GetExcelDocAsArray(aSheetIndex: Integer): TExcelArray;
const
  xlCellTypeLastCell = 11;
var
  vLast_column, vLast_row: Integer;
  vSheet: Variant;
  i,j : Integer;
begin
  try
    vSheet := SetWorksheetActive(aSheetIndex);
    vSheet.Activate;
    vSheet.Cells.SpecialCells(xlCellTypeLastCell,EmptyParam).Activate;

    vLast_column := ExcelApp.ActiveCell.Column;
    vLast_row := ExcelApp.ActiveCell.Row;

    SetLength(Result, vLast_Row);
    for i := 0 to vLast_row -1 do
    begin
      SetLength(Result[i], vLast_column)
    end;

    for i := 0 to vLast_Row-1 do
    begin
      for j := 0 to vLast_column-1 do
      begin
        try
          Result[i,j] := ExcelApp.Cells[i+1, j+1].Value
        except
          //er staat een foutieve waarde in cel.
        end;
      end;
    end;

  except
    raise;
  end;
end;

function TExcelFunctions.GetRowCount(aColumn: String): integer;
var
  vUsedRange, vCell: Variant;
  i, vCount : integer;
  vInhoud: String;
  vFilled: boolean;
begin            
  result := 0;
  if not (isNullEmpty(FExcelApp)) then
  begin
    if (FAppType = aptOffice) then
    begin
      vUsedRange := GetCellRange(Format('%s1',[aColumn])).Select;
      result := vUsedRange.Rows.Count;
    end                                  
    else                                 
    begin
      if not(isNullEmpty(FActiveWorkSheet)) then
      begin
        vCount := FActiveWorkSheet.Rows.Count;
        vFilled := TRUE;
        i := 1;

        while (vFilled) and (i <= vCount) do
        begin
          vCell := FActiveWorkSheet.getCellRangeByName(Format('%s%d',[aColumn, i]));
          vInhoud := vCell.String;
          vFilled := (vInhoud <> '');
          if (vFilled) then
          begin
            inc(result);
          end;
          inc(i);
        end;
      end;
    end;
  end;
end;

function TExcelFunctions.GetSheetCount: integer;
begin
  if (AppType = aptOffice) then
  begin
    result := ExcelApp.ActiveWorkbook.Worksheets.Count;
  end
  else
  begin
    result := FDocument.Sheets.getCount;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Jasper Ruitenbeek
  Datum:     8-2-2010
  Doel:

-----------------------------------------------------------------------------}
procedure TExcelFunctions.VervangTekst(aZoekTekst, aVervangTekst: String;
      aExcelArray: TExcelArray; aReplaceAll: Boolean = True; aNumberFormat: String = '';
      aTextBoxenOokVervangen: Boolean = True; aSheetIndex: Integer = 1);
var
  i,j: Integer;
  blnFound: Boolean;
begin
  try
    blnFound := False;

    for i := 0 to High(aExcelArray) do
    begin
      for j := 0 to High(aExcelArray[i]) do
      begin
        if (Pos(aZoekTekst, aExcelArray[i][j]) > 0) and ( (not blnFound) or (aReplaceAll) ) then
        begin
          if (aNumberFormat <> '') then
          begin
            ExcelApp.Cells[i+1, j+1].NumberFormat := aNumberFormat;
          end;
          ExcelApp.Cells[i+1,j+1].Value := aVervangTekst;
          aExcelArray[i][j] := aVervangTekst;
          blnFound := True;
        end;
      end;
    end;

    if (aTextBoxenOokVervangen) then
    begin
      VervangTekstInTextBox(aSheetIndex, aZoekTekst, aVervangTekst);
    end;

  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Jasper Ruitenbeek
  Datum:     12-2-2010
  Doel:

-----------------------------------------------------------------------------}
procedure TExcelFunctions.VoegAfbeeldingToe(aSheetIndex: Integer; aBestandsNaam, aZoekTekst: String);
const
  xlMove = 2;
var
  vAfbeelding, vSheet, vCel: Variant;
begin
  try
    vSheet := SetWorksheetActive(aSheetIndex);
    vCel := ZoekCel(aSheetIndex, aZoekTekst);

    if (not VarIsEmpty(vCel)) then
    begin
      vAfbeelding := vSheet.Pictures.Insert(aBestandsNaam);
      vAfbeelding.ShapeRange.Left := vCel.Left;
      vAfbeelding.ShapeRange.Top := vCel.Top;
      vAfbeelding.Placement := xlMove;
    end;

  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Jasper Ruitenbeek
  Datum:     12-2-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.ZoekCel(aSheetIndex: Integer; aZoekTekst: String): Variant;
const
  xlCellTypeLastCell = 11;
var
  vSheet: Variant;
  vCelWaarde: String;
  vLast_column, vLast_row: Integer;
  i, j: Integer;
begin
  try
    Result := Unassigned;

    vSheet := SetWorksheetActive(aSheetIndex);
    vSheet.Activate;
    vSheet.Cells.SpecialCells(xlCellTypeLastCell,EmptyParam).Activate;

    vLast_column := ExcelApp.ActiveCell.Column;
    vLast_row := ExcelApp.ActiveCell.Row;

    for i := 0 to vLast_Row-1 do
    begin
      for j := 0 to vLast_column-1 do
      begin
        vCelWaarde := ExcelApp.Cells[i+1, j+1].Value;
        if (vCelWaarde = aZoekTekst) then
        begin
          Result := ExcelApp.Cells[i+1, j+1];
          Exit;
        end;
      end;
    end;

  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Jasper Ruitenbeek
  Datum:     12-2-2010
  Doel:      Worksheet active zetten m.b.v index

-----------------------------------------------------------------------------}
function TExcelFunctions.SetWorksheetActive(aIndex: Integer): Variant;
var
  vCount: Integer;
begin
  try
    Result := EmptyParam;
    FActiveWorkSheet := unAssigned;
    
    if not VarIsEmpty(ExcelApp) then
    begin
      if (FAppType = aptOffice) then
      begin
        vCount := ExcelApp.ActiveWorkbook.Worksheets.Count;
        if (aIndex <= vCount) then
        begin
          FActiveWorkSheet := ExcelApp.ActiveWorkbook.Worksheets[aIndex];
        end
      end
      else
      begin
        if not isNullEmpty(FDocument) then
        begin
          vCount := FDocument.Sheets.getCount;
          if (aIndex <= vCount) then
          begin
            FActiveWorkSheet := FDocument.Sheets.getByIndex(aIndex - 1); 
          end;
        end;
      end;
      result := FActiveWorkSheet;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Jasper Ruitenbeek
  Datum:     22-4-2010
  Doel:

-----------------------------------------------------------------------------}
procedure TExcelFunctions.VervangTekstInTextBox(aSheetIndex: Integer; aZoekTekst, aVervangTekst: String);
var
  vSheet, vTextBox: Variant;
  i: Integer;
begin
  try
    vSheet := SetWorksheetActive(aSheetIndex);

    if (vSheet.TextBoxes.Count > 0) then
    begin
      for i := 1 to vSheet.TextBoxes.Count do
      begin
        vTextBox := vSheet.TextBoxes(i);
        if (Pos(aZoekTekst, vTextBox.Text) > 0) then
        begin
          vTextBox.Text := aVervangTekst;
        end;
      end;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Gert
  Datum:     3-8-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.CopyRow(aTekst: String; aExcelArray: TExcelArray): Variant;
var
  vRow: Variant;
begin
  try
    Result := UnAssigned;
    vRow := FindRow(aTekst, aExcelArray);

    if (not VarIsEmpty(vRow)) then
    begin
      Result := CopyRow(vRow, vRow);
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Gert
  Datum:     3-8-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.CopyRow(aBronRow, aDestRow: Variant; aAppend: Boolean = TRUE): Variant;
var
  vRow: Variant;
begin
  try
    Result := UnAssigned;

    if (not VarIsEmpty(aBronRow)) and (not VarIsEmpty(aDestRow)) then
    begin
      aBronRow.Copy();
      if (aAppend) then
      begin
        vRow := FExcelApp.Cells[aDestRow.Row + 1, aDestRow.Column].EntireRow;
        vRow.Insert(xlDown);
        Result := FExcelApp.Cells[vRow.Row - 1, vRow.Column].EntireRow;
      end else
      begin
        aDestRow.Insert(xlDown);
        Result := FExcelApp.Cells[aDestRow.Row - 1, aDestRow.Column].EntireRow;
      end;
      FExcelApp.CutCopyMode := False;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Gert
  Datum:     3-8-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.FindRow(aTekst: String; aExcelArray: TExcelArray): Variant;
var
  vCel: Variant;
begin
  try
    Result := Unassigned;
    vCel := ZoekCel(aTekst, aExcelArray);

    if (not VarIsEmpty(vCel)) then
    begin
      Result := vCel.EntireRow;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Gert
  Datum:     11-8-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.FindRow(aTekst: String; aSheetIndex: Integer = 1): Variant;
var
  vCel: Variant;
begin
  try
    Result := Unassigned;
    vCel := ZoekCel(aSheetIndex, aTekst);

    if (not VarIsEmpty(vCel)) then
    begin
      Result := vCel.EntireRow;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Gert
  Datum:     3-8-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.GetActiveRow: Variant;
begin
  try
    Result := ExcelApp.ActiveCell.EntireRow;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Gert
  Datum:     3-8-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.ZoekCel(aZoekTekst: String; aExcelArray: TExcelArray): Variant;
var
  i, j: Integer;
begin
  try
    Result := Unassigned;

    for i := 0 to High(aExcelArray) do
    begin
      for j := 0 to High(aExcelArray[i]) do
      begin
        if (Pos(aZoekTekst, aExcelArray[i][j]) > 0) then
        begin
          Result := ExcelApp.Cells[i+1,j+1];
          Exit;
        end;
      end;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Gert
  Datum:     3-8-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.CopyColumn(aBronColumn, aDestColumn: Variant; aAppend: Boolean): Variant;
var
  vColumn: Variant;
begin
  try
    Result := UnAssigned;

    if (not VarIsEmpty(aBronColumn)) and (not VarIsEmpty(aDestColumn)) then
    begin
      aBronColumn.Copy();
      if (aAppend) then
      begin
        vColumn := FExcelApp.Cells[aDestColumn.Row, aDestColumn.Column + 1].EntireColumn;
        vColumn.Insert(xlToRight);
        Result := FExcelApp.Cells[vColumn.Row, vColumn.Column - 1].EntireColumn;
      end else
      begin
        aDestColumn.Insert(xlToRight);
        Result := FExcelApp.Cells[aDestColumn.Row, aDestColumn.Column - 1].EntireColumn;
      end;
      FExcelApp.CutCopyMode := False;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Gert
  Datum:     3-8-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.FindColumn(aTekst: String; aExcelArray: TExcelArray): Variant;
var
  vCel: Variant;
begin
  try
    Result := Unassigned;
    vCel := ZoekCel(aTekst, aExcelArray);

    if (not VarIsEmpty(vCel)) then
    begin
      Result := vCel.EntireColumn;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Auteur:    Gert
  Datum:     3-8-2010
  Doel:

-----------------------------------------------------------------------------}
function TExcelFunctions.GetActiveColumn: Variant;
begin
  try
    Result := ExcelApp.ActiveCell.EntireColumn;
  except
    raise;
  end;
end;

function TExcelFunctions.URL2FileName(aURL: string): string;
begin
  result := aURL;

   if LowerCase(copy(aURL,1,8))='file:///' then
    result:= Copy(aURL,9,Length(aURL));

  result:= StringReplace(result, '/', '\', [rfReplaceAll, rfIgnoreCase]);
end;

function TExcelFunctions.FileName2URL(FileName: string): string;
begin
  result:= '';
  if LowerCase(copy(FileName,1,8))<>'file:///' then
    result:= 'file:///';
  result:= result + StringReplace(FileName, '\', '/', [rfReplaceAll, rfIgnoreCase]);
end;


end.
