unit uHattrick;

interface

uses
  EmbeddedWB, ContNrs, Controls, IBDatabase, classes, IBSQL, IEDownload;

const
  MATCH_LINK='Club/Matches/Match.aspx?matchID=';
  YOUTHLEAGUE_LINK='World/Series/YouthSeries.aspx?YouthLeagueId=';
  YOUTHPLAYER_LINK='Club/Players/YouthPlayer.aspx?YouthPlayerID=';
  LEAGUE_LINK='World/Series/Default.aspx?LeagueLevelUnitID=';
  TEAM_LINK='Club/?TeamID=';
  YOUTHTEAM_LINK='Club/Youth/Default.aspx?YouthTeamID=';
  YOUTHMATCH_LINEUP_LINK = 'Club/Matches/MatchLineup.aspx?MatchID=%d&YouthTeamID=%d&isYouth=True';

type
  THoofdskills = (hsOnbekend,hsPositiespel,hsVerdedigen,hsKeepen,hsScoren,hsVleugelspel,hsPassen);
  TBatchlingArray = array of integer;
  TIntegerArray = array of integer;

  TDownloadThread = class (TThread)
  private
    FURL: String;
    FStartTime: TDateTime;
    procedure OnDownloadComplete(Sender: TCustomIEDownload; aFileNameAndPath,
      aFileName,vaFolderName, aExtension: WideString; const ActiveConnections: Integer);
  protected
    FDownload: TIEDownload;
    procedure Execute; Override;
  public
    property StartTime: TDateTime read FStartTime write FStartTime;
    property URL:String read FURL;
    destructor Destroy; override;
    constructor Create(aUrl: String);
  end;

  TDatabasePlayer = class
  private
    FLoadPlayerInfo, FLoadKarakterInfo, FLoadSeniorInfo: boolean;
    FDatabase: TIBDatabase;
    FIsSenior: boolean;
    FID: integer;
    FKarakterID: integer;
    FKeeper: boolean;
    FPromoted: boolean;
    FNaam: String;
    FLastPlayerUpdate: TDateTime;
    FSpecialiteit: String;
    FPotKeepen: double;
    FPotPositiespel: double;
    FPotPassen: double;
    FPotVleugelspel: double;
    FPotVerdedigen: double;
    FPotScoren: double;
    FPotSpelhervatten: double;
    FAllround: integer;
    FLastKarakterUpdate: TDateTime;
    FKarakterHTYC: boolean;
    FCurKeepen: double;
    FCurPositiespel: double;
    FCurPassen: double;
    FCurVleugelspel: double;
    FCurVerdedigen: double;
    FCurScoren: double;
    FCurSpelhervatten: double;
    FTeamID: integer;
    FGeboorteDatum: TDate;
    FIsU20: boolean;
    FNationaliteit: String;
    FTestNTAsPossibleU20: boolean;
    procedure LoadSeniorInfo;
    procedure LoadPlayerInfo;
    procedure LoadKarakterInfo;
    function GetPotentie: String;
    function ValueToStr(aValue: double): String;
    function GetTalented: boolean;
    function GetPossibleTalented: boolean;
  public
    procedure Reload;
    property TestNTAsPossibleU20: boolean read FTestNTAsPossibleU20 write FTestNTAsPossibleU20;
    property Nationaliteit: String read FNationaliteit write FNationaliteit;
    property IsU20: boolean read FIsU20 write FIsU20;
    property GeboorteDatum: TDate read FGeboorteDatum write FGeboorteDatum;
    property PotKeepen: double read FPotKeepen write FPotKeepen;
    property CurKeepen: double read FCurKeepen write FCurKeepen;
    property PotPositiespel: double read FPotPositiespel write FPotPositiespel;
    property CurPositiespel: double read FCurPositiespel write FCurPositiespel;
    property PotPassen: double read FPotPassen write FPotPassen;
    property CurPassen: double read FCurPassen write FCurPassen;
    property PotVleugelspel: double read FPotVleugelspel write FPotVleugelspel;
    property CurVleugelspel: double read FCurVleugelspel write FCurVleugelspel;
    property PotVerdedigen: double read FPotVerdedigen write FPotVerdedigen;
    property CurVerdedigen: double read FCurVerdedigen write FCurVerdedigen;
    property PotScoren: double read FPotScoren write FPotScoren;
    property CurScoren: double read FCurScoren write FCurScoren;
    property PotSpelhervatten: double read FPotSpelhervatten write FPotSpelhervatten;
    property CurSpelhervatten: double read FCurSpelhervatten write FCurSpelhervatten;
    property Specialiteit: String read FSpecialiteit write FSpecialiteit;
    property LastPlayerUpdate: TDateTime read FLastPlayerUpdate write FLastPlayerUpdate;
    property LastKarakterUpdate: TDateTime read FLastKarakterUpdate write FLastKarakterUpdate;
    property Naam: String read FNaam write FNaam;
    property Potentie:String read GetPotentie;
    property Promoted: boolean read FPromoted write FPromoted;
    property KarakterHTYC: boolean read FKarakterHTYC write FKarakterHTYC;
    property PossibleTalented: boolean read GetPossibleTalented;
    property Allround: integer read FAllround write FAllround;
    property TeamID: integer read FTeamID write FTeamID;
    property Keeper: boolean read FKeeper write FKeeper;
    property Talented: boolean read GetTalented;
    property KarakterID: integer read FKarakterID write FKarakterID;
    property IsSenior: boolean read FIsSenior write FIsSenior;
    property ID: integer read FID write FID;
    property Database: TIBDatabase read FDatabase write FDatabase;
    constructor Create(aDatabase: TIBDatabase; aPlayerID: integer;  aLoadPlayerInfo, aLoadKarakterInfo, aLoadSeniorInfo: boolean);
  end;

  TTSISet = class
  private
    FScoren: double;
    FConditie: integer;
    FVleugelspel: double;
    FVorm: integer;
    FSpelhervatting: integer;
    FKeepen: double;
    FPassen: double;
    FPositieSPel: double;
    FVerdedigen: double;
    FTSI: integer;
    FPlayerTSI: integer;
    FMainSkill: integer;
    FLastChange: double;
    FPlayerID: integer;
    FLeeftijd: String;
    FPlayerName: String;
    FSubSkill: double;
    FVraagPrijs: double;
    FHoogsteBod: double;
    FDeadLine: TDateTime;
    FHerkomst: String;
    FSpecialiteit: String;
    FErvaring: String;
    FKarakter: String;
    FAgressiviteit: String;
    FEerlijkheid: String;
    FLeiderschap: String;
    FU20: boolean;
    FNT: boolean;
    FLoon: integer;
    FWekenBlessure: integer;
    FFace: String;
    FNose: String;
    FEyes: String;
    FHair: String;
    FMouth: String;
    FGoatee: String;
    FKarakterID: Integer;
    FBody: String;
    FGeboorteDatum: TDate;
    FYouthPlayerID: integer;
    FIsKeeper: Boolean;
    FSpecOntdekt: boolean;
    FTransferListed: boolean;
    FRestyled: boolean;
    FTransferDatum: TDate;
    FManagerBody: String;
    FIsTrainer: boolean;
    FParsed: boolean;
    function GetMainSkill: integer;
    procedure ChangeMainSkill(aChange:double);
  public
    procedure MainSkillUp(aLevel:double);
    procedure MainSkillDown;    
    function GetSkill(aIndex: integer): integer;
    function OverigeSkillsMax(aSkill1, aSkill2, aSkill3, aMaxSkillValue: integer): Boolean;
  public
    property IsTrainer: boolean read FIsTrainer write FIsTrainer;
    property Vorm:integer read FVorm write FVorm;
    property Conditie:integer read FConditie write FConditie;
    property PositieSpel:double read FPositieSPel write FPositiespel;
    property Vleugelspel:double read FVleugelspel write FVleugelspel;
    property Scoren:double read FScoren write FScoren;
    property Keepen:double read FKeepen write FKeepen;
    property Passen:double read FPassen write FPassen;
    property Verdedigen:double read FVerdedigen write FVerdedigen;
    property Spelhervatting:integer read FSpelhervatting write FSpelhervatting;
    property TSI:integer read FTSI write FTSI;
    property GeboorteDatum: TDate read FGeboorteDatum write FGeboorteDatum;
    property PlayerName:String read FPlayerName write FPlayerName;
    property Leeftijd:String read FLeeftijd write FLeeftijd;
    property PlayerID:integer read FPlayerID write FPlayerID;
    property PlayerTSI:integer read FPlayerTSI write FPlayerTSI;
    property MainSkill:integer read GetMainSkill write FMainSkill;
    property SubSkill: double read FSubSkill write FSubSkill;
    property VraagPrijs:double read FVraagPrijs write FVraagPrijs;
    property HoogsteBod:double read FHoogsteBod write FHoogsteBod;
    property Herkomst:String read FHerkomst write FHerkomst;
    property Specialiteit:String read FSpecialiteit write FSpecialiteit;
    property Ervaring:String read FErvaring write FErvaring;
    property Karakter:String read FKarakter write FKarakter;
    property Leiderschap:String read FLeiderschap write FLeiderschap;
    property Eerlijkheid:String read FEerlijkheid write FEerlijkheid;
    property Agressiviteit:String read FAgressiviteit write FAgressiviteit;
    property Deadline:TDateTime read FDeadLine write FDeadline;
    property TransferDatum: TDate read FTransferDatum write FTransferDatum;
    property YouthPlayerID: integer read FYouthPlayerID write FYouthPlayerID;
    property U20:boolean read FU20 write FU20;
    property NT:boolean read FNT write FNT;
    property Loon: integer read FLoon write FLoon;
    property WekenBlessure: integer read FWekenBlessure write FWekenBlessure;
    property SpecOntdekt:boolean read FSpecOntdekt;
    property TransferListed:boolean read FTransferListed;

    property Face:String read FFace write FFace;
    property Eyes:String read FEyes write FEyes;
    property Mouth:String read FMouth write FMouth;
    property Nose:String read FNose write FNose;
    property Hair:String read FHair write FHair;
    property Goatee:String read FGoatee write FGoatee;
    property Body:String read FBody write FBody;
    property ManagerBody: String read FManagerBody write FManagerBody;
    property IsKeeper:Boolean read FIsKeeper write FIsKeeper;
    property Restyled: boolean read FRestyled write FRestyled;
    property Parsed: boolean read FParsed write FParsed;

    property KarakterID:Integer read FKarakterID write FKarakterID;
  end;

  TJeugdspeler = class
  private
    FNaam: String;
    FID: String;
    FSterren: double;
    FInstructie: String;
    FPositie: String;
    FTeamID: integer;
    FArrivalDatum: TDate;
    FGeboorteDatum: TDate;
    FSpecialiteit: String;
    FFace: String;
    FNose: String;
    FGoatee: String;
    FBody: String;
    FHair: String;
    FMouth: String;
    FEyes: String;
    FKarakterID: integer;
    FExported: boolean;
    FKeeper: boolean;
    FDeleted: boolean;
    FHerkomst: String;
    FIsNew: boolean;
    FIsNewSpec: boolean;
    FOldSpec: String;
    FLeiderschap: String;
    FYouthTeamID: integer;
  public
    property TeamID:integer read FTeamID write FTeamID;
    property YouthTeamID:integer read FYouthTeamID write FYouthTeamID;
    property Instructie:String read FInstructie write FInstructie;
    property Positie:String read FPositie write FPositie;
    property Sterren:Double read FSterren write FSterren;
    property Naam:String read FNaam write FNaam;
    property GeboorteDatum:TDate read FGeboorteDatum write FGeboorteDatum;
    property ArrivalDatum:TDate read FArrivalDatum write FArrivalDatum;
    property Specialiteit:String read FSpecialiteit write FSpecialiteit;
    property Keeper:boolean read FKeeper write FKeeper;

    property Face:String read FFace write FFace;
    property Eyes:String read FEyes write FEyes;
    property Mouth:String read FMouth write FMouth;
    property Nose:String read FNose write FNose;
    property Hair:String read FHair write FHair;
    property Goatee:String read FGoatee write FGoatee;
    property Body:String read FBody write FBody;
    property Exported:boolean read FExported write FExported;
    property Deleted:boolean read FDeleted write FDeleted;
    property Leiderschap:String read FLeiderschap write FLeiderschap;

    property KarakterID: integer read FKarakterID write FKarakterID;
    property Herkomst: String read FHerkomst write FHerkomst;
    property IsNew:boolean read FIsNew write FIsNew;
    property IsNewSpec:boolean read FIsNewSpec write FIsNewSpec;
    property OldSpec: String read FOldSpec write FOldSpec;

    property ID:String read FID write FID;
    constructor Create;
  end;

  TWedstrijd = class
  private
    FSpelers: TObjectList;
    FLeagueID: String;
    FSpeelDatum: TDate;
    FMatchID: String;
    FMainLeagueID: integer;
  public
    property MainLeagueID:integer read FMainLeagueID write FMainLeagueID;
    property SpeelDatum:TDate read FSpeelDatum write FSpeelDatum;
    property Spelers:TObjectList read FSpelers write FSpelers;
    property LeagueID:String read FLeagueID write FLeagueID;
    property MatchID:String read FMatchID write FMatchID;
    destructor Destroy;override;
    constructor Create(aLeagueID, aMatchID:String;aOwnPlayers:boolean=TRUE);
  end;

