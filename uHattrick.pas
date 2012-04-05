unit uHattrick;

interface

uses
  EmbeddedWB, ContNrs, Controls, IBDatabase, classes, uBibDb;

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
    function GetMainSkill: integer;
    procedure ChangeMainSkill(aChange:double);
  public
    procedure MainSkillUp(aLevel:double);
    procedure MainSkillDown;    
    function GetSkill(aIndex: integer): integer;
    function OverigeSkillsMax(aSkill1, aSkill2, aSkill3, aMaxSkillValue: integer): Boolean;
  published
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
    property IsKeeper:Boolean read FIsKeeper write FIsKeeper;
    property Restyled: boolean read FRestyled write FRestyled;

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

function GetLink(aBrowser:TEmbeddedWB; aHref: String; aForceEndsWith: Boolean = FALSE): String;
function VerwijderSpaties(aStr: string): string;
function NivoTextToGetal(aNivo: String): Integer;
function NivoGetalToText(aNivo: double): string;
function SetValue(aBrowser:TEmbeddedWB;const aBrowserObjectNames : array of String;  aValue:String):boolean;
function GetBrowserObject(aBrowser:TEmbeddedWB;aName:String):Variant;
procedure SetBrowserObjectValue(aBrowserObject:Variant;aValue:String);
function GetMatchLink(aMatchID:String;aMainURL:String;aYouthmatch:boolean):String;
function ExtractIDFromLink(aURL,aLinkString:String):String;
function GetHattrickServer(aMainURL:String):String;
function GetYouthLeagueLink(aLeagueID,aMainURL:String):String;
function GetLeagueLink(aMainURL:String;aLeagueID:integer):String;
function GetSubstituteID(vBody:TStringList;aPlayerID:integer):integer;
function GetYouthPLayerLink(aMainURL:String;aYouthPlayerID:integer):String;
function GetTeamLink(aMainURL:String;aTeamID:integer;aIsYouthTeam:Boolean):String;
function AddHattrickYear(aDatum:TDate;aYears:integer):TDate;
function SaveKarakterProfiel(aDatabase: TIBDatabase; aTSISet:TTSISet; aForce:boolean): integer;
function SaveJeugdKarakterProfiel(aDatabase: TIBDatabase;aSpeler:TJeugdspeler;aForce:boolean):integer;
function SaveScouting(aDatabase: TIBDatabase; aTSISet:TTSISet; aTalentScouting: boolean): integer;
function FormatSpecialiteit(aXLSSpec: String): String;
function SpecToAfkorting(aSpec:String):String;
function ParsePlayerInfo(vBody: TStringList): TTSISet;
function GetGeboorteDatum(aLeeftijd,aDagen:integer):TDate;
function TwinIsPossible(aDatabase:TIBDatabase;aGeboorteDatum:TDate;
  aKarakterID:integer):boolean;
function ParseJeugdwedstrijd(vBody:TStringList;aLeagueID,aMatchID:String;
  aTeamID, aMainLeagueID: Integer):TWedstrijd;
function GetKarakters(aDatabase:TIBDatabase; aNeus, aGezicht, aOgen, aMond,
  aHaar, aBody: String; aIsKeeper:boolean):TIntegerArray;
function GetVolgNummer(aDatabase:TIBDatabase; aNeus, aGezicht, aOgen, aMond,
  aHaar, aBody: String; aIsKeeper:boolean):integer;
function GetYouthLineupLink(aMainURL: String;aTeamID, aMatchID:integer):String;

