unit uHTMisc;

interface

uses
  EmbeddedWb;

function GetServiceIsRunning(aService:String):boolean;
function StartWinService(aService:string):boolean;
function VervangenDoorWaarde(aBron, aWat, aMet: String): String;
function AnyStrToInt(aStr : String): Integer;
function AnyStrToFloat(aStr : String): Double;
function GetOsMajorVersion: integer;
function GetBrowserObject(aBrowser:TEmbeddedWB;aName:String):Variant;
function GetLastPos(aSubset, aText: String): integer;
function EndsWith(aString, aValue: String): Boolean;
function AnyStrToDateTime(aStr: String; aFormat: String = ''): TDateTime;
function SendEmail(aSMTPServer,aEmailAdres,aOnderwerp,aTekst: String;const aAttachments:array of String;
  aVanAdres: String = ''; aVanNaam: String = '';aPort:integer=25;
  aUserName:String='';aPassWord:String='';
  aHTML: boolean = FALSE):Boolean;
function MessageBoxWarning(aQuestion, aCaption: String; aYesNo: Boolean = False; aOkCancel: Boolean = FALSE): Boolean;
procedure MessageBoxInfo(aInfo, aCaption: String);
function MessageBoxQuestion(aQuestion, aCaption: String): Boolean;
procedure MessageBoxError(aInfo, aCaption: String);
function StringIsInteger(s: string): Boolean;
function SetValue(aBrowser:TEmbeddedWB;const aBrowserObjectNames : array of String; aValue:String):boolean;


implementation

uses
  Windows, WinSVC, SysUtils, esbDates, Classes, Forms, Variants, Mail2000;

function GetOsMajorVersion :integer;
var
  vVersionInfo:TOSVersionInfo;
begin
  try
    result := 0; // initialisatie, generatie 0 komt niet voor
    vVersionInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
    if GetVersionEx(vVersionInfo) then
    begin
      result := vVersionInfo.dwMajorVersion;
    end;
  except
    raise;
  end;
end;

function StringIsInteger(s: string): Boolean;
var
  i: integer;
begin
  try
    if (length(s) > 0) and (length(s) <= 10) then
    begin
      Result := True;

      for i := 1 to Length(s) do
        if not CharInSet(s[i],['0'..'9']) then Result := False;
    end else
      Result := False;
  except
    raise;
  end;
end;

function ReformatMessage(aMelding: String): String;
var
  vBuffer: string;
  vEersteLetterVolgendeRegel: string;
  vIndex: integer;
  vHeleTekstOvergezet: boolean;