procedure SetIndexStatistics(aDataBase:TIBDatabase;aIndexName:String);
function CreateSQL(aDataBase:TIBDataBase;aReadOnly: boolean):TIBSQL;
function SetIndexStatus(aDataBase:TIBdataBase;aIndexName:String;isActive:boolean):boolean;
function GetLink(aBrowser:TEmbeddedWB; aHref: String; aForceEndsWith: Boolean = FALSE): String;
function VerwijderSpaties(aStr: string): string;
function NivoTextToGetal(aNivo: String): Integer;
function NivoGetalToText(aNivo: double): string;
function GetMatchLink(aMatchID:String;aMainURL:String;aYouthmatch:boolean):String;
function ExtractIDFromLink(aURL,aLinkString:String):String;
function GetHattrickServer(aMainURL:String):String;
function GetYouthLeagueLink(aLeagueID,aMainURL:String):String;
function GetLeagueLink(aMainURL:String;aLeagueID:integer):String;
function GetSubstituteID(vBody:TStringList;aPlayerID:integer):integer;
function GetYouthPLayerLink(aMainURL:String;aYouthPlayerID:integer):String;
function GetTeamLink(aMainURL:String;aTeamID:integer;aIsYouthTeam:Boolean):String;
function AddHattrickYear(aDatum:TDate;aYears:integer):TDate;
function SaveKarakterProfiel(aDatabase: TIBDatabase; aAutoRun: boolean; aTSISet:TTSISet): integer;
function SaveJeugdKarakterProfiel(aDatabase: TIBDatabase;aSpeler:TJeugdspeler;aForce:boolean):integer;
function SaveScouting(aDatabase: TIBDatabase; aTSISet:TTSISet; aTalentScouting: boolean): integer;
function FormatSpecialiteit(aXLSSpec: String): String;
function SpecToAfkorting(aSpec:String):String;
function ParsePlayerInfo(vBody: TStringList): TTSISet;
function GetGeboorteDatum(aLeeftijd,aDagen:integer):TDate;
function TwinIsPossible(aDatabase:TIBDatabase;aGeboorteDatum:TDate;
  aKarakterID:integer):boolean;
function GetPlayerSkills(aDatabase: TIBDatabase;aPlayerID: Integer): String;
function ParseJeugdwedstrijd(vBody:TStringList;aLeagueID,aMatchID:String;
  aTeamID, aMainLeagueID: Integer):TWedstrijd;
function GetKarakters(aDatabase:TIBDatabase; aNeus, aGezicht, aOgen, aMond,
  aHaar, aBody: String; aIsKeeper:boolean):TIntegerArray;
function GetVolgNummer(aDatabase:TIBDatabase; aNeus, aGezicht, aOgen, aMond,
  aHaar, aBody: String; aIsKeeper:boolean):integer;
function GetYouthLineupLink(aMainURL: String;aTeamID, aMatchID:integer):String;
procedure SyncNewTwins(aDatabase: TIBDatabase; aKarakterID: integer);
function GetPossibleTwins(aDatabase: TIBDatabase; aKarakterID: Integer):TBatchlingArray;
function CreateWriteTransAction(aDatabase: TIBDatabase; aName: String = ''): TIBTransAction;
function CreateReadTransAction(aDatabase: TIBDatabase; aName: String = ''): TIBTransAction;
function IsTalented(aDatabase: TIBDatabase; aPlayerID: integer):boolean;
procedure WriteActivity(aDatabase: TIBDatabase);

implementation
uses
  Sysutils, Forms, Windows, Math, uHTDb, Variants, uHTMisc,
  Dialogs;

function GetGeboorteDatum(aLeeftijd,aDagen:integer):TDate;
var
  vDagen:integer;
begin
  // Stel 16 jaar en 100 dagen
  // 1 jaar terug =  jaar
  vDagen := ((aLeeftijd - 15) * (16 * 7)) + aDagen;
  result := Date - vDagen;
end;

function TwinIsPossible(aDatabase:TIBDatabase;aGeboorteDatum:TDate;
  aKarakterID:integer):boolean;
var
  vCurDagen: integer;
begin
  result := TRUE;

  vCurDagen := GetSPValue(aDatabase,'GET_LEEFTIJD',
    [aGeboorteDatum, Date],'DAYS',srtINteger);

  with uHTDB.CreateSQL(aDatabase,'',uHattrick.CreateReadTransAction(aDatabase)) do
  begin
    try
      SQL.Add('SELECT J.GEBOORTE_DATUM, L.AGE, L.DAYS');
      SQL.Add('FROM JEUGDSPELERS J');
      SQL.Add('LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM, CURRENT_DATE) L ON (0=0)');
      SQL.Add('WHERE J.KARAKTER_ID = :ID AND J.GEBOORTE_DATUM > ''01.01.1970''');
      ParamByName('ID').asInteger := aKarakterID;
      ExecQuery;

      while not EOF do
      begin
        if FieldByName('AGE').asInteger > 0 then
        begin
          result := result and (vCurDagen = FieldByName('DAYS').asInteger)
        end;
        Next;
      end;
    finally
      uHTDB.CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

function ParseJeugdwedstrijd(vBody:TStringList;aLeagueID,aMatchID:String; aTeamID,aMainLeagueID: Integer):TWedstrijd;
const
  PLAYER_STR = 'CPMain_ucPlayer%d_hypPlayerName';
var
  vWedstrijd: TWedstrijd;
  vPos, i: Integer;
  vTempStr: String;
  vPlayerInfo: TStringList;
  vSpeler: TJeugdSpeler;
begin
  vPlayerInfo := TStringList.Create;
  try
    vWedstrijd := TWedstrijd.Create(aLeagueID, aMatchId);
    vWedstrijd.MainLeagueID := aMainLeagueID;

    vPos := Pos('matchLeague',vBody.Text);
    if (vPos = 0) then
      vPos := Pos('matchFriendly',vBody.Text);

    vBody.Text := Copy(vBody.Text,vPos,Length(vBody.Text));
    vPos := Pos('/>',vBody.Text);
    vBody.Text := Copy(vBody.Text,vPos+2,Length(vBody.Text));
    vPos := Pos('gespeeld',vBody.Text);
    vTempStr := Trim(Copy(vBody.Text,1,vPos - 1));

    vWedstrijd.SpeelDatum := StrToDateTime(vTempStr);

    for i:=1 to 11 do
    begin
      vPos := Pos(Format(PLAYER_STR,[i]),vBody.Text);
      if (vPos > 0) then
      begin
        vPlayerInfo.Text := Copy(vBody.Text,vPos,Length(vBody.Text));
        vPos := Pos('position',vPlayerInfo.Text);
        vPlayerInfo.Text := Copy(vPlayerInfo.Text,1,vPos+30);

        vSpeler := TJeugdSpeler.Create;

        vSpeler.TeamID := aTeamID;

        // NAAM
        vPos := Pos('title="',vPlayerInfo.Text);
        vTempStr := Copy(vPlayerInfo.Text,vPos+7,Length(vPlayerInfo.Text));
        vPos := Pos('"',vTempStr);
        vTempStr := Trim(Copy(vTempStr,1,vPos-1));
        vSpeler.Naam := vTempStr;

        // ID
        vPos := Pos('YouthPlayerID=',vPlayerInfo.Text);
        vTempStr := Copy(vPlayerInfo.Text,vPos+Length('YouthPlayerID='),
          Length(vPlayerInfo.Text));
        vPos := Pos('"',vTempStr);
        vTempStr := Trim(Copy(vTempStr,1,vPos-1));
        vSpeler.ID := vTempStr;


        vPos := Pos('stars',vPlayerInfo.Text);
        vTempStr := Copy(vPlayerInfo.Text,vPos,
          Length(vPlayerInfo.Text));
        vPos := Pos('tactic',vPlayerInfo.Text);
        vTempStr := Copy(vTempStr,1,vPos-2);

        while Pos('img src="/Img/Matches/',vTempStr) > 0 do
        begin
          vTempStr := Copy(vTempStr,Pos('img src="/Img/Matches/',vTempStr)+Length('img src="/Img/Matches/'),
            Length(vTempStr));
          if Pos('star_big_blue.png',vTempStr) = 1 then
          begin
            vSpeler.Sterren := vSpeler.Sterren + 5;
          end
          else if Pos('star_half_blue.png',vTempStr) = 1 then
          begin
            vSpeler.Sterren := vSpeler.Sterren + 0.5;
          end
          else if Pos('star_blue.png',vTempStr) = 1 then
          begin
            vSpeler.Sterren := vSpeler.Sterren + 1;
          end;
        end;

        vPos := Pos('tactic',vPlayerInfo.Text);
        vPlayerInfo.Text := Copy(vPlayerInfo.Text,vPos,Length(vPlayerInfo.Text));
        vPos := Pos('title="',vPlayerInfo.Text);
        vTempStr := Copy(vPlayerInfo.Text,vPos+Length('title="'),Length(vPlayerInfo.Text));
        vPos := Pos('"',vTempStr);
        vTempStr := Copy(vTempStr,1,vPos-1);
        vSpeler.Instructie := vTempStr;

        vPos := Pos('position">',vPlayerInfo.Text);
        vPlayerInfo.Text := Copy(vPlayerInfo.Text,vPos+Length('position">'),Length(vPlayerInfo.Text));
        vPos := Pos('<',vPlayerInfo.Text);
        vTempStr := Trim(Copy(vPlayerInfo.Text,1,vPos-1));
        vSpeler.Positie := vTempStr;

        vWedstrijd.Spelers.Add(vSpeler);
      end;
    end;

    result := vWedstrijd;
  finally
    vPlayerInfo.Free;
  end;
end;

function GetSubstituteID(vBody:TStringList;aPlayerID:integer):integer;
var
  vPos, vPlayerID: Integer;
  vFound: boolean;
  vTempStr: String;
begin
  result := aPlayerID;
  vFound := FALSE;
  
  vPos := Pos('substitution.gif',vBody.Text);
  if (vPos > 0) then
  begin
    vBody.Text := Copy(vBody.Text, vPos, Length(vBody.Text));

    while (Pos('sub_out.gif',vBody.Text) > 0) and not(vFound) do
    begin
      vPos := Pos('sub_out.gif',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + 10, Length(vBody.Text));

      vPos := Pos('?YouthPlayerID=',vBody.Text);
      vTempStr := Copy(vBody.Text,vPos,Length(vBody.Text));
      vPos := Pos('"',vTempStr);
      vTempStr := Copy(vTempStr,1,vPos-1);
      vPlayerID := StrToInt(Trim(ExtractIDFromLink(vTempStr,'YouthPlayerID=')));

      if (vPlayerID = aPlayerID) then
      begin
        // Jaja..!! Speler is gewisseld!
        vPos := Pos('sub_in.gif',vBody.Text);
        vBody.Text := Copy(vBody.Text,vPos, Length(vBody.Text));

        vPos := Pos('?YouthPlayerID=',vBody.Text);
        vTempStr := Copy(vBody.Text,vPos,Length(vBody.Text));
        vPos := Pos('"',vTempStr);
        vTempStr := Copy(vTempStr,1,vPos-1);
        result := StrToInt(Trim(ExtractIDFromLink(vTempStr,'YouthPlayerID=')));
        vFound := TRUE;
      end;
    end;
  end;