implementation
uses
  uBibString, Sysutils, Forms, Windows, uBibRuntime, uBibLog, Math, uBibMath, uBibConv,
  Dialogs, uBibMessageBox;

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

  vCurDagen := uBibDb.GetSPValue(aDatabase,'GET_LEEFTIJD',
    [aGeboorteDatum, Date],'DAYS',srtINteger);

  with uBibRuntime.CreateSQL(aDatabase) do
  begin
    try
      SQL.Add('SELECT J.GEBOORTE_DATUM, L.AGE, L.DAYS');
      SQL.Add('FROM JEUGDSPELERS J');
      SQL.Add('LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM, CURRENT_DATE) L ON (0=0)');
      SQL.Add('WHERE J.KARAKTER_ID = :ID');
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
      uBibDB.CommitTransaction(Transaction, TRUE);
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
        if vLine[i] in ['0'..'9'] then
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
        if vLine[i] in ['0'..'9'] then
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
      vPos := Pos('&nbsp;€',vBody.Text);
      vLine := Trim(Copy(vBody.Text,1,vPos -1));

      vGetal := '';
      for i:=1 to Length(vLine) do
      begin
        if vLine[i] in ['0'..'9'] then
        begin
          vGetal := vGetal + vLine[i];
        end;
      end;

      if (Pos('inclusief', Copy(vBody.Text,1, 80)) > 0) then
      begin
        result.Loon := Ceil(uBibMath.RoundTo(StrToInt(vGetal), 2) / 1.2);
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
      Result.WekenBlessure := uBibConv.AnyStrToInt(vLine);
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
        if vLine[i] in ['0'..'9'] then
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
        if vLine[i] in ['0'..'9'] then
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
  vID := uBibDb.GetFieldValue(aDatabase,'JEUGDSPELERS',['PLAYER_ID'],[aSpeler.ID],'KARAKTER_ID',srtInteger);

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

      with uBibRuntime.CreateSQL(aDatabase, cKarakterSQL) do
      begin
        try
          vID := uBibDb.GetGeneratorValue(aDatabase, 'GEN_KARAKTER_PROFIEL');
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
          uBibDb.CommitTransaction(Transaction,TRUE);
          Free;
        end;
      end;
    end
    else
    begin
      aSpeler.IsNew := FALSE;
      vLeiderschap := uBibDb.GetFieldValue(aDatabase,'KARAKTER_PROFIEL',
        ['ID'],[vID],'LEIDERSCHAP',srtString);
      vSpecialiteit := uBibDb.GetFieldValue(aDatabase,'KARAKTER_PROFIEL',
        ['ID'],[vID],'SPECIALITEIT',srtString);

      aSpeler.Leiderschap := vLeiderschap;
      
      if (aSpeler.Specialiteit <> '') and
         (vSpecialiteit <> aSpeler.Specialiteit) then
      begin
        aSpeler.OldSpec := vSpecialiteit;
        aSpeler.IsNewSpec := TRUE;

        if (vSpecialiteit = '') or (aForce) or (MessageBoxWarning(
          Format('[%s] Weet je zeker dat je karakterID %d wilt wijzigen van %s in %s?',[aSpeler.ID,vID,vSpecialiteit,aSpeler.Specialiteit]),'HTScanner',TRUE)) then
        begin
          uBibDB.UpdateFieldValue(aDatabase, nil, 'KARAKTER_PROFIEL', ['ID'], [vID], ['SPECIALITEIT'], [aSpeler.Specialiteit]);
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
begin
  i:=-1;
  with uBibRuntime.CreateSQL(aDatabase) do
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
      repeat
        inc(i);
        Close;
        ParamByName('VOLGNUMMER').asInteger := i;
        ExecQuery;
      until FieldByName('ID').asInteger = 0;
    finally
      uBibDB.CommitTransaction(Transaction,TRUE);
      Free;
    end;
  end;

  result := i;
end;

function GetKarakters(aDatabase:TIBDatabase; aNeus, aGezicht, aOgen, aMond,
  aHaar, aBody: String; aIsKeeper:boolean):TIntegerArray;
begin
  SetLength(Result,0);
  
  with uBibRuntime.CreateSQL(aDatabase) do
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
      uBibDb.CommitTransaction(Transaction, TRUE);
      Free;
    end;
  end;
end;

