unit FormNTScouting;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, IBDatabase, ComCtrls, StdCtrls, ExtCtrls;

type
  TNTPlayer = class
  private
    FScoren: integer;
    FVleugelspel: integer;
    FSpelhervatten: integer;
    FPositiespel: integer;
    FPassen: integer;
    FKeepen: integer;
    FVerdedigen: integer;
    FPlayerID: integer;

  public
    property PlayerID:integer read FPlayerID write FPlayerID;
    property Keepen:integer read FKeepen write FKeepen;
    property Verdedigen:integer read FVerdedigen write FVerdedigen;
    property Passen: integer read FPassen write FPassen;
    property Vleugelspel: integer read FVleugelspel write FVleugelspel;
    property Scoren: integer read FScoren write FScoren;
    property Positiespel:integer read FPositiespel write Fpositiespel;
    property Spelhervatten:integer read FSpelhervatten write FSpelhervatten;
    constructor Create(aPlayerID:integer);
  end;

  TfrmNTScouting = class(TForm)
    DataSource1: TDataSource;
    ibdtstNTScouting: TIBDataSet;
    IBTransaction1: TIBTransaction;
    pgctrlNTScouting: TPageControl;
    tbNTPlayers: TTabSheet;
    TabSheet2: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1PLAYER_ID: TdxDBGridMaskColumn;
    dxDBGrid1PLAYER_NAME: TdxDBGridMaskColumn;
    dxDBGrid1LEEFTIJD: TdxDBGridMaskColumn;
    dxDBGrid1TEAM_ID: TdxDBGridMaskColumn;
    dxDBGrid1SPECIALITEIT: TdxDBGridMaskColumn;
    dxDBGrid1LAST_UPDATE: TdxDBGridDateColumn;
    dxDBGrid1GEBOORTE_DATUM: TdxDBGridDateColumn;
    dxDBGrid1CONDITIE: TdxDBGridMaskColumn;
    dxDBGrid1KEEPEN: TdxDBGridMaskColumn;
    dxDBGrid1POSITIESPEL: TdxDBGridMaskColumn;
    dxDBGrid1PASSEN: TdxDBGridMaskColumn;
    dxDBGrid1VLEUGELSPEL: TdxDBGridMaskColumn;
    dxDBGrid1VERDEDIGEN: TdxDBGridMaskColumn;
    dxDBGrid1SCOREN: TdxDBGridMaskColumn;
    dxDBGrid1SPELHERVATTEN: TdxDBGridMaskColumn;
    dxDBGrid1ERVARING: TdxDBGridMaskColumn;
    dxDBGrid1LEIDERSCHAP: TdxDBGridMaskColumn;
    dxDBGrid1TABSHEET: TdxDBGridMaskColumn;
    dxDBGrid1TAB_INDEX: TdxDBGridMaskColumn;
    dxDBGrid1LAST_SKILLUP: TdxDBGridDateColumn;
    dxDBGrid1GK_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid1CD_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid1OCD_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid1OWB_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid1IM_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid1WING_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid1FW_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid1DFW_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid1IS_U20: TdxDBGridCheckColumn;
    Panel1: TPanel;
    edBigScout: TRichEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    edResult: TMemo;
    dxDBGrid1EXTRA_TRAINING: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    FU20: boolean;
    function GetPlayerIDFromString(aLine: String): integer;
    function GetUpdateDateFromString(aPlayerID: integer;
      aLine: String): TNTPlayer;
    procedure SetU20(const Value: boolean);
    { Private declarations }
  public
    property U20: boolean read FU20 write SetU20;
    { Public declarations }
  end;

implementation

uses
  FormMain, uBibRuntime, uBibDb, ShellApi, esbDates;

{$R *.DFM}

procedure TfrmNTScouting.FormCreate(Sender: TObject);
begin
  IBTransaction1.DefaultDatabase := frmHTScanner.ibdbHTInfo;
  ibdtstNTScouting.Database := frmHTScanner.ibdbHTInfo;

  IBTransaction1.StartTransaction;

  pgctrlNTScouting.ActivePage := tbNTPlayers;
end;

procedure TfrmNTScouting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ibdtstNTScouting.State in [dsEdit,dsInsert]) then
  begin
    ibdtstNTScouting.Post;
  end;
  IBTransaction1.Commit;