end;

function ParsePlayerInfo(vBody: TStringList): TTSISet;
var
  vPos, vPos2, i:integer;
  vLine, vGetal:String;
  vAgeStr, vDayStr: String;
begin
  result := TTSISet.Create;

  if (Pos('Geen speler gevonden',vBody.Text) = 0) and (Pos('Service Unavailable',vBody.Text) = 0) and
    (Pos('Server Error',vBody.Text) = 0) and (Pos('The service is unavailable',vBody.Text) = 0) and
    (Pos('Applicatiefout',vBody.Text) = 0) and (Pos('The page cannot be found',vBody.Text) = 0) then
  begin

    vPos := Pos('Mijn Hattrick', vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text, vPos, Length(vBody.Text));
    end;

    vPos := Pos('Maakt deel uit van het U-20',vBody.Text);
    vPos2 := Pos('Wedstrijden voor nationale U-20 team',vBody.Text);
    if ((vPos > 0) or (vPos2 > 0)) then
    begin
      result.U20 := TRUE;
    end
    else
    begin
      vPos := Pos('Maakt deel uit van het',vBody.Text);
      vPos2 := Pos('Wedstrijden voor nationale team',vBody.Text);
      if ((vPos > 0) or (vPos2 > 0)) then
      begin
        result.NT := TRUE;
      end;
    end;

    vPos := Pos('playerId=',vBody.Text);
    if vPos > 0 then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('playerId='),Length(vBody.Text));
      vPos := Pos('&',vBody.Text);
      vPos2 := Pos('''',vBody.Text);

      //soms staat er geen '&' achter de playerid
      if (vPos2 > 0) and (vPos2 < vPos) then
      begin
        vPos := vPos2;
      end;

      vLine := Trim(Copy(vBody.Text,1,vPos - 1));
      result.PlayerID := StrToInt(vLine);
    end;

    vPos := Pos('>',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('>'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.PlayerName := vLine;
    end;

    vPos := Pos('volgende verjaardag',vBody.Text);
    if (vPos > 0) then
    begin
      vLine := Copy(vBody.Text,vPos-40,vPos);

      vPos := Pos('jaar',vLine);
      vLine := Trim(Copy(vLine,vPos - 3,Length(vLine)));

      vAgeStr := Copy(vLine,1,2);

      vPos := Pos('en',vLine);
      vLine := Trim(Copy(vLine,vPos+3,Length(vLine)));

      vLine := Trim(Copy(vLine,1,3));
      vDayStr := '';
      for i:=1 to Length(vLine) do
      begin
        if CharInSet(vLine[i],['0'..'9']) then
        begin
          vDayStr := vDayStr + vLine[i];
        end;
      end;


      result.GeboorteDatum := GetGeboorteDatum(StrToInt(vAgeStr),StrToInt(vDayStr));
    end;

    vPos := Pos('flags.gif',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('flags.gif'),Length(vBody.Text));


      vPos := Pos('alt="',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('alt="'),Length(vBody.Text));
      vPos := Pos('"',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.Herkomst := vLine;


      vPos := Pos('</a>',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('</a>'),Length(vBody.Text));
      vPos := Pos('</div>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.Leeftijd := vLine;
    end;

    vPos := Pos('class="faceCard"',vBody.Text);
    if (vPos > 0) then
    begin
      // FACE
      vBody.Text := Copy(vBody.Text,vPos + Length('class="faceCard"'),Length(vBody.Text));

      vPos := Pos('hattrick.org/kits',vBody.Text);
      if (vPos > 0) then
      begin
        vBody.Text := Copy(vBody.Text,vPos+Length('hattrick.org/kits'),Length(vBody.Text));
        vPos := Pos('"',vBody.Text);
        vLine := Trim(Copy(vBody.Text,1,vPos-1));
        vLine := ChangeFileExt(ExtractFileName(vLine),'');
        vPos := Pos('/',vLine);
        while vPos > 0 do
        begin
          vLine := Copy(vLine,vPos+1,Length(vLine));
          vPos := Pos('/',vLine);
        end;

        result.Body := vLine;
      end
      else
      begin
        vPos := Pos('Avatar/bodies/',vBody.Text);
        vBody.Text := Copy(vBody.Text,vPos+Length('Avatar/bodies/'),Length(vBody.Text));
        vPos := Pos('"',vBody.Text);
        vLine := Trim(Copy(vBody.Text,1,vPos-1));
        vLine := ChangeFileExt(vLine,'');
        result.Body := vLine;
      end;

      // FACE
      vPos := Pos('Avatar/faces/',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos+Length('Avatar/faces/'),Length(vBody.Text));
      vPos := Pos('"',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos-1));
      vLine := ChangeFileExt(vLine,'');
      result.Face := vLine;

      // EYES
      vPos := Pos('Avatar/eyes/',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos+Length('Avatar/eyes/'),Length(vBody.Text));
      vPos := Pos('"',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos-1));
      vLine := ChangeFileExt(vLine,'');
      result.Eyes := vLine;

      // MOUTH
      vPos := Pos('Avatar/mouths/',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos+Length('Avatar/mouths/'),Length(vBody.Text));
      vPos := Pos('"',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos-1));
      vLine := ChangeFileExt(vLine,'');
      result.Mouth := vLine;

      // GOATEE (SIKJE)
      vPos := Pos('Avatar/goatees/',vBody.Text);
      if (vPos > 0) then
      begin
        vBody.Text := Copy(vBody.Text,vPos+Length('Avatar/goatees/'),Length(vBody.Text));
        vPos := Pos('"',vBody.Text);
        vLine := Trim(Copy(vBody.Text,1,vPos-1));
        vLine := ChangeFileExt(vLine,'');
        result.Goatee := vLine;
      end;

      // NOSE
      vPos := Pos('Avatar/noses/',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos+Length('Avatar/noses/'),Length(vBody.Text));
      vPos := Pos('"',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos-1));
      vLine := ChangeFileExt(vLine,'');
      result.Nose := vLine;

      // HAIR
      vPos := Pos('Avatar/hair/',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos+Length('Avatar/hair/'),Length(vBody.Text));
      vPos := Pos('"',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos-1));
      vLine := ChangeFileExt(vLine,'');
      result.Hair := vLine;
    end;

    // VOrm
    vPos := Pos('class="skill">',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));
      result.Vorm := NivoTextToGetal(vLine);
    end;

    vPos := Pos('Conditie:',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos,Length(vBody.Text));
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.Conditie := NivoTextToGetal(vLine);
    end;

    // Karakter
    vPos := Pos('gentleness',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos,Length(vBody.Text));
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.Karakter := vLine;
    end;

    // Agressiviteit
    vPos := Pos('aggressiveness',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos,Length(vBody.Text));
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.Agressiviteit := vLine;
    end;

    // Eerlijkheid
    vPos := Pos('honesty',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos,Length(vBody.Text));
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.Eerlijkheid := vLine;
    end;

    // Ervaring
    vPos := Pos('class="skill">',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.Ervaring := vLine;
    end;

    // Leiderschap
    vPos := Pos('class="skill">',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.Leiderschap := vLine;
    end;

    // Bij de club sinds....
    vPos := Pos('(sinds',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('(sinds '),Length(vBody.Text));
      vPos := Pos(')',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));

      result.TransferDatum := StrToDate(vLine);
    end;

    vPos := Pos('Total Skill Index (TSI):',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('Total Skill Index (TSI):'),Length(vBody.Text));
      vPos := Pos('<td>',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('<td>'),Length(vBody.Text));
      vPos := Pos('</td>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos -1));

      vGetal := '';
      for i:=1 to Length(vLine) do
      begin
        if CharInSet(vLine[i],['0'..'9']) then
        begin
          vGetal := vGetal + vLine[i];
        end;
      end;

      result.PlayerTSI := StrToInt(vGetal);
    end;


    vPos := Pos('Loon:',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('Loon:'), Length(vBody.Text));
      vPos := Pos('<td>',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('<td>'),Length(vBody.Text));
      vPos := Pos('&nbsp;',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos -1));

      vGetal := '';
      for i:=1 to Length(vLine) do
      begin
        if CharInSet(vLine[i],['0'..'9']) then
        begin
          vGetal := vGetal + vLine[i];
        end;
      end;

      if (Pos('inclusief', Copy(vBody.Text,1, 80)) > 0) then
      begin
        result.Loon := Ceil(RoundTo(StrToInt(vGetal), -2) / 1.2);
      end
      else
      begin
        result.Loon := StrToInt(vGetal);
      end;

      if (result.Herkomst <> 'Nederland') and (result.Herkomst <> 'Netherlands') then
      begin
        result.Loon := Ceil(result.Loon * 1.2);
      end;
    end;

    vPos := Pos('title="Geblesseerd" class="" />',vBody.Text);
    if (vPos > 0) then
    begin
      vLine := Copy(vBody.Text, Pos('title="Geblesseerd" class="" />',vBody.Text) + Length('title="Geblesseerd" class="" />') + 1, 2);
      Result.WekenBlessure := AnyStrToInt(vLine);
    end
    else
    begin
      Result.WekenBlessure := 0;
    end;

    vPos := Pos('Specialiteit:',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('Specialiteit:'),Length(vBody.Text));
      vPos := Pos('<td>',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('<td>'),Length(vBody.Text));
      vPos := Pos('</td>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos -1));

      result.Specialiteit := vLine;
    end
    else
    begin
      result.Specialiteit := 'Geen';
    end;

    vPos := Pos('Deadline:&nbsp;',vBody.Text);
    if vPos > 0 then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('Deadline:&nbsp;'),Length(vBody.Text));
      vPos := Pos('</p>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos -1));

      result.Deadline := StrToDateTime(vLine);
    end;

    vPos := Pos('Vraagprijs:',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('Vraagprijs:'),Length(vBody.Text));
      vPos := Pos('</p>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos -1));

      vGetal := '';
      for i:=1 to Length(vLine) do
      begin
        if CharInSet(vLine[i],['0'..'9']) then
        begin
          vGetal := vGetal + vLine[i];
        end;
      end;

      result.VraagPrijs := StrToFloat(vGetal);
    end;

    vPos := Pos('Hoogste bod:',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos + Length('Hoogste bod:'),Length(vBody.Text));
      vPos := Pos('door',vBody.Text);

      vLine := Trim(Copy(vBody.Text,1,vPos -1));

      vGetal := '';
      for i:=1 to Length(vLine) do
      begin
        if CharInSet(vLine[i],['0'..'9']) then
        begin
          vGetal := vGetal + vLine[i];
        end;
      end;

      result.HoogsteBod := StrToFloat(vGetal);
    end;

    vPos := Pos('Huidige vaardigheden',vBody.Text);
    if (vPos > 0) then
    begin
      vBody.Text := Copy(vBody.Text,vPos,Length(vBody.Text));
      // Keepen
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));
      result.Keepen := NivoTextToGetal(vLine);

      // Verdedigen
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));
      result.Verdedigen := NivoTextToGetal(vLine);

      // Positiespel
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));
      result.PositieSpel := NivoTextToGetal(vLine);

      // Vleugelspel
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));
      result.Vleugelspel := NivoTextToGetal(vLine);

      // Passen
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));
      result.Passen := NivoTextToGetal(vLine);

      // Scoren
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));
      result.Scoren := NivoTextToGetal(vLine);

      // Spelhervatting
      vPos := Pos('class="skill">',vBody.Text);
      vBody.Text := Copy(vBody.Text,vPos + Length('class="skill">'),Length(vBody.Text));
      vPos := Pos('</a>',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos - 1));
      result.Spelhervatting := NivoTextToGetal(vLine);

      Result.Parsed := TRUE;
    end;
  end;
end;

function SaveJeugdKarakterProfiel(aDatabase: TIBDatabase;aSpeler:TJeugdspeler;
  aForce:boolean):integer;
const
  cKarakterSQL =
    'INSERT INTO KARAKTER_PROFIEL ' +
    ' (ID, NEUS, GEZICHT, OGEN, MOND, HAAR, SIKJE, BODY, SPECIALITEIT, IS_KEEPER, VOLGNUMMER) '+
    ' VALUES ' +
    ' (:ID,:NEUS, :GEZICHT, :OGEN, :MOND, :HAAR, :SIKJE, :BODY, :SPECIALITEIT, :IS_KEEPER, :VOLGNUMMER)';
var
  vKarakters: TIntegerArray;
  vID, i: integer;
  vLeiderschap, vSpecialiteit: String;
begin
  vKarakters:= nil;
  vID := GetFieldValue(aDatabase,'JEUGDSPELERS',['PLAYER_ID'],[aSpeler.ID],'KARAKTER_ID',srtInteger,
    svtNormal, uHattrick.CreateReadTransaction(aDatabase));

  if (vID = 0) then
  begin
    vID := -1;
  end;
  
  if (aSpeler.Face <> '') then
  begin
    vKarakters := GetKarakters(aDatabase,aSpeler.Nose,
      aSpeler.Face, aSpeler.Eyes, aSpeler.Mouth, aSpeler.Hair,
      aSpeler.Body, aSpeler.Keeper);

    if High(vKarakters) > -1 then
    begin
      for i:=low(vKarakters) to High(vKarakters) do
      begin
        if uHattrick.TwinIsPossible(aDatabase,aSpeler.GeboorteDatum,vKarakters[i]) then
        begin
          vId := vKarakters[i];
          break;
        end
        else
        begin
          // Oud karakter niet mogelijk?
          if (vID > 0) and (vKarakters[i] = vID) then
          begin
            vID := -1;
          end;
        end;
      end;
    end
    else
    begin
      vID := -1;
    end;

    if (vID <= 0) then
    begin
      aSpeler.IsNew := TRUE;

      with uHTDB.CreateSQL(aDatabase, cKarakterSQL) do
      begin
        try
          vID := uHTDB.GetGeneratorValue(aDatabase, 'GEN_KARAKTER_PROFIEL');
          ParamByName('ID').asInteger := vID;

          ParamByName('NEUS').asString := aSpeler.Nose;
          ParamByName('GEZICHT').asString := aSpeler.Face;
          ParamByName('OGEN').asString := aSpeler.Eyes;
          ParamByName('MOND').asString := aSpeler.Mouth;
          ParamByName('HAAR').asString := aSpeler.Hair;
          ParamByName('SIKJE').asString := aSpeler.Goatee;
          ParamByName('BODY').asString := aSpeler.Body;
          ParamByName('SPECIALITEIT').AsString := aSpeler.Specialiteit;
          ParamByName('IS_KEEPER').asInteger := Ord(aSpeler.Keeper) * -1;
          ParamByName('VOLGNUMMER').asInteger := GetVolgNummer(aDatabase,aSpeler.Nose,
            aSpeler.Face, aSpeler.Eyes, aSpeler.Mouth, aSpeler.Hair,
            aSpeler.Body, aSpeler.Keeper);

          ExecQuery;

        finally
          uHTDB.CommitTransaction(Transaction,dbaFree);
          Free;
        end;
      end;
    end
    else
    begin
      aSpeler.IsNew := FALSE;
      vLeiderschap := uHTDB.GetFieldValue(aDatabase,'KARAKTER_PROFIEL',
        ['ID'],[vID],'LEIDERSCHAP',srtString, svtNormal, uHattrick.CreateReadTransaction(aDatabase));
      vSpecialiteit := uHTDB.GetFieldValue(aDatabase,'KARAKTER_PROFIEL',
        ['ID'],[vID],'SPECIALITEIT',srtString, svtNormal, uHattrick.CreateReadTransaction(aDatabase));

      aSpeler.Leiderschap := vLeiderschap;
      
      if (aSpeler.Specialiteit <> '') and
         (vSpecialiteit <> aSpeler.Specialiteit) then
      begin
        aSpeler.OldSpec := vSpecialiteit;
        aSpeler.IsNewSpec := TRUE;

        if (vSpecialiteit = '') or (aForce) or (MessageBoxWarning(
          Format('[%s] Weet je zeker dat je karakterID %d wilt wijzigen van %s in %s?',[aSpeler.ID,vID,vSpecialiteit,aSpeler.Specialiteit]),'HTScanner',TRUE)) then
        begin
          uHTDB.UpdateFieldValue(aDatabase, nil, 'KARAKTER_PROFIEL', ['ID'], [vID], ['SPECIALITEIT'], [aSpeler.Specialiteit]);
        end;
      end
      else
      begin
        aSpeler.OldSpec := vSpecialiteit;

        if (vSpecialiteit <> '') and
           (aSpeler.Specialiteit = '') then
        begin
          aSpeler.Specialiteit := vSpecialiteit;
        end;
      end;
    end;
  end;
  result := vID;
end;

function SpecToAfkorting(aSpec:String):String;
begin
  if (aSpec = 'Snel') then
  begin
    Result := 'Q';
  end
  else if (aSpec = 'Geen') then
  begin
    Result := 'N';
  end
  else if (aSpec = 'Snel herstel') then
  begin
    Result := 'R';
  end
  else if (aSpec = 'Onvoorspelbaar') then
  begin
    Result := 'U';
  end
  else if (aSpec = 'Krachtig') then
  begin
    Result := 'P';
  end
  else if (aSpec = 'Koppen') then
  begin
    Result := 'H';
  end
  else if (aSpec = 'Technisch') then
  begin
    Result := 'T';
  end
  else
  begin
    Result := '?';
  end;
end;

function GetPlayerSkills(aDatabase:TIBDatabase;aPlayerID: Integer): String;

function ValueToStr(aValue:double):String;
begin
  if (aValue > 0) then
  begin
    result := Format('%.1f',[aValue]);
  end
  else
  begin
    result := '?';
  end;
end;

var
  sCurGK, sCurDef, sCurPos, sCurWing, sCurPass, sCurSc, sCurSH: String;
  sPosGK, sPosDef, sPosPos, sPosWing, sPosPass, sPosSc, sPosSH: String;
  vKarakterID: integer;

  vValues: TDBFieldValues;
begin
  vValues := uHTDB.GetFieldValues(aDatabase,'JEUGDSPELERS',
    ['PLAYER_ID'],[aPlayerID],['KARAKTER_ID','KEEPEN','VERDEDIGEN','POSITIESPEL','VLEUGELSPEL','PASSEN','SCOREN','SPELHERVATTEN'],
      [srtInteger, srtFloat, srtFloat, srtFloat, srtFloat, srtFloat, srtFloat, srtFloat],
      svtNormal, uHattrick.CreateReadTransaction(aDatabase));

  vKarakterID := vValues[0];

  sCurGK :=  ValueToStr(vValues[1]);
  sCurDef := ValueToStr(vValues[2]);
  sCurPos := ValueToStr(vValues[3]);
  sCurWing := ValueToStr(vValues[4]);
  sCurPass := ValueToStr(vValues[5]);
  sCurSc := ValueToStr(vValues[6]);
  sCurSH := ValueToStr(vValues[7]);

  SetLength(vValues,0);

  vValues := uHTDB.GetFieldValues(aDatabase,'KARAKTER_PROFIEL',
    ['ID'],[vKarakterID],['POT_KEEPEN','POT_VERDEDIGEN','POT_POSITIESPEL','POT_VLEUGELSPEL','POT_PASSEN','POT_SCOREN','POT_SPELHERVATTEN'],
      [srtFloat, srtFloat, srtFloat, srtFloat, srtFloat, srtFloat, srtFloat],
      svtNormal, uHattrick.CreateReadTransaction(aDatabase));

  sPosGK := ValueToStr(vValues[0]);
  sPosDef := ValueToStr(vValues[1]);
  sPosPos := ValueToStr(vValues[2]);
  sPosWing := ValueToStr(vValues[3]);
  sPosPass := ValueToStr(vValues[4]);
  sPosSc := ValueToStr(vValues[5]);
  sPosSH := ValueToStr(vValues[6]);

  result := Format('%s/%s GK - %s/%s DEF - %s/%s POS - %s/%s WNG - %s/%s PASS - %s/%s SC - %s/%s SH',
    [sCurGK, sPosGK, sCurDef, sPosDef, sCurPos, sPosPos, sCurWing, sPosWing, sCurPass, sPosPass,
      sCurSc, sPosSc, sCurSh, sPosSH]);
end;

function FormatSpecialiteit(aXLSSpec: String): String;
begin
  aXLSSpec := Copy(Trim(UpperCase(aXLSSpec)), 1, 1);

  if (aXLSSpec = 'Q') then
  begin
    Result := 'Snel';
  end
  else if (aXLSSpec = 'N') then
  begin
    Result := 'Geen';
  end
  else if (aXLSSpec = 'R') then
  begin
    Result := 'Snel herstel';
  end
  else if (aXLSSpec = 'U') then
  begin
    Result := 'Onvoorspelbaar';
  end
  else if (aXLSSpec = 'P') then
  begin
    Result := 'Krachtig';
  end
  else if (aXLSSpec = 'H') then
  begin
    Result := 'Koppen';
  end
  else if (aXLSSpec = 'T') then
  begin
    Result := 'Technisch';
  end
  else
  begin
    Result := '';
  end;
end;

function GetVolgNummer(aDatabase:TIBDatabase; aNeus, aGezicht, aOgen, aMond,
  aHaar, aBody: String; aIsKeeper:boolean):integer;
var
  i:integer;
  vID : integer;
begin
  i:=-1;
  repeat
    inc(i);
    with uHTDB.CreateSQL(aDatabase,'',uHattrick.CreateReadTransAction(aDatabase)) do
    begin
      try
        with SQL do
        begin
          Add('SELECT P.ID');
          Add('FROM KARAKTER_PROFIEL P');
          Add('WHERE');
          Add('P.NEUS = :NEUS AND');
          Add('P.GEZICHT = :GEZICHT AND');
          Add('P.OGEN = :OGEN AND');
          Add('P.MOND = :MOND AND');
          Add('P.HAAR = :HAAR AND');
          Add('P.BODY = :BODY AND');
          Add('P.IS_KEEPER = :IS_KEEPER AND');
          Add('P.VOLGNUMMER = :VOLGNUMMER');
        end;
        ParamByName('NEUS').asString := aNeus;
        ParamByName('GEZICHT').asString := aGezicht;
        ParamByName('OGEN').asString := aOgen;
        ParamByName('MOND').asString := aMond;
        ParamByName('HAAR').asString := aHaar;
        ParamByName('BODY').asString := aBody;
        ParamByName('IS_KEEPER').asInteger := Ord(aISKeeper) * -1;
        ParamByName('VOLGNUMMER').asInteger := i;
        ExecQuery;
        vID := FieldByName('ID').asInteger;
      finally
        CommitTransaction(Transaction,dbaFree);
        Free;
      end;
    end;
  until vId = 0;
  result := i;
end;

function GetKarakters(aDatabase:TIBDatabase; aNeus, aGezicht, aOgen, aMond,
  aHaar, aBody: String; aIsKeeper:boolean):TIntegerArray;
begin
  SetLength(Result,0);
  
  with uHTDB.CreateSQL(aDatabase,'',uHattrick.CreateReadTransAction(aDatabase)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT P.ID, COUNT(S.ID)');
        Add('FROM KARAKTER_PROFIEL P');
        Add('LEFT JOIN JEUGDSPELERS S ON (P.ID = S.KARAKTER_ID)');
        Add('WHERE');
        Add('P.NEUS = :NEUS AND');
        Add('P.GEZICHT = :GEZICHT AND');
        Add('P.OGEN = :OGEN AND');
        Add('P.MOND = :MOND AND');
        Add('P.HAAR = :HAAR AND');
        Add('P.BODY = :BODY AND');
        Add('P.IS_KEEPER = :IS_KEEPER');
        Add('GROUP BY P.ID');
        Add('ORDER BY 2 DESC, P.ID');
      end;
      ParamByName('NEUS').asString := aNeus;
      ParamByName('GEZICHT').asString := aGezicht;
      ParamByName('OGEN').asString := aOgen;
      ParamByName('MOND').asString := aMond;
      ParamByName('HAAR').asString := aHaar;
      ParamByName('BODY').asString := aBody;
      ParamByName('IS_KEEPER').asInteger := Ord(aIsKeeper) * -1;
      ExecQuery;

      while not EOF do
      begin
        SetLength(result, High(result) + 2);

        result[High(result)] := FieldByName('ID').asInteger;

        Next;
      end;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

function CreateSQL(aDataBase:TIBDataBase;aReadOnly: boolean):TIBSQL;
begin
  result := TIBSQL.Create(Application);
  with result do
  begin
    if (aReadOnly) then
      Transaction := uHattrick.CreateReadTransaction(aDatabase)
    else
      TransAction := uHattrick.CreateWriteTransAction(aDataBase);
  end;
end;

function SetIndexStatus(aDataBase:TIBdataBase;aIndexName:String;isActive:boolean):boolean;
begin
  with CreateSQL(aDatabase,FALSE) do
  begin
    try
      with SQL do
      begin
        Clear;
        if isActive then
          Add('ALTER INDEX '+AnsiQuotedStr(aIndexName,'"') +' ACTIVE')
        else
          Add('ALTER INDEX '+AnsiQuotedStr(aIndexName,'"') +' INACTIVE');
      end;
      ExecQuery;
      result := TRUE;
    finally
      try
        Transaction.Commit;
      except
        Transaction.Rollback;
        raise;
      end;
      Transaction.Free;
      Free;
    end;
  end;
end;

procedure SetIndexStatistics(aDataBase:TIBDatabase;aIndexName:String);
begin
  with CreateSQL(aDatabase,FALSE) do
  begin
    try
      with SQL do
      begin
        Clear;
        Add('SET STATISTICS INDEX '+AnsiQuotedStr(aIndexName,'"'));
      end;
      ExecQuery;
    finally
      Transaction.Commit;
      Transaction.Free;
      Free;
    end;
  end;
end;

function SaveKarakterProfiel(aDatabase: TIBDatabase; aAutoRun: boolean; aTSISet:TTSISet): integer;
const
  cKarakterSQL =
    'INSERT INTO KARAKTER_PROFIEL ' +
    ' (ID, EERLIJKHEID, LEIDERSCHAP, AGRESSIVITEIT, KARAKTER, NEUS, GEZICHT, OGEN, MOND, HAAR, SIKJE, BODY, SPECIALITEIT, IS_KEEPER, VOLGNUMMER, MAN_BODY) '+
    ' VALUES ' +
    ' (:ID, :EERLIJKHEID, :LEIDERSCHAP, :AGRESSIVITEIT, :KARAKTER, :NEUS, :GEZICHT, :OGEN, :MOND, :HAAR, :SIKJE, :BODY, :SPECIALITEIT, :IS_KEEPER, :VOLGNUMMER, :MAN_BODY)';
  cNose: array[0..10] of String = ('a','b','c','d','e','f','g','h','i','j','k');
var
  vID, i, vYouthKarakterID: integer;
  vBody, vNose, vMouth, vSpecialiteit:String;
  vKarakters: TIntegerArray;
  vOk, vDoSave:boolean;
begin
  vID := -1;
  vKarakters := nil;
  vDoSave := TRUE;

  if (aTSISet.YouthPlayerID > 0) then
  begin
    vYouthKarakterID := uHTDB.GetFieldValue(aDatabase,'JEUGDSPELERS',['PLAYER_ID'],[aTSISet.YouthPlayerID],'KARAKTER_ID',srtInteger,
      svtNormal, uHattrick.CreateReadTransaction(aDatabase));
  end
  else
  begin
    vYouthKarakterID := -1;
  end;

  aTSISet.IsTrainer := Pos('man', aTSISet.Body) > 0;

  if (aTSISet.IsTrainer) then
  begin
    aTSISet.ManagerBody := aTSISet.Body;

    if (vYouthKarakterID > 0) then
    begin
      // We kennen hem van vroeger!
      aTSISet.Body := VarToStr(uHTDB.GetFieldValue(aDatabase,'KARAKTER_PROFIEL',['ID'],[vYouthKarakterID],'BODY',srtString,
        svtNormal, uHattrick.CreateReadTransaction(aDatabase)));
    end
    else
    begin
      // Oeps!! Niet bekend?? dan gaan we een body op proberen te zoeken.
      aTSISet.Body := VarToStr(uHTDB.GetFieldValue(aDatabase,'KARAKTER_PROFIEL',['MAN_BODY'],[aTSISet.ManagerBody],'BODY',srtString,
        svtNormal, uHattrick.CreateReadTransaction(aDatabase), 'AND COALESCE(MAN_BODY,'''') <> '''''));
    end;
  end;

  if (aTSISet.Body <> '') then
  begin
    if Pos('body',aTSISet.Body) > 0 then
    begin
      // Supporter body omzetten naar normale body
      vBody := Trim(Copy(aTSISet.Body,5, Length(aTSISet.Body)));
      aTSISet.Body := Format('bd%s_s1',[vBody]);
    end;

    vNose := aTSISet.Nose;
    for i:=Low(cNose) to High(cNose) do
    begin
      if EndsWith(vNose,Format('m%s',[cNose[i]])) then
      begin
        // Volwassen neus -- met haar weer naar jeugdneus converteren!!
        vNose := Copy(vNose,1,Length(vNose) - 2);
        aTSISet.Nose := vNose;
      end
    end;
    if EndsWith(aTSISet.Mouth,'g') then
    begin
      vMouth := Copy(aTSISet.Mouth, 1, Length(aTSISet.Mouth) - 1);
      aTSISet.Mouth := vMouth;
    end;

    vKarakters := GetKarakters(aDatabase,aTSISet.Nose,
      aTSISet.Face, aTSISet.Eyes, aTSISet.Mouth, aTSISet.Hair,
      aTSISet.Body, aTSISet.IsKeeper);

    if High(vKarakters) > -1 then
    begin
      for i:=low(vKarakters) to High(vKarakters) do
      begin
        if uHattrick.TwinIsPossible(aDatabase,aTSISet.GeboorteDatum,vKarakters[i]) then
        begin
          vId := vKarakters[i];
          break;
        end;
      end;
    end;

    if (vYouthKarakterID > 0) then
    begin
      if (vID <> vYouthKarakterID) or (aTSISet.Restyled) then
      begin
        if not (aTSISet.Restyled) then
        begin
          ExecSQL(aDatabase,'UPDATE JEUGDSPELERS SET RESTYLED = -1 WHERE PLAYER_ID = :ID',['ID'],[aTSISet.YouthPlayerID]);
          vDoSave := FALSE;
        end;
        
        vID := vYouthKarakterID;
      end;
    end;
    
    if (vDoSave) then
    begin
      if (vID <= 0) then
      begin
        with uHTDB.CreateSQL(aDatabase, cKarakterSQL) do
        begin
          try
            vID := GetGeneratorValue(aDatabase, 'GEN_KARAKTER_PROFIEL');
            ParamByName('ID').asInteger := vID;
            ParamByName('EERLIJKHEID').asString := aTSISet.Eerlijkheid;
            ParamByname('LEIDERSCHAP').asString := aTSISet.Leiderschap;
            ParamByName('AGRESSIVITEIT').asString := aTSISet.Agressiviteit;
            ParamByName('KARAKTER').asString := aTSISet.Karakter;
            if (aTSISet.Specialiteit = '') then
            begin
              ParamByName('SPECIALITEIT').AsString := 'Geen';
            end
            else
            begin
              ParamByName('SPECIALITEIT').AsString := aTSISet.Specialiteit;
            end;
            ParamByName('IS_KEEPER').asInteger := Ord(aTSISet.IsKeeper) * -1;

            ParamByName('NEUS').asString := aTSISet.Nose;
            ParamByName('GEZICHT').asString := aTSISet.Face;
            ParamByName('OGEN').asString := aTSISet.Eyes;
            ParamByName('MOND').asString := aTSISet.Mouth;
            ParamByName('HAAR').asString := aTSISet.Hair;
            ParamByName('SIKJE').asString := aTSISet.Goatee;
            ParamByName('BODY').asString := aTSISet.Body;
            if (aTSISet.IsTrainer) then
            begin
              ParamByName('MAN_BODY').asString := aTSISet.ManagerBody;
            end;
            ParamByName('VOLGNUMMER').asInteger := GetVolgNummer(aDatabase,
              aTSISet.Nose, aTSISet.Face, aTSISet.Eyes, aTSISet.Mouth, aTSISet.Hair,
              aTSISet.Body, aTSISet.IsKeeper);
            ExecQuery;

          finally
            CommitTransaction(Transaction,dbaFree);
            Free;
          end;
        end;
      end
      else
      begin
        vSpecialiteit := GetFieldValue(aDatabase,'KARAKTER_PROFIEL',['ID'],
          [vID],'SPECIALITEIT',srtString, svtNormal, uHattrick.CreateReadTransaction(aDatabase));

        vOk := TRUE;

        if ((vSpecialiteit = '') or (vSpecialiteit <> aTSISet.Specialiteit)) and (aTSISet.Specialiteit <> '') then
        begin
          if (vSpecialiteit = '') or (aAutoRun) or (MessageBoxWarning(
            Format('[%d] Weet je zeker dat je karakterID %d wilt wijzigen van %s in %s?',[aTSISet.PlayerID, vID,vSpecialiteit,aTSISet.Specialiteit]),'HTScanner',TRUE)) then
          begin
            if (vSpecialiteit = '') or (not aAutoRun) then
            begin
              aTSISet.FSpecOntdekt := TRUE;
              UpdateFieldValue(aDatabase, nil, 'KARAKTER_PROFIEL', ['ID'], [vID], ['SPECIALITEIT'], [aTSISet.Specialiteit]);
            end
            else
            begin
              vID := -1;
              vOk := FALSE;
            end;
          end
          else
          begin
            vOk := (vSpecialiteit = '');
          end;
        end
        else if (aTSISet.Specialiteit = '') and (vSpecialiteit <> 'Geen') then
        begin
          if (vSpecialiteit = '') or (aAutoRun) or (MessageBoxWarning(
            Format('[%d] Weet je zeker dat je karakterID %d wilt wijzigen van %s in %s?',[aTSISet.PlayerID,vID,vSpecialiteit,aTSISet.Specialiteit]),'HTScanner',TRUE)) then
          begin
            if not(aAutoRun) then
            begin
              UpdateFieldValue(aDatabase, nil, 'KARAKTER_PROFIEL', ['ID'], [vID], ['SPECIALITEIT'], ['Geen']);
            end
            else
            begin
              vID := -1;
              vOk := FALSE;
            end;
          end
          else
          begin
            vOk := (vSpecialiteit = '');
          end;
        end;

        if ((vOk) and (aTSISet.Karakter <> '')) then
        begin
          if (aTSISet.IsTrainer) then
          begin
            ExecSQL(aDatabase,'UPDATE KARAKTER_PROFIEL SET EERLIJKHEID = :PARAM1, LEIDERSCHAP = :PARAM2, AGRESSIVITEIT = :PARAM3, KARAKTER = :PARAM4, MAN_BODY = :PARAM5 WHERE ID = :ID',
              ['ID','PARAM1','PARAM2','PARAM3','PARAM4','PARAM5'],
              [vID,aTSISet.Eerlijkheid,aTSISet.Leiderschap,aTSISet.Agressiviteit,aTSISet.Karakter,aTSISet.ManagerBody]);
          end
          else
          begin
            ExecSQL(aDatabase,'UPDATE KARAKTER_PROFIEL SET EERLIJKHEID = :PARAM1, LEIDERSCHAP = :PARAM2, AGRESSIVITEIT = :PARAM3, KARAKTER = :PARAM4 WHERE ID = :ID',
              ['ID','PARAM1','PARAM2','PARAM3','PARAM4'],
              [vID,aTSISet.Eerlijkheid,aTSISet.Leiderschap,aTSISet.Agressiviteit,aTSISet.Karakter]);
          end;
        end;
      end;
    end;
  end;

  result := vID;
end;

function IsPossibleTalented(aDatabase: TIBDatabase; aPlayerID: integer):boolean;
begin
  with uHTDB.CreateSQL(aDatabase) do
  begin
    try
      with SQL do
      begin
        Add('SELECT POSSIBLE_TALENTED FROM GET_TALENTED_EX(:PLAYERID, 0, -1)');
      end;
      ParamByName('PLAYERID').asInteger := aPlayerID;
      ExecQuery;
      result := (FieldByName('POSSIBLE_TALENTED').asInteger = -1);
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

function IsTalented(aDatabase: TIBDatabase; aPlayerID: integer):boolean;
begin
  with CreateSQL(aDatabase, TRUE) do
  begin
    try
      with SQL do
      begin
        Add('SELECT * FROM GET_TALENTED_EX(:PLAYERID, 0, -1)');
      end;
      ParamByName('PLAYERID').asInteger := aPlayerID;
      ExecQuery;
      result := (FieldByName('TALENTED').asInteger = -1) or
        (FieldByName('U20_TALENTED').asInteger = -1);
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: CreateWriteTransAction
  Author:    Harry
  Date:      07-okt-2012
  Arguments: aDatabase: TIBDatabase; aName: String = ''): TIBTransAction; begin try Result := TIBTransaction.Create(nil
  Result:    None
-----------------------------------------------------------------------------}
function CreateWriteTransAction(aDatabase: TIBDatabase; aName: String = ''): TIBTransAction;
begin
  try
    Result := TIBTransaction.Create(nil);

    with Result do
    begin
      if (aName <> '') then
      begin
        Name := aName;
      end;
      DefaultDatabase := aDataBase;

      with Params do
      begin
        Clear;
        Add('read_committed');
        Add('rec_version');
        Add('nowait');
      end;
      if DefaultDataBase.Connected then
        StartTransaction;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: CreateReadTransAction
  Author:    Harry
  Date:      23-jun-2012
  Arguments: aDatabase: TIBDatabase; aName: String = ''): TIBTransAction; begin try Result := TIBTransaction.Create(nil
  Result:    None
-----------------------------------------------------------------------------}
function CreateReadTransAction(aDatabase: TIBDatabase; aName: String = ''): TIBTransAction;
begin
  try
    Result := TIBTransaction.Create(nil);

    with Result do
    begin
      if (aName <> '') then
      begin
        Name := aName;
      end;
      DefaultDatabase := aDataBase;

      with Params do
      begin
        Clear;
        Add('read');
        Add('read_committed');
        Add('nowait');
        Add('rec_version');
      end;
      if DefaultDataBase.Connected then
        StartTransaction;
    end;
  except
    raise;
  end;
end;


{-----------------------------------------------------------------------------
  Author:    Pieter Bas
  Datum:     22-01-2010
  Doel:
  
  <eventuele fixes>
-----------------------------------------------------------------------------}
function SaveScouting(aDatabase: TIBDatabase; aTSISet: TTSISet; aTalentScouting: boolean): integer;
var
  vID: integer;
  vSpec: String;
const
  cScoutingSQL =
  'INSERT INTO SCOUTING '+
  '  (AGRESSIVITEIT, CONDITIE, DATUM, DEADLINE, EERLIJKHEID, ERVARING, HERKOMST, HOOGSTE_BOD, ID, '+
  '   KARAKTER, KARAKTER_PROFIEL_ID, KEEPEN, LEEFTIJD, LEIDERSCHAP, LOON, NT, PASSEN, PLAYER_ID, ' +
  '   PLAYER_NAAM, POSITIESPEL, SCOREN, SPECIALITEIT, SPELHERVATTING, SUBSKILL, TALENT_SCOUTING, TSI, '+
  '   U20, VERDEDIGEN, VLEUGELSPEL, VORM, VRAAGPRIJS, WEKEN_BLESSURE, YOUTHPLAYER_ID, GEBOORTEDATUM, IS_TRAINER ) '+
  'VALUES (' +
  '   :AGRESSIVITEIT, :CONDITIE, :DATUM, :DEADLINE, :EERLIJKHEID, :ERVARING, :HERKOMST, :HOOGSTE_BOD,'+
  '   :ID, :KARAKTER, :KARAKTER_PROFIEL_ID, :KEEPEN, :LEEFTIJD, :LEIDERSCHAP, :LOON, :NT, :PASSEN, '+
  '   :PLAYER_ID, :PLAYER_NAAM, :POSITIESPEL, :SCOREN, :SPECIALITEIT, :SPELHERVATTING, :SUBSKILL, '+
  '   :TALENT_SCOUTING, :TSI, :U20, :VERDEDIGEN, :VLEUGELSPEL, :VORM, :VRAAGPRIJS, :WEKEN_BLESSURE, :YOUTHPLAYER_ID, :GEBOORTEDATUM, :IS_TRAINER)';
var
  vCurSkill:double;
begin
  try
    result := -1;
    if (aTSISet.PlayerID > 0) and (aTSISet.KarakterID > 0) then
    begin
      aTSISet.FTransferListed := FALSE;
      vId := GetFieldValue(aDatabase,'SCOUTING',['PLAYER_ID'],[aTSISet.PlayerID],'ID',srtInteger,
        svtNormal, uHattrick.CreateReadTransaction(aDatabase));

      if (vID > 0) then
      begin
        result := vID;
        if (aTSISet.Specialiteit <> '') then
        begin
          vSpec := aTSISet.Specialiteit;
        end
        else
        begin
          vSpec := 'Geen';
        end;

        ExecSQL(aDatabase,'UPDATE SCOUTING SET PLAYER_NAAM = :PLAYER_NAAM, TSI = :TSI, VORM = :VORM, CONDITIE = :CONDITIE,'+
          ' LEEFTIJD = :LEEFTIJD, HERKOMST = :HERKOMST, SPECIALITEIT = :SPECIALITEIT, ERVARING = :ERVARING, KARAKTER = :KARAKTER, '+
          ' AGRESSIVITEIT = :AGRESSIVITEIT, EERLIJKHEID = :EERLIJKHEID, LEIDERSCHAP = :LEIDERSCHAP, DATUM = CURRENT_DATE,'+
          ' LOON = :LOON, WEKEN_BLESSURE = :WEKEN_BLESSURE, KARAKTER_PROFIEL_ID = :KARAKTER_PROFIEL_ID, GEBOORTEDATUM = :GEBOORTEDATUM,'+
          ' U20 = :U20, NT = :NT, IS_TRAINER = :IS_TRAINER WHERE ID = :ID',
            ['ID','PLAYER_NAAM','TSI','VORM','CONDITIE','LEEFTIJD','HERKOMST','SPECIALITEIT','ERVARING','KARAKTER',
             'AGRESSIVITEIT','EERLIJKHEID', 'LEIDERSCHAP', 'LOON', 'WEKEN_BLESSURE', 'KARAKTER_PROFIEL_ID','GEBOORTEDATUM','U20','NT','IS_TRAINER'],
            [vID,aTSISet.PlayerName,aTSISet.PlayerTSI,aTSISet.Vorm,aTSISet.Conditie, aTSISet.Leeftijd, aTSISet.Herkomst,
             vSpec, aTSISet.Ervaring, aTSISet.Karakter, aTSISet.Agressiviteit, aTSISet.Eerlijkheid, aTSISet.Leiderschap,
             aTSISet.Loon, aTSISet.WekenBlessure, aTSISet.KarakterID, aTSISet.GeboorteDatum, Ord(aTSISet.U20) * -1,
             Ord(aTSISet.NT) * -1, Ord(aTSISet.IsTrainer) * -1]);

        if (aTSISet.Deadline > 0) then
        begin
          aTSISet.FTransferListed := TRUE;
          vCurSkill := GetFieldValue(aDatabase,'SCOUTING',['ID'],[vID],'VERDEDIGEN',srtFloat,
            svtNormal, uHattrick.CreateReadTransaction(aDatabase));

          if (vCurSkill = 0) then
          begin
            // Geen bestaande waarden overschrijven!
            ExecSQL(aDatabase,'UPDATE SCOUTING SET POSITIESPEL = :POSITIESPEL, VERDEDIGEN = :VERDEDIGEN, SCOREN = :SCOREN,'+
              ' PASSEN = :PASSEN, KEEPEN = :KEEPEN, VLEUGELSPEL = :VLEUGELSPEL, SPELHERVATTING = :SPELHERVATTING, VRAAGPRIJS = :VRAAGPRIJS,'+
              ' HOOGSTE_BOD = :HOOGSTE_BOD, DEADLINE = :DEADLINE WHERE ID = :ID',
              ['ID','POSITIESPEL','VERDEDIGEN','SCOREN','PASSEN','KEEPEN','VLEUGELSPEL',
               'SPELHERVATTING','VRAAGPRIJS','HOOGSTE_BOD','DEADLINE'],
              [vID, aTSISet.PositieSpel, aTSISet.Verdedigen, aTSISet.Scoren, aTSISet.Passen,
               aTSISet.Keepen,aTSISet.Vleugelspel,aTSISet.Spelhervatting, aTSISet.VraagPrijs, aTSISet.HoogsteBod,
               aTSISet.Deadline]);
          end;
        end;

        if (aTSISet.YouthPlayerID > 0) then
        begin
          ExecSQL(aDatabase,'UPDATE SCOUTING SET YOUTHPLAYER_ID = :PLAYER_ID WHERE ID = :ID',
            ['ID','PLAYER_ID'],[vID, aTSISet.YouthPlayerID]);
        end;
      end
      else
      begin
        with uHTDB.CreateSQL(aDatabase, cScoutingSQL) do
        begin
          try
            Result := GetGeneratorValue(aDatabase,'GEN_SCOUTING_ID');

            ParamByName('ID').asInteger := Result;
            ParamByName('PLAYER_ID').asInteger := aTSISet.PlayerID;
            ParamByName('PLAYER_NAAM').asString := aTSISet.PlayerName;
            ParamByName('TSI').asInteger := aTSISet.PlayerTSI;
            ParamByName('VORM').asInteger := aTSISet.Vorm;
            ParamByName('CONDITIE').asInteger := aTSISet.Conditie;
            if (aTSISet.Deadline > 0) then
            begin
              aTSISet.FTransferListed := TRUE;

              ParamByName('POSITIESPEL').asFloat := aTSISet.PositieSpel;
              ParamByName('VERDEDIGEN').asFloat := aTSISet.Verdedigen;
              ParamByName('SCOREN').asFloat := aTSISet.Scoren;
              ParamByName('PASSEN').asFloat := aTSISet.Passen;
              ParamByName('KEEPEN').asFloat := aTSISet.Keepen;
              ParamByName('VLEUGELSPEL').asFloat := aTSISet.Vleugelspel;
              ParamByName('SPELHERVATTING').asFLoat := aTSISet.Spelhervatting;
            end;

            ParamByName('LEEFTIJD').asString := aTSISet.Leeftijd;
            ParamByName('SUBSKILL').asFloat := aTSISet.SubSkill;
            ParamByName('VRAAGPRIJS').asFloat := aTSISet.VraagPrijs;
            ParamByName('HOOGSTE_BOD').asFloat := aTSISet.HoogsteBod;
            if (aTSISet.Deadline > 0) then
            begin
              ParamByName('DEADLINE').asDateTime := aTSISet.Deadline;
            end
            else
            begin
              ParamByName('DEADLINE').Clear;
            end;
            ParamByName('HERKOMST').asString := aTSISet.Herkomst;
            if (aTSISet.Specialiteit <> '') then
            begin
              ParamByName('SPECIALITEIT').asString := aTSISet.Specialiteit;
            end
            else
            begin
              ParamByName('SPECIALITEIT').asString := 'Geen';
            end;
            ParamByName('ERVARING').asString := aTSISet.Ervaring;
            ParamByName('KARAKTER').asString := aTSISet.Karakter;
            ParamByName('AGRESSIVITEIT').asString := aTSISet.Agressiviteit;
            ParamByName('EERLIJKHEID').asString := aTSISet.Eerlijkheid;
            ParamByName('LEIDERSCHAP').asString := aTSISet.Leiderschap;
            ParamByName('TALENT_SCOUTING').asInteger := Ord(aTalentScouting) * -1;
            ParamByName('DATUM').asDateTime := Date;
            ParamByName('U20').asInteger := Ord(aTSISet.U20) * -1;
            ParamByName('NT').asInteger := Ord(aTSISet.NT) * -1;
            ParamByName('LOON').AsInteger := aTSISet.Loon;
            ParamByName('WEKEN_BLESSURE').AsInteger := aTSISet.WekenBlessure;
            ParamByName('KARAKTER_PROFIEL_ID').asInteger := aTSISet.KarakterID;
            if (aTSISet.YouthPlayerID > 0) then
            begin
              ParamByName('YOUTHPLAYER_ID').asInteger := aTSISet.YouthPlayerID;
            end;
            ParamByName('GEBOORTEDATUM').asDate := aTSISet.GeboorteDatum;
            ParamByName('IS_TRAINER').asInteger := Ord(aTSISet.IsTrainer) * -1;

            ExecQuery;
          finally
            CommitTransaction(Transaction,dbaFree);
            Free;
          end;
        end;
      end;
    end;
  except
    raise;
  end;
end;


function AddHattrickYear(aDatum:TDate;aYears:integer):TDate;
begin
  result := aDatum + (aYears * (16 * 7));
end;

function GetHattrickServer(aMainURL:String):String;
begin
  result := aMainURL;
  result := Copy(result, 1, Pos('.hattrick.org/', aMainURL));
end;

function GetTeamLink(aMainURL:String;aTeamID:integer;aIsYouthTeam:Boolean):String;
begin
  //http://www75.hattrick.org/Club/?TeamID=1006075
  if (aIsYouthTeam) then
  begin
    result := Format('%shattrick.org/%s%d',[GetHattrickServer(aMainURL),YOUTHTEAM_LINK,aTeamID]);
  end
  else
  begin
    result := Format('%shattrick.org/%s%d',[GetHattrickServer(aMainURL),TEAM_LINK,aTeamID]);
  end;
end;

function GetYouthLineupLink(aMainURL: String;aTeamID, aMatchID:integer):String;
var
  vLineUp:String;
begin
  vLineUp := Format(YOUTHMATCH_LINEUP_LINK,[aMatchId, aTeamID]);

  result := Format('%shattrick.org/%s', [GetHattrickServer(aMainURL),vLineUp]);
end;

function GetMatchLink(aMatchID:String;aMainURL:String;aYouthmatch:boolean):String;
begin
  result := Format('%shattrick.org/%s%s', [GetHattrickServer(aMainURL),MATCH_LINK,aMatchID]);
  if (aYouthMatch) then
  begin
    result := Format('%s&SourceSystem=Youth',[result]);
  end;
end;

function GetYouthPLayerLink(aMainURL:String;aYouthPlayerID:integer):String;
begin
  result := Format('%shattrick.org/%s%d',[GetHattrickServer(aMainURL),YOUTHPLAYER_LINK,aYouthPlayerID]);
end;

function GetLeagueLink(aMainURL:String;aLeagueID:integer):String;
begin
  //http://www75.hattrick.org/World/Series/Default.aspx?LeagueLevelUnitID=17812
  result := Format('%shattrick.org/%s%d',[GetHattrickServer(aMainURL),LEAGUE_LINK,aLeagueID]);
end;

function GetYouthLeagueLink(aLeagueID,aMainURL:String):String;
begin
  result := Format('%shattrick.org/%s%s',[GetHattrickServer(aMainURL),YOUTHLEAGUE_LINK,aLeagueID]);
end;

{-----------------------------------------------------------------------------
  Procedure: SyncNewTwins
  Author:    Harry
  Date:      27-apr-2012
  Arguments: aDatabase: TIBDatabase; aKarakterID: integer
  Result:    None
-----------------------------------------------------------------------------}
procedure SyncNewTwins(aDatabase: TIBDatabase; aKarakterID: integer);
var
  vKarakterLijst: array of integer;
  vWhereSQL: String;
  i: integer;
  vWaarde: Variant;
const
  vVelden: array[0..7] of String = ('ALLROUND','POT_KEEPEN','POT_VERDEDIGEN','POT_POSITIESPEL',
    'POT_VLEUGELSPEL','POT_PASSEN','POT_SCOREN','POT_SPELHERVATTEN');
begin
  SetLength(vKarakterLijst, High(vKarakterLijst) + 2);
  vKarakterLijst[High(vKarakterLijst)] := aKarakterID;

  // Twins opzoeken
  with uHTDB.CreateSQL(aDatabase,'SELECT KARAKTER_ID FROM TWINS WHERE TWIN_KARAKTER_ID = :ID',
    uHattrick.CreateReadTransAction(aDatabase)) do
  begin
    try
      ParamByName('ID').asInteger := aKarakterID;
      ExecQuery;
      while not EOF do
      begin
        SetLength(vKarakterLijst, High(vKarakterLijst) + 2);
        vKarakterLijst[High(vKarakterLijst)] := FieldByName('KARAKTER_ID').asInteger;
        Next;
      end;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;

  // En de andere kant
  with uHTDB.CreateSQL(aDatabase,'SELECT TWIN_KARAKTER_ID FROM TWINS WHERE KARAKTER_ID = :ID',
    uHattrick.CreateReadTransAction(aDatabase)) do
  begin
    try
      ParamByName('ID').asInteger := aKarakterID;
      ExecQuery;
      while not EOF do
      begin
        SetLength(vKarakterLijst, High(vKarakterLijst) + 2);
        vKarakterLijst[High(vKarakterLijst)] := FieldByName('TWIN_KARAKTER_ID').asInteger;
        Next;
      end;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;

  vWhereSQL := 'ID IN (';
  for i:=low(vKarakterLijst) to High(vKarakterLijst) do
  begin
    if i < High(vKarakterLijst) then
    begin
      vWhereSQL := Format('%s%d, ',[vWhereSQL,vKarakterLijst[i]]);
    end
    else
    begin
      vWhereSQL := Format('%s%d',[vWhereSQL,vKarakterLijst[i]]);
    end;
  end;
  vWhereSQL := Format('%s)',[vWhereSQL]);

  for i:=Low(vVelden) to High(vVelden) do
  begin
    with uHTDB.CreateSQL(aDatabase,
      Format('SELECT MAX(%s) FROM KARAKTER_PROFIEL WHERE %s',[vVelden[i],vWhereSQL]),uHattrick.CreateReadTransAction(aDatabase)) do
    begin
      try
        ExecQuery;
        vWaarde := Fields[0].Value;
      finally
        CommitTransaction(Transaction, dbaFree);
        Free;
      end;
    end;

    ExecSQL(aDatabase,Format('UPDATE KARAKTER_PROFIEL SET %s = :WAARDE WHERE %s',[vVelden[i], vWhereSQL]),
      ['WAARDE'],[vWaarde]);
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: GetPossibleTwins
  Author:    Harry
  Date:      09-mei-2012
  Arguments: aDatabase: TIBDatabase; aKarakterID: Integer
  Result:    TBatchlingArray
-----------------------------------------------------------------------------}
function GetPossibleTwins(aDatabase: TIBDatabase; aKarakterID: Integer):TBatchlingArray;
begin
  SetLength(result, 0);

  with uHTDB.CreateSQL(aDatabase,'SELECT * FROM GET_POSSIBLE_TWINS(:ID, 0)',uHattrick.CreateReadTransAction(aDatabase)) do
  begin
    try
      ParamByName('ID').asInteger := aKarakterID;
      ExecQuery;
      while not EOF do
      begin
        SetLength(Result,High(Result)+2);
        Result[High(Result)] := FieldByName('ID').asInteger;
        Next;
      end;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

function ExtractIDFromLink(aURL,aLinkString:String):String;
var
  vPos:integer;
begin
  aURL := UpperCase(aURL);
  vPos := Pos(UpperCase(aLinkString),aURL);
  result := Copy(aURL, vPos + Length(aLinkString), Length(aURL));
  if Pos('&',result) > 0 then
  begin
    result := Copy(result, 1, Pos('&', result) - 1);
  end;
end;

function NivoTextToGetal(aNivo: String): Integer;
begin
  result := 0;

  if (aNivo = 'goddelijk') then
  begin
    result := 20;
  end;
  if (aNivo = 'utopisch') then
  begin
    result := 19;
  end;
  if (aNivo = 'magisch') then
  begin
    result := 18;
  end;
  if (aNivo = 'mythisch') then
  begin
    result := 17;
  end;
  if (aNivo = 'buitenaards') then
  begin
    result := 16;
  end;
  if (aNivo = 'reusachtig') then
  begin
    result := 15;
  end;
  if (aNivo = 'bovennatuurlijk') then
  begin
    result := 14;
  end;
  if (aNivo = 'wereldklasse') then
  begin
    result := 13;
  end;
  if (aNivo = 'wonderbaarlijk') then
  begin
    result := 12;
  end;
  if (aNivo = 'briljant') then
  begin
    result := 11;
  end;
  if (aNivo = 'uitmuntend') then
  begin
    result := 10;
  end;
  if (aNivo = 'formidabel') then
  begin
    result := 9;
  end;
  if (aNivo = 'uitstekend') then
  begin
    result := 8;
  end;
  if (aNivo = 'goed') then
  begin
    result := 7;
  end;
  if (aNivo = 'redelijk') then
  begin
    result := 6;
  end;
  if (aNivo = 'matig') then
  begin
    result := 5;
  end;
  if (aNivo = 'zwak') then
  begin
    result := 4;
  end;
  if (aNivo = 'slecht') then
  begin
    result := 3;
  end;
  if (aNivo = 'waardeloos') then
  begin
    result := 2;
  end;
  if (aNivo = 'rampzalig') then
  begin
    result := 1;
  end;
  if (aNivo = 'niet-bestaand') then
  begin
    result := 0;
  end;
end;


function NivoGetalToText(aNivo: double): string;
var
  vIntNiveau: integer;
begin
  vIntNiveau := Trunc(aNivo);
  case vIntNiveau of
    20: Result := 'goddelijk';
    19: Result := 'utopisch';
    18: Result := 'magisch';
    17: Result := 'mythisch';
    16: Result := 'buitenaards';
    15: Result := 'reusachtig';
    14: Result := 'bovennatuurlijk';
    13: Result := 'wereldklasse';
    12: Result := 'wonderbaarlijk';
    11: Result := 'briljant';
    10: Result := 'uitmuntend';
    9: Result := 'formidabel';
    8: Result := 'uitstekend';
    7: Result := 'goed';
    6: Result := 'redelijk';
    5: Result := 'matig';
    4: Result := 'zwak';
    3: Result := 'slecht';
    2: Result := 'waardeloos';
    1: Result := 'rampzalig';
    else
    begin
      result := 'niet-bestaand';
    end;
  end;

  if (Frac(aNivo) > 0) then
  begin
    result := Format('%s (%.2f)',[result, aNivo]);
  end
  else
  begin
    result := Format('%s (%d)',[result, vIntNiveau]);
  end;
end;

function GetLink(aBrowser:TEmbeddedWB; aHref: String; aForceEndsWith: Boolean = FALSE):String;
var
  vLinks:Variant;
  i, vPos:integer;
  vURL:String;
begin
  vLinks := aBrowser.OLEObject.Document.Links;

  result := '';

  if not(VarIsEmpty(vLinks)) then
  begin
    for i:=0 to vLinks.Length -1 do
    begin
      vUrl := Trim(vLinks.Item(i).toString);

      if (aForceEndsWith) then
      begin
        if (EndsWith(vUrl, aHref)) and (Pos(aHref,vURL) > 0) then
        begin
          result := vUrl;
        end;
      end
      else
      begin
        vPos := Pos(aHref,vUrl);
        if (vPos > 0) then
        begin
          result := vUrl;
        end;
      end;
    end;
  end;
end;

function VerwijderSpaties(aStr: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(aStr) do
    if (aStr[i] <> ' ') and (Ord(aStr[i]) <> 160) then
      Result := Result + aStr[i];
end;

{ TTSISet }

procedure TTSISet.ChangeMainSkill(aChange: double);
begin
  FLastChange := 0;
  case THoofdskills(MainSkill) of
    hsPositiespel:
    begin
      if (PositieSpel < 20) then
      begin
        PositieSpel := PositieSpel + aChange;
        FLastChange := aChange;
      end;
    end;
    hsKeepen:
    begin
      if (Keepen < 20) then
      begin
        Keepen := Keepen + aChange;
        FLastChange := aChange;
      end;
    end;
    hsVerdedigen:
    begin
      if (Verdedigen < 20) then
      begin
        Verdedigen := Verdedigen + aChange;
        FLastChange := aChange;
      end;
    end;
    hsScoren:
    begin
      if (Scoren < 20) then
      begin
        Scoren := Scoren + aChange;
        FLastChange := aChange;
      end;
    end;
    hsVleugelspel:
    begin
      if (Vleugelspel < 20) then
      begin
        Vleugelspel := Vleugelspel + aChange;
        FLastChange := aChange;
      end;
    end;
    hsPassen:
    begin
      if (Passen < 20) then
      begin
        Passen := Passen + aChange;
        FLastChange := aChange;
      end;
    end;
  end;
end;

function TTSISet.GetMainSkill: integer;
var
  vMax:double;
begin
  {hsPositiespel,hsVerdedigen,hsKeepen,hsScoren,hsVleugelspel,hsPassen}
  if FMainSkill = 0 then
  begin
    vMax := PositieSpel;
    FMainSkill := Ord(hsPositiespel);

    if Verdedigen > vMax then
    begin
      FMainSkill := Ord(hsVerdedigen);
      vMax := Verdedigen;
    end;

    if Scoren > vMax then
    begin
      FMainSkill := Ord(hsScoren);
      vMax := Scoren;
    end;

    if Keepen > vMax then
    begin
      FMainSkill := Ord(hsKeepen);
      vMax := Keepen;
    end;

    if Vleugelspel > vMax then
    begin
      FMainSkill := Ord(hsVleugelspel);
      vMax := Vleugelspel;
    end;

    if Passen > vMax then
    begin
      FMainSkill := Ord(hsPassen);
    end;
  end;

  result := FMainSkill;
end;

function TTSISet.GetSkill(aIndex: integer): integer;
begin
//'Keepen','None','Verdedigen','Positiespel', 'Vleugelspel','Scoren','Spelhervatting','Passen','Ervaring','Leiderschap');
  case aIndex of
    1: Result := Round(Keepen);
    3: Result := Round(Verdedigen);
    4: Result := Round(Positiespel);
    5: Result := Round(Vleugelspel);
    6: Result := Round(Scoren);
    7: Result := Round(Spelhervatting);
    8: Result := Round(Passen)
  else
    Result := 0;
  end;
end;

procedure TTSISet.MainSkillDown;
begin
  ChangeMainSkill(FLastChange * -1);
end;

procedure TTSISet.MainSkillUp(aLevel:double);
begin
  ChangeMainSkill(aLevel);
end;


function TTSISet.OverigeSkillsMax(aSkill1, aSkill2, aSkill3,
  aMaxSkillValue: integer): Boolean;
var
  vCount: integer;
begin
  Result := TRUE;

  vCount := 1;
  while (Result) and (vCount < 9) do
  begin
    if (vCount <> aSkill1) and
       (vCount <> aSkill2) and
       (vCount <> aSkill3) then
    begin
      Result := GetSkill(vCount) <= aMaxSkillValue;
    end;

    Inc(vCount);
  end;
end;

{ TWedstrijd }

constructor TWedstrijd.Create(aLeagueID, aMatchID: String;
  aOwnPlayers:boolean=TRUE);
begin
  LeagueID := aLeagueID;
  MatchID := aMatchID;
  Spelers := TObjectList.Create(aOwnPlayers);
end;

destructor TWedstrijd.Destroy;
begin
  Spelers.Free;
end;

{ TJeugdspeler }

constructor TJeugdspeler.Create;
begin
  IsNew := TRUE;
  IsNewSpec := FALSE;
end;

{ TDatabasePlayer }

constructor TDatabasePlayer.Create(aDatabase: TIBDatabase; aPlayerID: integer; aLoadPlayerInfo, aLoadKarakterInfo,
  aLoadSeniorInfo: boolean);
begin
  FDatabase := aDatabase;
  FID := aPlayerID;
  FLoadPlayerInfo := aLoadPlayerInfo;
  FLoadKarakterInfo := aLoadKarakterInfo;
  FLoadSeniorInfo := aLoadSeniorInfo;

  Reload;
end;

function TDatabasePlayer.ValueToStr(aValue: double): String;
begin
  if aValue > 0 then
    result := Format('%.1f',[aValue])
  else
    result := '?';
end;

function TDatabasePlayer.GetPotentie: String;
begin
  result := Format('%s GK - %s DEF - %s POS - %s WNG - %s PASS - %s SC - %s SH',
    [ValueToStr(PotKeepen), ValueToStr(PotVerdedigen), ValueToStr(PotPositiespel),
      ValueToStr(PotVleugelspel), ValueToStr(PotPassen),
      ValueToStr(PotScoren), ValueToStr(PotSpelhervatten)]);
end;

procedure TDatabasePlayer.LoadKarakterInfo;
var
  vSQL: TIBSQL;
begin
  vSQL := uHTDB.CreateSQL(FDatabase, '', uHattrick.CreateReadTransaction(FDatabase));

  try
    vSQL.SQL.Add('SELECT');

    vSQL.SQL.Add('IS_KEEPER,');
    vSQL.SQL.Add('SPECIALITEIT,');
    vSQL.SQL.Add('POT_KEEPEN,');
    vSQL.SQL.Add('POT_POSITIESPEL,');
    vSQL.SQL.Add('POT_PASSEN,');
    vSQL.SQL.Add('POT_VLEUGELSPEL,');
    vSQL.SQL.Add('POT_VERDEDIGEN,');
    vSQL.SQL.Add('POT_SCOREN,');
    vSQL.SQL.Add('POT_SPELHERVATTEN,');
    vSQL.SQL.Add('ALLROUND,');
    vSQL.SQL.Add('LAST_UPDATE,');
    vSQL.SQL.Add('HTYC');

    vSQL.SQL.Add('FROM KARAKTER_PROFIEL');
    vSQL.SQL.Add('WHERE');
    vSQL.SQL.Add('ID = :ID');

    vSQL.ParamByName('ID').asInteger := KarakterID;
    vSQL.ExecQuery;

    Keeper := vSQL.FieldByName('IS_KEEPER').asInteger = -1;
    Specialiteit := vSQL.FieldByName('SPECIALITEIT').asString;
    PotKeepen := vSQL.FieldByName('POT_KEEPEN').asFloat;
    PotPositiespel := vSQL.FieldByName('POT_POSITIESPEL').asFloat;
    PotPassen := vSQL.FieldByName('POT_PASSEN').asFloat;
    PotVleugelspel := vSQL.FieldByName('POT_VLEUGELSPEL').asFloat;
    PotVerdedigen := vSQL.FieldByName('POT_VERDEDIGEN').asFloat;
    PotScoren := vSQL.FieldByName('POT_SCOREN').asFloat;
    PotSpelhervatten := vSQL.FieldByName('POT_SPELHERVATTEN').asFloat;
    Allround := vSQL.FieldByName('ALLROUND').asInteger;
    LastKarakterUpdate := vSQL.FieldByName('LAST_UPDATE').asDateTime;
    KarakterHTYC := vSQL.FieldByName('HTYC').asInteger = -1;

  finally
    CommitTransaction(vSQL.Transaction, dbaFree);
    vSQL.Free;
  end;
end;

procedure TDatabasePlayer.LoadPlayerInfo;
var
  vSQL: TIBSQL;
begin

  vSQL := uHTDB.CreateSQL(FDatabase, '', uHattrick.CreateReadTransaction(FDatabase));

  try
    vSQL.SQL.Add('SELECT');

    vSQL.SQL.Add('J.KARAKTER_ID,');
    vSQL.SQL.Add('J.PROMOTED,');
    vSQL.SQL.Add('J.PLAYER_NAME,');
    vSQL.SQL.Add('J.LAST_UPDATE,');
    vSQL.SQL.Add('J.KEEPEN,');
    vSQL.SQL.Add('J.POSITIESPEL,');
    vSQL.SQL.Add('J.PASSEN,');
    vSQL.SQL.Add('J.VLEUGELSPEL,');
    vSQL.SQL.Add('J.VERDEDIGEN,');
    vSQL.SQL.Add('J.SCOREN,');
    vSQL.SQL.Add('J.SPELHERVATTEN,');
    vSQL.SQL.Add('J.TEAM_ID,');
    vSQL.SQL.Add('J.GEBOORTE_DATUM,');
    vSQL.SQL.Add('J.NATIONALITEIT,');
    vSQL.SQL.Add('U20.U20');

    vSQL.SQL.Add('FROM JEUGDSPELERS J');
    vSQL.SQL.Add('LEFT JOIN GET_IS_U20(J.GEBOORTE_DATUM,1) U20 ON (0=0)');
    vSQL.SQL.Add('WHERE');
    vSQL.SQL.Add('J.PLAYER_ID = :ID');

    vSQL.ParamByName('ID').asInteger := ID;
    vSQL.ExecQuery;

    KarakterID := vSQL.FieldByName('KARAKTER_ID').asInteger;
    Promoted := vSQL.FieldByName('PROMOTED').asInteger = -1;
    Naam := vSQL.FieldByName('PLAYER_NAME').asString;
    LastPlayerUpdate := vSQL.FieldByName('LAST_UPDATE').AsDateTime;
    CurKeepen := vSQL.FieldByName('KEEPEN').asFloat;
    CurPositiespel := vSQL.FieldByName('POSITIESPEL').asFloat;
    CurPassen := vSQL.FieldByName('PASSEN').asFloat;
    CurVleugelspel := vSQL.FieldByName('VLEUGELSPEL').asFloat;
    CurVerdedigen := vSQL.FieldByName('VERDEDIGEN').asFloat;
    CurScoren := vSQL.FieldByName('SCOREN').asFloat;
    CurSpelhervatten := vSQL.FieldByName('SPELHERVATTEN').asFloat;
    TeamID := vSQL.FieldByName('TEAM_ID').asInteger;
    GeboorteDatum := vSQL.FieldByName('GEBOORTE_DATUM').asDateTime;
    IsU20 := vSQL.FieldByName('U20').asInteger = -1;
    Nationaliteit := vSQL.FieldByName('NATIONALITEIT').asString;

  finally
    CommitTransaction(vSQL.Transaction, dbaFree);
    vSQL.Free;
  end;
end;

procedure TDatabasePlayer.LoadSeniorInfo;
var
  vSQL: TIBSQL;
begin
  vSQL := uHTDB.CreateSQL(FDatabase, '', uHattrick.CreateReadTransaction(FDatabase));

  try
    vSQL.SQL.Add('SELECT');
    vSQL.SQL.Add('ID');
    vSQL.SQL.Add('FROM SCOUTING');
    vSQL.SQL.Add('WHERE');
    vSQL.SQL.Add('YOUTHPLAYER_ID = :ID');

    vSQL.ParamByName('ID').asInteger := ID;
    vSQL.ExecQuery;

    IsSenior := vSQL.FieldByName('ID').asInteger > 0;
  finally
    CommitTransaction(vSQL.Transaction, dbaFree);
    vSQL.Free;
  end;
end;

procedure TDatabasePlayer.Reload;
begin
  if (FLoadPlayerInfo) then
    LoadPlayerInfo;

  if (FLoadKarakterInfo) then
    LoadKarakterInfo;

  if (FLoadSeniorInfo) then
    LoadSeniorInfo;
end;

function TDatabasePlayer.GetTalented: boolean;
begin
  result := uHattrick.IsTalented(FDatabase, ID);

  if (FTestNTAsPossibleU20) and (not result) and (not IsU20) then
  begin
    // NT spelers nog even testen op mogelijke U20 talent
    result := GetSPValue(FDatabase,'GET_TALENTED_BY_SKILLS',
        [ID,-1,Specialiteit,Nationaliteit,-1, KarakterID, GeboorteDatum, 0, 0],
        'U20_TALENTED',srtInteger) = -1;
  end;
end;

procedure WriteActivity(aDatabase: TIBDatabase);
begin
  ExecSQL(aDatabase,'UPDATE ACTIVITY SET LAST_ACTIVITY = CURRENT_TIMESTAMP',[],[]);
end;

function TDatabasePlayer.GetPossibleTalented: boolean;
begin
  result := uHattrick.IsPossibleTalented(FDatabase, ID);
end;

{ TDownloadThread }

constructor TDownloadThread.Create(aUrl: String);
begin
  inherited Create(TRUE);
  FreeOnTerminate := TRUE;
  FURL := aURL;
  FDownload := TIEDownload.Create(nil);
  FDownload.DownloadMethod := dmStream;
  FDownload.OnComplete := OnDownloadComplete;
end;

destructor TDownloadThread.Destroy;
begin
  FDownload.Free;
  inherited;
end;

procedure TDownloadThread.Execute;
begin
  FStartTime := Now;
  FDownload.Go(FURL);
  while not Terminated do
  begin
  end;
end;

procedure TDownloadThread.OnDownloadComplete(Sender: TCustomIEDownload; aFileNameAndPath,
      aFileName,vaFolderName, aExtension: WideString; const ActiveConnections: Integer);
begin
  Terminate;
end;

end.