function SaveKarakterProfiel(aDatabase: TIBDatabase; aTSISet:TTSISet; aForce:boolean): integer;
const
  cKarakterSQL =
    'INSERT INTO KARAKTER_PROFIEL ' +
    ' (ID, EERLIJKHEID, LEIDERSCHAP, AGRESSIVITEIT, KARAKTER, NEUS, GEZICHT, OGEN, MOND, HAAR, SIKJE, BODY, SPECIALITEIT, IS_KEEPER, VOLGNUMMER) '+
    ' VALUES ' +
    ' (:ID, :EERLIJKHEID, :LEIDERSCHAP, :AGRESSIVITEIT, :KARAKTER, :NEUS, :GEZICHT, :OGEN, :MOND, :HAAR, :SIKJE, :BODY, :SPECIALITEIT, :IS_KEEPER, :VOLGNUMMER)';
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
    vYouthKarakterID := uBibDb.GetFieldValue(aDatabase,'JEUGDSPELERS',['PLAYER_ID'],[aTSISet.YouthPlayerID],'KARAKTER_ID',srtInteger);
  end
  else
  begin
    vYouthKarakterID := -1;
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
      if uBibString.EndsWith(vNose,Format('m%s',[cNose[i]])) then
      begin
        // Volwassen neus -- met haar weer naar jeugdneus converteren!!
        vNose := Copy(vNose,1,Length(vNose) - 2);
        aTSISet.Nose := vNose;
      end
    end;
    if uBibString.EndsWith(aTSISet.Mouth,'g') then
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
          uBibDb.ExecSQL(aDatabase,'UPDATE JEUGDSPELERS SET RESTYLED = -1 WHERE PLAYER_ID = :ID',['ID'],[aTSISet.YouthPlayerID]);
          vDoSave := FALSE;
        end;
        
        vID := vYouthKarakterID;
      end;
    end;
    
    if (vDoSave) then
    begin
      if (vID <= 0) then
      begin
        with uBibRuntime.CreateSQL(aDatabase, cKarakterSQL) do
        begin
          try
            vID := uBibDb.GetGeneratorValue(aDatabase, 'GEN_KARAKTER_PROFIEL');
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
            ParamByName('VOLGNUMMER').asInteger := GetVolgNummer(aDatabase,
              aTSISet.Nose, aTSISet.Face, aTSISet.Eyes, aTSISet.Mouth, aTSISet.Hair,
              aTSISet.Body, aTSISet.IsKeeper);
            ExecQuery;

          finally
            uBibDb.CommitTransaction(Transaction,TRUE);
            Free;
          end;
        end;
      end
      else
      begin
        vSpecialiteit := uBibDb.GetFieldValue(aDatabase,'KARAKTER_PROFIEL',['ID'],
          [vID],'SPECIALITEIT',srtString);

        vOk := TRUE;

        if ((vSpecialiteit = '') or (vSpecialiteit <> aTSISet.Specialiteit)) and (aTSISet.Specialiteit <> '') then
        begin
          if (vSpecialiteit = '') or (aForce) or (MessageBoxWarning(
            Format('[%d] Weet je zeker dat je karakterID %d wilt wijzigen van %s in %s?',[aTSISet.PlayerID, vID,vSpecialiteit,aTSISet.Specialiteit]),'HTScanner',TRUE)) then
          begin
            aTSISet.FSpecOntdekt := TRUE;
            uBibDB.UpdateFieldValue(aDatabase, nil, 'KARAKTER_PROFIEL', ['ID'], [vID], ['SPECIALITEIT'], [aTSISet.Specialiteit]);
          end
          else
          begin
            vOk := (vSpecialiteit = '');
          end;
        end
        else if (aTSISet.Specialiteit = '') and (vSpecialiteit <> 'Geen') then
        begin
          if (vSpecialiteit = '') or (aForce) or (MessageBoxWarning(
            Format('[%d] Weet je zeker dat je karakterID %d wilt wijzigen van %s in %s?',[aTSISet.PlayerID,vID,vSpecialiteit,aTSISet.Specialiteit]),'HTScanner',TRUE)) then
          begin
            uBibDB.UpdateFieldValue(aDatabase, nil, 'KARAKTER_PROFIEL', ['ID'], [vID], ['SPECIALITEIT'], ['Geen']);
          end
          else
          begin
            vOk := (vSpecialiteit = '');
          end;
        end;

        if ((vOk) and (aTSISet.Karakter <> '')) then
        begin
          uBibDb.ExecSQL(aDatabase,'UPDATE KARAKTER_PROFIEL SET EERLIJKHEID = :PARAM1, LEIDERSCHAP = :PARAM2, AGRESSIVITEIT = :PARAM3, KARAKTER = :PARAM4 WHERE ID = :ID',
            ['ID','PARAM1','PARAM2','PARAM3','PARAM4'],
            [vID,aTSISet.Eerlijkheid,aTSISet.Leiderschap,aTSISet.Agressiviteit,aTSISet.Karakter]);
        end;
      end;
    end;
  end;
  result := vID;
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
  '   U20, VERDEDIGEN, VLEUGELSPEL, VORM, VRAAGPRIJS, WEKEN_BLESSURE, YOUTHPLAYER_ID ) '+
  'VALUES (' +
  '   :AGRESSIVITEIT, :CONDITIE, :DATUM, :DEADLINE, :EERLIJKHEID, :ERVARING, :HERKOMST, :HOOGSTE_BOD,'+
  '   :ID, :KARAKTER, :KARAKTER_PROFIEL_ID, :KEEPEN, :LEEFTIJD, :LEIDERSCHAP, :LOON, :NT, :PASSEN, '+
  '   :PLAYER_ID, :PLAYER_NAAM, :POSITIESPEL, :SCOREN, :SPECIALITEIT, :SPELHERVATTING, :SUBSKILL, '+
  '   :TALENT_SCOUTING, :TSI, :U20, :VERDEDIGEN, :VLEUGELSPEL, :VORM, :VRAAGPRIJS, :WEKEN_BLESSURE, :YOUTHPLAYER_ID)';