end;

function TfrmNTScouting.GetUpdateDateFromString(aPlayerID: integer; aLine:String):TNTPlayer;
var
  sID, sTemp: String;
  vPos, bPos: Integer;
begin
  result := TNTPlayer.Create(aPlayerID);
  
  sID := IntToStr(aPlayerID);
  if Pos(#9, aLine) > 0 then
  begin
    // PlayerID
    vPos := Pos(#9, aLine);
    aLine := Copy(aLine,vPos+1,Length(aLine));
    //Naam
    vPos := Pos(#9, aLine);
    aLine := Trim(Copy(aLine,vPos+1,Length(aLine)));
    // Keepen
    vPos := Pos(#9, aLine);
    sTemp := Copy(aLine,1,vPos-1);
    //
    if (sTemp = 'H') or (sTemp = 'T') or (sTemp = 'Q') or
      (sTemp = 'P') or (sTemp = 'R') or (sTemp = 'U') then
    begin
      // Specialiteit!! overslaan...
      aLine := Trim(Copy(aLine,vPos+1,Length(aLine)));
      vPos := Pos(#9, aLine);
      sTemp := Copy(aLine,1,vPos-1);
    end;

    bPos := Pos('+', sTemp);
    if (bPos > 0) then
    begin
      sTemp := Trim(Copy(sTemp,1,bPos-1));
    end;
    result.Keepen := StrToInt(sTemp);
    aLine := Trim(Copy(aLine,vPos+1,Length(aLine)));
    // Verdedigen
    vPos := Pos(#9, aLine);
    sTemp := Copy(aLine,1,vPos-1);
    bPos := Pos('+', sTemp);
    if (bPos > 0) then
    begin
      sTemp := Trim(Copy(sTemp,1,bPos-1));
    end;
    result.Verdedigen := StrToInt(sTemp);
    aLine := Trim(Copy(aLine,vPos+1,Length(aLine)));
    // Positiespel
    vPos := Pos(#9, aLine);
    sTemp := Copy(aLine,1,vPos-1);
    bPos := Pos('+', sTemp);
    if (bPos > 0) then
    begin
      sTemp := Trim(Copy(sTemp,1,bPos-1));
    end;
    result.Positiespel := StrToInt(sTemp);
    aLine := Trim(Copy(aLine,vPos+1,Length(aLine)));
    // Vleugelspel
    vPos := Pos(#9, aLine);
    sTemp := Copy(aLine,1,vPos-1);
    bPos := Pos('+', sTemp);
    if (bPos > 0) then
    begin
      sTemp := Trim(Copy(sTemp,1,bPos-1));
    end;
    result.Vleugelspel := StrToInt(sTemp);
    aLine := Trim(Copy(aLine,vPos+1,Length(aLine)));
    // Passen
    vPos := Pos(#9, aLine);
    sTemp := Copy(aLine,1,vPos-1);
    bPos := Pos('+', sTemp);
    if (bPos > 0) then
    begin
      sTemp := Trim(Copy(sTemp,1,bPos-1));
    end;
    result.Passen := StrToInt(sTemp);
    aLine := Trim(Copy(aLine,vPos+1,Length(aLine)));
    // Scoren
    vPos := Pos(#9, aLine);
    sTemp := Copy(aLine,1,vPos-1);
    bPos := Pos('+', sTemp);
    if (bPos > 0) then
    begin
      sTemp := Trim(Copy(sTemp,1,bPos-1));
    end;
    result.Scoren := StrToInt(sTemp);
    aLine := Trim(Copy(aLine,vPos+1,Length(aLine)));
    // Spelhervatten
    vPos := Pos(#9, aLine);
    sTemp := Copy(aLine,1,vPos-1);
    bPos := Pos('+', sTemp);
    if (bPos > 0) then
    begin
      sTemp := Trim(Copy(sTemp,1,bPos-1));
    end;
    result.Spelhervatten := StrToInt(sTemp);
    aLine := Trim(Copy(aLine,vPos+1,Length(aLine)));
  end;
end;

function TfrmNTScouting.GetPlayerIDFromString(aLine:String):integer;
var
  i:integer;
  sID: String;
begin
  result := 0;
  sID := '';

  if Pos(#9,aLine) > 0 then
  begin
  
    for i:=1 to Length(aLine) do
    begin
      if aLine[i] in ['0'..'9'] then
      begin
        sID := sID + aLine[i];
      end
      else
      begin
        if (sID <> '') and (aLine[i] = #9) then
        begin
          break;
        end;
      end;
    end;

    if (sID <> '') then
    begin
      result := StrToInt(sID);
    end;
  end;
end;

procedure TfrmNTScouting.Button1Click(Sender: TObject);
var
  i:integer;
  vPlayerID, vID: Integer;
  vPlayer: TNTPlayer;
  vLastUpdate:TDateTime;
  vInDocs:boolean;
begin
  for i:=0 to edBigScout.Lines.Count - 1 do
  begin
    vPlayerID := GetPlayerIDFromString(edBigScout.Lines[i]);

    if (vPlayerID > 0) then
    begin
      vID := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,'NT_SCOUTING',['PLAYER_ID'],
        [vPlayerID],'ID',srtInteger);

      if (vID = 0) then
      begin
        // Komt niet in NT_SCOUTING VOOR
        with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo,'SELECT * FROM SCOUTING WHERE PLAYER_ID = :ID') do
        begin
          try
            ParamByName('ID').asInteger := vPlayerID;
            ExecQuery;

            if (FieldByName('IN_NT_DOCS').IsNull) then
            begin
              edResult.Lines.Add(Format('%d [onbekend]',[vPlayerID]));
            end;
          finally
            uBibDb.CommitTransaction(Transaction,TRUE);
            Free;
          end;
        end;
      end
      else
      begin
        vInDocs := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,'SCOUTING',['PLAYER_ID'],[vPlayerID],
            'IN_NT_DOCS',srtInteger) = -1;

        if (vInDocs) then
        begin
          vPlayer := GetUpdateDateFromString(vPlayerID,edBigScout.Lines[i]);
          try
            vLastUpdate := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,'NT_SCOUTING',['PLAYER_ID'],[vPlayerID],
              'LAST_UPDATE',srtDateTime);

            with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo,'SELECT * FROM NT_SCOUTING WHERE PLAYER_ID = :ID') do
            begin
              try
                ParamByName('ID').asInteger := vPlayerID;
                ExecQuery;

                if (FieldByName('KEEPEN').asInteger <> vPlayer.Keepen) or
                   (FieldByName('VERDEDIGEN').asInteger <> vPlayer.Verdedigen) or
                   (FieldByName('POSITIESPEL').asInteger <> vPlayer.Positiespel) or
                   (FieldByName('PASSEN').asInteger <> vPlayer.Passen) or
                   (FieldByName('VLEUGELSPEL').asInteger <> vPlayer.Vleugelspel) or
                   (FieldByName('SCOREN').asInteger <> vPlayer.Scoren) or
                   (FieldByName('SPELHERVATTEN').asInteger <> vPlayer.Spelhervatten) then
                begin
                  edResult.Lines.Add(Format('%d [update nodig]',[vPlayerID]));
                end
                else
                begin
                  if (vLastUpdate < AddMonths(Date,-1)) then
                  begin
                    edResult.Lines.Add(Format('%d [up-to-date]',[vPlayerID]));
                  end;
                end;
              finally
                uBibDb.CommitTransaction(Transaction,TRUE);
                Free;
              end;
            end;
          finally
            vPlayer.Free;
          end;
        end;
      end;
    end;
  end;

  edResult.Lines.SaveTofile(ExtractFilePath(Application.ExeName)+'NTPlayers.txt');

  ShellExecute(Handle,PChar('OPEN'),PChar(ExtractFilePath(Application.ExeName)+'NTPlayers.txt'),
    nil,nil,SW_SHOWNORMAL);
end;

{ TNTPlayer }

constructor TNTPlayer.Create(aPlayerID: integer);
begin
  PlayerID := aPlayerID;
end;

procedure TfrmNTScouting.SetU20(const Value: boolean);
begin
  FU20 := Value;
  ibdtstNTScouting.ParamByName('U20').asInteger := Ord(Value) * -1;
  ibdtstNTScouting.Open;
end;

end.