begin
  try
    vBuffer := '';
    vHeleTekstOvergezet := False;
    repeat
      vIndex := Pos (#13#10,aMelding);
      if (vIndex > 0) and (Length(aMelding) >= vIndex+2) then       // +2, een Linefeed is twee characters
      begin
        vEersteLetterVolgendeRegel := Copy(aMelding,vIndex+2,1);
        if (vEersteLetterVolgendeRegel >= 'a') and
           (vEersteLetterVolgendeRegel <= 'z') then
        begin
          vBuffer := vBuffer + Copy(aMelding,1,vIndex-1)+' ';       // hier verandert de LineFeed in een spatie
        end
        else
        begin
          vBuffer := vBuffer + Copy(aMelding,1,vIndex+1);           // LineFeed is twee chars, dus +1 meenemen
        end;
        Delete (aMelding,1,vIndex+1);
      end
      else
      begin
        vBuffer := vBuffer + aMelding;
        vHeleTekstOvergezet := True;
      end
    until vHeleTekstOvergezet;

    Result := vBuffer;
  except
    raise;
  end;
end;

procedure MessageBoxInfo(aInfo, aCaption: String);
begin
  try
     // bij de introductie van Window Vista is de formatering van Messageboxes gewijzigd.
     if (GetOSMajorVersion >= 6) then
     begin
       aInfo := ReformatMessage(aInfo);
     end;

    Application.MessageBox(PChar(aInfo),PChar(aCaption),MB_ICONINFORMATION + MB_OK);
  except
    raise;
  end;
end;

function MessageBoxQuestion(aQuestion, aCaption: String): Boolean;
begin
  try
    // bij de introductie van Window Vista is de formatering van Messageboxes gewijzigd.
    if (GetOSMajorVersion >= 6) then
    begin
      aQuestion := ReformatMessage(aQuestion);
    end;

    result := Application.MessageBox(PChar(aQuestion),PChar(aCaption),
      MB_ICONQUESTION + MB_YESNO) = ID_YES;
  except
    raise;
  end;
end;

function MessageBoxWarning(aQuestion, aCaption: String; aYesNo: Boolean = False; aOkCancel: Boolean = FALSE): Boolean;
var
  aFlags: Integer;
  vResult: Integer;
begin
  try
    if (Application.MainForm = nil) and
       (Screen.ActiveForm = nil) and
       (Pos('START.EXE', UpperCase(Application.ExeName)) = -1) then
    begin
      Result := FALSE;
    end
    else
    begin
      if aYesNo then
      begin
        aFlags := MB_YESNO;
      end
      else if aOkCancel then
      begin
        aFlags := MB_OKCANCEL;
      end
      else
      begin
        aFlags := MB_OK;
      end;
      // bij de introductie van Window Vista is de formatering van Messageboxes gewijzigd.
      if (GetOSMajorVersion >= 6) then
      begin
        aQuestion := ReformatMessage(aQuestion);
      end;

      vResult := Application.MessageBox(PChar(aQuestion),PChar(aCaption), MB_ICONWARNING + aFlags);

      if (aYesNo) then
      begin
        result := vResult = ID_YES;
      end
      else
      begin
        result := vResult = ID_CANCEL;
      end;
    end;
  except
    raise;
  end;
end;

function GetServiceIsRunning(aService:String):boolean;
var
  aSCM,aServiceHandle:SC_Handle;
  aStatus:TServiceStatus;
begin
  result := FALSE;
  aSCM := OpenSCManager(nil,nil,SC_MANAGER_CONNECT);
  if aSCM > 0 then
  begin
    try
      aServiceHandle := OpenService(aSCM, PChar(aService),SERVICE_QUERY_STATUS);
      if aServiceHandle > 0 then
      begin
        try
          if (QueryServiceStatus(aServiceHandle, aStatus)) then
            result := aStatus.dwCurrentState = SERVICE_RUNNING;
        finally
          CloseServiceHandle(aServiceHandle);
        end;
      end;
    finally
      CloseServiceHandle(aSCM);
    end;
  end;
end;

function VervangenDoorWaarde(aBron, aWat, aMet: String): String;
begin
  try
    Result := StringReplace(aBron, aWat, aMet, [rfReplaceAll, rfIgnoreCase]);
  except
    raise;
  end;
end;

function StartWinService(aService:string):boolean;
var
  aSCM,aServiceHandle:SC_HANDLE;
  aStatus    : TServiceStatus;
  psTemp : PChar;
  aCheckPoint : DWord;
begin
  result := FALSE;
  if (not GetServiceIsRunning(aService)) then
  begin
    aSCM := OpenSCManager(nil, nil,SC_MANAGER_CONNECT);
    if (aSCM > 0) then
    begin
      aServiceHandle := OpenService(aSCM, PChar(aService),SERVICE_START or SERVICE_QUERY_STATUS);
      if (aServiceHandle > 0) then
      begin
        psTemp := Nil;
        if (StartService( aServiceHandle, 0,psTemp))then
        begin
          // bekijk de status van de service
          if (QueryServiceStatus(aServiceHandle, aStatus))then
          begin
            while(SERVICE_RUNNING <> aStatus.dwCurrentState)do
            begin
              // zolang de service nog niet gestart is, blijven we in deze
              // procedure
              aCheckPoint := aStatus.dwCheckPoint;
              Sleep(aStatus.dwWaitHint);
              if not QueryServiceStatus(aServiceHandle, aStatus) then
              begin
                break;
              end;
              if aStatus.dwCheckPoint < aCheckPoint then
              begin
                break;
              end;
            end;
          end;
        end;
        CloseServiceHandle(aServiceHandle);
      end;
      CloseServiceHandle(aSCM);
    end;
    Result := SERVICE_RUNNING = aStatus.dwCurrentState;
  end;
end;

function StringToDate(aString: String; aFormat: String = ''): TDate;
var
  aOldShortDateFormat: String;
begin
  try
    aOldShortDateFormat := '';
    aString := StringReplace(aString, '.', FormatSettings.DateSeparator, [rfReplaceAll]);

    if aFormat <> '' then
    begin
      aOldShortDateFormat := FormatSettings.ShortDateFormat;
      FormatSettings.ShortDateFormat := aFormat;
    end;

    try
      Result := ESBDates.Str2Date(aString);
      //Result := StrToDate(aString);
    finally
      if aOldShortDateFormat <> '' then
        FormatSettings.ShortDateFormat := aOldShortDateFormat;
    end;
  except
    raise;
  end;
end;

function StringToTime(aString: String): TTime;
var
  aSpace: Integer;
begin
  try
    aSpace := Pos(' ', aString);

    while aSpace > 0 do
    begin
      aString := Copy(aString, 1, aSpace - 1);
      aSpace := Pos(' ', aString);
    end;

    Result := ESBDates.Str2Time(aString);
  except
    raise;
  end;
end;

function EndPos(aSubstring, aString: String): Integer;
var
  aLastIndex: Integer;
begin
  try
    Result := Pos(aSubString, aString);

    if (Result > 0) then
    begin
      aString := Copy(aString, Result + 1, Length(aString) - Result);
      aLastIndex := Pos(aSubString, aString);

      while (aLastIndex > 0) do
      begin
        Result := Result + aLastIndex;
        aString := Copy(aString, aLastIndex + 1, Length(aString) - aLastIndex);
        aLastIndex := Pos(aSubString, aString);
      end;
    end;
  except
    raise;
  end;
end;

function EndsWith(aString, aValue: String): Boolean;
begin
  try
    if (aString <> '') then
    begin
      Result := Length(aString) - EndPos(aValue, aString) = Length(aValue) - 1;
    end
    else
    begin
      result := FALSE;
    end;
  except
    raise;
  end;
end;


function AnyStrToInt(aStr : String): Integer;
var
  i: integer;
  ResultString: String;
  aNegatief: Boolean;
begin
  try
    ResultString := '0';
    aNegatief := False;

    i := 1;
    while (i <= Length(aStr)) and (not CharInSet(aStr[i],['0'..'9'])) and (aStr[i] <> '-') do
      inc(i);

    for i := i to Length(aStr) do
    begin
      if CharInSet(aStr[i],['0'..'9']) then
      begin
        ResultString := ResultString + aStr[i];
      end else if (aStr[i] = '-') then
      begin
        if Length(ResultString) = 1 then
          aNegatief := True;
      end else if (aStr[i] <> ' ') and (aStr[i] <> '.') then
        Break;
    end;

    if aNegatief then
      Result := StrToInt(ResultString) * -1
    else
      Result := StrToInt(ResultString);
  except
    raise;
  end;
end;

function AnyStrToFloatStr(aStr : String): String;
var
  i, AantalKommas: integer;
  aNegatief: Boolean;
begin
  try
    Result := '';
    aNegatief := False;

    if aStr <> '' then
    begin
      AantalKommas := 0;
      for i :=  1 to Length(aStr) do
      begin
        if aStr[i] = '.' then
        begin
          if AantalKommas = 1 then break;
          aStr[i] := ',';
        end;
        if CharInSet(aStr[i],[',','0'..'9']) then
        begin
          if aStr[i] = ',' then
          begin
            if AantalKommas = 1 then break;
            Inc(AantalKommas);
          end;
          Result := Result + aStr[i];
        end;
        if aStr[i] = '-' then
          aNegatief := not aNegatief;
      end;
    end;

    if Result = '' then Result := '0';
    if aNegatief then
      Result := '-' + Result;
  except
    raise;
  end;
end;

function AnyStrToFloat(aStr : String): Double;
begin
  try
    try
      Result := StrToFloat(AnyStrToFloatStr(aStr));
    except
      try
        Result := StrToFloat(aStr);
      except
        try
          aStr := AnyStrToFloatStr(aStr);

          if (Pos('.', aStr) = 0) and (Pos(',', aStr) > 0) then
          begin
            aStr := StringReplace(aStr, ',', '.', [rfReplaceAll, rfIgnoreCase]);
          end;

          Result := StrToFloat(aStr);
        except
          raise;
        end;
      end;
    end;
  except
    raise;
  end;
end;

procedure SetBrowserObjectValue(aBrowserObject:Variant;aValue:String);
begin
  if not(VarIsClear(aBrowserObject)) then
  begin
    aBrowserObject.Value := aValue;
  end;
end;

function GetBrowserObject(aBrowser:TEmbeddedWB;aName:String):Variant;
begin
  try
    if not VarIsClear(aBrowser.OleObject.document) then
    begin
      result := aBrowser.OleObject.Document.All.NamedItem(aName);
    end
    else
    begin
      result := Unassigned;
    end;
  except
    result := Unassigned;
  end;
end;

function SetValue(aBrowser:TEmbeddedWB;const aBrowserObjectNames : array of String; aValue:String):boolean;
var
  vItem:Variant;
  vCount: integer;
  i: integer;
begin
  vItem := Unassigned;
  i := 0;
  while VarIsClear(vItem) and (i <= High(aBrowserObjectNames)) do
  begin
    vItem := GetBrowserObject(aBrowser, aBrowserObjectNames[i]);
    inc(i);
  end;

  if VarIsClear(vItem) then
  begin
    result := FALSE;
    //ShowMessage('aBrowserObjectName en aBrowserObjectName2 bestaan niet! '+aBrowserObjectName+ ' | ' + aBrowserObjectName2);
  end
  else
  begin
    result := TRUE;
    SetBrowserObjectValue(vItem,aValue);
  end;

  for vCount := 0 to 9 do
  begin
    Application.ProcessMessages;
    Sleep(10);
  end;
end;

procedure MessageBoxError(aInfo, aCaption: String);
begin
  try
    // bij de introductie van Window Vista is de formatering van Messageboxes gewijzigd.
    if (GetOSMajorVersion >= 6) then
    begin
      aInfo := ReformatMessage(aInfo);
    end;

    Application.MessageBox(PChar(aInfo),PChar(aCaption),MB_ICONERROR + MB_OK);
  except
    raise;
  end;
end;

function StringToStringlist(aString: String; const aSeparators: array of Char): TStringlist;

  {-----------------------------------------------------------------------------
    Procedure: IsSeparator
    Author:    Fokko
    Date:      05-jan-2005
    Arguments: aChar: Char
    Result:    Boolean
  -----------------------------------------------------------------------------}
  function IsSeparator(aChar: Char): Boolean;
  var
    i: Integer;
  begin
    try
      Result := False;
      for i := Low(aSeparators) to High(aSeparators) do
      begin
        Result := Result or (aSeparators[i] = aChar);
      end;
    except
      raise;
    end;
  end;

var
  aCount: Integer;
  aVarResult: String;
begin
  try
    Result := TStringlist.Create;
    if Assigned(Result) then
    begin
      aCount := 1;
      aVarResult := '';

      while (aCount <= Length(aString)) do
      begin
        if IsSeparator(aString[aCount]) then
        begin
          Result.Add(Trim(aVarResult));
          aVarResult := '';
        end
        else
          aVarResult := aVarResult + aString[aCount];

        Inc(aCount);
      end;
      if aVarResult <> '' then
        Result.Add(Trim(aVarResult));
    end;
  except
    raise;
  end;
end;

function GetLastPos(aSubset, aText: String): integer;
var
  vTemp: String;
  vPos: integer;
begin
  vTemp := aText;
  vPos := Pos(aSubset, vTemp);
  Result := vPos;

  while (vPos > 0) do
  begin
    vTemp := Copy(vTemp, vPos + Length(aSubset), Length(vTemp));

    vPos := Pos(aSubset, vTemp);
    if (vPos > 0) then
    begin
      Result := Result + Length(aSubset) + vPos - 1;
    end;
  end;
end;

function SendEmail(aSMTPServer,aEmailAdres,aOnderwerp,aTekst: String;const aAttachments:array of String;
  aVanAdres: String = ''; aVanNaam: String = '';aPort:integer=25;
  aUserName:String='';aPassWord:String='';
  aHTML: boolean = FALSE):Boolean;
var
  i:integer;
  vEmailAdressen: TStringList;
  vPopServer: TPop2000;
  vString: String;
begin
  try
    vPopServer := nil;
    if (aTekst = '') then aTekst := ' ';

    result := FALSE;
    with TSMTP2000.Create(nil) do
    begin
      try
        Host := aSMTPServer;
        Port := aPort;
        MailMessage := TMailMessage2000.Create(nil);
        try
          MailMessage.SetFrom(aVanNaam,aVanAdres);
          MailMessage.SetReplyTo(aVanNaam,aVanAdres);

          vEmailAdressen := StringToStringlist(aEmailAdres, [';', ',']);
          try
            for i := 0 to vEmailAdressen.Count - 1 do
            begin
              MailMessage.ToList.Add('', vEmailAdressen[i]);
            end;
          finally
            FreeAndNil(vEmailAdressen);
          end;

          MailMessage.Subject := aOnderwerp;
          if (aHTML) then
          begin
            MailMessage.SetTextHTML(aTekst);
          end
          else
          begin
            MailMessage.SetTextPlain(aTekst);
          end;
          MailMessage.Date := Now;
          for i:=low(aAttachments) to High(aAttachments) do
          begin
            try
              vString := aAttachments[i];
              if vString <> '' then

                MailMessage.AttachFile(vString);
            except
            end;
          end;
          if MailMessage.NeedRebuild then
          begin
            MailMessage.RebuildBody;
          end;

          if (aUserName <> '') and (aPassWord <> '') then
          begin
            vPopServer := TPOP2000.Create(nil);
            with vPopServer do
            begin
              Host := aSMTPServer;
              UserName := aUserName;
              Password := aPassWord;
              if Connect then
              begin
              end
              else
              begin
              end;
            end;
          end;
          try
            if Connect then
            begin
              Result := SendMessage;
            end
            else
            begin
            end;
          finally
            if (vPopServer <> nil) then
            begin
              vPopServer.Quit;
              vPopServer.Free;
            end;
          end;
        finally
          MailMessage.Free;
        end;
      finally
        Quit;
        Free;
      end;
    end;
  except
    on E: Exception do
    begin
      raise;
    end;
  end;
end;


function AnyStrToDateTime(aStr: String; aFormat: String = ''): TDateTime;
var
  vIsDatum: boolean;
  i,
  vSpatiePos: integer;
  vDatumStr,
  vTijdStr: String;
begin
  try
    result := 0;
    if (aStr <> '') then
    begin
      vIsDatum := True;

      for i := 1 to Length(aStr) do
      begin
        if not CharInSet(aStr[i],['0'..'9', '-', ':', ' ', '/']) then
        begin
          vIsDatum := False;
        end;
      end;

      if (vIsDatum) then
      begin
        try
          vSpatiePos := Pos(' ', aStr);
          if (vSpatiePos > 0) then
          begin
            vDatumStr := Copy(aStr, 0, vSpatiePos - 1);
            vTijdStr  := Copy(aStr, vSpatiePos + 1, Length(aStr));

            result := StringToDate(vDatumStr, aFormat) +
                      StringToTime(vTijdStr);
          end
          else
          begin
            Result := StrToDateTime(aStr);
          end;

        except
        end;
      end;
    end;
  except
    raise;
  end;
end;



end.