var
  vCurSkill:double;
begin
  try
    result := -1;
    if (aTSISet.PlayerID > 0) then
    begin
      aTSISet.FTransferListed := (aTSISet.Deadline > 0);

      vId := uBibDb.GetFieldValue(aDatabase,'SCOUTING',['PLAYER_ID'],[aTSISet.PlayerID],'ID',srtInteger);

      if (vID > 0) then
      begin
        if (aTSISet.Specialiteit <> '') then
        begin
          vSpec := aTSISet.Specialiteit;
        end
        else
        begin
          vSpec := 'Geen';
        end;

        uBibDb.ExecSQL(aDatabase,'UPDATE SCOUTING SET PLAYER_NAAM = :PLAYER_NAAM, TSI = :TSI, VORM = :VORM, CONDITIE = :CONDITIE,'+
          ' LEEFTIJD = :LEEFTIJD, HERKOMST = :HERKOMST, SPECIALITEIT = :SPECIALITEIT, ERVARING = :ERVARING, KARAKTER = :KARAKTER, '+
          ' AGRESSIVITEIT = :AGRESSIVITEIT, EERLIJKHEID = :EERLIJKHEID, LEIDERSCHAP = :LEIDERSCHAP, DATUM = CURRENT_DATE,'+
          ' LOON = :LOON, WEKEN_BLESSURE = :WEKEN_BLESSURE, KARAKTER_PROFIEL_ID = :KARAKTER_PROFIEL_ID WHERE ID = :ID',
            ['ID','PLAYER_NAAM','TSI','VORM','CONDITIE','LEEFTIJD','HERKOMST','SPECIALITEIT','ERVARING','KARAKTER',
             'AGRESSIVITEIT','EERLIJKHEID', 'LEIDERSCHAP', 'LOON', 'WEKEN_BLESSURE', 'KARAKTER_PROFIEL_ID'],
            [vID,aTSISet.PlayerName,aTSISet.PlayerTSI,aTSISet.Vorm,aTSISet.Conditie, aTSISet.Leeftijd, aTSISet.Herkomst,
             vSpec, aTSISet.Ervaring, aTSISet.Karakter, aTSISet.Agressiviteit, aTSISet.Eerlijkheid, aTSISet.Leiderschap,
             aTSISet.Loon, aTSISet.WekenBlessure, aTSISet.KarakterID]);

        if (aTSISet.Deadline > 0) then
        begin
          vCurSkill := uBibDb.GetFieldValue(aDatabase,'SCOUTING',['ID'],[vID],'VERDEDIGEN',srtFloat);

          if (vCurSkill = 0) then
          begin
            // Geen bestaande waarden overschrijven!
            uBibDb.ExecSQL(aDatabase,'UPDATE SCOUTING SET POSITIESPEL = :POSITIESPEL, VERDEDIGEN = :VERDEDIGEN, SCOREN = :SCOREN,'+
              ' PASSEN = :PASSEN, KEEPEN = :KEEPEN, VLEUGELSPEL = :VLEUGELSPEL, SPELHERVATTING = :SPELHERVATTING, VRAAGPRIJS = :VRAAGPRIJS,'+
              ' HOOGSTE_BOD = :HOOGSTE_BOD, DEADLINE = :DEADLINE WHERE ID = :ID',
              ['ID','POSITIESPEL','VERDEDIGEN','SCOREN','PASSEN','KEEPEN','VLEUGELSPEL',
               'SPELHERVATTING','VRAAGPRIJS','HOOGSTE_BOD','DEADLINE'],
              [vID, aTSISet.PositieSpel, aTSISet.Verdedigen, aTSISet.Scoren, aTSISet.Passen,
               aTSISet.Keepen,aTSISet.Vleugelspel,aTSISet.Spelhervatting, aTSISet.VraagPrijs, aTSISet.HoogsteBod,
               aTSISet.Deadline]);
          end;
        end;
      end
      else
      begin
        with uBibRuntime.CreateSQL(aDatabase, cScoutingSQL) do
        begin
          try
            Result := uBibDb.GetGeneratorValue(aDatabase,'GEN_SCOUTING_ID');

            ParamByName('ID').asInteger := Result;
            ParamByName('PLAYER_ID').asInteger := aTSISet.PlayerID;
            ParamByName('PLAYER_NAAM').asString := aTSISet.PlayerName;
            ParamByName('TSI').asInteger := aTSISet.PlayerTSI;
            ParamByName('VORM').asInteger := aTSISet.Vorm;
            ParamByName('CONDITIE').asInteger := aTSISet.Conditie;
            ParamByName('POSITIESPEL').asFloat := aTSISet.PositieSpel;
            ParamByName('VERDEDIGEN').asFloat := aTSISet.Verdedigen;
            ParamByName('SCOREN').asFloat := aTSISet.Scoren;
            ParamByName('PASSEN').asFloat := aTSISet.Passen;
            ParamByName('KEEPEN').asFloat := aTSISet.Keepen;
            ParamByName('VLEUGELSPEL').asFloat := aTSISet.Vleugelspel;
            ParamByName('SPELHERVATTING').asFLoat := aTSISet.Spelhervatting;
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

            ExecQuery;
          finally
            uBibDb.CommitTransaction(Transaction,TRUE);
            Free;
          end;
        end;
      end;
    end;
  except
    uBibLog.Global_AddLog(Format('Fout in %s.%s',['uHattrick','SaveScouting']));
    raise;
  end;
end;


function GetBrowserObject(aBrowser:TEmbeddedWB;aName:String):Variant;
begin
  try
    if not VarIsEmpty(aBrowser.OleObject.document) then
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
    result := Format('%s&isYouth=True',[result]);
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

procedure SetBrowserObjectValue(aBrowserObject:Variant;aValue:String);
begin
  if not(VarIsEmpty(aBrowserObject)) then
  begin
    aBrowserObject.Value := aValue;
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
  while VarIsEmpty(vItem) and (i <= High(aBrowserObjectNames)) do
  begin
    vItem := GetBrowserObject(aBrowser, aBrowserObjectNames[i]);
    inc(i);
  end;

  if VarIsEmpty(vItem) then
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
        if (uBibString.EndsWith(vUrl, aHref)) and (Pos(aHref,vURL) > 0) then
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

end.
