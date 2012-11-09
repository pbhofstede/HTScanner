unit FormMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, OleCtrls, SHDocVw_EWB, EwbCore, EmbeddedWB, StdCtrls, IBSQL, formVoortgang,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, IBDatabase, Db, ActiveX,
  dxTL, dxDBCtrl, dxDBGrid, IBCustomDataSet, IBQuery, uHattrick, Urlmon,
  dxDBTLCl, dxGrClms, contnrs, dxBar, ImgList, dxBarExtItems, MSHTML, dxTLClms,
  ComCtrls, Menus, JvTrayIcon, JvComponent, IEDownload,
  cxClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsdxBarPainter,
  JvComponentBase, cxPC, uHTXLS, cxContainer, cxEdit, cxTextEdit, cxMemo, JvMail;

type
  TTeam = class
    URL:String;
    Name:String;
    Positie:String;
    Supporters:Integer;
    Stadion: String;
  end;

  TSkillSet = class
  private
    FSkill3_Level: integer;
    FSkill1_Level: integer;
    FSkill4_Level: integer;
    FSkill2_Level: integer;
    FSkill2: String;
    FSkill3: String;
    FSkill4: String;
    FSkill1: String;
    FSkill1_Level_Max: integer;
    FSkill4_Level_Max: integer;
    FSkill2_Level_Max: integer;
    FSkill3_Level_Max: integer;
    FSkill1_Index: String;
    FSkill4_Index: String;
    FSkill2_Index: String;
    FSkill3_Index: String;
  public
    property Skill1: String read FSkill1;
    property Skill1_Level:integer read FSkill1_Level;
    property Skill1_Level_Max:integer read FSkill1_Level_Max;
    property Skill1_Index: String read FSkill1_Index;
    property Skill2: String read FSkill2;
    property Skill2_Level: integer read FSkill2_Level;
    property Skill2_Level_Max:integer read FSkill2_Level_Max;
    property Skill2_Index: String read FSkill2_Index;
    property Skill3: String read FSkill3;
    property Skill3_Level:integer read FSkill3_Level;
    property Skill3_Level_Max:integer read FSkill3_Level_Max;
    property Skill3_Index: String read FSkill3_Index;
    property Skill4: String read FSkill4;
    property Skill4_Level: integer read FSkill4_Level;
    property Skill4_Level_Max:integer read FSkill4_Level_Max;
    property Skill4_Index: String read FSkill4_Index;
  end;

  TfrmHTScanner = class(TForm)
    ibdbHTInfo: TIBDatabase;
    pgctrlLijst: TcxPageControl;
    tbBrowser: TcxTabSheet;
    tbWaardes: TcxTabSheet;
    HTBrowser: TEmbeddedWB;
    dxDBGrid1: TdxDBGrid;
    dsWaardes: TDataSource;
    ibqrWaardes: TIBQuery;
    dxDBGrid1SPELER_TYPE: TdxDBGridMaskColumn;
    dxDBGrid1LEEFTIJD: TdxDBGridMaskColumn;
    dxDBGrid1AANTAL_TRANSFERS: TdxDBGridMaskColumn;
    dxDBGrid1SKILL1: TdxDBGridMaskColumn;
    dxDBGrid1CUR_LEVEL: TdxDBGridMaskColumn;
    dxDBGrid1SKILL2: TdxDBGridMaskColumn;
    dxDBGrid1SKILL2_LEVEL: TdxDBGridMaskColumn;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1WINST_AGE_UP: TdxDBGridCurrencyColumn;
    dxDBGrid1WINST_SKILL1_UP: TdxDBGridCurrencyColumn;
    dxDBGrid1WINST_SKILL2_UP: TdxDBGridCurrencyColumn;
    dxDBGrid1WINST_SKILL1_AGE_UP: TdxDBGridCurrencyColumn;
    dxDBGrid1WINST_SKILL2_AGE_UP: TdxDBGridCurrencyColumn;
    dxDBGrid1CUR_WAARDE: TdxDBGridCurrencyColumn;
    dxDBGrid1COUNT_AGE_UP: TdxDBGridColumn;
    dxDBGrid1COUNT_SKILL_UP: TdxDBGridColumn;
    dxDBGrid1COUNT_SKILL1_AGE_UP: TdxDBGridColumn;
    dxDBGrid1COUNT_SKILL2_AGE_UP: TdxDBGridColumn;
    dxDBGrid1COUNT_SKILL2_UP: TdxDBGridColumn;
    tbTSI: TcxTabSheet;
    dxBarManager1: TdxBarManager;
    pmScouting: TdxBarPopupMenu;
    ImageList1: TImageList;
    btnExportdata: TdxBarButton;
    btnImportData: TdxBarButton;
    btnExportExcel: TdxBarButton;
    dxDBGrid1SKILL3: TdxDBGridColumn;
    dxDBGrid1SKILL3_LEVEL: TdxDBGridColumn;
    dxDBGrid1SKILL4: TdxDBGridColumn;
    dxDBGrid1SKILL4_LEVEL: TdxDBGridColumn;
    TSIBrowser: TEmbeddedWB;
    tbScouting: TcxTabSheet;
    dxDBGrid2: TdxDBGrid;
    dsScouting: TDataSource;
    ibqrScouting: TIBQuery;
    dxDBGrid2ID: TdxDBGridMaskColumn;
    dxDBGrid2PLAYER_ID: TdxDBGridMaskColumn;
    dxDBGrid2PLAYER_NAAM: TdxDBGridMaskColumn;
    dxDBGrid2TSI: TdxDBGridMaskColumn;
    dxDBGrid2VORM: TdxDBGridMaskColumn;
    dxDBGrid2CONDITIE: TdxDBGridMaskColumn;
    dxDBGrid2SPELHERVATTING: TdxDBGridMaskColumn;
    dxDBGrid2LEEFTIJD: TdxDBGridMaskColumn;
    dxDBGrid2POSITIESPEL: TdxDBGridCurrencyColumn;
    dxDBGrid2VERDEDIGEN: TdxDBGridCurrencyColumn;
    dxDBGrid2VLEUGELSPEL: TdxDBGridCurrencyColumn;
    dxDBGrid2KEEPEN: TdxDBGridCurrencyColumn;
    dxDBGrid2PASSEN: TdxDBGridCurrencyColumn;
    dxDBGrid2SCOREN: TdxDBGridCurrencyColumn;
    btnCopyPlayerLinkClipboard: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    btnVerversen: TdxBarButton;
    dxBarDockControl2: TdxBarDockControl;
    btnVerwijderScouting: TdxBarButton;
    dxDBGrid2SUBSKILL: TdxDBGridCurrencyColumn;
    dxDBGrid2VRAAGPRIJS: TdxDBGridCurrencyColumn;
    dxDBGrid2HOOGSTE_BOD: TdxDBGridCurrencyColumn;
    dxDBGrid2DEADLINE: TdxDBGridDateColumn;
    dxBarDockControl3: TdxBarDockControl;
    btnLogin: TdxBarButton;
    pckedPlayerType: TdxBarListItem;
    btnScanLijst: TdxBarButton;
    btnStartScouting: TdxBarButton;
    dbgrdScouting: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskLEEFTIJD: TdxDBGridMaskColumn;
    dxDBGridMaskTSI: TdxDBGridMaskColumn;
    dxDBGridDateDEADLINE: TdxDBGridDateColumn;
    dxDBGridCurrencyVRAAGPRIJS: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyHOOGSTE_BOD: TdxDBGridCurrencyColumn;
    dxDBGridCurrencySUBSKILL: TdxDBGridCurrencyColumn;
    dxDBGridMaskVORM: TdxDBGridMaskColumn;
    dxDBGridMaskColumn7: TdxDBGridMaskColumn;
    dxDBGridCurrencyColumn4: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn5: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn6: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn7: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn8: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn9: TdxDBGridCurrencyColumn;
    dxDBGridMaskColumn8: TdxDBGridMaskColumn;
    Panel1: TPanel;
    dbgrdTransferprijzen: TdxDBGrid;
    dsTransferprijzen: TDataSource;
    ibqrTransferprijzen: TIBQuery;
    dbgrdTransferprijzenID: TdxDBGridMaskColumn;
    dbgrdTransferprijzenDATUM: TdxDBGridDateColumn;
    dbgrdTransferprijzenTRANSFER_COUNT: TdxDBGridMaskColumn;
    dbgrdTransferprijzenTRANSFER_PRIZE: TdxDBGridCurrencyColumn;
    dbgrdTransferprijzenTRANSFER_PRIZE_AGEUP_SKILLUP: TdxDBGridCurrencyColumn;
    dbgrdTransferprijzenTRANSFER_COUNT_AGEUP_SKILLUP: TdxDBGridColumn;
    dxDBGrid1SCAN_DATE: TdxDBGridDateColumn;
    edMinAge: TdxBarEdit;
    edMaxAge: TdxBarEdit;
    btnEdPaginas: TdxBarEdit;
    dbgrdScoutingHERKOMST: TdxDBGridColumn;
    dbgrdScoutingSPECIALITEIT: TdxDBGridColumn;
    dbgrdScoutingERVARING: TdxDBGridColumn;
    dbgrdScoutingLEIDERSCHAP: TdxDBGridColumn;
    dbgrdScoutingKARAKTER: TdxDBGridColumn;
    dbgrdScoutingAGRESSIVITEIT: TdxDBGridColumn;
    dbgrdScoutingEERLIJKHEID: TdxDBGridColumn;
    btnScoutingExportXLS: TdxBarButton;
    btnVanPagins: TdxBarEdit;
    btnTransferprijsEvaluatie: TdxBarButton;
    btnRefreshScouting: TdxBarButton;
    btnUitdaging: TdxBarButton;
    tbFriendly: TcxTabSheet;
    trlFriendly: TdxTreeList;
    dxTreeList1Column1: TdxTreeListColumn;
    dxTreeList1Column2: TdxTreeListColumn;
    dxTreeList1Column3: TdxTreeListColumn;
    dxTreeList1Column4: TdxTreeListColumn;
    trlFriendlyColumn5: TdxTreeListColumn;
    trlFriendlyColumn6: TdxTreeListColumn;
    tsBidwar: TcxTabSheet;
    lblSpelerID: TLabel;
    edSpelerID: TdxMaskEdit;
    lblMaxPrijs: TLabel;
    btnStartBidWar: TButton;
    edMaxPrize: TdxCurrencyEdit;
    FBidwarTimer: TTimer;
    btnStopBidwar: TButton;
    btnScout: TdxBarListItem;
    dxTabSheet1: TcxTabSheet;
    dbgrdTalents: TdxDBGrid;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    dxDBGridMaskColumn6: TdxDBGridMaskColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridMaskColumn9: TdxDBGridMaskColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridMaskColumn10: TdxDBGridMaskColumn;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    dxDBGridMaskColumn11: TdxDBGridMaskColumn;
    dxDBGridMaskColumn12: TdxDBGridMaskColumn;
    dxDBGridMaskColumn13: TdxDBGridMaskColumn;
    dsTalents: TDataSource;
    ibqrTalents: TIBQuery;
    dxDBGridCurrencyColumn10: TdxDBGridColumn;
    dxDBGridCurrencyColumn11: TdxDBGridColumn;
    dxDBGridCurrencyColumn12: TdxDBGridColumn;
    dxDBGridCurrencyColumn13: TdxDBGridColumn;
    dxDBGridCurrencyColumn14: TdxDBGridColumn;
    dxDBGridCurrencyColumn15: TdxDBGridColumn;
    dxBarDockControl4: TdxBarDockControl;
    btnRefreshTalents: TdxBarButton;
    dbgrdTalentsColumn18: TdxDBGridDateColumn;
    dbgrdTalentsColumn19: TdxDBGridCheckColumn;
    dbgrdTalentsColumn20: TdxDBGridCheckColumn;
    dbgrdTalentsVRAAGPRIJS: TdxDBGridCurrencyColumn;
    dbgrdTalentsHOOGSTE_BOD: TdxDBGridCurrencyColumn;
    dbgrdTalentsLOON: TdxDBGridCurrencyColumn;
    btnAddScoutingToBot: TdxBarButton;
    btnStopScouting: TdxBarButton;
    lblTeamID: TLabel;
    StatusBar1: TStatusBar;
    btnGetKarakter: TdxBarButton;
    dbgrdTransferprijzenTRANSFER_PRIZE_SKILLUP: TdxDBGridCurrencyColumn;
    dbgrdTransferprijzenTRANSFER_COUNT_SKILLUP: TdxDBGridColumn;
    dbgrdScoutingAANTAL_KOOPJES: TdxDBGridColumn;
    tsJeugdScout: TcxTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    wbJeugdscout1: TEmbeddedWB;
    wbJeugdscout3: TEmbeddedWB;
    wbJeugdscout2: TEmbeddedWB;
    btnJeugdScoutLogin: TButton;
    btnJeugdScoutScout: TButton;
    btnParseU17Docs: TdxBarButton;
    btnTest: TdxBarButton;
    btnBigScout: TdxBarButton;
    Button1: TButton;
    btnPlayerInfo: TdxBarButton;
    btnAddToKoopBot: TdxBarButton;
    pmStatusbar: TPopupMenu;
    btnWarpspeed: TMenuItem;
    btnDoubleSpeed: TMenuItem;
    btnAgeTest: TdxBarButton;
    JvTrayIcon1: TJvTrayIcon;
    dxBarSubItem1: TdxBarSubItem;
    btnNTDoc: TdxBarButton;
    mLogging: TdxMemo;
    btnTripleSpeed: TMenuItem;
    IEDownload1: TIEDownload;
    lblStatus: TdxBarStatic;
    tmrAutoStart: TTimer;
    Quadspeed1: TMenuItem;
    N1: TMenuItem;
    Forcesave1: TMenuItem;
    btnHTCY: TdxBarButton;
    btnAuto: TMenuItem;
    tmrActivity: TTimer;
    vMemo: TcxMemo;
    Ignoreerrors1: TMenuItem;
    JvMail1: TJvMail;
    procedure Button1Click(Sender: TObject);
    procedure HTBrowserDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure HTBrowserBeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure btnStartScanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure HTBrowserNEWProgressChange(Sender: TObject; Progress,
      ProgressMax: Integer);
    procedure dxDBGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure btnExportdataClick(Sender: TObject);
    procedure btnImportDataClick(Sender: TObject);
    procedure btnExportExcelClick(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure btnCopyPlayerLinkClipboardClick(Sender: TObject);
    procedure btnVerversenClick(Sender: TObject);
    procedure btnVerwijderScoutingClick(Sender: TObject);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ibqrScoutingAfterOpen(DataSet: TDataSet);
    procedure dsScoutingDataChange(Sender: TObject; Field: TField);
    procedure TSIBrowserDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure TSIBrowserBeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure btnScoutingExportXLSClick(Sender: TObject);
    procedure HTBrowserDownloadBegin(Sender: TObject);
    procedure btnTransferprijsEvaluatieClick(Sender: TObject);
    procedure btnRefreshScoutingClick(Sender: TObject);
    procedure btnUitdagingClick(Sender: TObject);
    procedure trlFriendlyCompare(Sender: TObject; Node1,
      Node2: TdxTreeListNode; var Compare: Integer);
    procedure btnStartBidWarClick(Sender: TObject);
    procedure FBidwarTimerTimer(Sender: TObject);
    procedure btnStopBidwarClick(Sender: TObject);
    procedure btnScoutClick(Sender: TObject);
    procedure btnRefreshTalentsClick(Sender: TObject);
    procedure dbgrdTalentsCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgrdTalentsDblClick(Sender: TObject);
    procedure btnAddScoutingToBotClick(Sender: TObject);
    procedure btnGetKarakterClick(Sender: TObject);
    procedure btnJeugdScoutLoginClick(Sender: TObject);
    procedure btnJeugdScoutScoutClick(Sender: TObject);
    procedure btnParseU17DocsClick(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure btnBigScoutClick(Sender: TObject);
    procedure btnPlayerInfoClick(Sender: TObject);
    procedure btnAddToKoopBotClick(Sender: TObject);
    procedure btnWarpspeedClick(Sender: TObject);
    procedure btnDoubleSpeedClick(Sender: TObject);
    procedure btnAgeTestClick(Sender: TObject);
    procedure btnNTDocClick(Sender: TObject);
    procedure btnTripleSpeedClick(Sender: TObject);
    procedure TSIBrowserDownloadBegin(Sender: TObject);
    procedure IEDownload1DownloadComplete(Sender: TBSCB; Stream: TStream;
      Result: HRESULT);
    procedure IEDownload1Download(Res: HRESULT; stMessage: String);
    procedure tmrAutoStartTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Quadspeed1Click(Sender: TObject);
    procedure Forcesave1Click(Sender: TObject);
    procedure btnHTCYClick(Sender: TObject);
    procedure btnAutoClick(Sender: TObject);
    procedure tmrActivityTimer(Sender: TObject);
    procedure tmrDSTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure IEDownload1Complete(Sender: TCustomIEDownload; aFileNameAndPath,
      aFileName, aFolderName, aExtension: WideString;
      const ActiveConnections: Integer);
    procedure IEDownload1BeforeDownload(Sender: TInfoData; const Url, FileName,
      FileExtension, Host, DownloadFolder: string; const FileSize: Integer;
      var Cancel: Boolean);
    procedure Ignoreerrors1Click(Sender: TObject);
  private
    FActiveThreadCount: integer;
    FCurCheckPlayer, FCurCheckVaardigheid: String;
    FAftermatchCheck: boolean;
    FStartParsing: TDateTime;
    FISU20, FFullAuto, FNoTalentCheck: boolean;
    FAutoStart: boolean;
    FOpnieuw: boolean;
    FDocumentCompleted: boolean;
    FUitdagingen : TStringList;
    FTSIBrowserDocumentCompleted: boolean;
    FTSIBrowserUrl: String;
    FUserName: string;
    FLastKarakterID: integer;
    FMailserver: String;
    FErrorList, FChangeLog: TStringList;
    FTeamID: integer;
    FFriendlyFound: boolean;
    FLastPlayerID: integer;
    FPassWord: String;
    FInsertSQL, FJeugdspelersSQL, FJeugdPrestatiesSQL: TIBSQL;
    FSubSkill1: String;
    FFullScouting: boolean;
    FSubSkill3: String;
    FSubSkill2: String;
    FLoggedIn: boolean;
    FMinimalFanclubSizeForFriendly: integer;
    FTSISQL: TIBSQL;
    FScoutingHistorySQL: TIBSQL;
    FMinimaalMainSkill: integer;
    FMaximaalMainSkill: integer;
    FBidWarPayerID: integer;
    FBidWarMaxPrize: integer;
    FBidWarSluitingsTijd: TDateTime;
    FTPEMarge: integer;
    FMakelaarsPerc: double;
    FVorigeClubs: double;
    FKoopjesMarge: integer;
    FTotalYouthTeams,FTotalPlayers,FTotalMatches:integer;
    FKoopjesMargePerc: integer;
    FKoopjesLoonWeken: integer;
    FCurrentURL: String;
    FCompetitieReeks: integer;
    FLeeftijden:array of TDate;
    FCurScan: String;
    FCheckBatchlings, FWriteActivitiy: boolean;
    FScanAll: boolean;
    FOnbekendeSpelers: integer;
    FBekendeSpelers: integer;
    FSpecOntdekt: integer;
    FJeugdSpelerRestored: integer;
    FCurSpec: String;
    FDownloadErrors: integer;
    FCurLeiderschap: String;
    FTransferListed: integer;
    FHT_URL: String;
    FScanDate: TDate;
    FNextBidwarCheck: TDateTime;
    FFirstTime: boolean;
    FOfficeType: TApplicationType;
    procedure WriteActivity;
    function BrowseTo(aBrowser:TEmbeddedWB;aURL: String;aMaxWait:Integer=0):boolean;
    procedure LogIn;
    function BrowserClick(aBrowser:TEmbeddedWB;const aBrowserObjectNames:array of String;
      aShowError:boolean=TRUE):boolean;
    procedure ScanTransferlijst(aPlayerType:integer;aLeeftijd,aSkill1,aSkill2,aSkill3,aSkill4:String;
      aBlockList:TObjectList);
    function ParsePrijzen(var vPlayers:integer):double;
    function GetSkillIndex(aSkill:String): String;
    procedure StartScan(aPlayerType: Integer);
    procedure ToonTransferlijst;
    procedure GetAllPossibleSkills(vSkillList:TObjectList;
      aPlayerType,aLeeftijd:integer;
      aSkill1, aSkill2, aSkill3,aSkill4:String);
    function CreateSkillSet(aSkill1, aSkill2, aSkill3, aSkill4: String;
      aNivo1, aNivo2, aNivo3, aNivo4: integer): TSkillSet;
    function GetNodeColor(vCount: integer): TColor;
    procedure Import(aFileName: String);
    procedure ToonPlayerInfoScreen;
    procedure SaveTSISet(aSQL: TIBSQL; aTSISet: TTSISet);
    procedure GetSubSkill(aTSI: TTSISet);
    procedure StreamToMemo(aBrowser: TEmbeddedWB);
    procedure ToonScouting;
    function FindPlayers(aLeeftijd:String; aSkill: TSkillset): boolean;
    function CopySkill(aSkill: TSkillSet): TSkillSet;
    procedure BlockSkills(aSkillList, aBlockList: TObjectList);
    function BrowseToNextPage(aPage: integer):boolean;
    procedure SaveTransferPrijsEvaluatie(aPlayerType, aLeeftijd: integer;
      aPrijs: double; aCountTransfers: integer; aSkillSet: TSkillSet;
      aSubSkill1Filled,aSubSkill2Filled,aSubSkill3Filled:boolean);
    function GetPlayerInfo(aScoutingID: integer; aSkillSet: TSkillSet):integer;
    procedure GetFixture;
    procedure BrowserClickByID(aBrowser: TEmbeddedWB;
      aBrowserObjectName: String);
    function GetBrowserObjectByID(aBrowser: TEmbeddedWB;
      aName: String): Variant;
    function ParseTeams(aLand,aLeague:String):String;
    function CheckBidwarSpeler: Boolean;
    function VerwijderSpaties(aStr: string): string;
    function GetDeadline(aPlayerID: Integer): TDateTime;
    function ScoutPlayers(aTalentScouting: boolean):integer;
    procedure ScoutKnownPlayers;
    function PlayerExists(aPlayerID: Integer): boolean;
    procedure ToonTalents;
    procedure ScoutInternationals;
    procedure ScanNationaalTeam(aTeamID: integer);
    function ScoutU20Internationals:integer;
    procedure SaveScoutingToHistory(aTSISet: TTSISet);
    procedure ScanKoopjes;
    function BerekenMaxPrijs(aTransferprijs: double; aLoon, aLeeftijd, aBlessureWeken: integer): double;
    procedure SaveKoopje(aScoutingID, aPlayerID, aTPE, aHoogsteBod, aMaxBod: integer; aDeadline: TDateTime;
      vTPEAantalSpelers: integer);
    function BrowseToLink(aBrowser: TEmbeddedWB; aLink: String): boolean;
    procedure ScanJeugdCompetitie;
    function ScanJeugdTeam(aLeagueID,aMatchID,aTeamID,aYouthClubID:String;aMainLeagueID:integer;aFirstMatch:boolean):integer;
    procedure SaveWedstrijd(aWedstrijd: TWedstrijd; aReeks: integer);
    procedure ScoutJeugdTalents(aReeks:integer);
    procedure SaveJeugdspeler(aSpeler: TJeugdSpeler);
    procedure Wait(minSeconden, MaxSeconden: integer);
    function Time2Msec(aDateTime: TDateTime): Extended;
    function GetLinie(aPositie: String): Integer;
    procedure SetCurrentURL(const Value: String);
    function YouthPlayerExists(aYouthPlayerID: Integer): boolean;
    function SaveKarakterProfiel(aSpeler:TJeugdspeler; aForce: boolean):integer;
    procedure ToonAutoScout;
    procedure GetJeugdSpelerInfo(aSpeler: TJeugdSpeler; aSavePrestaties:boolean=TRUE);
    procedure AutoScoutVersterkingen;
    procedure SaveXlsToDB(aLinie,aFileName: String; vFormVoortgang: TfrmVoortgang);
    procedure VerwerkXlsTabsheet(vExcelFunctions: TExcelFunctions; vFormVoortgang: TfrmVoortgang);
    function GetBatchlings(aBatchlingFile: TStringList;aKarakterID, aCurPlayerID, aReeks:integer;
      var vCount:integer;aSpecOnbekendOnly, aForce:boolean):String;
    function RemoveYouthKenmerk(aKenmerk: String): String;
    procedure AddBatchLings(aPlayerFile, aBatchlings: TStringList);
    function AddPotentie(aCurPotentie, aNewPotentie: String): String;
    function LoadBigScoutPlayers(aSilent:boolean;aFileName: String; var aError: boolean; var
      aRows: integer;var aBekend: integer): integer;
    function VertaalSpecialiteit(aSpeciality: String): String;
    function VertaalPositie(aPosition: String): String;
    function VertaalInstructie(aInstruction: String): String;
    procedure SaveScoutingFiles(aLinie:integer;aFileName: String;aCSVFile:TStringList;
  aOmschrijving:String);
    procedure ClearDir(aLinie: integer;aFileExt:String);
    function GetScoutingDir(aLinie: Integer): String;
    function SpecToAfkorting(aSpec: String): String;
    procedure AddBlackListedTeam;
    function GetU20Leeftijden:boolean;
    function GetFilter(aRun: Integer;var vSubOmschrijving:String): String;
    function GetLeeftijd(aGeboorteDatum: TDate): String;
    function GetSeizoen(aGeboorteDatum: TDate): integer;
    function GetBestLinie(aSpelerID: String): Integer;
    //function AfkortingToSpec(aAfkorting: String): String;
    procedure WriteToIni(aSection, aValue: String; aDate: TDateTime);
    function GetSpecialiteitGepromoveerdeSpeler(aKarakterID: integer;
      aPlayerName, aLeeftijd: String): boolean;
    function CheckSpecialiteit(aPlayerID: integer):boolean;
    procedure ParseDocs(aScanAll: boolean);
    procedure GetOHW(aList: TStringList; aTeamID, aPlayerID: integer;
      aPlayerName:String);
    procedure AddOHW(aPlayerFile, aOHWList: TStringList);
    procedure RemoveFiles(aDir,aFileMask: String);
    function GetScout(aDoc, aSheet, aPlayerName: String): String;
    function ScoutAll17yo:boolean;
    procedure ScoutBigScoutPlayers(aReeks: integer);
    procedure SetBekendeSpelers(const Value: integer);
    procedure SetOnbekendeSpelers(const Value: integer);
    procedure SetSpecOntdekt(const Value: integer);
    procedure WriteScanResults(aKarakterID:integer;aTeken: String);
    procedure SetJeugdSpelerRestored(const Value: integer);
    procedure SetCurSpec(const Value: String);
    procedure InitScanResults;
    procedure SetDownloadErrors(const Value: integer);
    procedure VerwerkNTDoc(aDoc: String; aISU20:boolean);
    procedure VerwerkNTTabsheet(vExcelFunctions: TExcelFunctions;aTabIndex:integer; aIsU20:boolean);
    procedure WriteScanHistorie;
    procedure SetCurLeiderschap(const Value: String);
    procedure GetPosition(aPlayerID: integer);
    procedure GetPositionInMatch(aPlayerID, aMatchID, aTeamID: integer);
    procedure ScoutWrongCharacters;
    procedure SendStatusMail(aMsg: String;aAddPotentials:boolean);
    procedure GetHoogsteRating(aGK, aCD, aOCD, aOWB, aIM, aWing, aFW,
      aDFW: double; var aRating: double; var aPos: string);
    procedure SaveScanHistorie(aSpecCount, aSpecLoos:integer);
    procedure DoAutoStart;
    procedure SetNextBidwarCheck(const Value: TDateTime);
    function GetForceSave: boolean;
    procedure ReadInifile;
    procedure DoMiniTBS;
    procedure PrepareTBSRun(aReeks:integer);
    procedure GetU20Lijstjes;
    procedure ImportHTYCFile(aFileName: String);
    procedure GetNTLijstjes;
    function XLSValueToFloat(aValue: String): double;
    function IsTalented(aPlayerID: Integer): boolean;
    function DoChangeValue(aOldValue, aNewValue: double; aIsHTYC: boolean; aMax: double = 8.1): boolean;
    procedure SetAutoStart(const Value: boolean);
    function GetTotalPlayers(aReeks: integer): integer;
    procedure BubbleSort(aList: TObjectList);
    function SaveCSVFile(vList: TStringList;aTitle, aDir, aFileName: String): boolean;
    procedure BubbleSortByPlayerID(aList: TObjectList);
    procedure ScoutFC;
    procedure OnThreadTerminate(Sender: TObject);
    procedure GetPlayersByKarakter(aKarakterID: Integer; aIsKeeper: boolean);
    procedure GetFutureCoaches(aList: TStringList; aKarakterID: integer);
    procedure RebuildIndexes;
    procedure DoAfterMatchCheck;
    procedure BrowseToDS;
    procedure ThreadBrowseTo(aURL: String);
    function GetIgnoreErrors: boolean;
    { Private declarations }
  public
    { Public declarations }
    function SaveScouting(aTSISet: TTSISet;aDeleteOldScouting:boolean): integer;
    function ParsePlayerInfo:TTSISet;
    procedure BrowseToPlayer(aPlayerID: integer);
     function GetJeugdspelerInfoByID(aPlayerID, aTeamID:integer;
        aPlayerName: String; aBrowseToYouthPlayer:boolean; aIsKeeper:boolean; aSavePrestaties:boolean = TRUE): boolean;
    function ExtractPlayersToCSV(aReeks:integer;aSplitsBatchlingen:boolean;
      aYouthPlayerID: integer = 0; aInclSpecOnbekend: boolean = FALSE):integer;


    property SubSkill1:String read FSubSkill1;
    property SubSkill2:String read FSubSkill2;
    property SubSkill3:String read FSubSkill3;
    property ForceSave:boolean read GetForceSave;
    property UserName:string read FUserName;
    property PassWord:String read FPassWord;
    property OfficeType: TApplicationType read FOfficeType write FOfficeType;
    property HT_URL:String read FHT_URL write FHT_URL;
    property Opnieuw: boolean read FOpnieuw;
    property ScanAll:boolean read FScanAll write FScanAll;
    property CheckBatchlings: boolean read FCheckBatchlings;
    property DocumentCompleted:boolean read FDocumentCompleted write FDocumentCompleted;
    property InsertSQL:TIBSQL read FInsertSQL;
    property CurrentURL:String read FCurrentURL write SetCurrentURL;
    property ScoutingHistorySQL:TIBSQL read FScoutingHistorySQL;
    property TSISQL:TIBSQL read FTSISQL;
    property CurScan:String read FCurScan write FCurScan;
    property CompetitieReeks:integer read FCompetitieReeks write FCompetitieReeks;
    property BekendeSpelers:integer read FBekendeSpelers write SetBekendeSpelers;
    property OnbekendeSpelers:integer read FOnbekendeSpelers write SetOnbekendeSpelers;
    property SpecOntdekt:integer read FSpecOntdekt write SetSpecOntdekt;
    property JeugdSpelerRestored: integer read FJeugdSpelerRestored write SetJeugdSpelerRestored;
    property CurSpec:String read FCurSpec write SetCurSpec;
    property CurLeiderschap: String read FCurLeiderschap write SetCurLeiderschap;
    property DownloadErrors:integer read FDownloadErrors write SetDownloadErrors;
    property TransferListed: integer read FTransferListed write FTransferListed;
    property AutoStart:boolean read FAutoStart write SetAutoStart;
    property ScanDate:TDate read FScanDate write FScanDate;
    property IgnoreErrors: boolean read GetIgnoreErrors;
    property NextBidwarCheck:TDateTime read FNextBidwarCheck write SetNextBidwarCheck;
    property FirstTime: boolean read FFirstTime write FFirstTime;
  end;

  const
    FSkillsArray:array[1..10] of String = ('Keepen','None','Verdedigen','Positiespel',
      'Vleugelspel','Scoren','Spelhervatting','Passen','Ervaring','Leiderschap');

    KEEPERS = 0;  
    //MIDS = 2;

    START_SEIZOEN_NO = 32;
    START_SEIZOEN = '08-08-2010';
    MAX_FORUM_LENGTH = 3500;


var
  frmHTScanner:TfrmHTScanner;

implementation

uses
  Math, IniFiles, uHTDb, uHTGrid, IBHeader, ClipBrd, ESBDates, Variants,
  formAutoScout, ComObj, formKiesJeudCompetities, uHTMisc,
  FormPlayerInfo, FormNTScouting, ShellApi, FormKiesLichting;

{$R *.DFM}

function TfrmHTScanner.GetU20Leeftijden:boolean;
begin
  Setlength(FLeeftijden,0);
  with uHTDb.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT U.DATUM, U.OMSCHRIJVING, U.DATUM - (6 * (16 * 7)) + 1 OPTIMALE_LEEFTIJD, G.LEEFTIJD FROM U20_DATA U');
        Add('LEFT JOIN GET_LEEFTIJD(U.DATUM - (6 * (16 * 7)) + 1,CURRENT_DATE) G ON (0=0)');
        Add('WHERE U.DATUM - ((6 * (16 * 7)) - 1) BETWEEN CURRENT_DATE - (2 * 16 * 7) AND CURRENT_DATE');
        Add('ORDER BY U.DATUM');
      end;
      // Oudste groep eerst
      ExecQuery;
      while not EOF do
      begin
        SetLength(FLeeFtijden,High(FLeeftijden) + 2);
        FLeeftijden[High(FLeeftijden)] := FieldByName('OPTIMALE_LEEFTIJD').asDate;
        Next;
      end;
    finally
      CommitTransaction(Transaction,dbaFree);
      Free;
    end;
  end;

  result := High(FLeeftijden) >= 1;

  if not(result) then
  begin
    if not (FAutoStart) then
    begin
      ShowMessage('Geen of onvoldoende U20 eindrondes gevonden!');
    end;
  end;
end;

function TfrmHTScanner.BrowseToLink(aBrowser:TEmbeddedWB; aLink: String):boolean;
var
  vURL:String;
begin
  vUrl := GetLink(aBrowser, aLink, TRUE);

  if (vURL = '') then
  begin
    vUrl := GetLink(aBrowser, aLink, FALSE);
  end;
  
  if (vURL <> '') then
  begin
    BrowseTo(aBrowser,vUrl);
  end;

  result := (vURL <> '');
end;

function TfrmHTScanner.BrowseTo(aBrowser:TEmbeddedWB;aURL:String;aMaxWait:Integer=0):boolean;
const
  MAX_ERRORS = 10;
  MAX_TIME = 20;
var
  vTitle:String;
  vError:boolean;
  vStart:TDateTime;
begin
  vStart := Now;
  vError := FALSE;

  if (aMaxWait = 0) then
  begin
    aMaxWait := MAX_TIME;
  end;

  if (aBrowser = TSIBrowser) then
  begin
    FTSIBrowserDocumentCompleted := FALSE;

    aBrowser.Navigate(aURL);

    while not FTSIBrowserDocumentCompleted do
    begin
      Application.HandleMessage;

      if (esbDates.TimeApartInSecs(vStart, Now) > aMaxWait) then
      begin
        FTSIBrowserDocumentCompleted := TRUE;
        vError := TRUE;
      end;
    end;
  end
  else
  begin
    FDocumentCompleted := FALSE;
    aBrowser.Navigate(aURL);

    while not DocumentCompleted do
    begin
      Application.HandleMessage;

      if (esbDates.TimeApartInSecs(vStart, Now) > aMaxWait) then
      begin
        DocumentCompleted := TRUE;
        vError := TRUE;
      end;
    end;
  end;

  if (aBrowser.Document <> nil) then
  begin
    vTitle := HTMLDocument(aBrowser.Document).Title;
  end
  else
  begin
    vError := TRUE;
  end;

  vError := vError or (Pos('De webpagina kan niet worden weergegeven',vTitle) > 0)
    or (Pos('Applicatiefout',vTitle) > 0) or (Pos('Onderhoud',vTitle) > 0) or
    (Pos('Runtime Error',vTitle) > 0) or (Pos(WideString('/Errors/'),aBrowser.LocationURL) > 0);

  result := not (vError) and (Pos(WideString(aUrl), aBrowser.LocationURL) > 0);

  if not IgnoreErrors then
  begin
    if (DownloadErrors > 30) or (btnStopScouting.Down) then
    begin
      if (FAutoStart) and (DownLoadErrors > 30) then
      begin
        Wait(15 * 60, 25 * 60);
        DownloadErrors := 0;
        Login;
      end
      else
      begin
        if (DownloadErrors > 0) then
        begin
          if MessageBoxQuestion('Stoppen?','HTScanner') then
          begin
            Abort;
          end
          else
          begin
            btnStopScouting.Down := FALSE;
            DownloadErrors := 0;
          end;
        end;
      end;
    end;

    if (vError) then
    begin
      DownloadErrors := DownLoadErrors + 1;
      aBrowser.Stop;
      if FLoggedIn then
      begin
        Wait(15,40);
      end
      else
      begin
        Wait(1,5);
      end;
      result := BrowseTo(aBrowser,aURL, aMaxWait + 20);
    end
    else
    begin
      DownloadErrors := 0;
    end;
  end;
end;

procedure TfrmHTScanner.Button1Click(Sender: TObject);
{var
  v:TfrmVoortgang;}
begin
  Login;
  {v := TfrmVoortgang.Create(nil,0);
  v.Melding := 'TEST';
  try
    SaveXlsToDB('D:\Projecten\Harry\Hattrick Scanner\XLS\20100225_1132\VERDEDIGERS.xls', v);
  finally
    v.Release;
  end;}
end;

procedure TfrmHTScanner.HTBrowserDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
  if (pDisp = TEmbeddedWB(aSender).DefaultInterface) then
  begin
    DocumentCompleted := TRUE;
    CurrentURL := URL;

    //Application.ProcessMessages;
  end;
end;

function TfrmHTScanner.GetBrowserObjectByID(aBrowser:TEmbeddedWB;aName:String):Variant;
begin
  try
    if not VarIsClear(aBrowser.OleObject.document) then
    begin
      result := aBrowser.OleObject.Document.GetElementByID(aName);
    end
    else
    begin
      result := Unassigned;
    end;
  except
    result := Unassigned;
  end;
end;

procedure TfrmHTScanner.BrowserClickByID(aBrowser:TEmbeddedWB;aBrowserObjectName:String);
var
  vItem:Variant;
begin
  FDocumentCompleted := FALSE;
  vItem := GetBrowserObjectByID(aBrowser,aBrowserObjectName);
  if not(VarIsClear(vItem)) then
  begin
    vItem.Click;
  end;
  while not DocumentCompleted do
  begin
    Application.HandleMessage;
  end;
end;

function TfrmHTScanner.BrowserClick(aBrowser:TEmbeddedWB;const aBrowserObjectNames:array of String
  ;aShowError:boolean=TRUE):boolean;
var
  vItem:Variant;
  vTime:TDateTime;
  i : integer;
begin
  result := FALSE;
  vItem := Unassigned;
  i := 0;
  while VarIsClear(vItem) and (i <= High(aBrowserObjectNames)) do
  begin
    vItem := GetBrowserObject(aBrowser,aBrowserObjectNames[i]);
    inc(i);
  end;
  
  if VarIsClear(vItem)  then
  begin
    if (aShowError) then
    //ShowMessage('aBrowserObjectName en aBrowserObjectName2 bestaan niet! '+aBrowserObjectName+ ' | ' + aBrowserObjectName2);
  end
  else
  begin
    result := TRUE;
    FDocumentCompleted := FALSE;
    vItem.Click;
    vTime := Now;

    while not DocumentCompleted do
    begin
      Application.HandleMessage;
      if (esbDates.TimeApartInSecs(Now,vTime) > 10) then
      begin
        FDocumentCompleted := TRUE;
        BrowserClick(aBrowser,aBrowserObjectNames);
      end;
    end;
  end;
end;

procedure TfrmHTScanner.HTBrowserBeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
begin
  DocumentCompleted := FALSE;
end;

procedure TfrmHTScanner.LogIn;
begin
  if BrowseTo(HTBrowser,HT_URL) then
  begin
    if (FUserName <> '') then
    begin
      SetValue(HTBrowser,['ctl00$ucSubMenu$txtUserName','ctl00$ucSubMenu$ucLogin$txtUserName',
        'ctl00_ctl00_CPContent_ucSubMenu_ucLogin_txtUserName','ctl00$CPHeader$ucLogin$txtUserName'], FUserName);
      SetValue(HTBrowser,['ctl00$ucSubMenu$txtPassword', 'ctl00$ucSubMenu$ucLogin$txtPassword',
        'ctl00_ctl00_CPContent_ucSubMenu_ucLogin_txtPassword','ctl00$CPHeader$ucLogin$txtPassword'], FPassWord);
      BrowserClick(HTBrowser, ['ctl00$ucSubMenu$butLogin', 'ctl00$ucSubMenu$ucLogin$butLogin',
        'ctl00$ctl00$CPContent$ucSubMenu$ucLogin$butLogin','ctl00$CPHeader$ucLogin$butLogin']);
    end;
    btnScanLijst.Enabled := TRUE;
    btnStartScouting.Enabled := TRUE;
    btnEdPaginas.Enabled := TRUE;
    btnScout.Enabled := TRUE;
    FLoggedIn := TRUE;
  end;
end;

function TfrmHTScanner.GetSkillIndex(aSkill:String):String;
var
  vResult, i:Integer;
begin
  vResult := 0;
  for i:=low(FSkillsArray) to High(FSkillsArray) do
  begin
    if FSkillsArray[i] = aSkill then
    begin
      vResult := i;
    end;
  end;

  result := IntToStr(vResult);
end;

function TfrmHTScanner.CreateSkillSet(aSkill1,aSkill2,aSkill3,aSkill4:String;
  aNivo1,aNivo2,aNivo3,aNivo4:integer):TSkillSet;
begin
  result := TSkillSet.Create;

  result.FSkill1 := aSkill1;
  result.FSkill1_Level := aNivo1;
  result.FSkill1_Level_Max := aNivo1;
  result.FSkill1_Index := GetSkillIndex(aSkill1);

  if (aSkill2 <> '') then
  begin
    result.FSkill2 := aSkill2;
    result.FSkill2_Level := aNivo2;
    result.FSkill2_Level_Max := aNivo2;
    result.FSkill2_Index := GetSkillIndex(aSkill2);
  end
  else if (FSubSkill1 <> '') then
  begin
    result.FSkill2 := FSubSkill1;
    result.FSkill2_Level := 1;
    result.FSkill2_Level_Max := 4;
    result.FSkill2_Index := GetSkillIndex(FSubSkill1);
  end
  else
  begin
    result.FSkill2 := 'Geen';
    result.FSkill2_Index := '-1';
    result.FSkill2_Level := -1;
    result.FSkill2_Level_Max := -1;
  end;

  if (aSkill3 <> '') then
  begin
    result.FSkill3 := aSkill3;
    result.FSkill3_Level := aNivo3;
    result.FSkill3_Level_Max := aNivo3;
    result.FSkill3_Index := GetSkillIndex(aSkill3);
  end
  else if (FSubSkill2 <> '') then
  begin
    result.FSkill3 := FSubSkill2;
    result.FSkill3_Level := 1;
    result.FSkill3_Level_Max := 4;
    result.FSkill3_Index := GetSkillIndex(FSubSkill2);
  end
  else
  begin
    result.FSkill3 := 'Geen';
    result.FSkill3_Level := -1;
    result.FSkill3_Level_Max := -1;
    result.FSkill3_Index := '-1';
  end;

  if (aSkill4 <> '') then
  begin
    result.FSkill4 := aSkill4;
    result.FSkill4_Level := aNivo4;
    result.FSkill4_Level_Max := aNivo4;
    result.FSkill4_Index := GetSkillIndex(aSkill4);
  end
  else if (FSubSkill3 <> '') then
  begin
    result.FSkill4 := FSubSkill3;
    result.FSkill4_Level := 1;
    result.FSkill4_Level_Max := 4;
    result.FSkill4_Index := GetSkillIndex(FSubSkill3);
  end
  else
  begin
    result.FSkill4 := 'Geen';
    result.FSkill4_Index := '-1';
    result.FSkill4_Level := -1;
    result.FSkill4_Level_Max := -1;
  end;
end;

procedure TfrmHTScanner.GetAllPossibleSkills(vSkillList:TObjectList;
  aPlayerType,aLeeftijd:integer;
  aSkill1, aSkill2, aSkill3, aSkill4:String);
var
  vNivo1, vNivo2, vNivo3, vNivo4, vMaxNivo, vMaxNivo2, vMaxNivo3, vMaxNivo4:integer;
begin
  {vSkill1 := 5;
  vSkill2 := 1;
  vSkill3 := 1;
  vSkill4 := 1;}


  if (aSkill2 = '') then
  begin
    // Op primaire skill tot goddelijk
    vMaxNivo := FMaximaalMainSkill
  end
  else
  begin
    vMaxNivo :=GetFieldValue(ibdbHTInfo,'TRANSFER_PRIJZEN',
    ['SCAN_DATE','PLAYER_TYPE','AGE'],[Date,aPlayerType,aLeeftijd],
    'SKILL1_LEVEL',srtInteger,svtMax,uHattrick.CreateReadTransaction(ibdbHTInfo));

    if (vMaxNivo = 0) then
    begin
      vMaxNivo := FMaximaalMainSkill;
    end;
  end;

  if (aSkill2 <> '') then
  begin
    vMaxNivo2 := vMaxNivo;
  end
  else
  begin
    vMaxNivo2 := 5;
  end;

  if (aSkill3 <> '') then
  begin
    vMaxNivo3 := vMaxNivo
  end
  else
  begin
    vMaxNivo3 := 5;
  end;

  if (aSkill4 <> '') then
  begin
    vMaxNivo4 := vMaxNivo;
  end
  else
  begin
    vMaxNivo4 := 5;
  end;

  for vNivo1:=FMinimaalMainSkill to vMaxNivo do
  begin
    for vNivo2:= 5 to Min(vMaxNivo2,Max(vNivo1,6)) do
    begin
      for vNivo3:= 5 to Min(vMaxNivo3,Max(vNivo1, 6)) do
      begin
        for vNivo4 := 5 to Min(vMaxNivo4,Max(vNivo1, 6)) do
        begin
          vSkillList.Add(CreateSkillSet(aSkill1,aSkill2,aSkill3,aSkill4,
            vNivo1,vNivo2,vNivo3,vNivo4));
        end;
      end;
    end;
  end;
end;

function TfrmHTScanner.CopySkill(aSkill:TSkillSet):TSkillSet;
begin
  result := TSkillSet.Create;
  result.FSkill1 := aSkill.Skill1;
  result.FSkill1_Level := aSkill.Skill1_Level;
  result.FSkill1_Level_Max := aSkill.Skill1_Level_Max;
  result.FSkill1_Index := aSKill.Skill1_Index;

  if (aSkill.Skill2 <> '') and (aSkill.Skill2_Level = aSkill.Skill2_Level_Max) then
  begin
    result.FSkill2 := aSkill.Skill2;
    result.FSkill2_Level := aSkill.Skill2_Level;
    result.FSkill2_Level_Max := aSkill.Skill2_Level_Max;
    result.FSkill2_Index := aSKill.Skill2_Index;
  end
  else
  begin
    // Negeren als het een van-tot was...
    result.FSkill2 := '';
  end;

  if (aSkill.Skill3 <> '') and (aSkill.Skill3_Level = aSkill.Skill3_Level_Max) then
  begin
    result.FSkill3 := aSkill.Skill3;
    result.FSkill3_Level := aSkill.Skill3_Level;
    result.FSkill3_Level_Max := aSkill.Skill3_Level_Max;
    result.FSkill3_Index := aSKill.Skill3_Index;
  end
  else
  begin
    result.FSkill3 := '';
  end;
  
  result.FSkill4 := '';
end;

function TfrmHTScanner.FindPlayers(aLeeftijd:String; aSkill:TSkillset):boolean;
const
  PLAYERID = '<a href="/Club/Players/Player.aspx?PlayerID=';
var
  vTSISet: TTSISet;
  vText,
  vTempText,
  vTemp: String;
  vPos: integer; 
begin
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlDeadline'],'-1');
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlAgeMin'], aLeeftijd);
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlAgeMax'], aLeeftijd);

  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill1'], aSkill.FSkill1_Index);
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill1Min'], IntToStr(aSkill.FSkill1_Level));
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill1Max'], IntToStr(aSkill.FSkill1_Level_Max));

  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill2'], aSkill.Skill2_Index);
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill2Min'], IntToStr(aSkill.FSkill2_Level));
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill2Max'], IntToStr(aSkill.FSkill2_Level_Max));

  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill3'],  aSkill.Skill3_Index);
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill3Min'],  IntToStr(aSkill.FSkill3_Level));
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill3Max'],  IntToStr(aSkill.FSkill3_Level_Max));

  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill4'],  aSkill.Skill4_Index);
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill4Min'], IntToStr(aSkill.FSkill4_Level));
  SetValue(HTBrowser,['ctl00$ctl00$CPContent$CPMain$ddlSkill4Max'],  IntToStr(aSkill.FSkill4_Level_Max));

  BrowserClick(HTBrowser,['ctl00$ctl00$CPContent$CPMain$butSearch']);


  StreamToMemo(HTBrowser);
  vText := Copy(vMemo.Text, Pos('Zoekresultaat', vMemo.Text), Length(vMemo.Text));

  vPos := Pos(PLAYERID, vText);

  Result := FALSE;

  //probeer een speler te vinden
  //wel controleren of de gevonden speler zijn statistieken overeen komen met de zoekcriteria
  while (vPos > 0) AND
        (not Result) do
  begin
    vText := Copy(vText, vPos + Length(PLAYERID), Length(vText));
    vPos := Pos(PLAYERID, vText);
    if (vPos = 0) then
    begin
      vTempText := vText;
    end
    else
    begin
      vTempText := Copy(vText, 1, vPos);
    end;

    vTemp := Copy(vTempText, 1, Pos('&amp;', vTempText) - 1);

    if (AnyStrToInt(vTemp) > 0) then
    begin
      BrowseToPlayer(AnyStrToInt(vTemp));

      vTSISet := ParsePlayerInfo;
      if (vTSISet.GetSkill(StrToInt(aSkill.FSkill1_Index)) >= aSkill.FSkill1_Level) AND
         (vTSISet.GetSkill(StrToInt(aSkill.FSkill1_Index)) <= aSkill.FSkill1_Level_Max) then
      begin
        if (aSkill.FSkill2_Level > 0) or (aSkill.FSkill2_Level_Max > 0) then
        begin
          if (vTSISet.GetSkill(StrToInt(aSkill.FSkill2_Index)) >= aSkill.FSkill2_Level) AND
             (vTSISet.GetSkill(StrToInt(aSkill.FSkill2_Index)) <= aSkill.FSkill2_Level_Max) then
          begin
            if (aSkill.FSkill3_Level > 0) or (aSkill.FSkill3_Level_Max > 0) then
            begin
              if (vTSISet.GetSkill(StrToInt(aSkill.FSkill3_Index)) >= aSkill.FSkill3_Level) AND
                 (vTSISet.GetSkill(StrToInt(aSkill.FSkill3_Index)) <= aSkill.FSkill3_Level_Max) then
              begin
                Result := vTSISet.OverigeSkillsMax(StrToInt(aSkill.FSkill1_Index),
                                                   StrToInt(aSkill.FSkill2_Index),
                                                   StrToInt(aSkill.FSkill3_Index),
                                                   4);
              end;
            end
            else
            begin
              Result := vTSISet.OverigeSkillsMax(StrToInt(aSkill.FSkill1_Index),
                                                 StrToInt(aSkill.FSkill2_Index),
                                                 StrToInt(aSkill.FSkill3_Index),
                                                 4);
            end;
          end;
        end
        else
        begin
          Result := vTSISet.OverigeSkillsMax(StrToInt(aSkill.FSkill1_Index),
                                             StrToInt(aSkill.FSkill2_Index),
                                             StrToInt(aSkill.FSkill3_Index),
                                             4);
        end;
      end;
    end;
  end;
end;

procedure TfrmHTScanner.BlockSkills(aSkillList,aBlockList:TObjectList);
var
  vSkill, vCurSkill:TSkillSet;
  i,j, vCount:integer;
  vBlocked : boolean;
begin
  for j:=0 to aBlockList.Count -1  do
  begin
    vCurSkill := TSKillSet(aBlockList[j]);

    vCount := aSkillList.Count -1;

    for i:= vCount downto 0 do
    begin
      vSkill := TSkillSet(aSkillList[i]);

      if (vSkill <> Nil) then
      begin
        vBlocked := (vSkill.Skill1_Level = vCurSkill.Skill1_Level) and (vSkill.Skill1_Level_Max = vCurSkill.Skill1_Level_Max);
        if (vCurSkill.Skill2 <> '') then
        begin
          vBlocked := vBlocked and (vSkill.Skill2_Level = vCurSkill.Skill2_Level) and (vSkill.Skill2_Level_Max = vCurSkill.Skill2_Level_Max);
        end;
        if (vCurSkill.Skill3 <> '') then
        begin
          vBlocked := vBlocked and (vSkill.Skill3_Level = vCurSkill.Skill3_Level) and (vSkill.Skill3_Level_Max = vCurSkill.Skill3_Level_Max);
        end;

        if (vBlocked) then
        begin
          aSkillList.Items[i] := nil;
        end;
      end;
    end;
  end;
end;

procedure TfrmHTScanner.SaveTransferPrijsEvaluatie(aPlayerType,aLeeftijd:integer;
  aPrijs:double;aCountTransfers:integer;aSkillSet:TSkillSet;
  aSubSkill1Filled,aSubSkill2Filled,aSubSkill3Filled:boolean);
begin
  with FInsertSQL do
  begin
    try
      if not(Transaction.InTransaction) then
      begin
        Transaction.StartTransaction;
      end;
      ParamByName('ID').asInteger := GetGeneratorValue(ibdbHTInfo,'GEN_TRANSFER_PRIJZEN_ID');
      ParamByName('PLAYER_TYPE').asInteger := aPlayerType;
      ParamByName('SCAN_DATE').asDate := Date;
      ParamByName('AGE').asInteger := aLeeftijd;

      ParamByName('SKILL1_TYPE').asInteger := StrToInt(aSkillSet.FSkill1_Index);
      ParamByName('SKILL1_LEVEL').asInteger := aSkillSet.FSkill1_Level;

      if (aSubSkill1Filled) then
      begin
        ParamByName('SKILL2_TYPE').asInteger := StrToInt(aSkillSet.FSkill2_Index);
        ParamByName('SKILL2_LEVEL').asInteger := aSkillSet.FSkill2_Level;
      end
      else
      begin
        ParamByName('SKILL2_TYPE').Clear;
        ParamByName('SKILL2_LEVEL').Clear;
      end;

      if (aSubSkill2Filled) then
      begin
        ParamByName('SKILL3_TYPE').asInteger := StrToInt(aSkillSet.FSkill3_Index);
        ParamByName('SKILL3_LEVEL').asInteger := aSkillSet.FSkill3_Level;
      end
      else
      begin
        ParamByName('SKILL3_TYPE').Clear;
        ParamByName('SKILL3_LEVEL').Clear;
      end;

      if (aSubSkill3Filled) then
      begin
        ParamByName('SKILL4_TYPE').asInteger := StrToInt(aSkillSet.FSkill4_Index);
        ParamByName('SKILL4_LEVEL').asInteger := aSkillSet.FSkill4_Level;
      end
      else
      begin
        ParamByName('SKILL4_TYPE').Clear;
        ParamByName('SKILL4_LEVEL').Clear;
      end;
      ParamByName('TRANSFER_PRIZE').asFloat := aPrijs;
      ParamByName('TRANSFER_COUNT').asInteger := aCountTransfers;
      
      ExecQuery;
    finally
      CommitTransaction(Transaction,dbaNone);
    end;
  end;
end;

procedure TfrmHTScanner.ScanTransferlijst(
  aPlayerType:integer;aLeeftijd,aSkill1,aSkill2,aSkill3,aSkill4:String;
  aBlockList:TObjectList);
var
  i, vTransferCount : integer;
  vSkillArray: TObjectList;
  vSkill :TSkillSet;
  vPrijs:double;
begin
  vSkillArray := TObjectList.Create(TRUE);
  try
    GetAllPossibleSkills(vSkillArray,aPlayerType,StrToInt(aLeeftijd),
      aSkill1,aSkill2,aSkill3,aSkill4);

    BlockSkills(vSkillArray,aBlockList);

    for i:=0 to vSkillArray.Count - 1 do// van matig tot goddelijk
    begin
      vSkill := TSkillSet(vSkillArray[i]);

      if (vSkill <> nil) then
      begin
        vPrijs := 0;

        if (FindPlayers(aLeeftijd,vSkill)) then
        begin
          BrowseToLink(HTBrowser,'/TransferCompare.aspx?');
          vPrijs := ParsePrijzen(vTransferCount);
        end
        else
        begin
          vTransferCount := 0;
          aBlockList.Add(CopySkill(vSkill));
        end;

        BrowseToLink(HTBrowser,'/World/Transfers/');

        // Prijs aangetroffen?
        if (vPrijs > 0) or (aSkill2 <> '') then
        begin
          SaveTransferPrijsEvaluatie(aPlayerType,
            StrToInt(aLeeftijd),vPrijs,vTransferCount,vSkill,
            (aSkill2 <> ''),(aSkill3 <> ''),(aSkill4 <> ''));

        end;
      end;
    end;
  finally
    vSkillArray.Free;
  end;
end;

procedure TfrmHTScanner.StreamToMemo(aBrowser:TEmbeddedWB);
var
  sm:TMemoryStream;
  sa:IStream;
  vResult : OLEVariant;
begin
  vMemo.Lines.Clear;

  sm := TMemoryStream.Create;
  try
    sa := TStreamAdapter.Create(sm, soReference) as IStream;
    vResult := (aBrowser.Document as IPersistStreamInit).Save(sa, TRUE);

    sm.Seek(0, soFromBeginning);
    vMemo.Lines.LoadFromStream(sm, TEncoding.UTF8);
  finally
    FreeAndNil(sm);
  end;
end;

function TfrmHTScanner.ParsePlayerInfo:TTSISet;
var
  vBody: TStringList;
begin
  StreamToMemo(HTBrowser);

  vBody := TStringList.Create;
  try
    vBody.Text := vMemo.Text;

    Result := uHattrick.ParsePlayerInfo(vBody);
  finally
    vBody.Free;
  end;
end;

function TfrmHTScanner.ParsePrijzen(var vPlayers:integer):double;
var
  i, j:integer;
  vPrijs, vTempStr:String;
  vTotal:double;
  vLowestPrize,vHighestPrize, vCurPrize, vAverage: double;
begin
  vPlayers := 0;
  vTotal := 0;
  vLowestPrize := MAXINT;
  vHighestPrize := 0;
  vAverage := 0;
  try
    StreamToMemo(HTBrowser);
    for i:=0 to vMemo.lines.Count -1 do
    begin
      if Pos('€',vMemo.Lines[i]) > 0 then
      begin
        vPrijs := '';
        vTempStr := vMemo.Lines[i];
        for j:=1 to Length(vTempStr) do
        begin
          if CharInSet(vTempStr[j],['0'..'9']) then
          begin
            vPrijs := vPrijs + vTempStr[j];
          end;
        end;
        vCurPrize := StrToFloat(vPrijs);
        vLowestPrize := Min(vLowestPrize,vCurPrize);
        vHighestPrize := Max(vHighestPrize,vCurPrize);

        vTotal := vTotal + StrToFloat(vPrijs);
        inc(vPlayers);
      end;
    end;
  finally
    if (vPlayers > 2) then
    begin
      vTotal := vTotal - vLowestPrize - vHighestPrize;
      vPlayers := vPlayers - 2;
    end;

    if (vPlayers > 0) then
    begin
      vAverage := vTotal / vPlayers;

      if (vPlayers <= 2) then
      begin
        vPlayers := 1;
      end;
    end;

    result := vAverage;
  end;
end;

procedure TfrmHTScanner.StartScan(aPlayerType:Integer);
var
  vStartAge, i:integer;
  vBlockList:TObjectList;
  vMinimaalMainSkillStr, vMaximaalMainSkillStr: String;
begin
  vBlockList := TObjectList.Create(TRUE);
  BrowseToLink(HTBrowser,'/World/Transfers/');
  try

    vMinimaalMainSkillStr := '5';
    InputQuery('Minimale hoofdskill', 'Voer de minimale hoofdskill in', vMinimaalMainSkillStr);
    vMaximaalMainSkillStr := '20';
    InputQuery('Maximale hoofdskill', 'Voer de maximale hoofdskill in', vMaximaalMainSkillStr);
    FMinimaalMainSkill := AnyStrToInt(vMinimaalMainSkillStr);
    FMaximaalMainSkill := AnyStrToInt(vMaximaalMainSkillStr);
    vStartAge := StrToInt(edMinAge.Text);

    for i:=vStartAge to StrToInt(edMaxAge.Text) do
    begin
      // Eventuele reeds (half) ingevoerde waarden negeren
      ExecSQL(ibdbHTInfo,'DELETE FROM TRANSFER_PRIJZEN WHERE SCAN_DATE = :DATUM AND PLAYER_TYPE = :PLAYER_TYPE AND AGE = :AGE',
        ['DATUM','PLAYER_TYPE','AGE'],[Date,aPlayerType,i]);


      vBlockList.Clear;

      case aPlayerType of
      1: // Keepers
        begin
          // Subskill zetten, deze mag niet hoger zijn dan zwak
          FSubSkill1 := 'Verdedigen';
          FSubSkill2 := 'Spelhervatting';
          ScanTransferLijst(aPlayerType,IntToStr(i),'Keepen','','','',vBlockList);
          ScanTransferLijst(aPlayerType,IntToStr(i),'Keepen','Verdedigen','','',vBlockList);
        end;
      2: // Vleugelverdedigers
        begin
          FSubSkill1 := 'Vleugelspel';
          FSubSkill2 := 'Positiespel';
          FSubSkill3 := 'Spelhervatting';
          ScanTransferLijst(aPlayerType,IntToStr(i),'Verdedigen','','','',vBlockList);
          ScanTransferLijst(aPlayerType,IntToStr(i),'Verdedigen','Vleugelspel','','',vBlockList);
          ScanTransferLijst(aPlayerType,IntToStr(i),'Verdedigen','Vleugelspel','Positiespel','',vBlockList);
        end;
      3: // Centrale verdedigers
        begin
          FSubSkill1 := 'Positiespel';
          FSubSkill2 := 'Spelhervatting';
          ScanTransferLijst(aPlayerType,IntToStr(i),'Verdedigen','','','',vBlockList);
          ScanTransferLijst(aPlayerType,IntToStr(i),'Verdedigen','Positiespel','','',vBlockList);
        end;
      4: // Centrale middenvelders
        begin
          FSubSkill1 := 'Passen';
          FSubSkill2 := 'Verdedigen';
          FSubSkill3 := 'Spelhervatting';
          ScanTransferLijst(aPlayerType,IntToStr(i),'Positiespel','','','',vBlockList);
          ScanTransferLijst(aPlayerType,IntToStr(i),'Positiespel','Passen','','',vBlockList);
          
          FSubSkill1 := 'Verdedigen';
          FSubSkill2 := 'Passen';
          FSubSkill3 := 'Spelhervatting';
          ScanTransferLijst(aPlayerType,IntToStr(i),'Positiespel','Verdedigen','','',vBlockList);
          //ScanTransferLijst(aPlayerType,IntToStr(i),'Positiespel','Passen','Verdedigen','',vBlockList);
        end;
      5: // Vleugelspelers
        begin
          FSubSkill1 := 'Positiespel';
          FSubSkill2 := 'Passen';
          FSubSkill3 := 'Verdedigen';
          ScanTransferLijst(aPlayerType,IntToStr(i),'Vleugelspel','','','',vBlockList);
          ScanTransferLijst(aPlayerType,IntToStr(i),'Vleugelspel','Positiespel','','',vBlockList);
          ScanTransferLijst(aPlayerType,IntToStr(i),'Vleugelspel','Positiespel','Passen','',vBlockList);
          ScanTransferLijst(aPlayerType,IntToStr(i),'Vleugelspel','Positiespel','Passen','Verdedigen',vBlockList);
        end;
      6: // Aanvallers
        begin
          FSubSkill1 := 'Passen';
          FSubSkill2 := 'Vleugelspel';
          FSubSkill3 := 'Spelhervatting';
          ScanTransferLijst(aPlayerType,IntToStr(i),'Scoren','','','',vBlockList);
          ScanTransferLijst(aPlayerType,IntToStr(i),'Scoren','Passen','','',vBlockList);
          //ScanTransferLijst(aPlayerType,IntToStr(i),'Scoren','Passen','Vleugelspel','',vBlockList);
        end;
      7: // Trainers
        begin
          ScanTransferLijst(aPlayerType,IntToStr(i),'Ervaring','Leiderschap','','',vBlockList);
        end;
      end;
    end;
  finally
    vBlockList.Free;
    ShowMessage('Scan ready');
  end;
end;

procedure TfrmHTScanner.btnStartScanClick(Sender: TObject);
begin
  btnScanLijst.Enabled := FALSE;
  try
    StartScan(pckedPlayerType.ItemIndex + 1);
  finally
    btnScanLijst.Enabled := TRUE;
  end;
end;

procedure TfrmHTScanner.ReadInifile;
begin
  with TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) do
  begin
    try
      FUserName := ReadString('ALGEMEEN','USERNAME','');
      FPassWord := ReadString('ALGEMEEN','PASSWORD','');
      FTeamID := ReadInteger('ALGEMEEN', 'TEAMID', 0);
      FMailserver := ReadString('ALGEMEEN','MAILSERVER','smtp.ziggo.nl');
      OfficeType := TApplicationType(ReadInteger('ALGEMEEN','OFFICE_TYPE',0));
      lblTeamID.Caption := Format('Jouw teamID: %d',[FTeamID]);
      FMinimalFanclubSizeForFriendly := ReadInteger('FRIENDLY','MIN_FANCLUB',2500);
      ibdbHTInfo.DatabaseName := ReadString('ALGEMEEN','DATABASE',
        Format('localhost:%sDATA\HT_INFO.GDB',
        [ExtractFilePath(Application.ExeName)]));

      FTPEMarge := ReadInteger('KOOPJES', 'TPEMARGE', 5);
      FMakelaarsPerc := ReadFloat('KOOPJES', 'MAKELAARSPERC', 7.55);
      FVorigeClubs := ReadFloat('KOOPJES', 'VORIGECLUBS', 4.5);
      FKoopjesMarge := ReadInteger('KOOPJES', 'MARGE', 150000);
      FKoopjesMargePerc := ReadInteger('KOOPJES', 'MARGEPERC', 10);
      FKoopjesLoonWeken := ReadInteger('KOOPJES', 'LOONWEKEN', 3);
      FHT_URL := ReadString('ALGEMEEN','URL','http://www.hattrick.org');
    finally
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.FormCreate(Sender: TObject);
begin
  Randomize;

  ScanDate := Date;

  FActiveThreadCount := 0;
  pgctrlLijst.ActivePage := tbBrowser;
  FDocumentCompleted := FALSE;
  FTSIBrowserDocumentCompleted := FALSE;
  CurrentURL := '';
  FTSIBrowserUrl := '';
  FUitdagingen := TStringList.Create;
  FErrorList := TStringList.Create;
  FChangeLog := TStringList.Create;
  DownloadErrors := 0;
  FLoggedIn := FALSE;
  AutoStart := FALSE;
  FFullAuto := FALSE;

  ReadIniFile;

  if (ParamCount > 0) then
  begin
    if UpperCase(ParamStr(1)) = '-AUTO' then
    begin
      FFullAuto := TRUE;
      if not (GetServiceIsRunning('srvProcessLoader')) then
      begin
        StartWinService('srvProcessLoader');
      end;
    end;
  end;

  if (ibdbHTInfo.DatabaseName <> '') then
  begin
    ibdbHTInfo.Open;
    FInsertSQL := CreateInsertSQL(ibdbHTInfo,'TRANSFER_PRIJZEN');
    FTSISQL := CreateInsertSQL(ibdbHTInfo,'TSI');
    FScoutingHistorySQL := CreateInsertSQL(ibdbHTInfo,'SCOUTING_HISTORIE');
    FJeugdspelersSQL := CreateInsertSQL(ibdbHTInfo,'JEUGDSPELERS');
    FJeugdPrestatiesSQL := CreateInsertSQL(ibdbHTInfo,'JEUGD_PRESTATIES');

    CommitTransaction(FInsertSQL.Transaction,dbaNone);
    CommitTransaction(FTSISQL.Transaction,dbaNone);
    CommitTransaction(FScoutingHistorySQL.Transaction,dbaNone);
    CommitTransaction(FJeugdspelersSQL.Transaction,dbaNone);
    CommitTransaction(FJeugdPrestatiesSQL.Transaction,dbaNone);
    FWriteActivitiy := FFullAuto;
    WriteActivity;
    WriteScanHistorie;
  end;

  if (FFullAuto) then
  begin
    tmrAutoStart.Enabled := TRUE;
  end;
end;

procedure TfrmHTScanner.DoAutoStart;
begin
  AutoStart := TRUE;
  mLogging.Lines.Add('AutoStart');
  try
    BrowseTo(HTBrowser,HT_URL);
    Wait(60*1, 60*6);
    LogIn;
    mLogging.Lines.Add('Logged in...');
    mLogging.Lines.Add(Format('Scanning 17yo+',[]));

    ScoutAll17yo;
    Wait(5*60,20*60);
    Application.Terminate;
  except
    on E:Exception do
    begin
      SendStatusMail(Format('Error! '+#13+'%s',
          [E.Message]), FALSE);
      DoAutoStart;
    end;
  end;
end;

procedure TfrmHTScanner.ToonScouting;
var
  vID:Integer;
begin
  vID := -1;
  
  Screen.Cursor := crSQLWait;
  try
    with ibqrScouting do
    begin
      if (Active) then
      begin
        vID := FieldByName('ID').asInteger;
      end;
      DisableControls;
      try
        Close;
        if Transaction.InTransaction then
        begin
          Transaction.Commit;
        end;
        Transaction.StartTransaction;
        ParamByName('TIJDSTIP').asDateTime := Now - (15 / 60 / 24);
        Open;
        if (vID > 0) then
        begin
          Locate('ID',vID,[]);
        end;
      finally
        EnableControls;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmHTScanner.ToonTransferlijst;
begin
  Screen.Cursor := crSQLWait;
  try
    with ibqrWaardes do
    begin
      Close;
      if Transaction.InTransaction then
      begin
        Transaction.Commit;
      end;
      Transaction.StartTransaction;
      ParamByName('ID').asInteger := pckedPlayerType.ItemIndex + 1;
      Open;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmHTScanner.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  vCount: integer;
begin
  if (AColumn = dxDBGrid1CUR_WAARDE) and (AText <> '') then
  begin
    vCount := GetNodeValue(aNode, 'AANTAL_TRANSFERS', srtInteger);
    aColor := GetNodeColor(vCount);
  end
  else if (AColumn = dxDBGrid1WINST_AGE_UP) and (AText <> '') then
  begin
    vCount := GetNodeValue(aNode, 'COUNT_AGE_UP', srtInteger);
    aColor := GetNodeColor(vCount);
  end
  else if (aColumn = dxDBGrid1WINST_SKILL1_UP) and (AText <> '') then
  begin
    vCount := GetNodeValue(aNode, 'COUNT_SKILL_UP', srtInteger);
    aColor := GetNodeColor(vCount);
  end
  else if (aColumn = dxDBGrid1WINST_SKILL1_AGE_UP) and (AText <> '') then
  begin
    vCount := GetNodeValue(aNode, 'COUNT_SKILL1_AGE_UP', srtInteger);
    aColor := GetNodeColor(vCount);
  end
  else if (aColumn = dxDBGrid1WINST_SKILL2_UP) and (AText <> '') then
  begin
    vCount := GetNodeValue(aNode, 'COUNT_SKILL2_UP', srtInteger);
    aColor := GetNodeColor(vCount);
  end
  else if (aColumn = dxDBGrid1WINST_SKILL2_AGE_UP) and (AText <> '') then
  begin
    vCount := GetNodeValue(aNode, 'COUNT_SKILL2_AGE_UP', srtInteger);
    aColor := GetNodeColor(vCount);
  end;
end;

function TfrmHTScanner.GetNodeColor(vCount: integer): TColor;
begin
  case vCount of
    1: Result := $001AFF;
    2: Result := $0076FF;
    3: Result := $00DFFF;
    4: Result := $00FFFB;
    5: Result := $00FFE7;
    6: Result := $00FFA8;
    7: Result := $00DB90;
    8: Result := $64C800;
    else
      Result := clRed;
  end;
end;

procedure TfrmHTScanner.HTBrowserNEWProgressChange(Sender: TObject; Progress,
  ProgressMax: Integer);
begin
  while Progress < ProgressMax do
  begin
    Application.HandleMessage;
  end;
  FDocumentCompleted := TRUE;
end;

procedure TfrmHTScanner.dxDBGrid1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  pmScouting.PopupFromCursorPos;
end;

procedure TfrmHTScanner.btnExportdataClick(Sender: TObject);
var
  vExportList:TStringList;
  vLastDate:TDate;
  vLine, vFileName:String;
  I, vFieldCount:integer;
begin
  vExportList := TStringList.Create;
  try
    vLastDate := GetFieldValue(ibdbHTInfo,
      'TRANSFER_PRIJZEN',['PLAYER_TYPE'],
      [pckedPlayerType.ItemIndex + 1],'SCAN_DATE',srtDate,svtMax);

    if (vLastDate > 0) then
    begin


      vFieldCount := GetFieldCount(ibdbHTInfo,'TRANSFER_PRIJZEN');

      with uHTDB.CreateSQL(ibdbHTInfo,'SELECT * FROM TRANSFER_PRIJZEN WHERE SCAN_DATE = :DATUM AND PLAYER_TYPE = :PLAYER_TYPE') do
      begin
        try
          ParamByName('PLAYER_TYPE').asInteger := pckedPlayerType.ItemIndex + 1;
          ParamByName('DATUM').asDate := vLastDate;
          ExecQuery;

          vLine := '';
          for i:=0 to vFieldCount -1 do
          begin
            if (vLine = '') then
            begin
              vLine := Fields[i].Name;
            end
            else
            begin
              vLine := Format('%s;%s',[vLine,Fields[i].Name]);
            end;
          end;
          vExportList.Add(vLine);

          while not EOF do
          begin
            vLine := '';

            for i:=0 to vFieldCount - 1 do
            begin
              if (vLine = '') then
              begin
                vLine := Fields[i].asString;
              end
              else
              begin
                vLine := Format('%s;%s',[vLine,Fields[i].asString]);
              end;
            end;

            vExportList.Add(vLine);

            Next;
          end;
        finally
          CommitTransaction(Transaction,dbaFree);
          Free;
        end;
      end;
    end;

    vFileName := Format('%sDATA\%s.PBH',[
      ExtractFilePath(Application.ExeName),pckedPlayerType.Items[pckedPlayerType.ItemIndex]]);

    vExportList.SaveToFile(vFileName);

    ShowMessage(Format('Export opgeslagen als %s',[vFileName]));
  finally
    vExportList.Free;
  end;
end;

procedure TfrmHTScanner.Import(aFileName:String);
var
  vList,vCSVData,vFieldList:TStringList;
  i, j, vPlayerType:integer;
  vDoCheck:boolean;
begin
  vDoCheck := TRUE;
  vPlayerType := -1;
  vList := TStringList.Create;
  try
    vList.LoadFromFile(aFileName);

    if (vList.Count > 0) then
    begin
      vFieldList := ReadCSVLine(vList[0],';');


      for i:=1 to vList.Count -1 do
      begin
        vCSVData := ReadCSVLine(vList[i],';');
        if not FInsertSQL.Transaction.Intransaction then
        begin
          FInsertSQL.Transaction.StartTransaction;
        end;

        for j:=0 to vCSVData.Count - 1 do
        begin
          with FInsertSQL do
          begin
            if (vCSVData[j] <> '') then
            begin
              case ParamByName(vFieldList[j]).SQLType of
                SQL_SHORT,SQL_LONG,SQL_FLOAT,SQL_D_FLOAT,SQL_INT64, SQL_DOUBLE:
                  ParamByName(vFieldList[j]).asFloat := StrToFloat(vCSVData[j]);
                SQL_VARYING,SQL_TEXT,SQL_BLOB:
                  ParamByName(vFieldList[j]).AsString := vCSVData[j];
                SQL_TYPE_DATE:
                  ParamByName(vFieldList[j]).AsDate := StrToDate(vCSVData[j]);
                SQL_TYPE_TIME,SQL_TIMESTAMP:
                  ParamByName(vFieldList[j]).AsDateTime := StrToDateTime(vCSVData[j]);
                else
                  ParamByName(vFieldList[j]).asString := vCSVData[j];
              end;
            end
            else
            begin
              ParamByName(vFieldList[j]).Clear;
            end;
          end;
        end;
        if (vDoCheck) then
        begin
          vPlayerType := FInsertSQL.ParamByname('PLAYER_TYPE').asInteger;

          ExecSQL(ibdbHTInfo,'DELETE FROM TRANSFER_PRIJZEN WHERE SCAN_DATE = :DATUM AND PLAYER_TYPE = :PLAYER_TYPE',
            ['DATUM','PLAYER_TYPE'],[FInsertSQL.ParamByName('SCAN_DATE').asDate,
              vPlayerType]);

          vDoCheck := FALSE;
        end;

        FInsertSQL.ParamByName('ID').asInteger := GetGeneratorValue(ibdbHTInfo,'GEN_TRANSFER_PRIJZEN_ID');
        FInsertSQL.ExecQuery;
        FInsertSQL.Transaction.Commit;
      end;
    end;
  finally
    vList.Free;
  end;

  ShowMessage('Import geslaagd!');

  if (vPlayerType <> -1) then
  begin
    pckedPlayerType.ItemIndex := vPlayerType - 1;
  end;
end;

procedure TfrmHTScanner.btnImportDataClick(Sender: TObject);
begin
  with TOpenDialog.Create(nil) do
  begin
    try
      Filter := 'HTScanner files|*.PBH';
      if Execute then
      begin
        Import(FileName);
      end;
    finally
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.btnExportExcelClick(Sender: TObject);
begin
  dxDBGrid1.SaveToXLS(ExtractFilePath(Application.ExeName)+
    pckedPlayerType.Items[pckedPlayerType.ItemIndex]+'.xls',TRUE);
end;

procedure TfrmHTScanner.SaveTSISet(aSQL:TIBSQL;aTSISet:TTSISet);
begin
  with aSQL do
  begin
    try
      if not(Transaction.InTransaction) then
        Transaction.StartTransaction;

      ParamByName('ID').asInteger := GetGeneratorValue(ibdbHTInfo,'GEN_TSI_ID');
      ParamByName('VORM').asInteger := aTSISet.Vorm;
      ParamByName('CONDITIE').asInteger := aTSISet.Conditie;
      ParamByName('POSITIESPEL').asInteger := Round(aTSISet.PositieSpel);
      ParamByName('SPELHERVATTING').asInteger := aTSISet.Spelhervatting;
      ParamByName('PASSEN').asInteger := Round(aTSISet.Passen);
      ParamByName('VERDEDIGEN').asInteger := Round(aTSISet.Verdedigen);
      ParamByName('VLEUGELSPEL').asInteger := Round(aTSISet.Vleugelspel);
      ParamByName('KEEPEN').asInteger := Round(aTSISet.Keepen);
      ParamByName('SCOREN').asInteger := Round(aTSISet.Scoren);
      ParamByName('TSI').asInteger := aTSISet.TSI;             
      ParamByName('MAINSKILL').asFloat := aTSISet.SubSkill;

      ExecQuery;

      Transaction.Commit;
    finally

    end;
  end;
end;

procedure TfrmHTScanner.GetSubSkill(aTSI: TTSISet);
var
  vObject: Variant;
var
  vID:integer;
begin
  vID := GetFieldValue(ibdbHTInfo,'TSI',
    ['VORM','CONDITIE','POSITIESPEL','SPELHERVATTING','PASSEN','VERDEDIGEN','VLEUGELSPEL','KEEPEN','SCOREN'],
    [aTSI.Vorm,aTSI.Conditie,aTSI.Positiespel,aTSI.Spelhervatting,
    aTSI.Passen,aTSI.Verdedigen,aTSI.Vleugelspel,aTSI.Keepen,aTSI.Scoren],'ID',srtInteger);

  //als berekening reeds bestond dan de oude berekening verversen
  if (vID > 0) then
  begin
    ExecSQL(ibdbHTInfo, 'DELETE FROM TSI WHERE ID = :ID',['ID'],[vID])
  end;
  
  Application.ProcessMessages;
  pgctrlLijst.ActivePage := tbTSI;

  BrowseTo(TSIBrowser, ExtractFilePath(Application.ExeName) + 'berekenen.html');
  SetValue(TSIBrowser, ['TSI'], IntToStr(aTSI.PlayerTSI));
  SetValue(TSIBrowser, ['VORM'], IntToStr(aTSI.Vorm));
  SetValue(TSIBrowser, ['CONDITIE'], IntToStr(aTSI.Conditie));
  SetValue(TSIBrowser, ['PM'],  IntToStr(Round(aTSI.PositieSpel)));
  SetValue(TSIBrowser, ['WG'],  IntToStr(Round(aTSI.Vleugelspel)));
  SetValue(TSIBrowser, ['SC'],  IntToStr(Round(aTSI.Scoren)));
  SetValue(TSIBrowser, ['PS'],  IntToStr(Round(aTSI.Passen)));
  SetValue(TSIBrowser, ['DF'],  IntToStr(Round(aTSI.Verdedigen)));

  vObject := TSIBrowser.oleobject.document.forms.item(0).elements.item(8);
  if not(VarIsClear(vObject)) then
  begin
    vObject.Click;
  end;

  Sleep(100);
  Application.ProcessMessages;
  aTSI.SubSkill := 0;

  while (aTSI.SubSkill = 0) do
  begin
    vObject := TSIBrowser.oleobject.document.forms.item(0).elements.item(9);
    if not(VarIsClear(vObject)) then
    begin
      aTSI.SubSkill := AnyStrToFloat(vObject.Value);
    end;

    Sleep(10);
    Application.ProcessMessages;
  end;

  if (aTSI.TSI > 0) or
     (aTSI.MainSkill > 0) then
  begin
    SaveTSISet(FTSISQL, aTSI);
  end;
end;

function TfrmHTScanner.GetDeadline(aPlayerID:Integer):TDateTime;
begin
  result := GetFieldValue(ibdbHTInfo,'SCOUTING',['PLAYER_ID'],
    [aPlayerID],'DEADLINE',srtDateTime,svtMax);
end;

function TfrmHTScanner.YouthPlayerExists(aYouthPlayerID:Integer):boolean;
begin
  result := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],
    [aYouthPlayerID],'ID',srtInteger,svtMax,uHattrick.CreateReadTransaction(ibdbHTInfo)) > 0;
end;

function TfrmHTScanner.PlayerExists(aPlayerID:Integer):boolean;
begin
  result := GetFieldValue(ibdbHTInfo,'SCOUTING',['PLAYER_ID'],
    [aPlayerID],'ID',srtInteger,svtMax,uHattrick.CreateReadTransaction(ibdbHTInfo)) > 0;
end;

procedure TfrmHTScanner.SaveScoutingToHistory(aTSISet:TTSISet);
begin
  ExecSQL(ibdbHTInfo,'DELETE FROM SCOUTING_HISTORIE WHERE PLAYER_ID = :ID AND SCOUT_DATE = :DATUM',
      ['ID','DATUM'],[aTSISet.PlayerID, ScanDate]);

  with FScoutingHistorySQL do
  begin
    if not(Transaction.InTransaction) then
      Transaction.StartTransaction;
    try
      ParamByName('ID').asInteger := GetGeneratorValue(ibdbHTInfo,'GEN_SCOUTING_HISTORIE_ID');
      ParamByName('PLAYER_ID').asInteger := aTSISet.PlayerID;
      ParamByName('SCOUT_DATE').asDateTime := ScanDate;
      ParamByName('TSI').asInteger := aTSISet.PlayerTSI;
      ParamByName('NT').asInteger := Ord(aTSISet.NT) * -1;
      ParamByName('U20').asInteger := Ord(aTSISet.U20) * -1;

      ExecQuery;
    finally
      CommitTransaction(Transaction,dbaNone);
    end;
  end;
end;

function TfrmHTScanner.GetBestLinie(aSpelerID: String): Integer;
var
  vID: Integer;
begin
  result := -1;
  if (GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',['PLAYER_ID'],
    [aSpelerID],'ID',srtInteger,svtCount,uHattrick.CreateReadTransaction(ibdbHTInfo)) > 0) then
  begin
    vID := GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',
      ['PLAYER_ID'],[aSpelerID],'FIRST 1 ID',srtInteger,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo),
      ' AND POSITIE <> ''???'' ORDER BY STERREN DESC');

    if (vID > 0) then
    begin
      result := GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',
        ['ID'],[vID],'LINIE',srtInteger,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
    end;
  end;
end;

procedure TfrmHTScanner.SaveJeugdspeler(aSpeler:TJeugdSpeler);
var
  vID:integer;
  vGeboorteDatum: TDate;
  vValues: TDBFieldValues;
  vInfo: String;
begin
  vValues := nil;
  
  // Praten we over een keeper?
  if (aSpeler.ID <> '') then
  begin
    aSpeler.Keeper := (aSpeler.Keeper) or (GetBestLinie(aSpeler.ID) = 0);

    aSpeler.KarakterID := SaveKarakterProfiel(aSpeler, FAutoStart);

    FLastKarakterID := aSpeler.KarakterID;

    CurSpec := aSpeler.OldSpec;
    CurLeiderschap := aSpeler.Leiderschap;

    if (aSpeler.IsNew) then
    begin
      OnbekendeSpelers := OnbekendeSpelers + 1;
    end
    else
    begin
      BekendeSpelers := BekendeSpelers + 1;
    end;

    if (aSpeler.IsNewSpec) then
    begin
      SpecOntdekt := SpecOntdekt + 1;
    end;

    vID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aSpeler.ID],
      'ID',srtInteger,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

    if (vID = 0) then
    begin
      with FJeugdspelersSQL do
      begin
        if not(Transaction.InTransaction) then
          Transaction.StartTransaction;

        try
          ParamByName('ID').asInteger := GetGeneratorValue(ibdbHTInfo,'GEN_JEUGDSPELERS_ID');
          ParamByName('PLAYER_ID').asInt64 := StrToInt64(aSpeler.ID);
          ParamByName('PLAYER_NAME').asString := aSpeler.Naam;
          ParamByName('GEBOORTE_DATUM').asDate := aSpeler.GeboorteDatum;
          ParamByName('TOETREED_DATUM').asDate := aSpeler.ArrivalDatum;
          if (aSpeler.Exported) then
          begin
            ParamByName('SCAN_DATUM').asDate := EncodeDate(2000,1,1);
          end
          else
          begin
            ParamByName('SCAN_DATUM').asDate := Date;
          end;
          ParamByName('TEAM_ID').asInteger := aSpeler.TeamID;
          ParamByName('IS_NEW').asInteger := -1;
          ParamByName('EXPORTED').asInteger := Ord(aSpeler.Exported) * -1;
          ParamByName('KARAKTER_ID').asInteger := aSpeler.KarakterID;
          ParamByName('PROMOTED').asInteger := Ord(aSpeler.Naam = '');
          ParamByName('LAST_UPDATE').asDateTime := Now;
          ParamByName('NATIONALITEIT').asString := aSpeler.Herkomst;

          ExecQuery;
        finally
          CommitTransaction(Transaction,dbaNone);
        end;
      end;


      vValues := GetSPValues(ibdbHTInfo,'GET_TALENTED_EX',
        [aSpeler.ID, -1, -1],['TALENTED','U20_LEEFTIJD'],[srtInteger, srtInteger]);

      if (vValues[1] = -1) then
      begin
        vInfo := 'U20';
      end
      else
      begin
        vInfo := 'NT';
      end;

      if (vValues[0] = -1) then
      begin
        vInfo := Format('%s :-)',[vInfo]);
      end
      else
      begin
        vInfo := Format('%s :-(',[vInfo]);
      end;

      StatusBar1.Panels[1].Text := vInfo;
    end
    else
    begin
      vGeboorteDatum := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
        ['ID'],[vID],'GEBOORTE_DATUM',srtDate,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

      if (vGeboorteDatum <> aSpeler.GeboorteDatum) then
      begin
        ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET GEBOORTE_DATUM = :DATUM, PLAYER_NAME = :NAAM WHERE PLAYER_ID = :ID',
        ['ID','DATUM','NAAM'],[aSpeler.ID,aSpeler.GeboorteDatum,aSpeler.Naam]);

        mLogging.Lines.Add(Format('Speler %s (%s): geboortedatum aangepast van %s naar %s',
          [aSPeler.ID, aSpeler.Naam,DateToStr(vGeboortedatum), DateToStr(aSPeler.GeboorteDatum)]));
      end;

      ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET KARAKTER_ID = :KARAKTERID, TEAM_ID = :TEAMID, LAST_UPDATE = CURRENT_TIMESTAMP WHERE PLAYER_ID = :ID',
        ['ID','KARAKTERID','TEAMID'],[aSpeler.ID,aSpeler.KarakterID,aSpeler.TeamID]);
    end;
  end;
end;

function TfrmHTScanner.GetLinie(aPositie:String):Integer;
begin
  if (aPositie = 'K') then
  begin
    result := 0;
  end
  else if (aPositie = 'CV') or (aPositie = 'LV') or (aPositie = 'RV') then
  begin
    result := 1;
  end
  else if (aPositie = 'CM') then
  begin
    result := 2;
  end
  else if (aPositie = 'LVL') or (aPositie = 'RVL') then
  begin
    result := 3;
  end
  else
  begin
    result := 4;
  end;
end;

procedure TfrmHTScanner.SaveWedstrijd(aWedstrijd:TWedstrijd; aReeks: integer);
var
  i: integer;
  vSpeler:TJeugdSpeler;
begin
  for i:=0 to aWedstrijd.Spelers.Count - 1 do
  begin
    vSpeler := TJeugdspeler(aWedstrijd.Spelers[i]);
    with FJeugdPrestatiesSQL do
    begin
      if not(Transaction.InTransaction) then
        Transaction.StartTransaction;

      try
        ParamByName('ID').asInteger := GetGeneratorValue(ibdbHTInfo,'GEN_JEUGDPRESTATIES_ID');
        ParamByName('PLAYER_ID').AsInt64 := StrToInt64(vSpeler.ID);
        ParamByName('PLAYER_NAME').asString := vSpeler.Naam;
        ParamByName('SPEELDATUM').asDate := aWedstrijd.SpeelDatum;
        ParamByName('MATCH_ID').asInteger := StrToInt(aWedstrijd.MatchID);
        ParamByName('LEAGUE_ID').asInteger := StrToInt(aWedstrijd.LeagueID);
        ParamByName('POSITIE').asString := vSpeler.Positie;
        ParamByName('STERREN').asFloat := vSpeler.Sterren;
        ParamByName('INSTRUCTIE').asString := vSpeler.Instructie;
        ParamByName('TEAM_ID').asInteger := vSpeler.TeamID;
        ParamByName('SCAN_DATE').asDate := Date;
        ParamByName('MAIN_LEAGUE_ID').asInteger := aWedstrijd.MainLeagueID;
        ParamByName('LINIE').asInteger := GetLinie(vSpeler.Positie);
        ParamByName('JEUGD_COMPETITIES_ID').asInteger := aReeks;

        ExecQuery;
      finally
        CommitTransaction(Transaction,dbaNone);
      end;
    end;
  end;
end;

function TfrmHTScanner.SaveScouting(aTSISet:TTSISet; aDeleteOldScouting: boolean): integer;
begin
  {if (aDeleteOldScouting) then
  begin
    uBibDb.ExecSQL(ibdbHTInfo,'DELETE FROM SCOUTING WHERE PLAYER_ID = :ID',
      ['ID'],[aTSISet.PlayerID]);
  end; }
  result := -1;
  // karakter en rest van kenmerken opslaan
  if (aTSISet.Parsed) then
  begin
    aTSISet.KarakterID := uHattrick.SaveKarakterProfiel(ibdbHTInfo, AutoStart, aTSISet);
    Result := uHattrick.SaveScouting(ibdbHTInfo, aTSISet, not(aDeleteOldScouting));

    if (AutoStart) and (result = -1) and (aTSISet.YouthPlayerID > 0) then
    begin
      mLogging.Lines.Add(Format('Should have deleted %d',[aTSISet.YouthPlayerID]));
      //Geen geldig karakter! Dan jeugdspeler ook verwijderen.
      //ExecSQL(ibdbHTInfo, 'DELETE FROM JEUGDSPELERS WHERE PLAYER_ID = :ID',
      //  ['ID'], [aTSISet.YouthPlayerID]);
    end;
  end;
end;

function TfrmHTScanner.SaveKarakterProfiel(aSpeler:TJeugdspeler; aForce: boolean):integer;
begin
  result := uHattrick.SaveJeugdKarakterProfiel(ibdbHTInfo,aSpeler, aForce);
end;

function TfrmHTScanner.BrowseToNextPage(aPage:integer):boolean;
var
  vElement:String;
  vNextPage: Variant;
  vIndex:integer;
begin
  result := TRUE;
  vIndex := aPage;

  if (aPage > 10) then
  begin
    vIndex := 9 + ((Floor((aPage -1) / 10) - 1) * 10);

    vIndex := aPage - vIndex;
  end;

  vElement := Format('ctl00_CPMain_ucPager_repPages_ctl%.2d_p%d',[vIndex,aPage]);

  vNextPage := HTBrowser.OLEObject.Document.GetElementByID(vElement);

  if (varIsClear(vNextPage)) then
  begin
    StreamToMemo(HTBrowser);
    vMemo.Lines.SaveToFile('c:\body.txt');
  end;


  if not(VarisClear(vNextPage)) and not(vNextPage.GetAttribute('disabled',0) = 'True') then
  begin
    FDocumentCompleted := FALSE;
    vNextPage.Click;
    while not FDocumentCompleted do
      Application.HandleMessage;
  end
  else
  begin
    if (aPage > 10) then
    begin
      vNextPage := HTBrowser.OLEObject.Document.GetElementByID(Format('ctl00_CPMain_ucPager_repPages_ctl%.2d_p%d',
            [Ceil(aPage/10),Ceil(aPage/10)]));
      if not(VarisClear(vNextPage)) and not(vNextPage.GetAttribute('disabled',0) = 'True') then
      begin
        FDocumentCompleted := FALSE;
        vNextPage.Click;
        while not FDocumentCompleted do
          Application.HandleMessage;

        result := BrowseToNextPage(aPage);
      end
      else
      begin
        result := FALSE;
      end;
    end
    else
    begin
      result := FALSE;
    end;
  end;
end;

function TfrmHTScanner.ScoutPlayers(aTalentScouting:boolean):integer;
var
  vTSISet:TTSISet;
  vLinks:Variant;
  vURL:String;
  i,vPages, vPos, vMaxPages, vCount:integer;
  vLinkList:TStringList;
  vSpelerBekend, vDoAdd:boolean;
begin
  btnScout.Enabled := FALSE;
  vLinkList := TStringList.Create;

  vCount := 0;
  try
    vMaxPages := StrToInt(btnEdPaginas.Text);

    vPages := StrToInt(btnVanPagins.Text);
    if (vPages > 1) then
    begin
      // Pagina opzoeken.
      BrowseToNextPage(vPages - 1);
    end;

    while vPages <= vMaxPages do
    begin
      lblStatus.Caption := Format('%d/%d',[vPages,vMaxPages]);

      vLinks := HTBrowser.OLEObject.Document.Links;
      if not(VarIsClear(vLinks)) then
      begin
        for i:=0 to vLinks.Length -1 do
        begin
          vUrl := Trim(vLinks.Item(i).toString);
          vPos := Pos('PLAYER.ASPX?', UpperCase(vUrl));
          if (vPos > 0) and
             (vLinkList.IndexOf(vURL) = -1) AND
             (Pos('YOUTHPLAYER', UpperCase(vUrl)) = 0) then
          begin
            vLinkList.Add(vURL);
          end;
        end;
      end;

      inc(vPages);

      // Pagina verder
      if (vPages <= vMaxPages) then
      begin
        if not BrowseToNextPage(vPages - 1) then
        begin
          vPages := vMaxPages + 1;
        end;
      end;
    end;

    for i:=0 to vLinkList.Count - 1 do
    begin
      lblStatus.Caption := Format('%d/%d',[i+1,vLinkList.Count]);

      BrowseTo(HTBrowser,vLinkList[i]);

      try
        vTSISet := ParsePlayerInfo;
        try
          vSpelerBekend := PlayerExists(vTSISet.PlayerID);

          if (vSpelerBekend) then
          begin
            SaveScoutingToHistory(vTSISet);
          end;

          if (GetDeadLine(vTSISet.PlayerID) <> vTSISet.Deadline) or not(vSpelerBekend) then
          begin
            vDoAdd := TRUE;
            if not(vSpelerBekend) and (aTalentScouting) then
            begin
              vDoAdd :=
                (Pos('17 jaar',vTSISet.Leeftijd) > 0) or
                (Pos('18 jaar',vTSISet.LeefTijd) > 0) or
                (Pos('19 jaar',vTSISet.LeefTijd) > 0) or
                (Pos('20 jaar',vTSISet.LeefTijd) > 0) or
                (Pos('21 jaar',vTSISet.LeefTijd) > 0);
            end;

            if (vDoAdd) then
            begin
              inc(vCount);
              if not(aTalentScouting) then
              begin
                GetSubSkill(vTSISet);
              end;
              SaveScouting(vTSISet,not aTalentScouting);
            end;
          end;
        finally
          vTSISet.Free;
        end;
        if (pgctrlLijst.ActivePage <> tbBrowser) then
        begin
          pgctrlLijst.ActivePage := tbBrowser;
        end;
      finally
        //GoBack(HTBrowser);
      end;
    end;
  finally
    vLinkList.Free;
    pgctrlLijst.ActivePage := tbBrowser;
    //btnStartScouting.Enabled := TRUE;
    btnScout.Enabled := TRUE;
    result := vCount;
  end;
end;

procedure TfrmHTScanner.dxDBGrid2DblClick(Sender: TObject);
begin
  BrowseToPlayer(ibqrScouting.FieldByName('PLAYER_ID').AsInteger);
end;

procedure TfrmHTScanner.BrowseToPlayer(aPlayerID: integer);
var
  vURL: String;
begin
  vURL := CurrentURL;
  vURL := Copy(vURL, 1, Pos('.hattrick.org/', CurrentURL));
  vURL := Format('%shattrick.org/Club/Players/Player.aspx?playerId=%d', [vURL, aPlayerID]);

  BrowseTo(HTBrowser, vURL);
  pgctrlLijst.ActivePage := tbBrowser;
end;

procedure TfrmHTScanner.btnCopyPlayerLinkClipboardClick(Sender: TObject);
begin
  Clipboard.AsText := Format('Players/Player.aspx?playerId=%d', [ibqrScouting.FieldByName('PLAYER_ID').AsInteger]);
end;

procedure TfrmHTScanner.btnVerversenClick(Sender: TObject);
begin
  ToonTransferlijst;
end;

procedure TfrmHTScanner.btnVerwijderScoutingClick(Sender: TObject);
begin
  if MessageBox(Handle,PChar('Weet je zeker dat je alle scoutingsresultaten wilt verwijderen?'),
    PChar('HTScanner'),MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    ExecSQL(ibdbHTInfo,'DELETE FROM SCOUTING',[],[]);
    ToonScouting;
  end;
end;

procedure TfrmHTScanner.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  vDeadline: TDateTime;
  vAantalKoopjes: integer;
begin
  if aNode <> nil then
  begin
    vDeadLine := GetNodeValue(aNode, 'DEADLINE', srtDateTime);
    if (vDeadline < Now) then
    begin
      aFont.Color := clRed;
    end
    else if (vDeadLine < Now + (15/60/24)) then
    begin
      aFont.Color := clBlue;
    end;

    vAantalKoopjes := GetNodeValue(aNode, 'AANTAL_KOOPJES', srtInteger);
    if (vAantalKoopjes > 0) then
    begin
      aFont.Style := aFont.Style + [fsBold];
    end
    else
    begin
      aFont.Style := aFont.Style - [fsBold];
    end;
  end;
end;

procedure TfrmHTScanner.ibqrScoutingAfterOpen(DataSet: TDataSet);
begin
  if not (ibqrTransferprijzen.Active) then
    ibqrTransferprijzen.Open;
end;

procedure TfrmHTScanner.dsScoutingDataChange(Sender: TObject;
  Field: TField);
begin
  if (Field = nil) then
  begin
    with ibqrTransferprijzen do
    begin
      if (Active) then
        Close;
      if ibqrScouting.FieldByName('ID').asInteger > 0 then
      begin
        ParamByName('ID').asInteger := ibqrScouting.FieldByName('ID').asInteger;
        Open;
      end;
    end;
  end;
end;

procedure TfrmHTScanner.TSIBrowserDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
  if (pDisp = TEmbeddedWB(aSender).DefaultInterface) then
  begin
    FTSIBrowserDocumentCompleted := TRUE;
    FTSIBrowserUrl := URL;

    //Application.ProcessMessages;
    Caption := Format('Hattrick Scanner [%s]',[FTSIBrowserUrl]);
  end;
end;

procedure TfrmHTScanner.TSIBrowserBeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
begin
 FTSIBrowserDocumentCompleted := FALSE;
end;

procedure TfrmHTScanner.btnScoutingExportXLSClick(Sender: TObject);
var
  vFileName:String;
begin
  vFileName := ExtractFilePath(Application.ExeName)+
    'scouting.xls';
  dbgrdScouting.SaveToXLS(vFileName,TRUE);
  ShowMessage(Format('Resultaat scouting opgeslagen als'+#13+'%s.',
    [vFileName]));
end;

procedure TfrmHTScanner.HTBrowserDownloadBegin(Sender: TObject);
begin
  DocumentCompleted := FALSE;
end;

function TfrmHTScanner.GetPlayerInfo(aScoutingID:integer;aSkillSet:TSkillSet):integer;
begin
  with CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT * FROM GET_MAINSKILLS(:ID)');
      end;
      ParamByName('ID').asInteger := aScoutingID;
      ExecQuery;

      result := FieldByName('AGE').asInteger;

      if FieldByName('SKILL1_TYPE').asInteger > 0 then
      begin
        aSkillSet.FSkill1_Index := FieldByName('SKILL1_TYPE').asString;
        aSkillSet.FSkill1 := FSkillsArray[FieldByName('SKILL1_TYPE').asInteger];
        aSkillSet.FSkill1_Level := FieldByName('SKILL1_LEVEL').asInteger;
        aSkillSet.FSkill1_Level_Max := FieldByName('SKILL1_LEVEL').asInteger;
      end;

      if FieldByName('SKILL2_TYPE').asInteger > 0 then
      begin
        aSkillSet.FSkill2_Index := FieldByName('SKILL2_TYPE').asString;
        aSkillSet.FSkill2 := FSkillsArray[FieldByName('SKILL2_TYPE').asInteger];
        aSkillSet.FSkill2_Level := FieldByName('SKILL2_LEVEL').asInteger;
        aSkillSet.FSkill2_Level_Max := FieldByName('SKILL2_LEVEL').asInteger;
      end;

      if FieldByName('SKILL3_TYPE').asInteger > 0 then
      begin
        aSkillSet.FSkill3_Index := FieldByName('SKILL3_TYPE').asString;
        aSkillSet.FSkill3 := FSkillsArray[FieldByName('SKILL3_TYPE').asInteger];
        aSkillSet.FSkill3_Level := FieldByName('SKILL3_LEVEL').asInteger;
        aSkillSet.FSkill3_Level_Max := FieldByName('SKILL3_LEVEL').asInteger;
      end;

      if FieldByName('SKILL4_TYPE').asInteger > 0 then
      begin
        aSkillSet.FSkill4_Index := FieldByName('SKILL4_TYPE').asString;
        aSkillSet.FSkill4 := FSkillsArray[FieldByName('SKILL4_TYPE').asInteger];
        aSkillSet.FSkill4_Level := FieldByName('SKILL4_LEVEL').asInteger;
        aSkillSet.FSkill4_Level_Max := FieldByName('SKILL4_LEVEL').asInteger;
      end;
    finally
      CommitTransaction(Transaction,dbaFree);
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.btnTransferprijsEvaluatieClick(Sender: TObject);
var
  vBookMark:TBookMark;
  vPrijs:double;
  vTransferCount, vLeeftijd:integer;
  vSkillSet:TSkillSet;
  vLastDate:TDate;
begin
  with ibqrScouting do
  begin
    vBookMark := GetBookmark;
    DisableControls;
    try
      First;
      while not EOF do
      begin
        lblStatus.Caption := Format('%d/%d',
          [RecNo,RecordCount]);

        vLastDate := GetSPValue(ibdbHTInfo,
          'GET_TRANSFERPRIJZEN',[FieldByName('ID').asInteger],'DATUM',srtDate,svtMax);

        if (vLastDate < Date) then
        begin

          BrowseToPlayer(FieldByName('PLAYER_ID').AsInteger);
          BrowseToLink(HTBrowser,'/TransferCompare.aspx?');

          vSkillSet := TSkillSet.Create;
          try
            vLeeftijd := GetPlayerInfo(FieldByName('ID').AsInteger,vSkillSet);

            vPrijs := ParsePrijzen(vTransferCount);

            if (vPrijs > 0) then
            begin
              SaveTransferPrijsEvaluatie(-1,vLeeftijd,vPrijs,vTransferCount,
                vSkillSet,(vSkillSet.Skill2 <> ''),(vSkillSet.Skill3 <> ''),
                (vSkillSet.Skill4 <> ''));
            end;
          finally
            vSkillSet.Free;
          end;
        end;
        Next;
      end;

      GotoBookmark(vBookMark);
    finally
      FreeBookmark(vBookMark);
      EnableControls;

      pgctrlLijst.ActivePage := tbScouting;
    end;
  end;
end;

procedure TfrmHTScanner.btnRefreshScoutingClick(Sender: TObject);
begin
  ToonScouting;
end;

function TfrmHTScanner.ParseTeams(aLand,aLeague:String):String;
var
  vText, vResult:String;
  i, vPos: integer;
  vBody,vTeams: TStringList;
  vTeam:TTeam;
begin
  vPos := Pos('(',aLand);
  if vPos > 0 then
  begin
    aLand := Trim(Copy(aLand,1,vPos-1));
  end;

  vPos := Pos('(',aLeague);
  if vPos > 0 then
  begin
    aLeague := Trim(Copy(aLeague,1,vPos-1));
  end;


  vTeams := TStringList.Create;
  try
    StreamToMemo(HTBrowser);
    vBody := TStringList.Create;
    try
      vBody.Text := vMemo.Text;
      
      vPos := Pos('ctl00_CPMain_repPool', vBody.Text);
      if (vPos > 0) then
      begin
        vBody.Text := Copy(vBody.Text, vPos, Length(vBody.Text));

        vPos := Pos('</table>', vBody.Text);
        vBody.Text := Copy(vBody.Text, 1, vPos);

        vPos := Pos('<tr class=', vBody.Text);
        while (vPos > 0) do
        begin
          vBody.Text := Copy(vBody.Text, vPos + 10, Length(vBody.Text));
          vText := vBody.Text;

          vPos := Pos('<a href="', vText);
          vText := Copy(vText, vPos + 9, Length(vText));
          vPos := Pos('" title="', vText);

          vTeam := TTeam.Create;
          vTeam.URL := Copy(vText, 1, vPos - 1);
          vTeam.URL := Copy(CurrentURL, 1, Pos('hattrick.org', CurrentURL) - 1) + 'hattrick.org' + vTeam.URL;
          vTeam.URL := VervangenDoorWaarde(vTeam.URL, 'amp;', '');

          vText := Copy(vText, vPos + 9, Length(vText));
          vPos := Pos('">', vText);
          vTeam.Name := Copy(vText, 1, vPos - 1);

          vText := Copy(vText, 1, 200);
          if Pos('href="/Club/Arena/', vText) = 0 then
          begin
            vTeam.Stadion := 'Thuis';
          end
          else
          begin
            vTeam.Stadion := 'Uit';
          end;
          vTeams.AddObject(vTeam.Name,vTeam);

          vPos := Pos('<tr class=', vBody.Text);
        end;
      end;
    finally
      vBody.Free;
    end;

    for i:=0 to vTeams.Count - 1 do
    begin
      vTeam := TTeam(vTeams.Objects[i]);
      if not (FFriendlyFound) then
      begin
        BrowseTo(HTBrowser,vTeam.URL);

        StreamToMemo(HTBrowser);
        vBody := TStringList.Create;
        try
          vBody.Text := vMemo.Text;
          vPos := Pos('Competitie</h2>',vBody.Text);
          if (vPos > 0) then
          begin
            vBody.Text := Copy(vBody.Text,vPos + Length('Competitie</h2>'),Length(vBody.Text));
            vPos := Pos('<p>',vBody.Text);
            vBody.Text := Copy(vBody.Text,vPos + Length('<p>'),Length(vBody.Text));
            vPos := Pos(' ',vBody.Text);

            vTeam.Positie := Trim(Copy(vBody.Text,1,vPos));
          end;


          vPos := Pos('Fanclub:',vBody.Text);
          if (vPos > 0) then
          begin
            vBody.Text := Copy(vBody.Text,vPos + Length('Fanclub:'),Length(vBody.Text));
          end
          else
          begin
            vPos := Pos('leden in',vBody.Text);

            if (vPos > 0) then
            begin
              vBody.Text := Copy(vBody.Text, vPos - 15, Length(vBody.Text));
            end;
          end;
          if (vPos > 0) then
          begin
            vPos := Pos('leden',vBody.Text);
            vText := vBody.Text;
            Delete(vText,vPos,Length(vBody.Text));

            vResult := '';
            for vPos := 1 to Length(vText) do
            begin
              if CharInSet(vText[vPos],['0'..'9']) then
              begin
                vResult := vResult + vText[vPos];
              end;
            end;
            vTeam.Supporters := StrToInt(vResult);


            // Boeken maar!!!
            with trlFriendly.Add do
            begin
              Values[0] := aLand;
              Values[1] :=  vTeam.Name;
              Values[2] :=  aLeague;

              Values[3] := vTeam.Positie;
              Values[4] := vTeam.Supporters;
              Values[5] := vTeam.Stadion;

              if (trlFriendly.TopNode <> nil) then
              begin
                trlFriendly.TopNode.Focused := TRUE;
              end;
              
              if (vTeam.Supporters >= FMinimalFanclubSizeForFriendly) or (vTeam.Stadion = 'Thuis') then
              begin
                FFriendlyFound := MessageBox(Handle,PChar(
                  Format('Team of thuiswedstrijd (%s/%s - %s) gevonden!',[vTeam.Name,aLand,vTeam.Stadion])+#13+
                  'Wil je verder gaan met zoeken?'),PChar('HTScanner'),MB_ICONQUESTION + MB_YESNO) = ID_NO;
              end;
            end;

          

            result := vTeam.Name;
          end;
        finally
          vBody.Free;
          //GoBack(HTBrowser);
        end;
      end;

      vTeam.Free;
    end;
  finally
    vTeams.Free;
  end;
end;

procedure TfrmHTSCanner.GetFixture;
var
  vObject:Variant;
  vCountries,vCountryNames:array of String;
  i: integer;
  vTegenstander, vLeague: String;
  vOK:boolean;
begin
  vObject := GetBrowserObject(HTBrowser,'ctl00$CPMain$ddlPoolLeagues');
  if not(VarIsClear(vObject)) then
  begin
    SetLength(vCountries,Integer(vObject.Options.Length));
    SetLength(vCountryNames,Integer(vObject.Options.Length));

    for i:=0 to vObject.Options.Length - 1 do
    begin
      vCountries[i] := vObject.Item(i).Value;
      vCountryNames[i] := vObject.Item(i).Text;
    end;
  end;

  FFriendlyFound := FALSE;
  i := -1;

  while not (FFriendlyFound) and (i < High(vCountries)) do
  begin
    inc(i);
    vOk := FALSE;

    vObject := GetBrowserObject(HTBrowser,'ctl00$CPMain$ddlPoolLeagues');
    if not VarIsClear(vObject) then
    begin
      FDocumentCompleted := FALSE;
      try
        vObject.Value := vCountries[i];
        vObject.FireEvent('OnChange');
        vOk := (vObject.Value = vCountries[i]);
      finally
        while not FDocumentCompleted do
        begin
          Application.HandleMessage;
        end;

        Wait(1,3);
      end;
    end;

    // Subleagues ophalen
    if (vOk) then
    begin
      vObject := GetBrowserObject(HTBrowser,'ctl00$CPMain$ddlPoolLeagueLevels');
      if not VarIsClear(vObject) and (vObject.Options.Length > 1) then
      begin
        FDocumentCompleted := FALSE;
        try
          vObject.Value := vObject.Item(1).Value;
          vLeague := vObject.Item(1).Text;
          vObject.FireEvent('Onchange');
        finally
          while not FDocumentCompleted do
          begin
            Application.HandleMessage;
          end;
          Wait(2,5);
        end;
        vTegenstander := ParseTeams(vCountryNames[i],vLeague);

        vObject := GetBrowserObject(HTBrowser,'ctl00_CPSidebar_btnBrowsePool');
        if (VarIsClear(vObject)) or (vObject.GetAttribute('Disabled') = 'False') then
        begin
          if not BrowserClick(HTBrowser,['ctl00_CPSidebar_btnBrowsePool'],FALSE) then
          begin
            if Pos('Challenges',CurrentURL) = 0 then
            begin
              BrowseToLink(HTBrowser,'/Club/');
              BrowserClickByID(HTBrowser,'ctl00_ucSubMenu_A3');
              BrowserClick(HTBrowser,['ctl00_CPSidebar_btnBrowsePool']);
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmHTScanner.btnUitdagingClick(Sender: TObject);
begin
  trlFriendly.ClearNodes;
  
  if Pos('Challenges',CurrentURL) = 0 then
  begin
    BrowseToLink(HTBrowser,'/Club/');
    BrowserClickByID(HTBrowser,'ctl00_ucSubMenu_A3');
    BrowserClick(HTBrowser,['ctl00_CPSidebar_btnBrowsePool']);
  end;

  if Pos('Challenges',CurrentURL) > 0 then
  begin
    GetFixture;
  end
  else
  begin
    ShowMessage('Browse eerst naar de oefenpot');
  end;
end;

procedure TfrmHTScanner.trlFriendlyCompare(Sender: TObject; Node1,
  Node2: TdxTreeListNode; var Compare: Integer);
var
  vColumn: TdxTreeListColumn;
  v1,v2:Integer;
begin
  if ((Node1 <> nil) and (Node2 <> nil)) then
  begin
    vColumn := trlFriendly.SortedColumn;
    if (Node1.Values[vColumn.Index] <> '') and (Node2.Values[vColumn.Index] <> '') then
    begin
      if (vColumn = trlFriendlyColumn5) then
      begin
        v1 := Node1.Values[vColumn.Index];
        v2 := Node2.Values[vColumn.Index];

        if (vColumn.Sorted = csUp) then
        begin
          if V1 = V2 then
            Compare := 0
          else if V1 > V2 then
            Compare := 1
          else
            Compare := -1;
        end
        else
        begin

          if V1 = V2 then
            Compare := 0
          else if V1 > V2 then
            Compare := -1
          else
            Compare := 1;
        end;
      end
      else
      begin
        if (vColumn.Sorted = csUp) then
        begin
          Compare := CompareStr(Node1.Values[vColumn.Index], Node2.Values[vColumn.Index]);
        end
        else
        begin
          Compare := CompareStr(Node2.Values[vColumn.Index], Node1.Values[vColumn.Index]);
        end
      end;
    end;
  end;
end;

procedure TfrmHTScanner.btnStartBidWarClick(Sender: TObject);
begin
  ReadInifile;
  Caption := 'Bidwar in progress...'; 
  btnStopBidwar.Enabled := TRUE;
  btnStartBidWar.Enabled := FALSE;
  btnScanLijst.Enabled := FALSE;
  btnStartScouting.Enabled := FALSE;
  btnScout.Enabled := FALSE;
  btnUitdaging.Enabled := FALSE;
  FBidwarTimerTimer(Sender);
end;

function TfrmHTScanner.CheckBidwarSpeler: Boolean;
var
  vText,
  vTemp: String;
  vPos,
  vHuidigePrijs,
  vHuidigeTeamID: integer;
  vObject: Variant;
begin
  Result := FALSE;

  if (FBidWarMaxPrize > 0) and
     (FBidWarPayerID > 0) then
  begin
    BrowseToPlayer(FBidWarPayerID);

    StreamToMemo(HTBrowser);

    vPos := Pos('Deadline:&nbsp;', vMemo.Text);
    if vPos > 0 then
    begin
      vText := Copy(vMemo.Text, vPos + 15, Length(vMemo.Text));
      vText := Trim(Copy(vText, 1, Pos('</p>', vText) - 1));

      FBidWarSluitingsTijd := AnyStrToDateTime(vText);
    end;

    if (FBidWarSluitingsTijd > 0) then
    begin
      vPos := Pos('Hoogste bod:', vMemo.Text);
      if vPos > 0 then
      begin
        vText := Copy(vMemo.Text, vPos + 13, Length(vMemo.Text));
        vPos := Pos('&nbsp', vText);
        if (vPos > 0) then
        begin
          vTemp := Trim(Copy(vText, 1, vPos - 1));
          vTemp := VerwijderSpaties(vTemp);
          vHuidigePrijs := AnyStrToInt(vTemp);

          vText := Copy(vText, 1, 300);
          //zoeken naar teamID hoogste bod
          vPos := Pos('/Club/?TeamID=', vText);
          vText := Copy(vText, vPos + 14, Length(vText));
          vPos := Pos('"', vText);
          vHuidigeTeamID := AnyStrToInt(Copy(vText, 1, vPos - 1));

          //er mag worden overboden als de huidige geboden prijs <= aan je ingestelde prijs
          //uiteindelijk hoogste bod van jezelf zou dus iets meer kunnen zijn dan je hebt ingesteld
          if (vHuidigeTeamID > 0) and
             (vHuidigeTeamID <> FTeamID) and
             (vHuidigePrijs <= FBidWarMaxPrize) then
          begin
            BrowserClick(HTBrowser,['ctl00$CPMain$btnBid','ctl00$ctl00$CPContent$CPMain$btnBid']);
            SendStatusMail('Huidig bod '+IntToStr(vHuidigePrijs)+' op PlayerID '+IntToStr(FBidWarPayerID)+' verhoogd!',FALSE);
            Result := TRUE;
          end
          else
          begin
            if (vHuidigeTeamID = FTeamID) then
            begin
              Result := TRUE;
            end;
          end;
        end;
      end
      else
      begin
        //er is nog niet geboden, maar misschien wel een minimum prijs ingesteld?
        //kijkt naar het huidige bedrag dat Hattrick reeds voor je heeft vooringevuld
        vObject := HTBrowser.OLEObject.Document.GetElementByID('ctl00$ctl00$CPContent$CPMain$txtBid');
        if (not VarIsClear(vObject)) then
        begin
          //er mag worden overboden als nieuwe te bieden prijs <= aan je ingestelde prijs
          //uiteindelijk hoogste bod van jezelf kan dus niet meer kunnen zijn dan je hebt ingesteld
          vHuidigePrijs := AnyStrToInt(vObject.GetAttribute('value', 0));
          if (vHuidigePrijs > 0) and
             (vHuidigePrijs <= FBidWarMaxPrize) then
          begin
            BrowserClick(HTBrowser,['ctl00$CPMain$btnBid','ctl00$ctl00$CPContent$CPMain$btnBid']);
            SendStatusMail('Huidig bod '+IntToStr(vHuidigePrijs)+' op PlayerID '+IntToStr(FBidWarPayerID)+' verhoogd!',FALSE);
            Result := TRUE;
          end;
        end;
      end;
    end
    else
    begin
      SendStatusMail('Bieden beëindigd!',FALSE);
    end;
  end;
end;

function TfrmHTScanner.VerwijderSpaties(aStr: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(aStr) do
    if (aStr[i] <> ' ') and (Ord(aStr[i]) <> 160) then
      Result := Result + aStr[i];
end;

procedure TfrmHTScanner.FBidwarTimerTimer(Sender: TObject);
begin
  if (FTeamID > 0) then
  begin
    if (NextBidwarCheck > 0) then
    begin
      StatusBar1.Panels[0].Text := FormatDateTime('nn:ss',NextBidwarCheck - Now);
    end;
                
    if (Now >= NextBidwarCheck) then
    begin
      FBidwarTimer.Enabled := FALSE;

      FBidWarPayerID := AnyStrToInt(edSpelerID.Text);
      FBidWarMaxPrize := Ceil(edMaxPrize.Value);

      if (CheckBidwarSpeler) then
      begin
        //het is op dit moment wel belangrijk dat je computerklok enigszins gelijk loopt met Hattrick,
        //meer dan 5 minuten verschil wordt gevaarlijk!
        if Abs(ESBDates.TimeApartInMins(Now, FBidWarSluitingsTijd)) < 15 then
        begin
          NextBidwarCheck := Now + (1 / 60 / 24) + ((1 / 60 / 60 / 24) * Random(10));
          //FBidwarTimer.Interval := 60000 + Random(10000); //1 minuut + max 10 seconden
        end
        else
        begin
          NextBidwarCheck := Now + (10 / 60 / 24) + ((1 / 60 / 60 / 24) * Random(20));
          //FBidwarTimer.Interval := (60000 * 10) + Random(20000); //10 minuten + max 20 seconden
        end;
        FBidwarTimer.Enabled := TRUE;
      end
      else
      begin
        btnStopBidwarClick(Sender);
      end;
    end;
  end
  else
  begin
    ShowMessage('Je eigen teamID staat niet in de INI!');
  end;
end;

procedure TfrmHTScanner.btnStopBidwarClick(Sender: TObject);
begin
  Caption := 'Hattrick Transfer Scanner';
  FBidwarTimer.Enabled := FALSE;
  btnStopBidwar.Enabled := FALSE;
  btnStartBidWar.Enabled := TRUE;
  btnScanLijst.Enabled := TRUE;
  btnStartScouting.Enabled := TRUE;
  btnScout.Enabled := TRUE;
  btnUitdaging.Enabled := TRUE;
end;

procedure TfrmHTScanner.ScoutKnownPlayers;
var
  vTSISet:TTSISet;
  vCount, vMax, vSaved:integer;
begin
  vCount := 0;
  vSaved := 0;

  with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT');
        Add('COUNT(DISTINCT(S.PLAYER_ID)) AANTAL');
        Add('FROM SCOUTING S');
        Add('WHERE');
        Add('S.TALENT_SCOUTING = -1 AND');
        Add('(((SELECT MAX(DEADLINE) FROM SCOUTING WHERE PLAYER_ID = S.PLAYER_ID) <= CURRENT_DATE - 28) OR');
        Add('(SELECT MAX(DEADLINE) FROM SCOUTING WHERE PLAYER_ID = S.PLAYER_ID) IS NULL)');
      end;
      ExecQuery;

      vMax := FieldByName('AANTAL').asInteger;
    finally
      CommitTransaction(Transaction,dbaFree);
      Free;
    end;
  end;

  with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT');
        Add('PLAYER_ID,');
        Add('MAX(DEADLINE)');
        Add('FROM SCOUTING');
        Add('WHERE');
        Add('TALENT_SCOUTING = -1');
        Add('GROUP BY PLAYER_ID');
        Add('HAVING');
        Add('(MAX(DEADLINE) <= CURRENT_DATE - 28) OR (MAX(DEADLINE) IS NULL)');
      end;
      ExecQuery;
      while not EOF do
      begin
        inc(vCount);
        lblStatus.Caption := Format('%d/%d',[vCount,vMax]);

        
        BrowseToPlayer(FieldByName('PLAYER_ID').asInteger);
        
        vTSISet := ParsePlayerInfo;
        try
          if (vTSISet.DeadLine > 0) and (GetDeadLine(vTSISet.PlayerID) <> vTSISet.Deadline) then
          begin
            inc(vSaved);
            SaveScouting(vTSISet,FALSE);
          end
          else
          begin
            SaveScoutingToHistory(vTSISet);
          end;
        finally
          vTSISet.Free;
        end;

        Next;
      end;
    finally
      CommitTransaction(Transaction,dbaFree);
      Free;
    end;
  end;
  ShowMessage(Format('%d spelers op de transferlijst ontdekt en gescout!',[vSaved]));
end;

procedure TfrmHTScanner.btnScoutClick(Sender: TObject);
begin
  case btnScout.ItemIndex of
    0: ScoutFC;
    1:
    begin
      ShowMessage(Format('%d nieuwe spelers gescout!',[ScoutPlayers(TRUE)]));
    end;
    2:  ScoutKnownPlayers;
    3:  ScoutInternationals;
    4:  ShowMessage(Format('%d nieuwe spelers gescout!',[ScoutU20Internationals]));
    5:  ScanKoopjes;
    6:  ScanJeugdCompetitie;
    7:  ToonAutoScout;                     
    8:  AddBlackListedTeam;
    9:  ScoutAll17yo;
    10: ScoutWrongCharacters;
    11: DoMiniTBS;
    12: GetU20Lijstjes;
    13: GetNTLijstjes;
  end;
end;

procedure TfrmHTScanner.GetPlayersByKarakter(aKarakterID: Integer; aIsKeeper: boolean);
begin
  with uHTDB.CreateSQL(ibdbHTInfo, '', uHattrick.CreateReadTransAction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT');
        Add('PLAYER_ID,');
        Add('TEAM_ID,');
        Add('PLAYER_NAME,');
        Add('LAST_UPDATE');
        Add('FROM JEUGDSPELERS');
        Add('WHERE');
        Add('KARAKTER_ID = :KARAKTERID');
        Add('AND COALESCE(NATIONALITEIT,''Nederland'') = :NATIONALITEIT');
        Add('AND GEBOORTE_DATUM <= :DATUM17');
        Add('AND COALESCE(DELETED,0) = 0');
      end;
      ParamByName('KARAKTERID').asInteger := aKarakterID;
      ParamByName('NATIONALITEIT').asString := 'Nederland';
      ParamByName('DATUM17').asDateTime := Date - (2 * 16 * 7);
      ExecQuery;
      while not EOF do
      begin
        if (FieldByName('LAST_UPDATE').asDateTime < Date) then
        begin
          GetJeugdSpelerInfoByID(
            FieldByName('PLAYER_ID').asInteger,
            FieldByName('TEAM_ID').asInteger,
            FieldByName('PLAYER_NAME').asString,
            TRUE,
            aIsKeeper,
            TRUE);
        end;
        Next;
      end;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.ScoutFC;
var
  vList: TStringList;
  vMax, vCount: Integer;
begin
  vCount := 0;

  btnDoubleSpeed.Checked := FALSE;
  btnWarpspeed.Checked := FALSE;
  btnTripleSpeed.Checked := FALSE;
  Quadspeed1.Checked := TRUE;

  
  vList := TStringList.Create;
  try
    with uHTDB.CreateSQL(ibdbHTInfo, '', uHattrick.CreateReadTransAction(ibdbHTInfo)) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          Add('COUNT(ID) AANTAL');
          Add('FROM KARAKTER_PROFIEL');
          Add('WHERE');
          Add('KARAKTER = :KARAKTER');
          Add('AND LEIDERSCHAP = :LEIDERSCHAP');
        end;
        ParamByName('KARAKTER').asString := 'gemeen';
        ParamByName('LEIDERSCHAP').asString := 'goed';
        ExecQuery;
        vMax := FieldByName('AANTAL').asInteger;
      finally
        CommitTransaction(Transaction, dbaFree);
        Free;
      end;
    end;


    with uHTDB.CreateSQL(ibdbHTInfo, '', uHattrick.CreateReadTransAction(ibdbHTInfo)) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          Add('ID,');
          Add('IS_KEEPER');
          Add('FROM KARAKTER_PROFIEL');
          Add('WHERE');
          Add('KARAKTER = :KARAKTER');
          Add('AND LEIDERSCHAP = :LEIDERSCHAP');
        end;
        ParamByName('KARAKTER').asString := 'gemeen';
        ParamByName('LEIDERSCHAP').asString := 'goed';
        ExecQuery;
        while not EOF do
        begin
          inc(vCount);
          GetPlayersByKarakter(FieldByName('ID').asInteger, FieldByName('IS_KEEPER').asInteger = -1);
          GetFutureCoaches(vList,FieldByName('ID').asInteger);

          lblStatus.Caption := Format('%d/%d',[vCount, vMax]);

          if (Length(vList.Text) > 2500) then
          begin
            SaveCSVFile(vList, 'Future Coaches',ExtractFilePath(Application.ExeName)+'Scouting\',
              'FC.csv' );

            vList.Clear;
          end;
          Next;
        end;
      finally
        CommitTransaction(Transaction, dbaFree);
        Free;
      end;
    end;
    SaveCSVFile(vList, 'Future Coaches',ExtractFilePath(Application.ExeName)+'Scouting\',
      'FC.csv' );
  finally
    vList.Free;
  end;
end;

procedure TfrmHTScanner.GetFutureCoaches(aList: TStringList; aKarakterID: integer);

function ErvaringOk(aErvaring: String):boolean;
begin
  if (aErvaring = 'niet-bestaand') or (aErvaring = 'rampzalig') or (aErvaring = 'waardeloos') or
    (aErvaring = 'slecht') then
  begin
    result := FALSE;
  end
  else
  begin
    result := TRUE;
  end;
end;

begin
  with uHTDB.CreateSQL(ibdbHTInfo, '', uHattrick.CreateReadTransAction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT');
        Add('S.PLAYER_ID,');
        Add('S.PLAYER_NAAM,');
        Add('S.ERVARING');
        Add('FROM SCOUTING S');
        Add('LEFT JOIN JEUGDSPELERS J ON (S.YOUTHPLAYER_ID = J.PLAYER_ID)');
        Add('WHERE');
        Add('S.KARAKTER_PROFIEL_ID = :KARAKTER_PROFIEL_ID');
        Add('AND COALESCE(J.DELETED,0) = 0');
        Add('AND COALESCE(J.NATIONALITEIT,''Nederland'') = :NATIONALITEIT');
      end;
      ParamByName('KARAKTER_PROFIEL_ID').asInteger := aKarakterID;
      ParamByName('NATIONALITEIT').asString := 'Nederland';
      ExecQuery;
      while not EOF do
      begin
        if (ErvaringOk(FieldByName('ERVARING').asString)) then
        begin
          aList.Add(Format('[playerid=%d];%s;%s XP',
            [FieldByName('PLAYER_ID').asInteger, FieldByName('PLAYER_NAAM').asString,
            FieldByName('ERVARING').asString]));
        end;
        Next;
      end;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.GetNTLijstjes;
var
  i, vCount:integer;
  vLichting, vKarakter, vIsU20, vDummy, vInfo, vDir: String;
  vList: TStringList;
  vDummyBool: Boolean;
  vVoortgang: TfrmVoortgang;
begin
  vDir := ExtractFilePath(Application.ExeName)+'Scouting\NT\';
  vVoortgang := TfrmVoortgang.Create(nil,7);
  try
    vList := TStringList.Create;
    try
      FormKiesLichting.KiesLichting(ibdbHTInfo, vDummy, vLichting, vDummyBool);

      if (vLichting <> '') then
      begin
        if (DirectoryExists(vDir)) then
        begin
          RemoveFiles(vDir, '.csv');
        end;

        vVoortgang.Melding := 'Bezig met genereren NT-lijsten...';

        for i:=1 to 7 do
        begin
          // 1 = WB
          // 2 = IM
          // 4 = FW

          vList.Clear;
          vCount := 0;
          with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
          begin
            try
              with SQL do
              begin
                Add('SELECT *');
                Add('FROM GET_NT_TALENTEN(:LINIE) WHERE LICHTING = :LICHTING ORDER BY TOTAL_INDEX DESC');
              end;
              ParamByName('LINIE').asInteger := i;
              ParamByName('LICHTING').asString := vLichting;
              ExecQuery;
              while not EOF do
              begin
                inc(vCount);
                if (vCount <= 30) then
                begin
                  if (FieldByName('U20_TALENTED').asInteger = -1) then
                  begin
                    vIsU20 := 'U20';
                  end
                  else
                  begin
                    vIsU20 := '';
                  end;

                  if FieldByName('LEIDERSCHAP').asString = 'goed' then
                  begin
                    vKarakter := 'Goed leider';
                  end
                  else
                  begin
                    vKarakter := '';
                  end;

                  if (vKarakter <> '') then
                  begin
                    vInfo := (Format('[%s] %s [b]%s[/b] %s %s',[
                      FieldByName('SPECIALITEIT').asString,
                      vKarakter,
                      FieldByName('SCOUT').asString,
                      FieldByName('OPMERKING_SCOUT').asString,
                      vIsU20]));
                  end
                  else
                  begin
                    vInfo := (Format('[%s] [b]%s[/b] %s %s',[
                      FieldByName('SPECIALITEIT').asString,
                      FieldByName('SCOUT').asString,
                      FieldByName('OPMERKING_SCOUT').asString,
                      vIsU20]));
                  end;

                  vList.Add(Format('%.2d. [youthplayerid=%d] %s %s %d %s',
                    [vCount,
                     FieldByName('PLAYER_ID').asInteger,
                     FieldByName('PLAYER_NAME').asString,
                     FieldByName('STATS').asString,
                     FieldByName('U20_AFWIJKING').asInteger,
                     vInfo]));

                  vList.Add('');
                end;

                if (Length(vList.Text) > MAX_FORUM_LENGTH) then
                begin
                  case i of
                    1: SaveCSVFile(vList,'NT OWB',vDir,'NT_Wingbacks.csv');
                    2: SaveCSVFile(vList,'NT IM',vDir,'NT_Middenvelders.csv');
                    3: SaveCSVFile(vList,'NT WNG',vDir,'NT_Vleugelspelers.csv');
                    4: SaveCSVFile(vList,'NT FW',vDir,'NT_Aanvallers.csv');
                    5: SaveCSVFile(vList,'NT OCD',vDir,'NT_PMVerdedigers.csv');
                    6: SaveCSVFile(vList,'NT CD/GK',vDir,'NT_Verdedigers.csv');
                    7: SaveCSVFile(vList,'NT DFW',vDir,'NT_DFW.csv');
                  end;
                end;
                
                Next;
              end;
            finally
              CommitTransaction(Transaction,dbaFree);
              Free;
            end;
          end;

          case i of
            1: SaveCSVFile(vList,'NT OWB',vDir,'NT_Wingbacks.csv');
            2: SaveCSVFile(vList,'NT IM',vDir,'NT_Middenvelders.csv');
            3: SaveCSVFile(vList,'NT WNG',vDir,'NT_Vleugelspelers.csv');
            4: SaveCSVFile(vList,'NT FW',vDir,'NT_Aanvallers.csv');
            5: SaveCSVFile(vList,'NT OCD',vDir,'NT_PMVerdedigers.csv'); 
            6: SaveCSVFile(vList,'NT CD/GK',vDir,'NT_Verdedigers.csv');
            7: SaveCSVFile(vList,'NT DFW',vDir,'NT_DFW.csv');
          end;
          vVoortgang.StepIt;
          Application.ProcessMessages;
        end;
      end;
    finally
      vList.Free;
    end;
  finally
    vVoortgang.Free;
  end;
  ShowMessage('KLAAR');
end;

procedure TfrmHTScanner.GetU20Lijstjes;

function GetPlayerFromList(aPlayerID: Integer; aList: TObjectList):TJeugdspeler;
var
  i: integer;
begin
  result := nil;
  if aList.Count > 0 then
  begin
    i := 0;
    while (i < aList.Count) and (result = nil) do
    begin
      if StrToInt(TJeugdSpeler(aList[i]).ID) = aPlayerID then
      begin
        result := TJeugdSpeler(aList[i]);
      end;
      inc(i);
    end;
  end;

  if (result = nil) then
  begin
    result := TJeugdspeler.Create;
    result.ID := IntToStr(aPlayerID);
    result.TeamID := 0;

    aList.Add(result);
  end;
end;

var
  i, vCount:integer;
  vKwalificatie: boolean;
  vLichting, vKarakter, vDummy, vInfo, vSortField, vPos, vDir: String;
  vList: TStringList;
  vVoortgang: TfrmVoortgang;
  vPlayerList: TObjectList;
  vSpeler, vNextPlayer: TJeugdspeler;
begin
  vPlayerList := TObjectList.Create(FALSE);
  vDir := ExtractFilePath(Application.ExeName)+'Scouting\U20\';
  try
    vVoortgang := TfrmVoortgang.Create(nil, 10);
    try
      vList := TStringList.Create;
      try
        FormKiesLichting.KiesLichting(ibdbHTInfo, vLichting, vDummy, vKwalificatie);

        if (vLichting <> '') then
        begin
          if (DirectoryExists(vDir)) then
          begin
            RemoveFiles(vDir, '.csv');
          end;

          vSortField := 'TOTAL_INDEX';

          vVoortgang.Melding := 'Bezig met genereren U20 lijsten...';
          for i:=0 to 8 do
          begin
            case i of
              0: vPos := 'GK';
              1: vPos := 'OWB';
              2: vPos := 'IM';
              3: vPos := 'WNG';
              4: vPos := 'FW';
              5: vPos := 'OCD';
              6: vPos := 'CD';
              7: vPos := 'DFW';
              8: vPos := 'SP-DEF';
            end;


            vList.Clear;
            vCount := 0;
            with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
            begin
              try
                with SQL do
                begin
                  Add('SELECT *');
                  Add(Format('FROM GET_U20_TALENTEN(:LINIE) WHERE LICHTING = :LICHTING ORDER BY %s DESC',[vSortField]));
                end;
                ParamByName('LINIE').asInteger := i;
                ParamByName('LICHTING').asString := vLichting;
                ExecQuery;
                while not EOF do
                begin
                  inc(vCount);
                  if (vCount <= 30) then
                  begin
                    vSpeler := GetPlayerFromList(FieldByName('PLAYER_ID').asInteger, vPlayerList);
                    vSpeler.Naam := FieldByName('PLAYER_NAME').asString;
                    if (vSpeler.Positie = '') then
                    begin
                      vSpeler.Positie := vPos;
                    end
                    else
                    begin
                      vSpeler.Positie := vSpeler.Positie + ' | ' + vPos;
                    end;
                    vSpeler.TeamId := vSpeler.TeamId + 1;
                    vSpeler.Herkomst := FieldByName('SCOUT').asString;
                    vSpeler.GeboorteDatum := FieldByName('PROMOTIE_DATUM').asDateTime;



                    // Bij kwalificatiespelers en counterdefs is het karakter belangrijk.
                    if ((vKwalificatie) or (i = 6)) then
                    begin
                      vKarakter := FieldByName('KARAKTER').asString;

                      if (vKarakter <> '') then
                      begin
                        vKarakter := Format('[u]%s[/u]',[vKarakter]);
                      end;

                      if FieldByName('LEIDERSCHAP').asString = 'goed' then
                      begin
                        if (vKarakter <> '') then
                        begin
                          vKarakter := vKarakter + ', Goed leider';
                        end
                        else
                        begin
                          vKarakter := 'Goed leider';
                        end;
                      end
                    end
                    else
                    begin
                      if FieldByName('LEIDERSCHAP').asString = 'goed' then
                      begin
                        vKarakter := 'Goed leider';
                      end
                      else
                      begin
                        vKarakter := '';
                      end;
                    end;

                    if (vKarakter <> '') then
                    begin
                      vInfo := (Format('[%s] %s [b]%s[/b] %s',[
                        FieldByName('SPECIALITEIT').asString,
                        vKarakter,
                        FieldByName('SCOUT').asString,
                        FieldByName('OPMERKING_SCOUT').asString]));
                    end
                    else
                    begin
                      vInfo := (Format('[%s] [b]%s[/b] %s',[
                        FieldByName('SPECIALITEIT').asString,
                        FieldByName('SCOUT').asString,
                        FieldByName('OPMERKING_SCOUT').asString]));
                    end;


                    vList.Add(Format('%.2d. [youthplayerid=%d] %s %s %d %s',
                      [vCount,
                       FieldByName('PLAYER_ID').asInteger,
                       FieldByName('PLAYER_NAME').asString,
                       FieldByName('STATS').asString,
                       FieldByName('U20_AFWIJKING').asInteger,
                       vInfo]));


                    vList.Add('');
                  end;

                  if (Length(vList.Text) >= MAX_FORUM_LENGTH) then
                  case i of
                    0: SaveCSVFile(vList,'U20 GK',vDir,'U20_Keepers.csv');
                    1: SaveCSVFile(vList,'U20 OWB',vDir,'U20_Wingbacks.csv');
                    2: SaveCSVFile(vList,'U20 IM',vDir,'U20_Middenvelders.csv');
                    3: SaveCSVFile(vList,'U20 WNG',vDir,'U20_Vleugelspelers.csv');
                    4: SaveCSVFile(vList,'U20 FW',vDir,'U20_Aanvallers.csv');
                    5: SaveCSVFile(vList,'U20 OCD',vDir,'U20_PMVerdedigers.csv');
                    6: SaveCSVFile(vList,'U20 CD',vDir,'U20_Verdedigers.csv');
                    7: SaveCSVFile(vList,'U20 DFW',vDir,'U20_DFW.csv');
                    8: SaveCSVFile(vList,'U20 SP-DEF',vDir,'U20_SP.csv');
                  end;

                  Next;
                end;
              finally
                CommitTransaction(Transaction,dbaFree);
                Free;
              end;
            end;

            case i of
              0: SaveCSVFile(vList,'U20 GK',vDir,'U20_Keepers.csv');
              1: SaveCSVFile(vList,'U20 OWB',vDir,'U20_Wingbacks.csv');
              2: SaveCSVFile(vList,'U20 IM',vDir,'U20_Middenvelders.csv');
              3: SaveCSVFile(vList,'U20 WNG',vDir,'U20_Vleugelspelers.csv');
              4: SaveCSVFile(vList,'U20 FW',vDir,'U20_Aanvallers.csv');
              5: SaveCSVFile(vList,'U20 OCD',vDir,'U20_PMVerdedigers.csv');
              6: SaveCSVFile(vList,'U20 CD',vDir,'U20_Verdedigers.csv');
              7: SaveCSVFile(vList,'U20 DFW',vDir,'U20_DFW.csv');
              8: SaveCSVFile(vList,'U20 SP-DEF',vDir,'U20_SP.csv');
            end;

            vVoortgang.StepIt;
            Application.ProcessMessages;
          end;
        end;

        // Nu de dubbele spelers.
        BubbleSortByPlayerID(vPlayerList);
        vList.Clear;
        for i:=0 to vPlayerList.Count - 1 do
        begin
          vSpeler := TJeugdSpeler(vPlayerList[i]);
          if (vSpeler.TeamID > 1) then
          begin
            vList.Add(Format('[youthplayerid=%s] %s [%s] [%s]',[vSpeler.ID, vSpeler.Naam, vSpeler.Positie,
              uHattrick.GetPlayerSkills(ibdbHTInfo, StrToInt(vSpeler.ID))]));
            vList.Add('');
          end;

          if (Length(vList.Text) >= MAX_FORUM_LENGTH) then
          begin
            SaveCSVFile(vList,'U20 Multi-talents',vDir,'U20_Double.csv');
          end;
        end;
        vVoortgang.StepIt;
        SaveCSVFile(vList,'U20 Multi-talents',vDir,'U20_Double.csv');

        // Nu nog een lijstje op promotiedatum
        BubbleSort(vPlayerList);
        vList.Clear;
        for i:=0 to vPlayerList.Count - 1 do
        begin
          vSpeler := TJeugdSpeler(vPlayerList[i]);

          vList.Add(Format('%s - [youthplayerid=%s] %s [%s] [%s]',[FormatDateTime('dd-mm-yyyy',vSpeler.GeboorteDatum),
            vSpeler.ID, vSpeler.Naam, uHattrick.GetPlayerSkills(ibdbHTInfo, StrToInt(vSpeler.ID)), vSpeler.Herkomst]));

          if (i < vPlayerList.Count - 1) then
          begin
            vNextPlayer := TJeugdSpeler(vPlayerList[i + 1]);
            if (vSpeler.GeboorteDatum = vNextPlayer.GeboorteDatum) then
            begin
              vList.Add('');
            end
            else
            begin
              vList.Add('[hr]');
            end;
          end;
          if (Length(vList.Text) >= MAX_FORUM_LENGTH) then
          begin
            SaveCSVFile(vList,'U20-XTC prospects op promotiedatum',vDir,'U20_Promotiedatum.csv');
          end;
        end;
        vVoortgang.StepIt;
        SaveCSVFile(vList,'U20-XTC prospects op promotiedatum',vDir,'U20_Promotiedatum.csv');
      finally
        vList.Free;
      end;
    finally
      vVoortgang.Free;
    end;

    for i:=vPlayerList.Count -1 downto 0 do
    begin
      TJeugdSpeler(vPlayerList[i]).Free;
    end;
  finally
    vPlayerList.Free;
  end;
  ShowMessage('KLAAR');
end;

procedure TfrmHTScanner.BubbleSortByPlayerID(aList:TObjectList);
var
  i, j: Integer;
  temp: TJeugdspeler;
begin
  // bubble sort
  for i := 0 to aList.Count - 1 do begin
    for j := 0 to ( aList.Count - 1 ) - i do begin
      // Condition to handle i=0 & j = 9. j+1 tries to access x[10] which
      // is not there in zero based array
      if ( j + 1 = aList.Count ) then
        continue;
      if ( StrToInt(TJeugdspeler(aList[j]).ID) > StrToInt(TJeugdSpeler(aList[j+1]).ID) ) then begin
        temp              := TJeugdSpeler(aList[j]);
        aList[j]   := aList[j+1];
        aList[j+1] := temp;
      end; // endif
    end; // endwhile
  end; // endwhile
end;

procedure TfrmHTScanner.BubbleSort(aList:TObjectList);
var
  i, j: Integer;
  temp: TJeugdspeler;
begin
  // bubble sort
  for i := 0 to aList.Count - 1 do begin
    for j := 0 to ( aList.Count - 1 ) - i do begin
      // Condition to handle i=0 & j = 9. j+1 tries to access x[10] which
      // is not there in zero based array
      if ( j + 1 = aList.Count ) then
        continue;
      if ( TJeugdspeler(aList[j]).GeboorteDatum > TJeugdSpeler(aList[j+1]).GeboorteDatum ) then begin
        temp              := TJeugdSpeler(aList[j]);
        aList[j]   := aList[j+1];
        aList[j+1] := temp;
      end; // endif
    end; // endwhile
  end; // endwhile
end;

procedure TfrmHTScanner.InitScanResults;
begin
  BekendeSpelers := 0;
  OnbekendeSpelers := 0;
  SpecOntdekt := 0;
  JeugdSpelerRestored := 0;
  TransferListed := 0;
  CurSpec := '';
  CurLeiderschap := '';
  DownloadErrors := 0;
end;

procedure TfrmHTScanner.ScoutWrongCharacters;
begin
  SendStatusMail('test',TRUE);
  ShowMessage('klaar');
end;

procedure TfrmHTScanner.ThreadBrowseTo(aURL: String);
var
  vDL : TDownloadThread;
begin
  mLogging.Lines.Add('Thread download started for '+aURL);
  vDL := TDownloadThread.Create(aURL);
  vDL.OnTerminate := OnThreadTerminate;

  vDL.Start;

  inc(FActiveThreadCount);
end;

procedure TfrmHTScanner.BrowseToDS;
begin
  ThreadBrowseTo('http://www.dutchscouts.nl/web/NTSpy.php');
  if (FirstTime) then
  begin
    if (DayOfWeek(Date) = 2) then
    begin
      ThreadBrowseTo('http://www.dutchscouts.nl/scan/scanGespeeld.php');
    end;
    FFirstTime := FALSE;
  end;
end;

function TfrmHTScanner.ScoutAll17yo:boolean;
var
  vMax, vCount, vSpecCount,vSpecloos: Integer;
  vSQL:TIBSQL;
  vValues:TDBFieldValues;
begin
  FWriteActivitiy := TRUE;
  AutoStart := TRUE;

  if (FFirstTime) then
  begin
    BrowseToDS;
  end;
  WriteActivity;
  
  btnStopScouting.Visible := ivAlways;
  btnDoubleSpeed.Checked := FALSE;
  btnWarpspeed.Checked := FALSE;
  btnTripleSpeed.Checked := FALSE;
  Quadspeed1.Checked := FALSE;

  FFullScouting := TRUE;

  InitScanResults;

  vValues := GetFieldValues(ibdbHTInfo,'SCAN_HISTORIE',['DATUM'],[ScanDate],
      ['SPECS_FOUND','NO_SPEC_FOUND'],[srtInteger,srtInteger],svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

  vSpecCount := vValues[0];
  vSpecloos := vValues[1];
  vMax := 0;
  try
    Screen.Cursor := crSQLWait;
    try
      with uHTDB.CreateSQL(ibdbHTInfo, '', uHattrick.CreateReadTransAction(ibdbHTInfo)) do
      begin
        try
          with SQL do
          begin
            Add('SELECT');
            Add('COUNT(PLAYER_ID) AANTAL');
            Add('FROM GET_17YO_PLUS');
          end;
          ExecQuery;
          vMax := FieldByName('AANTAL').asInteger;
        finally
          CommitTransaction(Transaction, dbaFree);
          Free;
        end;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
    Quadspeed1.Checked := TRUE;

    result := vMax > 0;
    vCount := 0;
    WriteActivity;

    SendStatusMail(Format('Scan started. %d spelers te controleren...',
        [vMax]), FALSE);

    with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransAction(ibdbHTInfo)) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          Add('*');
          Add('FROM GET_17YO_PLUS');
        end;
        Screen.Cursor := crSQLWait;
        try
          ExecQuery;
        finally
          Screen.Cursor := crDefault;
        end;

        if not (GetServiceIsRunning('srvProcessLoader')) then
        begin
          StartWinService('srvProcessLoader');
        end;

        while not EOF do
        begin
          if btnStopScouting.Down then
          begin
            if MessageBoxQuestion('Stoppen?','Scouting') then
            begin
              btnStopScouting.Down := FALSE;
              exit;
            end
            else
            begin
              btnStopScouting.Down := FALSE;
            end;
          end;
          FISU20 := (FieldByName('IS_U20').asInteger = -1);

          if GetJeugdspelerInfoByID(FieldByName('PLAYER_ID').asInteger,
              FieldByName('TEAM_ID').asInteger,FieldByName('PLAYER_NAME').asString,
              TRUE,FALSE,TRUE) then
          begin
            if (FieldByName('SPECIALITEIT').asString = '') then
            begin
              vSQL := uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransAction(ibdbHTInfo));
              try
                with vSQL.SQL do
                begin
                  Add('SELECT');
                  Add('K.SPECIALITEIT');
                  Add('FROM JEUGDSPELERS J');
                  Add('LEFT JOIN KARAKTER_PROFIEL K ON (J.KARAKTER_ID = K.ID)');
                  Add('WHERE J.PLAYER_ID = :ID');
                end;
                vSQL.ParamByName('ID').asInteger := FieldByName('PLAYER_ID').asInteger;
                vSQL.ExecQuery;
                if (vSQL.FieldByName('SPECIALITEIT').asString <> '') then
                begin
                  if (vSQL.FieldByName('SPECIALITEIT').asString <> 'Geen') then
                  begin
                    inc(vSpecCount);
                    SaveScanHistorie(vSpecCount, vSpecLoos);
                  end
                  else
                  begin
                    inc(vSpecLoos);
                    SaveScanHistorie(vSpecCount, vSpecLoos);
                  end;
                end;
              finally
                CommitTransaction(vSQL.Transaction, dbaFree);
                vSQL.Free;
              end;
            end;
          end;
          inc(vCount);
          lblStatus.Caption := Format('%d/%d',[vCount, vMax]);
          StatusBar1.Panels[2].Text := Format('%d specialiteiten',[vSpecCount]);
          StatusBar1.Panels[3].Text := Format('%d specloos',[vSpecLoos]);

          Next;
        end;
      finally
        CommitTransaction(Transaction,dbaFree);
        Free;
      end;
    end;
  finally
    SendStatusMail(Format('%d spelers gecontroleerd [%d specloos, %d specialiteiten]',
        [vMax, vSpecLoos, vSpecCount]), TRUE);

    SaveScanHistorie(vSpecCount, vSpecLoos);
    FFullScouting := FALSE;
  end;

  if (Quadspeed1.Checked) then
  begin
    btnTripleSpeedClick(btnTripleSpeed);
  end;

  if (result) then
  begin
    Wait(10 * 60,18 * 60);
  end;
  
  with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransAction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT ID FROM GET_TBS_INFO');
        Add('WHERE PLAYERS_TODO > 0 AND ID < -1');
        Add('AND COALESCE(EXPORTEREN,0) = 0');
        Add('ORDER BY LAATSTE_SCAN');
      end;
      ExecQuery;
      while not EOF do
      begin
        if not(btnStopScouting.Down) then
        begin
          ScoutJeugdTalents(FieldByName('ID').asInteger);
        end;
        Next;
      end;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.GetHoogsteRating(aGK, aCD, aOCD, aOWB, aIM, aWing,
  aFW, aDFW:double; var aRating: double; var aPos: string);
begin
  aRating := -10000;
  aPos := '';

  if (aGK > aRating) then
  begin
    aRating := aGK;
    aPos := 'GK';
  end;

  if (aCD > aRating) then
  begin
    aRating := aCD;
    aPos := 'CD';
  end;

  if (aOCD > aRating) then
  begin
    aRating := aOCD;
    aPos := 'OCD';
  end;

  if (aOWB > aRating) then
  begin
    aRating := aOWB;
    aPos := 'OWB';
  end;

  if (aIM > aRating) then
  begin
    aRating := aIM;
    aPos := 'IM';
  end;

  if (aWing > aRating) then
  begin
    aRating := aWing;
    aPos := 'WING';
  end;

  if (aFW > aRating) then
  begin
    aRating := aFW;
    aPos := 'FW';
  end;

  if (aDFW > aRating) then
  begin
    aRating := aDFW;
    aPos := 'dFW';
  end;
end;

function TfrmHTScanner.GetIgnoreErrors: boolean;
begin
  result := Ignoreerrors1.Checked;
end;

procedure TfrmHTScanner.SendStatusMail(aMsg:String;aAddPotentials:boolean);
var
  vStatus:TStringList;
  vRating: double;
  vPos: String;
begin
  vStatus := TStringList.Create;
  try
    vStatus.Add(aMsg);

    if (aAddPotentials) then
    begin
      vStatus.Add('');
      vStatus.Add('Talenten op TL:');
      vStatus.Add('');

      with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
      begin
        try
          with SQL do
          begin
            Add('SELECT * FROM GET_TRANSFER_LISTED_POTENTIALS(:DATUM)');
          end;
          ParamByName('DATUM').asDate := ScanDate;
          ExecQuery;
          while not EOF do
          begin
            GetHoogsteRating(FieldByName('GK_INDEX').asFloat,FieldByName('CD_INDEX').asFloat,
              FieldByName('OCD_INDEX').asFloat, FieldByName('OWB_INDEX').asFloat,
              FieldByName('IM_INDEX').asFloat, FieldByName('WING_INDEX').asFloat,
              FieldByName('FW_INDEX').asFloat, FieldByName('DFW_INDEX').asFloat,
              vRating, vPos);

            vStatus.Add(Format('[%s] %d %s [%s] (%s) --%s-- [%d GK - %d DEF - %d POS - %d WING - %d PASS - %d SC - %d SH] [%.2f %s]',[
              FieldByName('LICHTING').asString,
              FieldByName('YOUTHPLAYER_ID').asInteger,
              FieldByName('PLAYER_NAAM').asString,
              FieldByName('LEEFTIJD').asString,
              FieldByName('HERKOMST').asString,
              FieldByName('SPECIALITEIT').asString,
              FieldByName('KEEPEN').asInteger,
              FieldByName('VERDEDIGEN').asInteger,
              FieldByName('POSITIESPEL').asInteger,
              FieldByName('VLEUGELSPEL').asInteger,
              FieldByName('PASSEN').asInteger,
              FieldByName('SCOREN').asInteger,
              FieldByName('SPELHERVATTING').asInteger,
              vRating,
              vPos]));

            vStatus.Add('');
            
            Next;
          end;
        finally
          CommitTransaction(Transaction,dbaFree);
          Free;
        end;
      end;
    end;
    SendEmail(FMailserver,'hadejonge@gmail.com','HTScanner',
        vStatus.Text,[],'hadejonge@gmail.com','HTScanner');
  finally
    vStatus.Free;
  end;
end;

procedure TfrmHTScanner.AddBlackListedTeam;
var
  sTeamID:String;
  vTeamID, vID: integer;
begin
  sTeamID := InputBox('HT Scanner','Geef het TeamID op:','');
  if (sTeamID <> '') then
  begin
    vTeamID := StrToInt(sTeamID);
    vID := GetFieldValue(ibdbHTInfo,'BLACKLIST',['TEAM_ID'],[vTeamID],'ID',srtInteger,
    svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

    if (vID = 0) then
    begin
      ExecSQL(ibdbHTInfo,'INSERT INTO BLACKLIST(ID,TEAM_ID) VALUES (:ID,:TEAMID)',
        ['ID','TEAMID'],[GetGeneratorValue(ibdbHTInfo,'GEN_BLACKLIST_ID'),vTeamID]);

      MessageBoxInfo(Format('Team %s toegevoegd aan de blacklist',[sTeamID]),'HT Scanner');
    end
    else
    begin
      MessageBoxError('Team is al toegevoegd!','HT Scanner');
    end;
  end;
end;

function TfrmHTScanner.Time2Msec(aDateTime:TDateTime):Extended;
begin
  result := aDateTime * 24 * 60 * 60 * 1000;
end;

procedure TfrmHTScanner.Wait(minSeconden,MaxSeconden:integer);
var
  vAantal:int64;
  vStart,vVerstreken:double;
  vTime1, vTime2: TTime;
begin
  if not (btnWarpspeed.Checked) then
  begin
    if (btnDoubleSpeed.Checked) then
    begin
      minSeconden := Round(minSeconden / 2);
      MaxSeconden := Round(MaxSeconden / 2);
    end
    else if (btnTripleSpeed.Checked) then
    begin
      minSeconden := Round(minSeconden / 3);
      MaxSeconden := Round(MaxSeconden / 3);
    end
    else if (Quadspeed1.Checked) then
    begin
      minSeconden := Round(minSeconden / 4);
      MaxSeconden := Round(MaxSeconden / 4);
    end;
    tmrActivity.Enabled := FFullAuto;
    try
      vAantal := Random((MaxSeconden - MinSeconden) * 1000) + (minSeconden * 1000);
      vStart := Time2Msec(Now);
      repeat
        vVerstreken := Time2Msec(Now) - vStart;
        StatusBar1.Panels[0].Text := Format('%d seconden',[Round((vAantal - vVerstreken)/1000)]);
        Application.Handlemessage;
      until vVerstreken > vAantal;
    finally
      if (tmrActivity.Enabled) then
      begin
        tmrActivity.Enabled := FALSE;
      end;
    end;
  end;

  vTime1 := EncodeTime(23,55,0,0);
  vTime2 := EncodeTime(0,5,0,0);

  if (Time > vTime1) or (Time < vTime2) then
  begin
    // Niet rond middernacht ivm de berekening van de leeftijd
    Wait(60,240);
  end;

  if not (FAftermatchCheck) then
  begin
    DoAfterMatchCheck;
  end;
end;

procedure TfrmHTScanner.DoAfterMatchCheck;
var
  vTime : TTime;
begin
  vTime := EncodeTime(22,0,0,0);
  if (DayOfWeek(Date) = 6) and (Time >= vTime) then
  begin
    BrowseToDS;
    FAftermatchCheck := TRUE;
  end;
end;

procedure TfrmHTScanner.ScanJeugdCompetitie;
var
  vURL, vMatchID, vTeamID, vYouthURL, vYouthTeamID, vComps:String;
  vLinks:Variant;
  vLinkList,vBody, vTeams:TStringList;
  i,j,k,vPos, vID, vDone, vAantal:integer;
  vScanDate:TDate;
  vCount, vBots: Integer;
  vRemaining,vStart:TDateTime;
  vFirst, vFoundTeam:boolean;
begin
  btnScanLijst.Enabled := FALSE;

  btnStopScouting.Visible := ivAlways;
  FTotalYouthTeams := 0;
  FTotalPlayers := 0;
  FTotalMatches := 0;
  InitScanResults;

  try
    CompetitieReeks := formKiesJeudCompetities.KiesCompetitieReeks(ibdbHTInfo,FALSE,FCurScan);

    if (CompetitieReeks > 0) then
    begin
      {with TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) do
      begin
        try
          CompetitieReeks := ReadInteger('U17_SCOUTING','REEKS',-1);
          //MIN_COMP := ReadInteger('U17_SCOUTING', 'VAN_COMP', 0);
          //MAX_COMP := ReadInteger('U17_SCOUTING', 'TOT_COMP', 0);
        finally
          Free;
        end;
      end; }
      vStart := Now;
      vRemaining := 0;
      vDone := 0;

      vComps := GetfieldValue(ibdbHTInfo,'JEUGD_COMPETITIES',['ID'],[CompetitieReeks],
        'OMSCHRIJVING',srtString,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

      if MessageBox(Handle,PChar(Format('Competities %s scannen?',
        [vComps])),PChar('U17 Scouting'),MB_ICONQUESTION + MB_YESNO) = ID_YES then
      begin
        with uHTDB.CreateSQL(ibdbHTInfo,'SELECT VAN_ID, TOT_ID FROM JEUGD_COMPETITIES_ID WHERE JEUGD_COMPETITIES_ID = :ID',
          uHattrick.CreateReadTransaction(ibdbHTInfo)) do
        begin
          try
            ParamByName('ID').asInteger := CompetitieReeks;
            ExecQuery;
            while not EOF do
            begin
              if not(btnStopScouting.Down) then
              begin
                for i:=FieldByName('VAN_ID').asInteger to FieldByName('TOT_ID').asInteger do
                begin
                  if (vDone > 0) then
                  begin
                    vRemaining := (Now - vStart) / (vDone) * (FieldByName('TOT_ID').asInteger - i);
                  end;

                  lblStatus.Caption := Format('%d/%d (nog %s)',[i - FieldByName('VAN_ID').asInteger + 1,FieldByName('TOT_ID').asInteger - FieldByName('VAN_ID').asInteger + 1,
                    FormatDateTime('hh:nn:ss',vRemaining)]);
                  try
                    vScanDate := GetFieldValue(ibdbHTInfo,
                      'COMPETITIES_SCANNED',['LEAGUE_ID'],[i],'SCAN_DATE',srtDate,svtMax,
                      uHattrick.CreateReadTransaction(ibdbHTInfo));

                    if (vScanDate <= Date - 7) then
                    begin
                      vBots := 0;
                      vURL := uHattrick.GetLeagueLink(CurrentURL,i);
                      BrowseTo(HTBrowser,vURL);
                      //Wait(1,10);

                      // Teams opslaan
                      StreamToMemo(HTBrowser);
                      vBody := TStringList.Create;
                      try
                        vBody.Text := vMemo.Text;

                        vPos := Pos(Format('(%d)',[i]),vBody.Text);
                        vBody.Text := Copy(vBody.Text,vPos,Length(vBody.Text));

                        vPos := Pos('separator',vBody.Text);
                        vBody.Text := Copy(vBody.Text,1,vPos-1);

                        vTeams := TStringList.Create;
                        for j:=0 to vBody.Count -1 do
                        begin
                          vPos := Pos('Club/?TeamID=',vBody[j]);
                          if vPos > 0 then
                          begin
                            // Botteam??
                            if (Pos('class="shy"',vBody[j]) = 0) then
                            begin
                              vTeamID := Copy(vBody[j],vPos,Length(vBody[j]));
                              vPos := Pos('"',vTeamID);
                              vUrl := Copy(vTeamID,1,vPos-1);

                              vUrl := Format('%shattrick.org/%s',[uHattrick.GetHattrickServer(CurrentURL),vURL]);

                              // Met browseID's
                              if (vTeams.IndexOf(vURL) = -1) then
                              begin
                                vTeams.Add(vURL);
                              end;
                            end
                            else
                            begin
                              inc(vBots);
                            end;
                          end;
                        end;
                      finally
                        vBody.Free;
                      end;

                      vFoundTeam := (vBots > 0) or (vTeams.Count > 0);

                      for k:=0 to vTeams.Count - 1 do
                      begin
                        StatusBar1.Panels[1].Text := Format('Team %d/%d',[k+1,vTeams.Count]);
                        StatusBar1.Panels[2].Text := '';
                        StatusBar1.Panels[3].Text := '';

                        vYouthURL := '';
                        vYouthTeamID := '';
                        vURL := vTeams[k];
                        vTeamID := uHattrick.ExtractIDFromLink(vURL,'?TeamID=');
                        vFoundTeam := vFoundTeam and BrowseTo(HTBrowser,vURL);
                        //Wait(0,2);

                        // Nu jeugdteam opzoeken!
                        vLinks := HTBrowser.OLEObject.Document.Links;
                        if not(VarIsClear(vLinks)) then
                        begin
                          for j:=0 to vLinks.Length -1 do
                          begin
                            try
                              vUrl := Trim(vLinks.Item(j).toString);
                            except
                              vURL := '';
                            end;
                            if Pos(Format('Matches/?TeamID=%s&YouthTeamId=',[vTeamID]),vURL) > 0 then
                            begin
                              //Wait(1,3);
                              vYouthURL := vURL;
                              vYouthTeamID := uHattrick.ExtractIDFromLink(vURL,'YouthTeamID=');
                              inc(FTotalYouthTeams);
                            end;
                          end;
                        end;

                        if (vYouthURL <> '') then
                        begin
                          vFoundTeam := vFoundTeam and BrowseTo(HTBrowser,vYouthURL);
                          Wait(1,6);

                          // Wedstrijden


                          vLinks := HTBrowser.OLEObject.Document.Links;
                          vLinkList := TStringList.Create;

                          // Alleen matchlink van juiste jeugdteam?
                          try
                            if not(VarIsClear(vLinks)) then
                            begin
                              for j:=0 to vLinks.Length -1 do
                              begin
                                try
                                  vUrl := Trim(vLinks.Item(j).toString);
                                except
                                  vUrl := '';
                                end;
                                vPos := Pos('MatchLineup.aspx',vUrl);
                                if (vPos > 0) then
                                begin
                                  vLinkList.Add(vURL);
                                end;
                              end;
                              vFirst := TRUE;
                              for j:=0 to vLinkList.Count - 1 do
                              begin
                                inc(FTotalMatches);
                                StatusBar1.Panels[2].Text := Format('Wedstrijd %d/%d',[j+1,vLinkList.Count]);
                                StatusBar1.Panels[3].Text := '';

                                vMatchID := uHattrick.ExtractIDFromLink(vLinkList[j],'matchID=');
                                vID := GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',
                                  ['TEAM_ID','MATCH_ID'],[vTeamID,vMatchID],'ID',srtInteger,
                                  svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

                                if (vID = 0) then
                                begin
                                  //vURL := uHattrick.GetMatchLink(vLinkList[j],FURL,TRUE);
                                  try
                                    BrowseTo(HTBrowser,vLinkList[j]);
                                    vAantal := ScanJeugdTeam(IntToStr(i),vMatchID,vTeamID,vYouthTeamID,i,vFirst);
                                    FTotalPlayers := FTotalPlayers + vAantal;
                                    StatusBar1.Panels[3].Text := Format('%d spelers',[vAantal]);

                                    StatusBar1.Panels[4].Text := Format('Totaal: %d teams - %d wedstrijden - %d spelers',
                                      [FTotalYouthTeams,FTotalMatches,FTotalPlayers]);

                                    Wait(vAantal * 8,vAantal * 11);
                                  except
                                    try
                                      BrowseTo(HTBrowser,vLinkList[j]);
                                      vAantal := ScanJeugdTeam(IntToStr(i),vMatchID,vTeamID,vYouthTeamID,i,vFirst);
                                      Wait(vAantal * 8,vAantal * 11);
                                    except
                                      try
                                        BrowseTo(HTBrowser,vLinkList[j]);
                                        vAantal := ScanJeugdTeam(IntToStr(i),vMatchID,vTeamID,vYouthTeamID,i,vFirst);
                                        Wait(vAantal * 8,vAantal * 11);
                                      except
                                        on E:Exception do
                                        begin
                                          if MessageBox(Screen.ActiveForm.Handle,
                                            PChar(
                                              Format('Fout bij scannen wedstrijd %s (TeamID =%s)!',
                                                [vMatchID,vYouthTeamID])
                                              +#13+#13+E.Message+#13+#13+'Doorgaan?'),PChar('Hattrick Scanner'),MB_ICONERROR + MB_YESNO) = ID_NO then
                                          raise;
                                        end;
                                      end;
                                    end;
                                  end;
                                  vFirst := FALSE;
                                  //HTBrowser.GoBack;
                                end;
                              end;
                            end;
                          finally
                            vLinkList.Free;
                          end;
                        end;
                      end;
                      Inc(vDone);
                      if (vFoundTeam) then
                      begin
                        ExecSQL(ibdbHTInfo,'INSERT INTO COMPETITIES_SCANNED(ID,LEAGUE_ID,SCAN_DATE,JEUGD_COMPETITIES_ID) VALUES (:ID,:LEAGUE_ID,CURRENT_TIMESTAMP,:REEKS)',
                          ['ID','LEAGUE_ID','REEKS'],[GetGeneratorValue(ibdbHTInfo,'GEN_COMP_SCANNED'),i,CompetitieReeks]);
                      end;
                    end;

                    if btnStopScouting.Down then
                    begin
                      if (MessageBox(Self.Handle,PChar('Wil je stoppen?'),PCHar('Hattrick Scanner'),MB_ICONQUESTION + MB_YESNO) = ID_YES) then
                      begin
                        break;
                      end
                      else
                      begin
                        btnStopScouting.Down := FALSE;
                      end;
                    end;
                  except
                    raise;
                  end;
                end;
              end;
              Next;
            end;
          finally
            CommitTransaction(Transaction, dbaFree);
            Free;
          end;
        end;
      end;

      if not(btnStopScouting.Down) then
      begin
        ParseDocs(FALSE);
      end;
      if not(btnStopScouting.Down) then
      begin
        ScoutJeugdTalents(CompetitieReeks);
      end;
      if not(btnStopScouting.Down) then
      begin
        ExtractPlayersToCSV(CompetitieReeks, FALSE);
        if (FOpnieuw) and not(btnStopScouting.Down) then
        begin
          ShowMessage('Spelers opnieuw exporteren, door wijzigingen in de specialiteiten!');
          ExtractPlayersToCSV(CompetitieReeks, FALSE);
        end;
      end;

      vCount := GetFieldValue(ibdbHTInfo,'COMPETITIES_SCANNED',[],[],'ID',srtInteger,svtCount,
          uHattrick.CreateReadTransaction(ibdbHTInfo),Format('(SCAN_DATE BETWEEN %s AND %S) AND (JEUGD_COMPETITIES_ID = %d)',
            [QuotedStr(FormatDateTime('dd.mm.yyyy',Date - 6)),QuotedStr(FormatDateTime('dd.mm.yyyy',Date)),CompetitieReeks]));

      ShowMessage(Format('Klaar: %d competities gescout!',[vCount]));
    end;
  finally
    btnStopScouting.Visible := ivNever;
    btnScanLijst.Enabled := TRUE;

     StatusBar1.Panels[1].Text := '';
     StatusBar1.Panels[2].Text := '';
     StatusBar1.Panels[3].Text := '';
  end;
end;

function TfrmHTScanner.AddPotentie(aCurPotentie,aNewPotentie:String):String;
begin
  result := aCurPotentie;
  if (aNewPotentie <> '') then
  begin
    if (result = '') then
    begin
      result := ' [';
    end
    else
    begin
      result := result + ', ';
    end;
    result := result + aNewPotentie;
  end;
end;

function TfrmHTSCanner.GetSpecialiteitGepromoveerdeSpeler(aKarakterID: integer;
  aPlayerName, aLeeftijd: String):boolean;
//var
//  vSpec: String;
begin
  result := FALSE;
  
  Beep;
  {Clipboard.asText := aPlayerName;
  // Nog niet bekend of er een spec oid is?
  vSpec := InputBox('Specloos?',
    Format('Geef de spec. van %s (%s)...',[aPlayerName,aLeeftijd]),'N');

  if (vSpec <> '') then
  begin
    vSpec := AfkortingToSpec(vSpec);
    if (vSpec <> '') then
    begin
      result := TRUE;
      FOpnieuw := TRUE;
      uBibDB.ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET SPECIALITEIT = :SPEC WHERE ID = :ID',
        ['ID','SPEC'],[aKarakterID,vSpec]);
    end
    else
    begin
      MessageBoxError('Fout!'+#13+#13+'Geef de afkorting voor de specialiteit!','HTScanner');
    end;
  end;}
end;

function TfrmHTSCanner.GetBatchlings(aBatchlingFile:TStringList;aKarakterID,aCurPlayerID,aReeks:integer;
  var vCount:integer;aSpecOnbekendOnly, aForce:boolean):String;
var
  vChar:String;
  vOK, vDoCheck, vPromoted:boolean;
  vCurFile:TStringList;
  vSpec:String;
  vLastUpdate: TDate;
  vSQL: TIBSQL;
begin
  vDoCheck := TRUE;
  vCurFile := TStringList.Create;
  try
    result := '';
    vCount := 0;
    with CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          Add('B.PLAYER_ID,');
          Add('B.PLAYER_ID1,');
          Add('B.PLAYER_NAME,');
          Add('B.GEBOORTEDATUM,');
          Add('B.TEAM_ID,');
          Add('B.SPECIALITEIT,');
          Add('B.KARAKTER_ID,');
          Add('B.SCAN_DATUM,');
          Add('B.PLAYER_EXPORTED,');
          Add('B.LEEFTIJD,');
          Add('P.POSITIE,');
          Add('B.POT_KEEPEN,');
          Add('B.POT_VERDEDIGEN,');
          Add('B.POT_VLEUGELSPEL,');
          Add('B.POT_POSITIESPEL,');
          Add('B.POT_PASSEN,');
          Add('B.POT_SCOREN,');
          Add('B.POT_SPELHERVATTEN,');
          Add('P.LEAGUE_ID,');
          Add('B.IN_DATUM,');
          Add('B.KEEPER,');
          Add('B.LEIDERSCHAP,');
          Add('B.NATIONALITEIT,');
          Add('B.JEUGD_COMPETITIE_ID');
          Add('FROM GET_POSSIBLE_TWINS(:KARAKTER_ID,-1) T');
          Add('LEFT JOIN GET_BATCHLINGS(T.ID,:PLAYER_ID) B ON (T.ID = B.KARAKTER_ID)');
          Add('LEFT JOIN GET_CURRENT_LEAGUEID(B.PLAYER_ID) P ON (0=0)');
          Add('ORDER BY B.IN_DATUM DESC,B.KARAKTER_ID');
        end;
        
        ParamByName('PLAYER_ID').asInteger := aCurPlayerID;
        ParamByName('KARAKTER_ID').asInteger := aKarakterID;
        ExecQuery;

        result := AddPotentie(result,FieldByName('POT_KEEPEN').asString);
        result := AddPotentie(result,FieldByName('POT_VERDEDIGEN').asString);
        result := AddPotentie(result,FieldByName('POT_POSITIESPEL').asString);
        result := AddPotentie(result,FieldByName('POT_VLEUGELSPEL').asString);
        result := AddPotentie(result,FieldByName('POT_PASSEN').asString);
        result := AddPotentie(result,FieldByName('POT_SCOREN').asString);
        result := AddPotentie(result,FieldByName('POT_SPELHERVATTEN').asString);

        if (result <> '') then
        begin
          result := Format('%s]',[result]);
        end;

        if (aSpecOnbekendOnly) or (ScanAll) then
        begin
          // Alleen ouder dan 17 jaar en met onbekende spec controleren.
          vDoCheck := (FieldByName('SPECIALITEIT').asString = '');
        end;

        if (vDoCheck) then
        begin
          while not EOF do
          begin
            CurSpec := FieldByName('SPECIALITEIT').asString;
            CurLeiderschap := FieldByName('LEIDERSCHAP').asString;

            vLastUpdate := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
              ['PLAYER_ID'],[FieldByName('PLAYER_ID').asInteger],'LAST_UPDATE',srtDateTime,
              svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

            vPromoted := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
              ['PLAYER_ID'],[FieldByName('PLAYER_ID').asInteger],'PROMOTED',srtInteger,
              svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)) = -1;

            if (ScanAll) then
            begin
              vDoCheck := FieldByName('PLAYER_ID').asInteger <> aCurPlayerID;
            end
            else if (aSpecOnbekendOnly) then
            begin
              vDoCheck := (FieldByName('GEBOORTEDATUM').asDate <= (Date - (2 * 16 * 7)))
            end;

            if ((vDoCheck) and (vLastUpdate < Date)) then
            begin
              vOk := GetJeugdspelerInfoByID(FieldByName('PLAYER_ID').asInteger,
                  FieldByName('TEAM_ID').asInteger,FieldByName('PLAYER_NAME').asString,TRUE,
                  FieldByName('KEEPER').asInteger = -1,TRUE);

              vSQL := uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo));
              try
                with vSQL.SQL do
                begin
                  Add('SELECT');
                  Add('K.SPECIALITEIT,');
                  Add('COALESCE(J.PROMOTED,0) PROMOTED');
                  Add('FROM JEUGDSPELERS J');
                  Add('LEFT JOIN KARAKTER_PROFIEL K ON (J.KARAKTER_ID = K.ID)');
                  Add('WHERE J.PLAYER_ID = :ID');
                end;
                vSQL.ParamByName('ID').asInteger := FieldByName('PLAYER_ID').asInteger;
                vSQL.ExecQuery;
                vSpec := vSQL.FieldByName('SPECIALITEIT').asString;
                vPromoted := vSQL.FieldByName('PROMOTED').asInteger = -1;

                if (vSpec <> FieldByName('SPECIALITEIT').asString) then
                begin
                  FOpnieuw := TRUE;
                end;
              finally
                CommitTransaction(vSQL.Transaction, dbaFree);
                vSQL.Free;
              end;

              if (vOK) and not(vPromoted) then
              begin
                if ((FieldByName('NATIONALITEIT').asString = 'Nederland') and
                    (FieldByName('KARAKTER_ID').asInteger = aKarakterID)) then
                begin
                  inc(vCount);
                  vChar := '';
                  if (FieldByName('JEUGD_COMPETITIE_ID').asInteger = aReeks) then
                  begin
                    vChar := 'x';
                  end;


                  vCurFile.Add(Format('[youthplayerid=%d];%s;%s;%s;%d;%s;[teamid=%d];%s;%s;%s;%s;%s;%s;%s',
                    [FieldByName('PLAYER_ID').asInteger,FieldByName('PLAYER_NAME').asString,
                    FieldByname('POSITIE').asString,
                    vChar,
                    FieldByName('PLAYER_EXPORTED').asInteger,
                    FormatDateTime('dd-mm-yyyy',FieldByName('IN_DATUM').asDateTime),
                    FieldByName('TEAM_ID').asInteger,

                    FieldByName('POT_KEEPEN').asString,
                    FieldByName('POT_VERDEDIGEN').asString,
                    FieldByName('POT_POSITIESPEL').asString,
                    FieldByName('POT_VLEUGELSPEL').asString,
                    FieldByName('POT_PASSEN').asString,
                    FieldByName('POT_SCOREN').asString,
                    FieldByName('POT_SPELHERVATTEN').asString]));
                end;
              end;
            end;

            if (FieldByName('PLAYER_ID').asInteger <> aCurPlayerID) and
               (FieldByName('NATIONALITEIT').asString = 'Nederland') and
               (FieldByName('KARAKTER_ID').asInteger = aKarakterID) and
               not(vPromoted) then
            begin
              result := Format('%s [youthplayerid=%d]',[result, FieldByName('PLAYER_ID').asInteger]);
            end;
            
            Next;
          end;
        end;
      finally
        CommitTransaction(Transaction,dbaFree);
        Free;
      end;
    end;
    if (vCount > 1) and (aBatchlingFile <> nil) then
    begin
      aBatchlingFile.Add(vCurFile.Text);
    end;
  finally
    vCurFile.Free;
  end;
end;

procedure TfrmHTScanner.AddOHW(aPlayerFile,aOHWList:TStringList);
var
  i: integer;
begin
  if (aOHWList.Text <> '') then
  begin
    aPlayerFile.Add('');
    aPlayerFile.Add('[b]Gevolgd door JOINT[/b]');
    for i:=0 to aOHWList.Count - 1 do
    begin
      if (aOHWList[i] <> '') then
      begin
        aPlayerFile.Add(aOHWList[i]);
      end;
    end;
  end;

  aOHWList.Clear;
end;

procedure TfrmHTScanner.AddBatchLings(aPlayerFile,aBatchlings:TStringList);
var
  i: integer;
begin
  if (aBatchLings.Text <> '') then
  begin
    aPlayerFile.Add('');
    aPlayerFile.Add('Batchlings');
    for i:=0 to aBatchlings.Count - 1 do
    begin
      if (aBatchlings[i] <> '') then
      begin
        aPlayerFile.Add(aBatchLings[i]);
      end;
    end;
  end;

  aBatchlings.Clear;
end;

{function TfrmHTScanner.AfkortingToSpec(aAfkorting:String):String;
begin
  result := '';
  if (aAfkorting <> '') then
  begin
    aAfkorting := UpperCase(aAfkorting);

    if (aAfkorting = 'H') then
    begin
      result := 'Koppen';
    end
    else if (aAfkorting = 'R') then
    begin
      result := 'Snel herstel';
    end
    else if (aAfkorting = 'P') then
    begin
      result := 'Krachtig';
    end
    else if (aAfkorting = 'T') then
    begin
      result := 'Technisch';
    end
    else if (aAfkorting = 'Q') then
    begin
      result := 'Snel';
    end
    else if (aAfkorting = 'N') then
    begin
      result := 'Geen';
    end
    else if (aAfkorting = 'U') then
    begin
      result := 'Onvoorspelbaar';
    end;
  end;
end;  }

function TfrmHTScanner.SpecToAfkorting(aSpec:String):String;
begin
  result := '';
  if (aSpec <> '') then
  begin
    aSpec := UpperCase(aSpec);

    if (aSpec = 'KOPPEN') then
    begin
      result := 'H';
    end
    else if (aSpec = 'KRACHTIG') then
    begin
      result := 'P';
    end
    else if (aSpec = 'TECHNISCH') then
    begin
      result := 'T';
    end
    else if (aSpec = 'SNEL HERSTEL') then
    begin
      result := 'R';
    end
    else if (aSpec = 'SNEL') then
    begin
      result := 'Q';
    end
    else if (aSpec = 'GEEN') then
    begin
      result := 'N';
    end
    else if (aSpec = 'ONVOORSPELBAAR') then
    begin
      result := 'U';
    end;
  end;
end;

function TfrmHTSCanner.GetLeeftijd(aGeboorteDatum:TDate):String;
begin
  with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT LEEFTIJD FROM GET_LEEFTIJD(:DATUM1,CURRENT_DATE)');
      end;
      ParamByName('DATUM1').asDateTime := aGeboorteDatum;
      ExecQuery;
      result := FieldByName('LEEFTIJD').asString;
    finally
      CommitTransaction(Transaction,dbaFree);
      Free;
    end;
  end;
end;

function TfrmHTSCanner.GetSeizoen(aGeboorteDatum:TDate):integer;
var
  vStart, vPromotieDatum:TDate;
  vWeeks, vSeizoenen:integer;
begin
  vPromotieDatum := aGeboorteDatum + (2 * 16 * 7);

  vStart := StrToDate(START_SEIZOEN);
  vWeeks := WeeksApart(vStart,vPromotieDatum);

  //ShowMessage(DateToStr(vStart) + ' - '+ DateToStr(vPromotieDatum) +  ' = ' +
  //  IntToStr(vWeeks) + ' weken');

  vSeizoenen := (vWeeks div 16);

  result := (START_SEIZOEN_NO) + vSeizoenen;
end;

function TfrmHTSCanner.GetFilter(aRun:Integer;var vSubOmschrijving:String):String;
var
  vIndex:integer;
begin
  vIndex := aRun - 2;
  if (vIndex = Low(FLeeftijden)) then
  begin
    // Iedereen ouder
    result := (Format('AND GEBOORTEDATUM <= %s',[QuotedStr(FormatDateTime('dd.mm.yyyy',FLeeftijden[vIndex]))]));
    vSubOmschrijving := Format('NT [Seizoen %d] (> %s):',[GetSeizoen(FLeeftijden[vIndex] - 10),GetLeeftijd(FLeeftijden[vIndex])]);
  end
  else if (vIndex <= High(FLeeftijden)) then
  begin
    result := (Format('AND GEBOORTEDATUM BETWEEN %s AND %s',
        [QuotedStr(FormatDateTime('dd.mm.yyyy',FLeeftijden[vIndex - 1])),
        QuotedStr(FormatDateTime('dd.mm.yyyy',FLeeftijden[vIndex]))]));
    vSubOmschrijving := Format('NT [Seizoen %d] (%s - %s):',[GetSeizoen(FLeeftijden[vIndex - 1]+20),GetLeeftijd(FLeeftijden[vIndex]+1),GetLeeftijd(FLeeftijden[vIndex-1]-22)]);
  end
  else
  begin
    vIndex := High(FLeeftijden);

    result := (Format('AND GEBOORTEDATUM > %s',[QuotedStr(FormatDateTime('dd.mm.yyyy',FLeeftijden[vIndex]))]));
    vSubOmschrijving := Format('NT [Seizoen %d] (< %s):',[GetSeizoen(FLeeftijden[vIndex] + 1),GetLeeftijd(FLeeftijden[vIndex])]);
  end;

  //ShowMessage(vSubOmschrijving);
end;

procedure TfrmHTSCanner.GetOHW(aList:TStringList; aTeamID, aPlayerID:integer;
  aPlayerName:String);
var
  vAantal: Integer;
  vLeeftijd17:TDate;
begin
  vLeeftijd17 := Date - (2 * 16 * 7);

  with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT COUNT(J.ID) AANTAL');
        Add('FROM JEUGDSPELERS J');
        Add('LEFT JOIN DOCS D ON (J.GOOGLE_DOC = D.DOC_NAME AND J.TABSHEET = D.SHEET_NAME)');
        Add('WHERE J.PLAYER_ID <> :ID AND J.TEAM_ID = :TEAMID AND J.IN_DOCS = -1 AND');
        Add('(J.PROMOTED = 0 OR J.PROMOTED IS NULL) AND (D.ACTIEF = -1)');
        Add('AND J.GEBOORTE_DATUM >= :DATUM17');
      end;
      ParamByName('TEAMID').asInteger := aTeamID;
      ParamByName('ID').asInteger := aPlayerID;
      ParamByName('DATUM17').asDate := vLeeftijd17;
      ExecQuery;
      vAantal := FieldByName('AANTAL').asInteger;
    finally
      CommitTransaction(Transaction,dbaFree);
      Free;
    end;
  end;

  if (vAantal > 0) then
  begin
    aList.Add(Format('"[b][youthplayerid=%d] %s[/b]"',[aPlayerID, aPlayerName]));
    with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
    begin
      try
        with SQL do
        begin
          Add('SELECT J.PLAYER_ID,J.PLAYER_NAME,L.LEEFTIJD,J.TABSHEET,J.GOOGLE_DOC,D.SCOUT,J.GEBOORTE_DATUM');
          Add('FROM JEUGDSPELERS J');
          Add('LEFT JOIN DOCS D ON (J.GOOGLE_DOC = D.DOC_NAME AND J.TABSHEET = D.SHEET_NAME)');
          Add('LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM,CURRENT_DATE) L ON (0=0)');
          Add('WHERE J.PLAYER_ID <> :ID AND J.TEAM_ID = :TEAMID AND J.IN_DOCS = -1 AND (J.PROMOTED = 0 OR J.PROMOTED IS NULL)');
          Add('AND (D.ACTIEF = -1)');
          Add('AND J.GEBOORTE_DATUM >= :DATUM17');
          Add('ORDER BY J.GEBOORTE_DATUM DESC');
        end;
        ParamByName('TEAMID').asInteger := aTeamID;
        ParamByName('DATUM17').asDate := vLeeftijd17;
        ExecQuery;
        while not EOF do
        begin
          aList.Add(Format('"[youthplayerid=%d]";"%s";"%s";"%s";"%s"',
              [ FieldByName('PLAYER_ID').asInteger,
                FieldByName('PLAYER_NAME').asString,
                FieldByName('LEEFTIJD').asString,
                ChangeFileExt(FieldByName('GOOGLE_DOC').asString,''),
                FieldByName('SCOUT').asString]));
          Next;
        end;
      finally
        CommitTransaction(Transaction,dbaFree);
        Free;
      end;
    end;
    aList.Add('');
  end;
end;

function TfrmHTSCanner.ExtractPlayersToCSV(aReeks:integer;
  aSplitsBatchlingen:boolean;aYouthPlayerID: integer = 0; aInclSpecOnbekend: boolean = FALSE):integer;
const
  MAX_REGELS = 20;
var
  vPlayers, vBatchlings, vLinieBatchlings, vTotalBatchlings, vOHWList:TStringList;
  vLine, vPos:STring;
  vBatchLine, vBatchlingList, vOmschrijving, vLichting: String;
  vLeiderschap:String;
  vCount, vLinie, vLineCount, vMin, vMax, vAantal: Integer;
  vBlackListed, vOk, vIsKeeper :boolean;
  vQuery:TIBQuery;
  vLastUpdate: TDateTime;
begin
  InitScanResults;

  vQuery := uHTDB.CreateQuery(ibdbHTInfo,'',uHattrick.CreateReadTransAction(ibdbHTInfo));
  with vQuery do
  begin
    with SQL do
    begin
      if (aYouthPlayerID = 0) then
      begin
        Add('SELECT * FROM GET_JEUGDTALENTEN_EX(:REEKS,:INCL_SPEC_ONBEKEND)');
      end
      else
      begin
        Add('SELECT * FROM GET_JEUGDTALENT(:PLAYER_ID)');
        Add('WHERE PLAYER_ID > 0');
      end;
      Add('ORDER BY U20_LICHTING, PLAYER_NAME');
    end;

    if (aYouthPlayerID = 0) then
    begin
      ParamByName('REEKS').asInteger := aReeks;
      ParamByName('INCL_SPEC_ONBEKEND').asInteger := Ord(aInclSpecOnbekend) * -1;
    end
    else
    begin
      ParamByName('PLAYER_ID').asInteger := aYouthPlayerID;
    end;
  end;


  vMin := 0;
  vMax := 4;

  result := 0;
  vAantal := 0;
  FOpnieuw := FALSE;
  if GetU20Leeftijden then
  begin
    if (AutoStart) then
    begin
      vOmschrijving := CurScan;
    end
    else
    begin
      vOmschrijving := InputBox('Scouting','Geef een omschrijving',CurScan);
    end;

    vPlayers := TStringList.Create;
    vLinieBatchLings := TStringList.Create;
    vTotalBatchlings := TStringList.Create;
    vOHWList := TStringList.Create;

    vBatchLings := TStringList.Create;
    try
      for vLinie := vMin to vMax do
      begin
        vLichting := '';
        
        ClearDir(vLinie,'.csv');

        vLineCount := 0;
        with vQuery do
        begin
          try
            if not Active then
              Open
            else
              First;

            while not EOF do
            begin
              StatusBar1.Panels[2].Text := Format('%s',[FieldByname('U20_LICHTING').asString]);
              StatusBar1.Panels[3].Text := Format('Linie %d',[vLinie]);

              if (vLichting = '') then
              begin
                vLichting := FieldByname('U20_LICHTING').asString;
              end;

              vOK := FieldByName('LINIE').asInteger = vLinie;

              if (vOK) then
              begin
                vBlackListed := (GetFieldValue(ibdbHTInfo,'BLACKLIST',
                  ['TEAM_ID'],[FieldByName('TEAM_ID').asInteger],'ID',srtInteger,
                  svtNormal, uHattrick.CreateReadTransaction(ibdbHTInfo))) > 0;

                if not(vBlackListed) then
                begin
                  GetOHW(vOHWList,FieldByName('TEAM_ID').asInteger, FieldByName('PLAYER_ID').asInteger,
                    FieldByName('PLAYER_NAME').asString);

                  inc(result);
                  vPos := FieldByName('POSITIE').asString;

                  uHTDb.ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET EXPORTED = -1, SCAN_DATUM = CURRENT_DATE WHERE PLAYER_ID = :ID',
                    ['ID'],[FieldByName('PLAYER_ID').asInteger]);

                  // Controleren of er nu een spec op zit.
                  if (FieldByName('SPECIALITEIT').asString = '') then
                  begin
                    if CheckSpecialiteit(FieldByName('PLAYER_ID').asInteger) then
                    begin
                      inc(vAantal);
                      StatusBar1.Panels[3].Text := Format('%d specs',[vAantal]);
                      Wait(5,8);
                      SpecOntdekt := SpecOntdekt + 1;
                      FOpnieuw := TRUE;
                    end;
                  end
                  else
                  begin
                    vLastUpdate := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[FieldByName('PLAYER_ID').asInteger],
                      'LAST_UPDATE',srtDateTime,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
                    if (vLastUpdate < Date - 7) then
                    begin                            
                      vIsKeeper := GetFieldValue(ibdbHTInfo,
                        'KARAKTER_PROFIEL',['ID'],[FieldByName('KARAKTER_ID').asInteger],'IS_KEEPER',srtInteger,
                        svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)) = -1;

                      GetJeugdspelerInfoByID(
                        FieldByName('PLAYER_ID').asInteger,
                        FieldByName('TEAM_ID').asInteger,
                        FieldByName('PLAYER_NAME').asString,
                        TRUE,
                        vIsKeeper,
                        TRUE);

                      if GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
                        ['PLAYER_ID'],[FieldByName('TEAM_ID').asInteger],'DELETED',srtInteger,
                        svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)) = -1 then
                      begin
                        Wait(5,8);
                        FOpnieuw := TRUE;
                      end;
                    end;
                  end;


                  vBatchLine := '';
                  vBatchlingList := GetBatchlings(vBatchLings,FieldByName('KARAKTER_ID').asInteger,
                    FieldByName('PLAYER_ID').asInteger,
                    CompetitieReeks, vCount, FALSE, TRUE);

                  if (vCount > 1) or (vBatchlingList <> '') then
                  begin
                    vBatchLine := Format('%s',[FieldByName('PLAYER_NAME').asString]) + vBatchlingList;
                  end;

                  if (FieldByName('LEIDERSCHAP').asString = 'goed') then
                  begin
                    vLeiderschap := '[C]';
                  end
                  else
                  begin
                    vLeiderschap := '';
                  end;

                  if (FieldByname('U20_AFWIJKING').asString <> '') then
                  begin
                    vLine := Format(
                      '"[YouthPlayerId=%d]";"%s";"[TeamId=%d]";"%s";"%s";"%s";%.1f;"%s";"%s"',
                      [FieldByName('PLAYER_ID').asInteger,
                        FieldByName('PLAYER_NAME').asString,
                        FieldByName('TEAM_ID').asInteger,
                        FieldByName('LEEFTIJD').asString,
                        SpecToAfkorting(FieldByName('SPECIALITEIT').asString),
                        FieldByName('POSITIE').asString,
                        FieldByName('STERREN').asFloat,
                        FieldByname('U20_AFWIJKING').asString,
                        vLeiderschap]);
                  end
                  else
                  begin
                    vLine := Format(
                      '"[YouthPlayerId=%d]";"%s";"[TeamId=%d]";"%s";"%s";"%s";%.1f;"%s"',
                      [FieldByName('PLAYER_ID').asInteger,FieldByName('PLAYER_NAME').asString,
                        FieldByName('TEAM_ID').asInteger,
                        FieldByName('LEEFTIJD').asString,
                        SpecToAfkorting(FieldByName('SPECIALITEIT').asString),
                        FieldByName('POSITIE').asString,FieldByName('STERREN').asFloat,
                        vLeiderschap]);
                  end;

                  vPlayers.Add(vLine);
                  vLinieBatchlings.Add(vBatchLine);

                  inc(vLineCount);

                  {if (vRun = 1) then
                  begin
                    vSubOmschrijving := Format('U20 [%s]',[FieldByName('U20_LICHTING').asString]);
                  end; }
                end;
              end;
              Next;

              // Hebben we een andere lichting? Dan de gegevens opslaan..!
              if (vLichting <> FieldByName('U20_LICHTING').asString) then
              begin
                vLineCount := MAX_REGELS;
              end;

              if (vLineCount >= MAX_REGELS) then
              begin
                AddBatchLings(vPlayers,vLinieBatchlings);
                AddOHW(vPlayers,vOHWList);
                SaveScoutingFiles(vLinie,vLichting,vPlayers,vOmschrijving);
                vLineCount := 0;
              end;
              vLichting := FieldByName('U20_LICHTING').asString;
            end; // while not EOF

            AddBatchLings(vPlayers,vLinieBatchlings);
            AddOHW(vPlayers,vOHWList);
            SaveScoutingFiles(vLinie,vLichting,vPlayers,vOmschrijving);

            if (vBatchlings.Count > 0) then
            begin
              vTotalBatchlings.Add(vBatchlings.Text);
            end;
            vBatchLings.Clear;
          finally
            //uBibDb.CommitTransaction(Transaction,TRUE);
            //Free;
          end;
        end;
      end;

      vTotalBatchlings.SaveToFile(ExtractFilePath(Application.ExeName)+'SCOUTING\Batchlings.csv');
    finally
      vPlayers.Free;
      vLinieBatchLings.Free;
      vBatchLings.Free;
      vTotalBatchlings.Free;
      vOHWList.Free;

      CommitTransaction(vQuery.Transaction,dbaFree);
      vQuery.Free;
    end;
  end;
end;

function  TfrmHTScanner.GetScoutingDir(aLinie:Integer):String;
var
  vSubDir:String;
begin
  case aLinie of
    0: vSubDir := 'GK';
    1: vSubDir := 'DEF';
    2: vSubDir := 'MID';
    3: vSubDir := 'WING';
    4: vSubDir := 'ATT';
  end;
  result := ExtractFilePath(Application.ExeName) + 'scouting\' + vSubDir;

  ForceDirectories(result);
end;

procedure TfrmHTScanner.RemoveFiles(aDir,aFileMask:String);
var
  vFiles: TSearchRec;
begin
  if FindFirst(aDir+'*'+aFileMask,faAnyFile,vFiles) = 0 then
  begin
    try
      repeat
        DeleteFile(aDir + vFiles.Name);
      until FindNext(vFiles) <> 0;
    finally
      FindClose(vFiles);
    end;
  end;
end;

procedure TfrmHTScanner.ClearDir(aLinie:integer;aFileExt:String);
var
  vDir:String;
begin
  vDir := GetScoutingDir(aLinie) + '\';
  if (DirectoryExists(vDir)) then
  begin
    RemoveFiles(vDir, aFileExt);
  end;
end;

procedure TfrmHTScanner.SaveScoutingFiles(aLinie:integer;aFileName: String;aCSVFile:TStringList;
  aOmschrijving:String);
var
  vDir, vNewFileName:String;
  vFileCount:integer;
begin
  vFileCount := 1;

  if (aCSVFile.Count > 0) then
  begin
    aCSVFile.Insert(0,aOmschrijving+#13+#13+aFileName+#13);

    vDir := GetScoutingDir(aLinie);

    if not(DirectoryExists(vDir)) then
    begin
      ForceDirectories(vDir);
    end;

    vNewFileName := Format('%s\%s_%d.csv',[vDir,aFileName,vFileCount]);
    while FileExists(vNewFileName) do
    begin
      inc(vFileCount);
      vNewFileName := Format('%s\%s_%d.csv',[vDir,aFileName,vFileCount]);
    end;


    aCSVFile.SaveToFile(vNewFileName);

    aCSVFile.Clear;
  end;
end;

function TfrmHTScanner.SaveCSVFile(vList: TStringList;aTitle, aDir, aFileName:String):boolean;
var
  vCount: integer;
  vNewFileName: String;
begin
  result := TRUE;
  vCount := 1;

  if not(DirectoryExists(aDir)) then
  begin
    ForceDirectories(aDir);
  end;

  vNewFileName := Format('%s\%s_%d.csv',[aDir,aFileName,vCount]);
  while FileExists(vNewFileName) do
  begin
    inc(vCount);
    vNewFileName := Format('%s\%s_%d.csv',[aDir,aFileName,vCount]);
  end;
  vList.Insert(0,'');
  vList.Insert(0,Format('[b]%s(%d)[/b]',[aTitle, vCount]));
  vList.SaveToFile(vNewFileName);
  vList.Clear;
end;

procedure TfrmHTScanner.GetJeugdSpelerInfo(aSpeler:TJeugdSpeler; aSavePrestaties:boolean=TRUE);
var
  vBody, vFace:TStringList;
  vPos, i:integer;
  vTempStr,vAgeStr,vDayStr, vPlayerName, vVorige, vTemp, vMatchID, vPosition, vURL:String;
  vSpeelDatum:TDate;
  vSterren: double;
  vWedstrijd: TWedstrijd;
  vReeks: integer;
begin
  StreamToMemo(HTBrowser);
  vBody := TStringList.Create;
  vFace := TStringList.Create;
  try
    vBody.Text := vMemo.Text;

    if (Pos('Service Unavailable',vBody.Text) <> 0) then
    begin
      aSpeler.ID := '';
    end
    else if (Pos('Geen speler gevonden',vBody.Text) = 0) then
    begin
      vPos := Pos(Format('YouthPlayerID=%s''>', [aSpeler.ID]), vBody.Text);
      if (vPos > 0) then
      begin
        vTempStr := Copy(vMemo.Text, vPos + Length(Format('YouthPlayerID=%s''>', [aSpeler.ID])), 80);
        vPos := Pos('</a>', vTempStr);

        vTempStr := Copy(vTempStr, 1, vPos - 1);

        vVorige := '';
        vPlayerName := '';
        for i:=1 to Length(vTempStr) do
        begin
          if (vTempStr[i] = ' ') and (vVorige = ' ') then
          begin
            // Geen 2 spaties achter elkaar
          end
          else
          begin
            vPlayerName := vPlayerName + vTempStr[i];
          end;
          vVorige := vTempStr[i];
        end;

        if (aSpeler.Naam <> vPlayerName) then
        begin
          aSpeler.Naam := vPlayerName;
        end;
      end;


      vPos := Pos('volgende verjaardag',vBody.Text);
      if (vPos > 0) then
      begin
        vTempStr := Copy(vMemo.Text,vPos-40,vPos);

        vPos := Pos('>',vTempStr);
        vTempStr := Trim(Copy(vTempStr,vPos+1,Length(vTempStr)));
        vPos := Pos(',',vTempStr);
        vTempStr := Copy(vTempStr,1,vPos-1);

        vAgeStr := Copy(vTempStr,1,2);

        vPos := Pos('en',vTempStr);
        vTempStr := Trim(Copy(vTempStr,vPos+3,Length(vTempStr)));

        vTempStr := Trim(Copy(vTempStr,1,3));
        vDayStr := '';
        for i:=1 to Length(vTempStr) do
        begin
          if CharInSet(vTempStr[i],['0'..'9']) then
          begin
            vDayStr := vDayStr + vTempstr[i];
          end;
        end;


        aSpeler.GeboorteDatum := GetGeboorteDatum(StrToInt(vAgeStr),StrToInt(vDayStr));
      end;

      vPos := Pos('class="faceCard"',vBody.Text);
      if (vPos > 0) then
      begin
        // FACE
        vFace.Text := Copy(vBody.Text,vPos + Length('class="faceCard"'),Length(vBody.Text));

        vPos := Pos('hattrick.org/kits',vFace.Text);
        if (vPos > 0) then
        begin
          vFace.Text := Copy(vFace.Text,vPos+Length('hattrick.org/kits'),Length(vFace.Text));
          vPos := Pos('"',vFace.Text);
          vTempStr := Trim(Copy(vFace.Text,1,vPos-1));
          vTempStr := ChangeFileExt(ExtractFileName(vTempStr),'');
          vPos := Pos('/',vTempStr);
          while vPos > 0 do
          begin
            vTempStr := Copy(vTempStr,vPos+1,Length(vTempStr));
            vPos := Pos('/',vTempStr);
          end;

          aSpeler.Body := vTempStr;
        end
        else
        begin
          vPos := Pos('Avatar/bodies/',vFace.Text);
          vFace.Text := Copy(vFace.Text,vPos+Length('Avatar/bodies/'),Length(vFace.Text));
          vPos := Pos('"',vFace.Text);
          vTempStr := Trim(Copy(vFace.Text,1,vPos-1));
          vTempStr := ChangeFileExt(vTempStr,'');
          aSpeler.Body := Copy(vTempStr,3,Length(vTempStr));
        end;

        // FACE
        vPos := Pos('Avatar/faces/',vFace.Text);
        vFace.Text := Copy(vFace.Text,vPos+Length('Avatar/faces/'),Length(vFace.Text));
        vPos := Pos('"',vFace.Text);
        vTempStr := Trim(Copy(vFace.Text,1,vPos-1));
        vTempStr := ChangeFileExt(vTempStr,'');
        aSpeler.Face := Copy(vTempStr,3,Length(vTempStr));

        // EYES
        vPos := Pos('Avatar/eyes/',vFace.Text);
        vFace.Text := Copy(vFace.Text,vPos+Length('Avatar/eyes/'),Length(vFace.Text));
        vPos := Pos('"',vFace.Text);
        vTempStr := Trim(Copy(vFace.Text,1,vPos-1));
        vTempStr := ChangeFileExt(vTempStr,'');
        aSpeler.Eyes := Copy(vTempStr,3,Length(vTempStr));

        // MOUTH
        vPos := Pos('Avatar/mouths/',vFace.Text);
        vFace.Text := Copy(vFace.Text,vPos+Length('Avatar/mouths/'),Length(vFace.Text));
        vPos := Pos('"',vFace.Text);
        vTempStr := Trim(Copy(vFace.Text,1,vPos-1));
        vTempStr := ChangeFileExt(vTempStr,'');
        aSpeler.Mouth := Copy(vTempStr,3,Length(vTempStr));

        // GOATEE (SIKJE)
        vPos := Pos('Avatar/goatees/',vFace.Text);
        if (vPos > 0) then
        begin
          vFace.Text := Copy(vFace.Text,vPos+Length('Avatar/goatees/'),Length(vFace.Text));
          vPos := Pos('"',vFace.Text);
          vTempStr := Trim(Copy(vFace.Text,1,vPos-1));
          vTempStr := ChangeFileExt(vTempStr,'');
          aSpeler.Goatee := Copy(vTempStr,3,Length(vTempStr));
        end;

        // NOSE
        vPos := Pos('Avatar/noses/',vFace.Text);
        vFace.Text := Copy(vFace.Text,vPos+Length('Avatar/noses/'),Length(vFace.Text));
        vPos := Pos('"',vFace.Text);
        vTempStr := Trim(Copy(vFace.Text,1,vPos-1));
        vTempStr := ChangeFileExt(vTempStr,'');
        aSpeler.Nose := Copy(vTempStr,3,Length(vTempStr));

        // HAIR
        vPos := Pos('Avatar/hair/',vFace.Text);
        vFace.Text := Copy(vFace.Text,vPos+Length('Avatar/hair/'),Length(vFace.Text));
        vPos := Pos('"',vFace.Text);
        vTempStr := Trim(Copy(vFace.Text,1,vPos-1));
        vTempStr := ChangeFileExt(vTempStr,'');
        aSpeler.Hair := Copy(vTempStr,3,Length(vTempStr));
      end;


      vPos := Pos('Specialiteit',vBody.Text);
      if (vPos > 0) then
      begin
        vTempStr := Copy(vMemo.Text,vPos,Length(vMemo.Text));
        vPos := Pos(':',vTempStr);
        if (vPos = 13) then
        begin
          vTempStr := Trim(Copy(vtempStr,vPos+1,Length(vTempStr)));

          vPos := Pos('</',vTempStr);
          aSpeler.Specialiteit := Trim(Copy(vTempStr,1,vPos-1));
        end;
      end;

      vPos := Pos('class="playerInfo"',vBody.Text);
      if (vPos > 0) then
      begin
        vTempStr := Copy(vBody.Text,vPos,Length(vBody.Text));
        
        vPos := Pos('YouthTeamID=',vTempStr);
        if (vPos > 0) then
        begin
          vTempStr := Copy(vTempStr,vPos,Length(vTempStr));

          vPos := Pos('"',vTempStr);
          vTempStr := Trim(Copy(vTempStr,1,vPos-1));
          vTempStr := uHattrick.ExtractIDFromLink(vTempStr,'YouthTeamID=');
          aSpeler.YouthTeamID := StrToInt(vTempStr);
        end;
      end;
      
      vPos := Pos('Nationaliteit:',vBody.Text);
      if (vPos > 0) then
      begin
        vTempStr := Copy(vBody.Text,vPos + Length('Nationaliteit:'),Length(vBody.Text));

        vPos := Pos('title="',vTempStr);
        vTempStr := Copy(vTempStr,vPos + Length('title="'),Length(vTempStr));
        vPos := Pos('>',vTempStr);
        vTempStr := Copy(vTempStr,vPos + 1,Length(vTempStr));
        vPos := Pos('<',vTempStr);

        vTempStr := Trim(Copy(vTempStr,1,vPos - 1));

        aSpeler.Herkomst := vTempStr;
      end;


      vPos := Pos('Arriveerde bij de club',vBody.Text);
      if (vPos > 0) then
      begin
        vTempStr := Copy(vMemo.Text,vPos,Length(vMemo.Text));
        vPos := Pos('<td>',vTempStr);
        vTempStr := Trim(Copy(vTempStr,vPos+5,Length(vTempStr)));
        vPos := Pos('(',vTempStr);
        vTempStr := Trim(Copy(vTempStr,1,vPos-1));

        aSpeler.ArrivalDatum := StrToDateTime(vTempStr);
      end;

      if (aSpeler.TeamID <= 0) then
      begin
        aSpeler.TeamID := GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',
          ['PLAYER_ID'],[aSpeler.ID],'FIRST 1 TEAM_ID',srtInteger,svtNOrmal,
            uHattrick.CreateReadTransaction(ibdbHTInfo),'ORDER BY ID DESC');

        if (aSpeler.TeamID = 0) then
        begin
          aSpeler.TeamID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
            ['PLAYER_ID'],[aSpeler.ID],'TEAM_ID',srtInteger,svtNOrmal,
            uHattrick.CreateReadTransaction(ibdbHTInfo));
        end;
      end;

      if (aSavePrestaties) or (GetBestLinie(aSpeler.ID) = -1) then
      begin
        // Nog geen linie bekend, dan bekijken we de laatste wedstrijden even...

        vPos := Pos('Laatste 5 wedstrijden', vBody.Text);
        if (vPos > 0) then
        begin
          vTempStr := Copy(vMemo.Text,vPos,Length(vMemo.Text));
          for i:=1 to 5 do
          begin
            vPos := Pos('class="date',vTempStr);
            if (vPos > 0) then
            begin
              vTempStr := Copy(vTempStr,vPos,Length(vTempStr));

              // Datum!
              vPos := Pos('>',vTempStr);
              vTempStr := Copy(vTempStr,vPos+1,Length(vTempStr));
              vPos := Pos('</td>',vTempStr);
              vTemp := Trim(Copy(vTempStr,1,vPos -1));
              vSpeelDatum := StrToDateTime(vTemp);

              //MatchId
              vPos := Pos('matchID=',vTempStr);
              vTempStr := Copy(vTempStr,vPos,Length(vTempStr));
              vMatchID := uHattrick.ExtractIDFromLink(vTempStr,'matchID=');


              vWedstrijd := TWedstrijd.Create('-1',vMatchId,FALSE);
              try
                vWedstrijd.SpeelDatum := vSpeelDatum;
                vWedstrijd.MainLeagueID := -1;

                // Wedstrijd toevoegen!!
                vPos := Pos('<img src',vTempStr);
                vTemp := Copy(vTempStr,1,vPos-1);

                if Pos('Keeper',vTemp) > 0 then
                begin
                  vPosition := 'K';
                end
                else if Pos('Centrale verdediger',vTemp) > 0 then
                begin
                  vPosition := 'CV';
                end
                else if Pos('Vleugelverdediger',vTemp) > 0 then
                begin
                  vPosition := 'LV';
                end
                else if Pos('Middenvelder',vTemp) > 0 then
                begin
                  vPosition := 'CM';
                end
                else if Pos('Vleugelspeler',vTemp) > 0 then
                begin
                  vPosition := 'LVL';
                end
                else if Pos('Aanvaller',vTemp) > 0 then
                begin
                  vPosition := 'A';
                end;
                aSpeler.Positie := vPosition;

                vSterren := 0;

                vTemp := Copy(vTempStr,1,Pos('</tr>',vTempStr));

                while Pos('img src="/Img/Matches/',vTemp) > 0 do
                begin
                  vTemp := Copy(vTemp,Pos('img src="/Img/Matches/',vTemp)+Length('img src="/Img/Matches/'),
                    Length(vTemp));
                  if Pos('star_big_blue.png',vTemp) = 1 then
                  begin
                    vSterren := vSterren + 5;
                  end
                  else if Pos('star_half_blue.png',vTemp) = 1 then
                  begin
                    vSterren := vSterren + 0.5;
                  end
                  else if Pos('star_blue.png',vTemp) = 1 then
                  begin
                    vSterren := vSterren + 1;
                  end;
                end;
                aSpeler.Sterren := vSterren;

                vWedstrijd.Spelers.Add(aSpeler);

                vReeks := GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',
                  ['PLAYER_ID'],[aSpeler.ID],'FIRST 1 JEUGD_COMPETITIES_ID',srtInteger,svtNOrmal,
                    uHattrick.CreateReadTransAction(ibdbHTInfo),'ORDER BY ID DESC');

                if (vReeks = 0) then
                begin
                  vReeks := GetFieldValue(ibdbHTInfo,'JEUGD_COMPETITIES',
                    ['NATIONALITEIT'],[aSpeler.Herkomst],'ID',srtInteger,svtNormal,
                    uHattrick.CreateReadTransaction(ibdbHTInfo));

                  // Geen reeks gevonden?
                  if (vReeks = 0) then
                  begin
                    vReeks := StrToInt(InputBox('HTScanner','Geef het JEUGD_COMPETITIES_ID (Land)...','-1'));
                  end;
                end;

                if (GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',['PLAYER_ID','MATCH_ID'],
                [aSpeler.ID,vMatchID],'ID',srtInteger,svtNormal, uHattrick.CreateReadTransaction(ibdbHTInfo)) = 0) then
                begin
                  SaveWedstrijd(vWedstrijd, vReeks);
                end
                else if (GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',['PLAYER_ID','MATCH_ID'],
                  [aSpeler.ID,vMatchID],'POSITIE',srtString,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)) = '???') then
                begin
                  ExecSQL(ibdbHTInfo,'UPDATE JEUGD_PRESTATIES SET POSITIE = :POSITIE, LINIE = :LINIE WHERE PLAYER_ID = :ID AND MATCH_ID = :MATCHID',
                    ['POSITIE','LINIE','ID','MATCHID'],
                    [aSpeler.Positie,GetLinie(aSpeler.Positie),aSpeler.ID,vMatchID]);
                end;

                vPos := Pos('</tr>',vTempStr);
                vTempStr := Copy(vTempStr, vPos + 1, Length(vTempStr));
              finally
                vWedstrijd.Free;
              end;
            end;
          end;
        end;
      end;

      if (aSpeler.TeamID <= 0) then
      begin
        vBody.Clear;
        
        vURL := uHattrick.GetTeamLink(CurrentURL, aSpeler.YouthTeamID, TRUE);
        if BrowseTo(HTBrowser,vURL) then
        begin
          StreamToMemo(HTBrowser);
          vBody.Text := vMemo.Text;

          vPos := Pos('Jeugdteam van',vBody.Text);

          if (vPos > 0) then
          begin
            vTempStr := Copy(vBody.Text,vPos,Length(vBody.Text));
            vPos := Pos('" title',vTempStr);

            vTempStr := Trim(Copy(vTempStr,1,vPos-1));
            vTempStr := uHattrick.ExtractIDFromLink(vTempStr,'?TeamID=');

            aSpeler.TeamID := StrToInt(vTempStr);
          end;
        end;
      end;
    end
    else
    begin
      aSpeler.Deleted := TRUE;
    end;

  finally
    vBody.Free;
    vFace.Free;
  end;
end;

procedure TfrmHTScanner.GetPositionInMatch(aPlayerID, aMatchID, aTeamID: integer);
var
  vURL, vPosition, vLineup1, vLineUp2: STring;
  vBody: TStringList;
  vSubID, i: Integer;
  vWedstrijd: TWedstrijd;
  vLinks: Variant;
begin
  vPosition := '';

  vURL := uHattrick.GetMatchLink(IntToStr(aMatchID),CurrentURL,TRUE);
  if BrowseTo(HTBrowser, vURL) then
  begin
    vLinks := HTBrowser.OLEObject.Document.Links;
    if not(VarIsClear(vLinks)) then
    begin
      for i:=0 to vLinks.Length -1 do
      begin
        try
          vUrl := Trim(vLinks.Item(i).toString);
        except
          vURL := '';
        end;
        if Pos(Format('Club/Matches/MatchLineup.aspx?matchID=%d',[aMatchID]),vURL) > 0 then
        begin
          if (vLineup1 = '') then
          begin
            vLineup1 := vURL;
          end
          else if (vLineUp2 = '') and (vURL <> vLineup1) then
          begin
            vLineup2 := vURL;
          end;
        end;
      end;
    end;

    // Kijken of er gewisseld is??
    StreamToMemo(HTBrowser);

    vBody := TStringList.Create;
    try
      vBody.Text := vMemo.Text;

      vSubID := uHattrick.GetSubstituteID(vBody,aPlayerID);
      Wait(4,12);
    finally
      vBody.Free;
    end;

    vUrl := vLineup1;
    if BrowseTo(HTBrowser, vURL) then
    begin
      StreamToMemo(HTBrowser);

      vBody := TStringList.Create;
      try
        vBody.Text := vMemo.Text;

        vWedstrijd := uHattrick.ParseJeugdwedstrijd(vBody, '-1', IntToStr(aMatchID), aTeamID, -1);
        try
          for i:=0 to vWedstrijd.Spelers.Count - 1 do
          begin
            if (StrToInt(TJeugdSpeler(vWedstrijd.Spelers[i]).ID) = vSubID) then
            begin
              vPosition := TJeugdSpeler(vWedstrijd.Spelers[i]).Positie;
            end;
          end;
          Wait(5,13);
        finally
          vWedstrijd.Free;
        end;
      finally
        vBody.Free;
      end;
    end;

    if (vPosition = '') then
    begin
      vUrl := vLineup2;
      if BrowseTo(HTBrowser, vURL) then
      begin
        StreamToMemo(HTBrowser);

        vBody := TStringList.Create;
        try
          vBody.Text := vMemo.Text;

          vWedstrijd := uHattrick.ParseJeugdwedstrijd(vBody, '-1', IntToStr(aMatchID), aTeamID, -1);
          try
            for i:=0 to vWedstrijd.Spelers.Count - 1 do
            begin
              if (StrToInt(TJeugdSpeler(vWedstrijd.Spelers[i]).ID) = vSubID) then
              begin
                vPosition := TJeugdSpeler(vWedstrijd.Spelers[i]).Positie;
              end;
            end;
            Wait(5,13);
          finally
            vWedstrijd.Free;
          end;
        finally
          vBody.Free;
        end;
      end;
    end;
  end;

  if (vPosition <> '') then
  begin
    ExecSQL(ibdbHTInfo,'UPDATE JEUGD_PRESTATIES SET POSITIE = :POSITIE, LINIE = :LINIE WHERE MATCH_ID = :MATCHID AND PLAYER_ID = :ID',
      ['POSITIE','LINIE','MATCHID','ID'],
      [vPosition,GetLinie(vPosition),aMatchID, aPlayerID]);
  end;
end;

procedure TfrmHTScanner.GetPosition(aPlayerID: integer);
begin
  with uHTDB.CreateSQL(ibdbHTInfo,'SELECT FIRST 1 MATCH_ID, TEAM_ID FROM JEUGD_PRESTATIES WHERE PLAYER_ID = :ID ORDER BY SPEELDATUM DESC',
    uHattrick.CreateReadTransaction(ibdbHTInfo)) do
  begin
    try
      ParamByName('ID').asInteger := aPlayerID;
      ExecQuery;

      if (FieldByName('MATCH_ID').asInteger > 0) then
      begin
        GetPositionInMatch(aPlayerId, FieldByName('MATCH_ID').asInteger, FieldByName('TEAM_ID').asInteger);
      end;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

function TfrmHTScanner.GetJeugdspelerInfoByID(aPlayerID, aTeamID:integer;
  aPlayerName: String; aBrowseToYouthPlayer, aIsKeeper :boolean; aSavePrestaties:boolean = TRUE):boolean;
var
  vURL, vPlayerName: String;
  vSpeler: TJeugdspeler;
  vSenior: TTSISet;
  vDatum, vGeboorteDatum: TDate;
  vKarakterID, vJeugdkarakterID, vLinie: Integer;
  vRetry, vRestyled: boolean;
begin
  vDatum := Date - (16 * 7) - 75;
  vRetry := FALSE;
  WriteActivity;

  vURL := uHattrick.GetYouthPlayerLink(CurrentURL,aPlayerID);
  if (aBrowseToYouthPlayer) and (BrowseTo(HTBrowser,vURL)) then
  begin
    vSpeler := TJeugdspeler.Create;
    try
      vSpeler.Exported := FALSE;
      vSpeler.ID := IntToStr(aPlayerID);
      vSpeler.Naam := aPlayerName;
      vSpeler.TeamID := aTeamID;

      GetJeugdSpelerInfo(vSpeler, aSavePrestaties);

      if (aIsKeeper) then
      begin
        vSpeler.Keeper := aIsKeeper;
      end;

      if (vSpeler.Deleted) then
      begin
        if (GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'PLAYER_ID',srtInteger,
          svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)) = 0) then
        begin
          SaveJeugdspeler(vSpeler);
        end;

        ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET PROMOTED = -1, DELETED = -1, LAST_UPDATE = CURRENT_TIMESTAMP WHERE PLAYER_ID = :ID',
          ['ID'],[aPlayerID]);
        Wait(1,3);
        result := FALSE;
      end
      else
      begin
        SaveJeugdspeler(vSpeler);

        if (ScanAll) then
        begin
          if (vSpeler.Specialiteit <> '') then
          begin
            Wait(5,8);
          end
          else
          begin
            Wait(1,2);
          end;
        end
        else
        begin
          if (vSpeler.GeboorteDatum < vDatum) then
          begin
            if (FFullScouting) then
            begin
              Wait(2,7);
            end
            else
            begin
              Wait(0,2);
            end;
          end
          else if (vSpeler.GeboorteDatum >= vDatum) then
          begin
            Wait(5,13);
          end;
        end;
        result := TRUE;
      end;
    finally
      vSpeler.Free;
    end;
  end
  else
  begin
    vKarakterID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],
      [aPlayerID],'KARAKTER_ID',srtInteger,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

    vPlayerName := GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',['PLAYER_ID'],
      [aPlayerID],'PLAYER_NAME',srtString,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

    vRestyled := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],
      [aPlayerID],'RESTYLED',srtInteger,svtNormal, uHattrick.CreateReadTransaction(ibdbHTInfo)) = -1;

    vGeboorteDatum := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],
      [aPlayerID],'GEBOORTE_DATUM',srtDateTime,svtNormal, uHattrick.CreateReadTransaction(ibdbHTInfo));

    if (vKarakterID > 0) then
    begin
      CurSpec := VarToStr(GetFieldValue(ibdbHTInfo,'KARAKTER_PROFIEL',
        ['ID'],[vKarakterID],'SPECIALITEIT',srtString,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)));
      CurLeiderschap := VarToStr(GetFieldValue(ibdbHTInfo,'KARAKTER_PROFIEL',
        ['ID'],[vKarakterID],'LEIDERSCHAP',srtString, svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)));
      WriteScanResults(vKarakterID, '+');
    end;


    vSenior := ParsePlayerInfo;
    try
      if (vSenior.Parsed) then
      begin
        vSenior.YouthPlayerID := aPlayerID;

        vLinie := GetBestLinie(IntToStr(aPlayerID));

        if (vLinie = -1) then
        begin
          GetPosition(aPlayerID);
          vLinie := GetBestLinie(IntToStr(aPlayerID));

          if (vLinie = -1) then
          begin
            if (FAutoStart) or (Forcesave1.Checked) then
            begin
              mLogging.Lines.Add(Format('Kan linie van speler %d niet bepalen!',[aPlayerID]));
              vLinie := -1;
            end
            else
            begin
              Clipboard.AsText := IntToStr(aPlayerID);
              if (vSenior.Specialiteit = 'Geen') then
              begin
                // Tja...! het zou een keeper kunnen zijn?
                if (MessageBoxWarning(Format('[%d] %s -- Kan positie niet bepalen!',[aPlayerID, vSenior.PlayerName])+#13+#13+
                  'Is dit een keeper?','HTScanner',TRUE)) then
                begin
                  vLinie := 0;
                end
                else
                begin
                  vLinie := 1;
                end;
              end
              else
              begin
                // Kan geen keeper zijn, hij heeft immers een specialiteit.
                mLogging.Lines.Add(Format('Kan linie van speler %d niet bepalen, linie op 1 gezet!',[aPlayerID]));
                vLinie := 1;
              end;
            end;
          end;
        end;

        if (vLinie <> -1) then
        begin
          vSenior.IsKeeper := (vLinie = 0) or (aIsKeeper);
          vSenior.Restyled := vRestyled;

          SaveScouting(vSenior,TRUE);

          if (vSenior.KarakterID = vKarakterID) or (vSenior.GeboorteDatum = vGeboorteDatum)  then
          begin
            result := TRUE;
          end
          else
          begin
            // Speler gevonden??
            result := (vSenior.PlayerName <> '') and (vSenior.KarakterID > 0);
          end;
        end
        else
        begin
          result := FALSE;
        end;

        if (result) then
        begin
          FLastKarakterID := vSenior.KarakterID;
          JeugdSpelerRestored := JeugdSpelerRestored + 1;

          if (vSenior.TransferListed) then
          begin
            TransferListed := TransferListed + 1;
          end;

          if (vSenior.SpecOntdekt) then
          begin
            if (vSenior.Specialiteit <> 'Geen') then
            begin
              SpecOntdekt := SpecOntdekt + 1;
            end;
          end;

          if not(FFullScouting) then
          begin
            Beep;Beep;
          end;

          if (vSenior.KarakterID > 0) then
          begin
            CurSpec := VarToStr(GetFieldValue(ibdbHTInfo,'KARAKTER_PROFIEL',
                ['ID'],[vSenior.KarakterID],'SPECIALITEIT',srtString,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)));
            CurLeiderschap := VarToStr(GetFieldValue(ibdbHTInfo,'KARAKTER_PROFIEL',
                ['ID'],[vSenior.KarakterID],'LEIDERSCHAP',srtString,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)));

            if vSenior.SpecOntdekt then
            begin
              WriteScanResults(vSenior.KarakterID,'!');
            end
            else
              WriteScanResults(vSenior.KarakterID,'~');
          end
          else
          begin
            CurSpec := '';
            CurLeiderschap := '';
            WriteScanResults(-1,'-');
          end;

          Wait(4,13);
          if (vKarakterID <= 0) then
          begin
            // Speler bestaat nog niet in de database
            vSpeler := TJeugdspeler.Create;
            try
              vSpeler.Exported := FALSE;
              vSpeler.ID := IntToStr(aPlayerID);
              vSpeler.Naam := vSenior.PlayerName;
              vSpeler.TeamID := aTeamID;
              vSpeler.GeboorteDatum := vSenior.GeboorteDatum;
              vSpeler.Herkomst := vSenior.Herkomst;

              SaveJeugdspeler(vSpeler);
            finally
              vSpeler.Free;
            end;

            vJeugdkarakterID := vSenior.KarakterID;

            if (vJeugdkarakterID > 0) then
            begin
              // Dus toch geen onbekende speler!!
              if (GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['KARAKTER_ID'],
                [vJeugdKarakterID],'ID',srtInteger,svtCount,uHattrick.CreateReadTransaction(ibdbHTInfo)) > 0) then
              begin
                OnbekendeSpelers := OnbekendeSpelers - 1;
                BekendeSpelers := BekendeSpelers + 1;
              end;
              // Karakter bijwerken van 'oude jeugdspeler'
              ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET KARAKTER_ID = :KAR_ID WHERE PLAYER_ID = :ID',
                  ['ID','KAR_ID'],[aPlayerID, vJeugdkarakterID]);
            end;
          end
          else if (vKarakterID > 0) and (vKarakterID <> vSenior.KarakterID) then
          begin
            if TRUE or (MessageBoxQuestion(Format('Karakter jeugdspeler wijzigen van %d in %d?',
              [vKarakterID, vSenior.KarakterID]),'HTScanner')) then
            begin
              mLogging.Lines.Add(Format('Youthplayerid %d -- KarakterID gewijzigd van %d in %d',
                [aPlayerID, vKarakterID, vSenior.KarakterID]));


              // Wijziging van karakter jeugdspeler!
              ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET KARAKTER_ID = :KAR_ID WHERE PLAYER_ID = :ID',
                    ['ID','KAR_ID'],[aPlayerID, vSenior.KarakterID]);

              // Oude spelers opzoeken en herstellen!
              with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
              begin
                try
                  with SQL do
                  begin
                    Add('SELECT');
                    Add('J.PLAYER_ID');
                    Add('FROM SCOUTING S');
                    Add('JOIN JEUGDSPELERS J ON (S.YOUTHPLAYER_ID = J.PLAYER_ID)');
                    Add('WHERE S.KARAKTER_PROFIEL_ID = :KARAKTER_ID');
                    Add('AND COALESCE(J.KARAKTER_ID,-1) <= 0');
                  end;
                  ParamByName('KARAKTER_ID').asInteger := vSenior.KarakterID;
                  ExecQuery;
                  while not EOF do
                  begin
                    JeugdSpelerRestored := JeugdSpelerRestored + 1;

                    ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET KARAKTER_ID = :KAR_ID WHERE PLAYER_ID = :ID',
                      ['ID','KAR_ID'],[FieldByName('PLAYER_ID').asInteger, vSenior.KarakterID]);

                    Next;
                  end;
                finally
                  CommitTransaction(Transaction,dbaFree);
                  Free;
                end;
              end;
            end;
          end;

          ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET PROMOTED = -1, DELETED = 0, LAST_UPDATE = CURRENT_TIMESTAMP WHERE PLAYER_ID = :ID',
            ['ID'],[aPlayerID]);
        end;
      end
      else
      begin
        vRetry := FALSE;
        result := FALSE;
      end;
    finally
      vSenior.Free;
    end;
  end;

  if (vRetry) then
  begin
    BrowseToPlayer(aPlayerID);
    GetJeugdspelerInfoByID(aPlayerID,aTeamID,aPlayerName,FALSE,FALSE,aSavePrestaties);
  end;
end;

procedure TfrmHTScanner.ScoutJeugdTalents(aReeks:integer);
var
  vMax,vCount:integer;
  vMelding:String;
  vStop : boolean;
  vScanID : integer;
  vToDo: integer;
begin
  vStop := FALSE;
  if (FFullAuto) then
  begin
    // Niet na 11:30 's avonds auto scan!
    if (Now > ScanDate + (23.5/24)) then
    begin
      vStop := TRUE;
    end;
  end;
  if not(vStop) then
  begin
    InitScanResults;

    vScanID := GetFieldValue(ibdbHTInfo,'COMPETITIES_SCANNED',
      ['JEUGD_COMPETITIES_ID'],[aReeks],'ID',srtInteger, svtMax, uHattrick.CreateReadTransaction(ibdbHTInfo));

    BekendeSpelers := GetFieldValue(ibdbHTInfo,'COMPETITIES_SCANNED',
      ['ID'],[vScanID],'BEKEND',srtInteger,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
    OnbekendeSpelers := GetFieldValue(ibdbHTInfo,'COMPETITIES_SCANNED',
      ['ID'],[vScanID],'ONBEKEND',srtInteger,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

    vMax := GetTotalPlayers(aReeks);

    vTodo := GetFieldValue(ibdbHTInfo, 'GET_TBS_INFO' , ['ID'], [aReeks],
      'PLAYERS_TODO', srtInteger, svtNormal, uHattrick.CreateReadTransAction(ibdbHTInfo));

    if (vToDO <> vMax) then
    begin
      ExecSQL(ibdbHTInfo, 'UPDATE COMPETITIES_SCANNED SET TOTAL_PLAYERS = (TOTAL_PLAYERS - :VERSCHIL) WHERE ID = :ID',
        ['ID','VERSCHIL'], [vScanID, vTodo - vMax]);
    end;
    
    vCount := 0;
    with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransAction(ibdbHTInfo)) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          Add('P.PLAYER_ID,');
          Add('MAX(P.PLAYER_NAME) PLAYER_NAME,');
          Add('P.TEAM_ID,');
          Add('J.ID');
          Add('FROM JEUGD_PRESTATIES P');
          Add('LEFT JOIN JEUGDSPELERS J ON (P.PLAYER_ID = J.PLAYER_ID)');
          Add('WHERE P.JEUGD_COMPETITIES_ID = :REEKS');
          Add('AND J.PLAYER_ID IS NULL AND P.STERREN >= 6.0');
          Add('GROUP BY P.PLAYER_ID,P.TEAM_ID,J.ID');
        end;
        ParamByName('REEKS').asInteger := aReeks;
        ExecQuery;
        while not EOF do
        begin
          inc(vCount);
          lblStatus.Caption := Format('%d/%d',[vCount,vMax]);
          if not (vStop) then
          begin
            if (FieldByName('ID').asInteger = 0)  then
            begin
              if GetJeugdSpelerInfoByID(
                FieldByName('PLAYER_ID').asInteger,
                FieldByName('TEAM_ID').asInteger,
                FieldByName('PLAYER_NAME').asString,
                TRUE,FALSE,TRUE) then
              begin
                if (vScanID > 0) then
                begin
                  ExecSQL(ibdbHTInfo,'UPDATE COMPETITIES_SCANNED SET BEKEND = :BEKEND, ONBEKEND = :ONBEKEND WHERE ID = :ID',
                    ['ID','BEKEND','ONBEKEND'],[vScanID, BekendeSpelers, OnbekendeSpelers]);
                end;
              end
              else
              begin
                vMelding := 'Speler(s) niet aangetroffen!';
              end;
            end;
            if (FFullAuto) then
            begin
              // Niet na 11:30 's avonds auto scan!
              if (Now > Date + (23.5/24)) then
              begin
                vStop := TRUE;
              end;
            end
            else
            begin
              if (btnStopScouting.Down) and not(vStop) then
              begin
                if (MessageBox(Self.Handle,PChar('Wil je stoppen?'),PCHar('Hattrick Scanner'),MB_ICONQUESTION + MB_YESNO) = ID_YES) then
                begin
                  vStop := TRUE;
                end
                else
                begin
                  btnStopScouting.Down := FALSE;
                end;
              end;
            end;
          end;

          Next;
        end;
      finally
        CommitTransaction(Transaction,dbaFree);
        Free;
      end;
    end;

    vMax := GetTotalPlayers(aReeks);

    vTodo := GetFieldValue(ibdbHTInfo, 'GET_TBS_INFO' , ['ID'], [aReeks],
      'PLAYERS_TODO', srtInteger, svtNormal, uHattrick.CreateReadTransAction(ibdbHTInfo));

    if (vToDO <> vMax) then
    begin
      ExecSQL(ibdbHTInfo, 'UPDATE COMPETITIES_SCANNED SET TOTAL_PLAYERS = (TOTAL_PLAYERS - :VERSCHIL) WHERE ID = :ID',
        ['ID','VERSCHIL'], [vScanID, vTodo - vMax]);
    end;
    
    if (vMelding <> '') and not(FAutoStart) then
    begin
      ShowMessage(vMelding);
    end;
  end;
end;

function TfrmHTScanner.ScanJeugdTeam(aLeagueID,aMatchID,aTeamID,aYouthClubID:String;
  aMainLeagueID:integer;aFirstMatch:boolean):integer;
var
  vWedstrijd:TWedstrijd;
  vSpeler:TJeugdSpeler;
  vBody:TStringList;
  i:integer;
begin
  result := 0;
  StreamToMemo(HTBrowser);
  vBody := TStringList.Create;
  vBody.Text := vMemo.Text;
  try
    vWedstrijd := uHattrick.ParseJeugdwedstrijd(vBody, aLeagueID, aMatchID, StrToInt(aTeamID), aMainLeagueID);
    try
      for i:=0 to vWedstrijd.Spelers.Count - 1 do
      begin
        vSpeler := TJeugdSpeler(vWedstrijd.Spelers[i]);
        
        if (vSpeler.Sterren >=6.5) and ((aFirstMatch) or not(YouthPlayerExists(StrToInt(vSpeler.ID)))) then
        begin
          inc(result);
        end;
      end;
      SaveWedstrijd(vWedstrijd, CompetitieReeks);
    finally
      vWedstrijd.Free;
    end;
  finally
    vBody.Free;
  end;
end;

procedure TfrmHTScanner.ToonTalents;
begin
  with ibqrTalents do
  begin
    if (Active) then
      Close;
    Open;
  end;
end;

procedure TfrmHTScanner.btnRefreshTalentsClick(Sender: TObject);
begin
  ToonTalents;
end;

procedure TfrmHTScanner.dbgrdTalentsCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  vDatum:TDate;
  vNT:boolean;
begin
  if aNode <> nil then
  begin
    vDatum := GetNodeValue(aNode, 'DATUM_GESCOUT', srtDateTime);
    if (vDatum = Date) then
    begin
      aFont.Style := aFont.Style + [fsBold];
    end;

    vNT := GetNodeValue(aNode,'U20',srtInteger) = -1;
    if (vNT) then
    begin
      if (ASelected) then
      begin
        aFont.Color := clWhite;
      end
      else
      begin
        aFont.Color := clBlue;
      end;
      aFont.Style := aFont.Style + [fsItalic];
    end
    else
    begin
      vNT := GetNodeValue(aNode,'NT',srtInteger) = -1;
      if (vNT) then
      begin
        if (ASelected) then
        begin
          aFont.Color := clWhite;
        end
        else
        begin
          aFont.Color := clRed;
        end;
      end;
    end;
  end;
end;

procedure TfrmHTScanner.dbgrdTalentsDblClick(Sender: TObject);
begin
  BrowseToPlayer(ibqrTalents.FieldByName('PLAYER_ID').AsInteger);
end;

function TfrmHTScanner.ScoutU20Internationals:integer;
const
  NT_LINK = 'NationalTeam/NationalTeam.aspx?teamId=';
var
  vURL, vTemp:String;
  vLinks:Variant;
  i, vPos:integer;
  vLinkList:TStringList;
begin
  result := 0;
  vURL := CurrentURL;
  vURL := Copy(vURL, 1, Pos('.hattrick.org/', CurrentURL));
  vURL := Format('%shattrick.org/World/NationalTeams/', [vURL]);

  BrowseTo(HTBrowser, vURL);
  pgctrlLijst.ActivePage := tbBrowser;

  BrowseToLink(HTBrowser,'World/NationalTeams/Default.aspx?leagueOfficeTypeId=4');

  vLinks := HTBrowser.OLEObject.Document.Links;
  vLinkList := TStringList.Create;
  try

    if not(VarIsClear(vLinks)) then
    begin
      for i:=0 to vLinks.Length -1 do
      begin
        vUrl := Trim(vLinks.Item(i).toString);
        vPos := Pos(UpperCase(NT_LINK), UpperCase(vUrl));
        if (vPos > 0) and (vLinkList.IndexOf(vURL) = -1) then
        begin
          vTemp := Copy(vUrl, vPos + Length(NT_LINK), Length(vURL));
          vTemp := Copy(vTemp, 1, Pos('&', vTemp) - 1);
          vLinkList.Add(vTemp);
        end;
      end;
    end;

    for i:=0 to vLinkList.Count - 1 do
    begin
      vURL := CurrentURL;
      vURL := Copy(vURL, 1, Pos('.hattrick.org/', CurrentURL));
      vURL := Format('%shattrick.org/Club/NationalTeam/NTPlayers.aspx?teamId=%s', [vURL, vLinkList[i]]);

      BrowseTo(HTBrowser,vURL);
      result := result + ScoutPlayers(TRUE);
    end;
  finally
    vLinkList.Free;
  end;
end;

{-----------------------------------------------------------------------------
  Author:    Pieter Bas
  Datum:     08-09-2009
  Doel:
  
  <eventuele fixes>
-----------------------------------------------------------------------------}
procedure TfrmHTScanner.ScoutInternationals;
const
  NT_LINK = 'NationalTeam/NationalTeam.aspx?teamId=';
var
  vURL, vTemp: String;
  vLinks:Variant;
  i, vPos: integer;
  vLinkList: TStringList;
begin
  vURL := CurrentURL;
  vURL := Copy(vURL, 1, Pos('.hattrick.org/', CurrentURL));
  vURL := Format('%shattrick.org/World/NationalTeams/', [vURL]);

  BrowseTo(HTBrowser, vURL);
  pgctrlLijst.ActivePage := tbBrowser;

  vLinks := HTBrowser.OLEObject.Document.Links;
  vLinkList := TStringList.Create;
  
  if not(VarIsClear(vLinks)) then
  begin
    for i:=0 to vLinks.Length -1 do
    begin
      vUrl := Trim(vLinks.Item(i).toString);
      vPos := Pos(UpperCase(NT_LINK), UpperCase(vUrl));
      if (vPos > 0) and (vLinkList.IndexOf(vURL) = -1) then
      begin
        vTemp := Copy(vUrl, vPos + Length(NT_LINK), Length(vURL));
        vTemp := Copy(vTemp, 1, Pos('&', vTemp) - 1);
        vLinkList.Add(vTemp);
      end;
    end;
  end;

  for i := 0 to vLinkList.Count - 1 do
  begin
    ScanNationaalTeam(AnyStrToInt(vLinkList[i]));
  end;
  vLinkList.Free; 

  ShowMessage('Scouting gereed');
end;

{-----------------------------------------------------------------------------
  Author:    Pieter Bas
  Datum:     08-09-2009
  Doel:
  
  <eventuele fixes>
-----------------------------------------------------------------------------}
procedure TfrmHTScanner.ScanNationaalTeam(aTeamID: integer);
const
  PLAYER_ID = 'Player.aspx?PlayerID=';
  TRANSFERLISTED = 'class="transferListed"';
var
  vURL,
  vText: String;
  vPlayers: TStringList;
  vTSISet: TTSISet;
  vPos, i: integer;
begin
  vURL := CurrentURL;
  vURL := Copy(vURL, 1, Pos('.hattrick.org/', CurrentURL));
  vURL := Format('%shattrick.org/Club/NationalTeam/NTPlayers.aspx?teamId=%d', [vURL, aTeamID]);

  BrowseTo(HTBrowser, vURL);

  StreamToMemo(HTBrowser);

  vText := vMemo.Text;
  vPos := Pos(TRANSFERLISTED, vText);
  vPlayers := TStringList.Create;

  while (vPos > 0) do
  begin
    vPos := GetLastPos(PLAYER_ID, Copy(vText, 1, vPos));

    vText := Copy(vText, vPos + Length(PLAYER_ID), Length(vText));
    vPlayers.Add(Copy(vText, 1, Pos('&', vText) - 1));

    vText := Copy(vText, Pos(TRANSFERLISTED, vText) + Length(TRANSFERLISTED), Length(vText));
    vPos := Pos(TRANSFERLISTED, vText);
  end;

  for i := 0 to vPlayers.Count - 1 do
  begin
    BrowseToPlayer(AnyStrToInt(vPlayers[i]));
        
    vTSISet := ParsePlayerInfo;
    try
      if (vTSISet.DeadLine > 0) and (GetDeadLine(vTSISet.PlayerID) <> vTSISet.Deadline) then
      begin
        SaveScouting(vTSISet,FALSE);
      end;
    finally
      vTSISet.Free;
    end;
  end;

  vPlayers.Free;
end;

procedure TfrmHTScanner.ScanKoopjes;
const
  PLAYERID = '<a href="/Club/Players/Player.aspx?PlayerID=';
  DEADLINE = 'TransferPlayer_lblDeadline';
var
  vPages, vPos, vTempPos, vMaxPages, vCount, vTPEAantalSpelers, vLeeftijd, vGevondenKoopjes:integer;
  vTransferprijs, vMaxPrijs: double;
  vPlayerIDs: array of integer;
  vPlayerPrizes: array of integer;
  vPlayerDeadlines: array of TDateTime;
  vText, vTemp, vTempText, vURL: String;
  vTSISet: TTSISet;
begin
  btnScout.Enabled := FALSE;
  vGevondenKoopjes := 0;

  ExecSQL(ibdbHTInfo, 'DELETE FROM KOOPJES WHERE (DEADLINE IS NULL) or (DEADLINE < (CURRENT_TIMESTAMP - 0.01))', [], []);

  try
    vMaxPages := StrToInt(btnEdPaginas.Text);

    vPages := StrToInt(btnVanPagins.Text);
    if (vPages > 1) then
    begin
      // Pagina opzoeken.
      BrowseToNextPage(vPages - 1);
    end;

    while vPages <= vMaxPages do
    begin
      lblStatus.Caption := Format('%d/%d',[vPages,vMaxPages]);

      StreamToMemo(HTBrowser);
      vText := Copy(vMemo.Text, Pos('Zoekresultaat', vMemo.Text), Length(vMemo.Text));

      vPos := Pos(PLAYERID, vText);

      while (vPos > 0) do
      begin
        vText := Copy(vText, vPos + Length(PLAYERID), Length(vText));
        vPos := Pos(PLAYERID, vText);
        if (vPos = 0) then
        begin
          vPos := Length(vText);
        end;
        vTempText := Copy(vText, 1, vPos);

        vTemp := Copy(vTempText, 1, Pos('&amp;', vTempText) - 1);
        SetLength(vPlayerIDs, Length(vPlayerIDs) + 1);
        vPlayerIDs[Length(vPlayerIDs) - 1] := AnyStrToInt(vTemp);

        vTemp := Copy(vTempText, 1, Pos('&nbsp;€', vTempText) - 1);
        vTempPos := GetLastPos('<td>', vTemp);
        vTemp := Copy(vTemp, vTempPos + 4, Length(vTemp));

        SetLength(vPlayerPrizes, Length(vPlayerPrizes) + 1);
        vPlayerPrizes[Length(vPlayerPrizes) - 1] := AnyStrToInt(VerwijderSpaties(Trim(vTemp)));

        SetLength(vPlayerDeadlines, Length(vPlayerDeadlines) + 1);
        if (Pos(DEADLINE, vTempText) > 0) then
        begin
          vTemp := Copy(vTempText, Pos(DEADLINE, vTempText) + Length(DEADLINE), Length(vTempText));
          vTemp := Copy(vTemp, Pos('">', vTemp) + 2, Length(vTemp));
          vTemp := Copy(vTemp, 1, Pos('</span>', vTemp) - 1);

          vPlayerDeadlines[Length(vPlayerDeadlines) - 1] := StrToDateTime(Trim(vTemp));
        end;
      end;

      inc(vPages);

      // Pagina verder
      if (vPages <= vMaxPages) then
      begin
        if not BrowseToNextPage(vPages - 1) then
        begin
          vPages := vMaxPages + 1;
        end;
      end;
    end;

    for vCount := 0 to Length(vPlayerIDs) - 1 do
    begin
      lblStatus.Caption := Format('%d/%d',[vCount,Length(vPlayerIDs)]);

      if (GetFieldValue(ibdbHTInfo, 'KOOPJES', ['PLAYER_ID'], [vPlayerIDs[vCount]], 'ID', srtInteger,
        svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)) = 0) then
      begin
        vURL := CurrentURL;
        vURL := Copy(vURL, 1, Pos('.hattrick.org/', CurrentURL));
        vURL := Format('%shattrick.org/Club/Transfers/TransferCompare.aspx?playerId=%d', [vURL, vPlayerIDs[vCount]]);

        BrowseTo(HTBrowser, vURL);

        vTransferprijs := ParsePrijzen(vTPEAantalSpelers);

        vMaxPrijs := BerekenMaxPrijs(vTransferprijs, 0, 0, 0);

        if (vPlayerPrizes[vCount] < vMaxPrijs) and
           (vTPEAantalSpelers > 1) then
        begin
          BrowseToPlayer(vPlayerIDs[vCount]);

          vTSISet := ParsePlayerInfo;
          try
            vLeeftijd := AnyStrToInt(vTSISet.Leeftijd);
            vMaxPrijs := BerekenMaxPrijs(vTransferprijs, vTSISet.Loon, vLeeftijd, vTSISet.WekenBlessure);

            SaveKoopje(SaveScouting(vTSISet, TRUE), vTSISet.PlayerID, Ceil(vTransferprijs),
              Ceil(Max(vTSISet.VraagPrijs, vTSISet.HoogsteBod)),
              Ceil(vMaxPrijs), vTSISet.DeadLine, vTPEAantalSpelers);
            Inc(vGevondenKoopjes);
          finally
            vTSISet.Free;
          end;
        end
        else
        begin
          SaveKoopje(0, vPlayerIDs[vCount], Ceil(vTransferprijs), vPlayerPrizes[vCount],
                  Ceil(vMaxPrijs), vPlayerDeadlines[vCount], vTPEAantalSpelers);
        end;
      end;
    end;
  finally
    pgctrlLijst.ActivePage := tbBrowser;

    btnScout.Enabled := TRUE;
    ShowMessage(Format('%d nieuwe koopjes gescout!',[vGevondenKoopjes]));
  end;
end;

function TfrmHTScanner.BerekenMaxPrijs(aTransferprijs: double; aLoon, aLeeftijd, aBlessureWeken: integer): double;
begin
  Result := aTransferprijs * (100 - FTPEMarge) / 100;
  Result := Result * (100 - FMakelaarsPerc) / 100;
  Result := Result * (100 - FVorigeClubs) / 100;

  Result := Result - FKoopjesMarge;
  Result := Result - (aTransferprijs * FKoopjesMargePerc / 100);

  Result := Result - (FKoopjesLoonWeken * aLoon);
  
  //vanaf 31 jaar per jaar 50k extra winst
  if (aLeeftijd >= 31) then
  begin
    Result := Result - ((aLeeftijd - 30) * 50000);
  end;

  if (aBlessureWeken > 0) then
  begin
    aLoon := aLoon + 15000;

    if (aLeeftijd < 27) then
    begin
      //werkelijke tijd = 2/3 van de blessureweken
      Result := Result - (aBlessureWeken * 2 / 3 * aLoon);
    end
    else if (aLeeftijd < 30) then
    begin
      //werkelijke tijd = het aantal blessureweken
      Result := Result - (aBlessureWeken * aLoon);
    end
    else if (aLeeftijd < 32) then
    begin
      //werkelijke tijd = het aantal blessureweken * 1.2
      Result := Result - (aBlessureWeken * 1.3 * aLoon);
    end
    else if (aLeeftijd = 32) then
    begin
      //werkelijke tijd = het aantal blessureweken * 1.4
      Result := Result - (aBlessureWeken * 1.6 * aLoon);
    end
    else if (aLeeftijd = 33) then
    begin
      //werkelijke tijd = het aantal blessureweken * 1.7
      Result := Result - (aBlessureWeken * 2 * aLoon);
    end
    else if (aLeeftijd = 34) then
    begin
      //werkelijke tijd = het aantal blessureweken * 2.1
      Result := Result - (aBlessureWeken * 2.5 * aLoon);
    end
    else if (aLeeftijd = 35) then
    begin
      //werkelijke tijd = het aantal blessureweken * 3
      if (aBlessureWeken = 1) then //maal 5.5
      begin
        Result := Result - (3 * aLoon);
      end
      else
      begin
        //te veel blessure, gaan we ons niet aan vertillen
        Result := -1;
      end;
    end
    else
    begin
      //te veel blessure, gaan we ons niet aan vertillen
      Result := -1;
    end;
  end;
end;

procedure TfrmHTScanner.SaveKoopje(aScoutingID, aPlayerID, aTPE, aHoogsteBod, aMaxBod: integer; aDeadline: TDateTime;
  vTPEAantalSpelers: integer);
begin
  with CreateInsertSQL(ibdbHTInfo, 'KOOPJES') do
  begin
    try
      ParamByName('ID').AsInteger := GetGeneratorValue(ibdbHTInfo, 'KOOPJES_ID_GEN');
      ParamByName('SCOUTING_ID').AsInteger := aScoutingID;
      ParamByName('PLAYER_ID').AsInteger := aPlayerID;
      ParamByName('TPE').AsInteger := aTPE;
      ParamByName('HOOGSTE_BOD').AsInteger := aHoogsteBod;
      ParamByName('MAX_BOD').AsInteger := aMaxBod;
      ParamByName('DEADLINE').AsDateTime := aDeadline;
      ParamByName('TPE_AANTALSPELERS').AsInteger := vTPEAantalSpelers;
      ParamByName('SCAN_TIJDSTIP').AsDateTime := ESBDates.AddHrs(aDeadline, -1);
      
      ExecQuery;

    finally
      CommitTransaction(Transaction,dbaFree);
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.btnAddScoutingToBotClick(Sender: TObject);
var
  vScoutingID: integer;
  vMaxBodStr: String;
  vFieldValues: TDBFieldValues;
begin
  vFieldValues := nil;
  
  if dbgrdScouting.SelectedCount = 1 then
  begin
    vScoutingID := GetNodeValue(dbgrdScouting.SelectedNodes[0], 'ID', srtInteger, FALSE);

    if (vScoutingID > 0) then
    begin
      InputQuery('Maximale prijs', 'Voer de maximale prijs in', vMaxBodStr);

      vFieldValues := GetFieldValues(ibdbHTInfo, 'SCOUTING', ['ID'], [vScoutingID],
        ['PLAYER_ID', 'HOOGSTE_BOD', 'DEADLINE'], [srtInteger, srtInteger, srtDateTime],svtNormal,
        uHattrick.CreateReadTransaction(ibdbHTInfo));

      SaveKoopje(vScoutingID, vFieldValues[0], ibqrTransferPrijzen.FieldByName('TRANSFER_PRIZE').AsInteger,
        vFieldValues[1], AnyStrToInt(vMaxBodStr), vFieldValues[2],
        ibqrTransferPrijzen.FieldByName('TRANSFER_COUNT').AsInteger);
    end;
  end;
end;

procedure TfrmHTScanner.SetCurrentURL(const Value: String);
begin
  FCurrentURL := Value;
  Caption := Format('Hattrick Scanner [%s]',[Value]);
end;

function TfrmHTSCanner.RemoveYouthKenmerk(aKenmerk:String):String;
begin
  result := aKenmerk;
  if (aKenmerk <> '') and (Pos('y_',aKenmerk) = 1) then
  begin
    result := Copy(aKenmerk,3,Length(aKenmerk));
  end;
end;

procedure TfrmHTScanner.btnGetKarakterClick(Sender: TObject);
const
  cSQL = 'select * from GET_KARAKTER(:OGEN, :MOND)';
var
  vPlayerInfo: TTSISet;
  vYouthID, vCount:integer;
  vBatch:TStringList;
begin
  ExtractPlayersToCSV(-1,TRUE);
  exit;

  vPlayerInfo := ParsePlayerInfo;

  if Pos('y_', vPlayerInfo.Eyes) = 0 then
  begin
    SaveScouting(vPlayerInfo,TRUE);

    vYouthID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
      ['PLAYER_NAME'],[vPlayerInfo.PlayerName],'PLAYER_ID',srtInteger,svtNormal,
      uHattrick.CreateReadTransaction(ibdbHTInfo));

    if vYouthID > 0 then
    begin
      ExecSQL(ibdbHTInfo,'UPDATE SCOUTING SET YOUTHPLAYER_ID = :YOUTH_ID WHERE PLAYER_ID = :ID',
        ['ID','YOUTH_ID'],[vPlayerInfo.PlayerID,vYouthID]);
      ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET KARAKTER_ID = :KARAKTER_ID WHERE PLAYER_ID = :ID',
        ['ID','KARAKTER_ID'],[vYouthID,vPlayerInfo.KarakterID]);
    end;
  end
  else
  begin
    vPlayerInfo.Eyes := RemoveYouthKenmerk(vPlayerInfo.Eyes);
    vPlayerInfo.Face := RemoveYouthKenmerk(vPlayerInfo.Face);
    vPlayerInfo.Mouth := RemoveYouthKenmerk(vPlayerInfo.Mouth);
    vPlayerInfo.Nose := RemoveYouthKenmerk(vPlayerInfo.Nose);
    vPlayerInfo.Hair := RemoveYouthKenmerk(vPlayerInfo.Hair);
    vPlayerInfo.Goatee := RemoveYouthKenmerk(vPlayerInfo.Goatee);
    vPlayerInfo.Body := RemoveYouthKenmerk(vPlayerInfo.Body);

    vPlayerInfo.KarakterID := uHattrick.SaveKarakterProfiel(ibdbHTInfo,FALSE,vPlayerInfo);
  end;
  
  vCount := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
    ['KARAKTER_ID'],[vPlayerInfo.KarakterID],'PLAYER_ID',srtInteger,svtCount,
    uHattrick.CreateReadTransaction(ibdbHTInfo));
    
  if (vCount > 1) then
  begin

    vBatch := TStringList.Create;
    try
      GetBatchlings(vBatch,vPlayerInfo.KarakterID,0,0,vCount, FALSE, TRUE);

      ShowMessage(Format('Batchling aangetroffen met karakter_ID %d!',
        [vPlayerInfo.KarakterID])+#13+#13+
        vBatch.Text);

    finally
      vBatch.Free;
    end;
  end;

  if (vPlayerInfo.Eyes <> '') and (vPlayerInfo.Mouth <> '') then
  begin
    with uHTDB.CreateSQL(ibdbHTInfo, cSQL) do
    begin
      try
        //de jeugdspeler-links beginnen met Y_
        if (Pos('y_', vPlayerInfo.Eyes) > 0) then
        begin
          ParamByName('OGEN').AsString := Copy(vPlayerInfo.Eyes, 3, Length(vPlayerInfo.Eyes));
          ParamByName('MOND').AsString := Copy(vPlayerInfo.Mouth, 3, Length(vPlayerInfo.Mouth));
        end
        else
        begin
          ParamByName('OGEN').AsString := vPlayerInfo.Eyes;
          ParamByName('MOND').AsString := vPlayerInfo.Mouth;
        end;

        ExecQuery;

        MessageBox(Screen.ActiveForm.Handle,PChar(Format(
          'Geliefd: %.2f'+#13#10+
          'Populair: %.2f'+#13#10+
          'Sympathiek: %.2f'+#13#10+
          'Aangenaam: %.2f'+#13#10+
          'Controversieel: %.2f'+#13#10+
          'Gemeen: %.2f',
          [FieldByName('GELIEFD').AsFloat,
          FieldByName('POPULAIR').AsFloat,
          FieldByName('SYMPATHIEK').AsFloat,
          FieldByName('AANGENAAM').AsFloat,
          FieldByName('CONTROVERSIEEL').AsFloat,
          FieldByName('GEMEEN').AsFloat])),
          PChar(Format('Karakter (%d records)', [FieldByName('AANTAL').AsInteger])),
          MB_ICONINFORMATION + MB_OK);
      finally
        CommitTransaction(Transaction,dbaFree);
        Free;
      end;
    end;
  end;
end;

procedure TfrmHTScanner.ToonAutoScout;
begin
  with TfrmAutoScout.Create(Self) do
  begin
    try
      if ShowModal = mrOk then
      begin
        AutoScoutVersterkingen;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.AutoScoutVersterkingen;
const
  cSQL = 'SELECT * FROM AUTOSCAN';
begin
  with uHTDb.CreateSQL(ibdbHTInfo, cSQL) do
  begin
    try
      ExecQuery;


      while (not Eof) do
      begin
        BrowseToLink(HTBrowser,'/World/Transfers/');

        SetValue(HTBrowser,['ctl00$CPMain$ddlDeadline'], IntToStr(-1));
        SetValue(HTBrowser,['ctl00$CPMain$ddlAgeMin'],  FieldByName('MIN_LEEFTIJD').AsString);
        SetValue(HTBrowser,['ctl00$CPMain$ddlAgeMax'],  FieldByName('MAX_LEEFTIJD').AsString);

        if (FieldByName('SKILL1_TYPE').AsInteger > 0) then
        begin
          SetValue(HTBrowser,['ctl00$CPMain$ddlSkill1'],  FieldByName('SKILL1_TYPE').AsString);
          if (FieldByName('SKILL1_MIN').AsInteger > 0) then
          begin
            SetValue(HTBrowser,['ctl00$CPMain$ddlSkill1Min'],  FieldByName('SKILL1_MIN').AsString);
          end;
          SetValue(HTBrowser,['ctl00$CPMain$ddlSkill1Max'],  FieldByName('SKILL1_MAX').AsString);
        end;

        if (FieldByName('SKILL2_TYPE').AsInteger > 0) then
        begin
          SetValue(HTBrowser,['ctl00$CPMain$ddlSkill2'],  FieldByName('SKILL2_TYPE').AsString);
          if (FieldByName('SKILL2_MIN').AsInteger > 0) then
          begin
            SetValue(HTBrowser,['ctl00$CPMain$ddlSkill2Min'],  FieldByName('SKILL2_MIN').AsString);
          end;
          SetValue(HTBrowser,['ctl00$CPMain$ddlSkill2Max'],  FieldByName('SKILL2_MAX').AsString);
        end;

        if (FieldByName('SKILL3_TYPE').AsInteger > 0) then
        begin
          SetValue(HTBrowser,['ctl00$CPMain$ddlSkill3'],  FieldByName('SKILL3_TYPE').AsString);
          if (FieldByName('SKILL3_MIN').AsInteger > 0) then
          begin
            SetValue(HTBrowser,['ctl00$CPMain$ddlSkill3Min'],  FieldByName('SKILL3_MIN').AsString);
          end;
          SetValue(HTBrowser,['ctl00$CPMain$ddlSkill3Max'],  FieldByName('SKILL3_MAX').AsString);
        end;
        BrowserClick(HTBrowser,['ctl00$CPMain$butSearch']);

        btnEdPaginas.Text := '20';

        ScoutPlayers(FALSE);

        Next;
      end;
    finally
      CommitTransaction(Transaction,dbaFree);
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.btnJeugdScoutLoginClick(Sender: TObject);
begin
  BrowseTo(wbJeugdscout1,'http://www.hattrick.org');
  if (FUserName <> '') then
  begin
    SetValue(wbJeugdscout1,['ctl00$ucSubMenu$txtUserName', 'ctl00$ucSubMenu$ucLogin$txtUserName'], FUserName);
    SetValue(wbJeugdscout1,['ctl00$ucSubMenu$txtPassword', 'ctl00$ucSubMenu$ucLogin$txtPassword'], FPassWord);
    BrowserClick(wbJeugdscout1, ['ctl00$ucSubMenu$butLogin', 'ctl00$ucSubMenu$ucLogin$butLogin']);
  end;

  BrowseTo(wbJeugdscout2,'http://www.hattrick.org');
  if (FUserName <> '') then
  begin
    SetValue(wbJeugdscout2,['ctl00$ucSubMenu$txtUserName', 'ctl00$ucSubMenu$ucLogin$txtUserName'], FUserName);
    SetValue(wbJeugdscout2,['ctl00$ucSubMenu$txtPassword', 'ctl00$ucSubMenu$ucLogin$txtPassword'], FPassWord);
    BrowserClick(wbJeugdscout2, ['ctl00$ucSubMenu$butLogin', 'ctl00$ucSubMenu$ucLogin$butLogin']);
  end;

  BrowseTo(wbJeugdscout3,'http://www.hattrick.org');
  if (FUserName <> '') then
  begin
    SetValue(wbJeugdscout3,['ctl00$ucSubMenu$txtUserName', 'ctl00$ucSubMenu$ucLogin$txtUserName'], FUserName);
    SetValue(wbJeugdscout3,['ctl00$ucSubMenu$txtPassword', 'ctl00$ucSubMenu$ucLogin$txtPassword'], FPassWord);
    BrowserClick(wbJeugdscout3, ['ctl00$ucSubMenu$butLogin', 'ctl00$ucSubMenu$ucLogin$butLogin']);
  end;
end;

procedure TfrmHTScanner.btnJeugdScoutScoutClick(Sender: TObject);
var
  vObject,
  vObject2,
  vObject3: Variant;
begin
  vObject  := GetBrowserObject(wbJeugdscout1, 'ctl00_CPMain_dlScouts_ctl00_lnkScoutCall');
  vObject2 := GetBrowserObject(wbJeugdscout2, 'ctl00_CPMain_dlScouts_ctl01_lnkScoutCall');
  vObject3 := GetBrowserObject(wbJeugdscout3, 'ctl00_CPMain_dlScouts_ctl02_lnkScoutCall');

  if (not VarIsClear(vObject)) then
  begin
    vObject.Click;
  end;
  if (not VarIsClear(vObject2)) then
  begin
    vObject2.Click;
  end;
  if (not VarIsClear(vObject3)) then
  begin
    vObject3.Click;
  end;
end;

procedure TfrmHTScanner.WriteToIni(aSection,aValue:String;aDate:TDateTime);
begin
  with TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) do
  begin
    try
      WriteDate(aSection,aValue,aDate);
    finally
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.ParseDocs(aScanAll:boolean);
const
  //KEY_VERDEDIGERS =    '0Ak4x9giB5HFqcmY0emNRQWdFb1NycjNLVUJGdlBjb3c';
  //KEY_SPITSEN =        '0Ak4x9giB5HFqcjFJVUpiMGhHRnpmWEFxbUhNVWRlR1E';
  //KEY_VLEUGELSPELERS = '0Ak4x9giB5HFqcl92ZHVaVHpuUU13M2NHQVExQlBXcWc';
  //KEY_MIDDENVELDERS =  '0Ak4x9giB5HFqclF3YTY3Z3hMQTEtajhRYUo3d1dhLXc';
  //KEY_KEEPERS =        '0Ak4x9giB5HFqcnl0T281M3ZDbzdPZzRhRFp3Mm1yZXc';

  KEY_VLEUGELSPELERS = '0AuMId4-mSylodGFqQm1DTklKYWpSdVFtc0stdndlWUE';
  KEY_MIDDENVELDERS =  '0AuMId4-mSylodE5QQXo3MWp0QVVGdzZtNnBtT05IS0E';
  KEY_SPITSEN       =  '0AuMId4-mSylodEpqcXlSTnVJekVDdUM2LW5PTHhYZVE';
  KEY_KEEPERS       =  '0AuMId4-mSylodGpkaEFDU1poWmZoWlkzdEtsNjlKa2c';
  KEY_VERDEDIGERS   =  '0AuMId4-mSylodFJPZ3lCeEZKd3l5SlEtSkhZVkpGSlE';

  MAX_DOWNLOADERRORS = 500;
var
  vMap: String;
  vErrorCount: integer;
  vFormVoortgang: TfrmVoortgang;
  vOk, vdoParse: boolean;
  vDoDownload: boolean;
  vOutputType, vFileType: String;
begin
  if (aScanAll) then
  begin
    if not (Quadspeed1.Checked) then
    begin
      Quadspeed1Click(Quadspeed1);
    end;
  end;

  if (OfficeType = aptOffice) then
  begin
    vOutputType := 'xls';
    vFileType := 'xlsx';
  end
  else
  begin
    vOutputType := 'ods';
    vFileType := 'ods';
  end;


  FNoTalentCheck := aScanAll;
  FChangeLog.Clear;
  FErrorList.Clear;
  vFormVoortgang := TfrmVoortgang.Create(nil, 5);
  vDoParse := TRUE;

  pgctrlLijst.ActivePage := tbTSI;
  BrowseTo(TSIBrowser, 'https://docs.google.com/#all');

  StreamToMemo(TSIBrowser);

  Sleep(100);
  Application.ProcessMessages;

  while (Pos('U17', vMemo.Text) = 0) do
  begin
    Sleep(2000);

    Application.ProcessMessages;

    StreamToMemo(TSIBrowser);
  end;

  //vFormVoortgang.Melding := 'Bezig met downloaden XLS...';
  vMap := Format('%sXLS\%.4d%.2d%.2d', [ExtractFilePath(Application.ExeName),
                                        ESBDates.ThisYear,
                                        ESBDates.ThisMonth,
                                        ESBDates.ThisDay]);
  vDoDownload := TRUE;
  if (DirectoryExists(vMap)) then
  begin
    vDoDownload := MessageBoxWarning('Wil je de bestanden nogmaals downloaden?','HTScanner',TRUE);

    if (vDoDownload) then
    begin
      RemoveFiles(vMap,'.csv');
    end
    else
    begin
      vdoParse := FALSE;
    end;
  end;

  if not (DirectoryExists(vMap)) then
  begin
    ForceDirectories(vMap);
  end;

  if (vDoDownload) then
  begin
    vErrorCount := -1;

    vFormVoortgang.Melding := 'Bezig met downloaden VERDEDIGERS.XLS...';
    repeat
      inc(vErrorCount);
      StatusBar1.Panels[4].Text := 'VERDEDIGERS.xls';

      UrlDownloadToFile(TSIBrowser,
        PChar(Format('https://spreadsheets.google.com/ccc?key=%s&output=%s', [KEY_VERDEDIGERS, vOutputType])),
        PChar(vMap + Format('\VERDEDIGERS.%s',[vFileType])), 0, nil);

      vOk := FileExists(vMap + Format('\VERDEDIGERS.%s',[vFileType]));

      if not(vOk) and (vErrorCount >= MAX_DOWNLOADERRORS) then
      begin
        vOk := TRUE;
        vDoParse := FALSE;
      end;
    until vOK;

    vFormVoortgang.StepIt;

    vErrorCount := -1;
    vFormVoortgang.Melding := 'Bezig met downloaden SPITSEN.XLS...';
    //FDownloadVoortgang.Progress := 0;
    repeat
      StatusBar1.Panels[4].Text := 'SPITSEN.xls';

      UrlDownloadToFile(TSIBrowser,
        PChar(Format('https://spreadsheets.google.com/ccc?key=%s&output=%s', [KEY_SPITSEN, vOutputType])),
        PChar(vMap + Format('\SPITSEN.%s',[vFileType])), 0, nil);

      vOk := FileExists(vMap + Format('\SPITSEN.%s',[vFileType]));

      if not(vOk) and (vErrorCount >= MAX_DOWNLOADERRORS) then
      begin
        vOk := TRUE;
        vDoParse := FALSE;
      end;
    until vOk;
    vFormVoortgang.StepIt;

    vErrorCount := -1;
    vFormVoortgang.Melding := 'Bezig met downloaden VLEUGELSPELERS.XLS...';
    //FDownloadVoortgang.Progress := 0;
    repeat
      StatusBar1.Panels[4].Text := 'VLEUGELSPELERS.xls';

      UrlDownloadToFile(TSIBrowser,
        PChar(Format('https://spreadsheets.google.com/ccc?key=%s&output=%s', [KEY_VLEUGELSPELERS, vOutputType])),
        PChar(vMap + Format('\VLEUGELSPELERS.%s',[vFileType])), 0, nil);

      vOk := FileExists(vMap + Format('\VLEUGELSPELERS.%s',[vFileType]));

      if not(vOk) and (vErrorCount >= MAX_DOWNLOADERRORS) then
      begin
        vOk := TRUE;
        vDoParse := FALSE;
      end;
    until vOK;
    vFormVoortgang.StepIt;

    vErrorCount := -1;
    vFormVoortgang.Melding := 'Bezig met downloaden MIDDENVELDERS.XLS...';
    //FDownloadVoortgang.Progress := 0;
    repeat
      StatusBar1.Panels[4].Text := 'MIDDENVELDERS.xls';

      UrlDownloadToFile(TSIBrowser,
        PChar(Format('https://spreadsheets.google.com/ccc?key=%s&output=%s', [KEY_MIDDENVELDERS, vOutputType])),
        PChar(vMap + Format('\MIDDENVELDERS.%s',[vFileType])), 0, nil);

      vOk := FileExists(vMap + Format('\MIDDENVELDERS.%s',[vFileType]));

      if not(vOk) and (vErrorCount >= MAX_DOWNLOADERRORS) then
      begin
        vOk := TRUE;
        vDoParse := FALSE;
      end;
    until vOK;
    vFormVoortgang.StepIt;

    vErrorCount := -1;
    vFormVoortgang.Melding := 'Bezig met downloaden KEEPERS.XLS...';
    //FDownloadVoortgang.Progress := 0;
    repeat
      StatusBar1.Panels[4].Text := 'KEEPERS.xls';

      UrlDownloadToFile(TSIBrowser,
        PChar(Format('https://spreadsheets.google.com/ccc?key=%s&output=%s', [KEY_KEEPERS, vOutputType])),
        PChar(vMap + Format('\KEEPERS.%s',[vFileType])), 0, nil);

      vOk := FileExists(vMap + Format('\KEEPERS.%s',[vFileType]));

      if not(vOk) and (vErrorCount >= MAX_DOWNLOADERRORS) then
      begin
        vOk := TRUE;
        vDoParse := FALSE;
      end;
    until vOk;
    vFormVoortgang.StepIt;
  end;
  
  pgctrlLijst.ActivePage := tbBrowser;
  try
    if not(vDoParse) then
    begin
      vDoParse := MessageBoxQuestion('Downloaden U17 docs niet gelukt!'+#13+
        #13+'Toch inlezen?','HTScanner');
    end;

    if (vDoParse) then
    begin
      //FCheckBatchlings := ReadFromIni('SCOUTING','LAST_BATCHLING_CHECK') < Date;
      FStartParsing := Now;

      FCheckBatchlings := aScanAll;
      
      SaveXlsToDB('Verdedigers',vMap + Format('\VERDEDIGERS.%s',[vFileType]), vFormVoortgang);
      SaveXlsToDB('Spitsen',vMap + Format('\SPITSEN.%s',[vFileType]), vFormVoortgang);
      SaveXlsToDB('Vleugelspelers',vMap + Format('\VLEUGELSPELERS.%s',[vFileType]), vFormVoortgang);
      SaveXlsToDB('Middenvelders',vMap + Format('\MIDDENVELDERS.%s',[vFileType]), vFormVoortgang);
      FCheckBatchlings := FALSE;
      ScanAll := FALSE;
      // Bij keepers niet op batchlingen testen
      SaveXlsToDB('Keepers',vMap + Format('\KEEPERS.%s',[vFileType]), vFormVoortgang);

      WritetoIni('SCOUTING','LAST_BATCHLING_CHECK', Date);
      FErrorList.SaveToFile(ExtractFilePath(Application.ExeName)+'SCOUTING\DocErrors.csv');
    end;
  finally
    vFormVoortgang.Release;
  end;

  FChangeLog.SaveToFile(ExtractFilePath(Application.ExeName)+'SCOUTING\ChangeLog.txt');
end;
       
procedure TfrmHTScanner.btnParseU17DocsClick(Sender: TObject);
begin
  ScanAll := MessageBoxQuestion('Moeten alle spelers in de docs gecontroleerd worden?','HTScanner');

  ParseDocs(ScanAll);
end;

procedure TfrmHTScanner.SaveXlsToDB(aLinie,aFileName: String; vFormVoortgang: TfrmVoortgang);
var
  vCount,
  vAantalSheets: integer;
  vExcelFunctions: TExcelFunctions;
begin
  FErrorList.Add(aLinie);
  FErrorList.Add('');
  FChangeLog.Add(ExtractFileName(aFileName));
  FChangeLog.Add('');

  vExcelFunctions := TExcelFunctions.Create(OfficeType);

  with vExcelFunctions do
  begin
    try
      Open(aFileName);
      try
        vAantalSheets := SheetCount;
        for vCount := 1 to vAantalSheets do
        begin
          vFormVoortgang.Melding := Format('Bezig met importeren [%s] in DB %d / %d...',
            [ExtractFileName(aFileName), vCount, vAantalSheets]);

          vExcelFunctions.SetWorksheetActive(vCount);

          FErrorList.Add(Format('Sheet %s',[CurrentWorkSheet.Name]));

          VerwerkXlsTabsheet(vExcelFunctions, vFormVoortgang);
          FErrorList.Add('');
        end;
      finally
        // Sluit file
        CloseActiveWorkbook(FALSE);
      end;
    finally
      Free;
    end;
  end;
  FChangeLog.Add('*********************************');
end;

function TfrmHTScanner.CheckSpecialiteit(aPlayerID: integer):boolean;
var
  vID, vKarakterID, vTeamID: integer;
  vPromoted: boolean;
  vURL, vNaam, vLeeftijd, vSpecialiteit: String;
  vDatum, vLastUpdate: TDate;

  vSpeler: TJeugdspeler;
begin
  result := FALSE;

  vID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'ID',srtInteger,
    svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

  if (vID > 0) then
  begin
    vLastUpdate := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'LAST_UPDATE',srtDateTime,
      svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

    if (vLastUpdate < Date) then
    begin
      vPromoted := (GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'PROMOTED',srtInteger,
        svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)) = -1);
      vKarakterID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'KARAKTER_ID',srtInteger,
        svtNormal, uHattrick.CreateReadTransaction(ibdbHTInfo));

      if (vPromoted) then
      begin
        if (vKarakterID <= 0) then
        begin
          vNaam := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'PLAYER_NAME',srtString,
            svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
          vTeamID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'TEAM_ID',srtString,
            svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
          result := GetJeugdspelerInfoByID(aPlayerID,vTeamID,vNaam,TRUE,FALSE,TRUE);
        end;
      end
      else
      begin
        vSpecialiteit := GetFieldValue(ibdbHTInfo,'KARAKTER_PROFIEL',['ID'],[vKarakterID],'SPECIALITEIT',srtString,
          svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
        CurSpec := vSpecialiteit;
        CurLeiderschap := GetFieldValue(ibdbHTInfo,'KARAKTER_PROFIEL',['ID'],[vKarakterID],'LEIDERSCHAP',srtString,
          svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
        WriteScanResults(vKarakterID,'~');

        if (vSpecialiteit = '') then
        begin
          vURL := uHattrick.GetYouthPlayerLink(CurrentURL, aPlayerID);
          if BrowseTo(HTBrowser,vURL) then
          begin
            vSpeler := TJeugdspeler.Create;
            try
              vSpeler.ID := IntToStr(aPlayerID);

              GetJeugdSpelerInfo(vSpeler,TRUE);

              if (vSpeler.Specialiteit <> '') then
              begin
                Wait(2,5);
              end
              else
              begin
                Wait(1,2);
              end;

              if (vSpeler.Naam = '') then
              begin
                vNaam := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'PLAYER_NAME',srtString,
                  svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
                vDatum := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'GEBOORTE_DATUM',srtDate,
                  svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

                if (vDatum > 0) then
                begin
                  vLeeftijd := GetLeeftijd(vDatum);

                  result := GetSpecialiteitGepromoveerdeSpeler(vKarakterID,vNaam,vLeeftijd);
                end;

                // Gepromoveerd dus!
                ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET PROMOTED = -1 WHERE PLAYER_ID = :ID',
                  ['ID'],[aPlayerID]);
              end
              else
              begin
                if (vSpecialiteit <> vSpeler.Specialiteit) and (UpperCase(vSpecialiteit) <> 'GEEN') then
                begin
                  result := TRUE;
                  ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET SPECIALITEIT = :SPEC WHERE ID = :ID',
                    ['ID','SPEC'],[vKarakterID,vSpeler.Specialiteit]);
                end;
              end;

              ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET LAST_UPDATE = CURRENT_TIMESTAMP WHERE PLAYER_ID = :ID',
                ['ID'],[aPlayerID]);
            finally
              vSpeler.Free;
            end;
          end
          else
          begin
            vNaam := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'PLAYER_NAME',srtString,
              svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
            vTeamID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[aPlayerID],'TEAM_ID',srtString,
              svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
            result := GetJeugdspelerInfoByID(aPlayerID,vTeamID,vNaam,FALSE,FALSE,TRUE);
          end;
        end;
      end;
    end;
  end;
end;

function TfrmHTScanner.GetScout(aDoc,aSheet, aPlayerName:String):String;
var
  vValues: TDBFieldValues;
  vScout: String;
begin
  aDoc := ChangeFileExt(aDoc,'.xls');

  vValues := GetFieldValues(ibdbHTInfo,'DOCS',['DOC_NAME','SHEET_NAME'],
    [aDoc, aSheet],['ID','SCOUT','ACTIEF'],[srtInteger,srtString,srtInteger],
    svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

  if (vValues[0] > 0) then
  begin
    result := vValues[1];
  end
  else
  begin
    vScout := InputBox(aPlayerName,Format('%s (%s)',[aDoc, aSheet]),'');

    with uHTDB.CreateInsertSQL(ibdbHTInfo,'DOCS') do
    begin
      try
        ParamByName('ID').asInteger := GetGeneratorValue(ibdbHTInfo,'GEN_DOCS_ID');
        ParamByName('DOC_NAME').asString := aDoc;
        ParamByName('SHEET_NAME').asString := aSheet;
        ParamByName('SCOUT').asString := vScout;
        ParamByName('ACTIEF').asInteger := Ord(vScout <> '') * -1;
        ExecQuery;
      finally
        CommitTransaction(Transaction, dbaFree);
        Free;
      end;
    end;

    result := vScout;
  end;
end;

function TfrmHTScanner.XLSValueToFloat(aValue: String):double;
begin
  if Pos('*',aValue) > 0 then
  begin
    aValue := StringReplace(aValue,'*','',[rfReplaceAll]);
  end;

  if Pos('+',aValue) > 0 then
  begin
    aValue := StringReplace(aValue,'+',',',[rfReplaceAll]);
  end;

  if Pos('.',aValue) > 0 then
  begin
    aValue := StringReplace(aValue,'.',',',[rfReplaceAll]);
  end;

  result := AnyStrToFloat(aValue);
end;

procedure TfrmHTScanner.VerwerkXlsTabsheet(vExcelFunctions: TExcelFunctions; vFormVoortgang: TfrmVoortgang);
const
  VOORNAAM = 'A';
  ACHTERNAAM = 'B';
  Y_PLAYERID = 'C';
  TEAMID = 'D';
  UPDATE_GEVRAAGD = 'E';
  LAATSTE_UPDATE = 'F';
  FOCUS = 'G';
  PRIMAIR = 'H';
  SECUNDAIR = 'I';
  VERJAARDAG = 'J';
  JAREN_VANDAAG = 'K';
  DAGEN_VANDAAG = 'L';
  U20 = 'M';
  STERREN = 'N';
  SPECIALITEIT = 'O';
  ALLROUND = 'P';
  KEEPEN = 'Q';
  KEEPEN_POT = 'R';
  POSITIESPEL = 'S';
  POSITIESPEL_POT = 'T';
  PASSEN = 'U';
  PASSEN_POT = 'V';
  VLEUGELSPEL = 'W';
  VLEUGELSPEL_POT = 'X';
  VERDEDIGEN = 'Y';
  VERDEDIGEN_POT = 'Z';
  SCOREN = 'AA';
  SCOREN_POT = 'AB';
  SPELHERVATTEN = 'AC';
  SPELHERVATTEN_POT = 'AD';
  OPMERKING_SCOUT = 'AF';

var
  vCount,
  vAantalRows,
  vPlayerID,
  vAllround: integer;
  vSpecialiteitXLS,
  vSpecialiteit,
  vURL, sPlayerID, sTeamID: String;
  vKeepen,vVerdedigen,vPositiespel,vPassen,vScoren,vSpelhervatten, vVleugelspel:double;
  vSpeler: TJeugdspeler;
  vScout, vPotentie, vCurNivo: String;
  vDummy:integer;
  vChanged, vCurChanged, vPlayerChanged, i, vCountNotChecked: integer;
  vOpmerking, vWorkbookName: String;
  vKeepenPot,
  vPositiespelPot,
  vPassenPot,
  vVleugelspelPot,
  vVerdedigenPot,
  vScorenPot,
  vSpelhervattenPot: double;
  vNoTalentList: TStringList;
  vDbPlayer: TDatabasePlayer;
  vTalented: boolean;
begin
  vWorkbookName := ExtractFileName(vExcelFunctions.URL2FileName(vExcelFunctions.CurrentWorkbook.URL));

  mLogging.Lines.Add(vWorkbookName +
    ' ['+vExcelFunctions.CurrentWorksheet.Name+']');

  vNoTalentList := TStringList.Create;
  try
    vChanged := 0;
    vPlayerChanged := 0;
    vCountNotChecked := 0;

    vAantalRows := vExcelFunctions.RowCount['A'];

    vFormVoortgang.Progress := 1;
    vFormVoortgang.Max := vAantalRows;

    for vCount := 2 to vAantalRows do
    begin
      vPlayerID := 0;
      vCurChanged := vChanged;

      sPlayerID := VarToStr(vExcelFunctions.GetCellValueAsString(Format('%s%d', [Y_PLAYERID, vCount])));
      sTeamID := VarToStr(vExcelFunctions.GetCellValueAsString(Format('%s%d', [TEAMID, vCount])));

      if StringIsInteger(sPlayerID) then
      begin
        vPlayerID := StrToInt(sPlayerID);
      end;

      if (vPlayerID > 0) then
      begin
        vDbPlayer := TDatabasePlayer.Create(ibdbHTInfo, vPlayerID, TRUE, TRUE, TRUE);
        try
          if (vDbPlayer.TeamID = 0) then
            vDbPlayer.TeamID := StrToInt(sTeamID);

          if not(vDBPlayer.IsSenior) then
          begin
            if (ScanAll) then
            begin
              CheckSpecialiteit(vPlayerID);
            end;

            if (vDbPlayer.KarakterID = -1) then
            begin
              //karakterID staat op -1, speler bestaat dus niet meer in jeugd!
              FErrorList.Add(Format('[youthplayerid=%d] %s [?]',[vPlayerID, vDBPlayer.Naam]));
            end
            else if (vDbPlayer.KarakterID <= 0) then
            begin
              //eerst naar HT-website gaan en daar de basisinfo vandaan halen
              vURL := uHattrick.GetYouthPlayerLink(CurrentURL, vPlayerID);
              if BrowseTo(HTBrowser,vURL) then
              begin
                vSpeler := TJeugdspeler.Create;
                try
                  vSpeler.ID := IntToStr(vPlayerID);
                  vSpeler.TeamID := vDbPlayer.TeamID;

                  GetJeugdSpelerInfo(vSpeler, TRUE);

                  vSpeler.Exported := TRUE;

                  SaveJeugdspeler(vSpeler);

                  vDbPlayer.Reload;
                finally
                  vSpeler.Free;
                end;
              end;
            end;

            //het zou kunnen zijn dat een speler nog niet in de DB stond en nu is gepromoveerd.
            //alleen dan zou het id 0 zijn.
            if (vDbPlayer.KarakterID > 0) then
            begin
              if (CheckBatchlings) then
              begin
                GetBatchlings(nil,vDbPlayer.KarakterID,vPlayerID,0,vDummy, TRUE, ScanAll);
              end;

              if (vDbPlayer.LastPlayerUpdate < FStartParsing) or
                (Pos(UpperCase('VERWIJDERD'),UpperCase(vExcelFunctions.CurrentWorkSheet.Name)) = 0) then
              begin
                // Player sowieso op exported zetten, speler komt n.l. al voor in de scouting docs.
                vScout := GetScout(vWorkbookName, vExcelFunctions.CurrentWorksheet.Name, vDBPlayer.Naam);
                vOpmerking := vExcelFunctions.GetCellValueAsString(Format('%s%d', [OPMERKING_SCOUT, vCount]));

                ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET EXPORTED = -1, IN_DOCS = -1, GOOGLE_DOC = :DOC, TABSHEET = :SHEET, OPMERKING_SCOUT = :OPMERKING, LAST_UPDATE = CURRENT_TIMESTAMP WHERE PLAYER_ID = :PLAYERID',
                  ['PLAYERID','SHEET','DOC','OPMERKING'],[vPlayerID,vExcelFunctions.CurrentWorksheet.Name,
                    vWorkbookName, vOpmerking]);

                vPotentie := vExcelFunctions.GetCellValueAsString(Format('%s%d', [KEEPEN_POT, vCount]));
                if Pos('*',vPotentie) > 0 then
                begin
                  ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET KEEPEN_TOP3 = -1 WHERE ID = :ID',
                    ['ID'],[vDbPlayer.KarakterID]);
                end;
                vKeepenPot        := XLSValueToFloat(vPotentie);

                vPotentie := vExcelFunctions.GetCellValueAsString(Format('%s%d', [POSITIESPEL_POT, vCount]));
                if Pos('*',vPotentie) > 0 then
                begin
                  ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET POSITIESPEL_TOP3 = -1 WHERE ID = :ID',
                    ['ID'],[vDbPlayer.KarakterID]);
                end;
                vPositiespelPot   := XLSValueToFloat(vPotentie);

                vPotentie := vExcelFunctions.GetCellValueAsString(Format('%s%d', [PASSEN_POT, vCount]));
                if Pos('*',vPotentie) > 0 then
                begin
                  ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET PASSEN_TOP3 = -1 WHERE ID = :ID',
                    ['ID'],[vDbPlayer.KarakterID]);
                end;
                vPassenPot        := XLSValueToFloat(vPotentie);

                vPotentie := vExcelFunctions.GetCellValueAsString(Format('%s%d', [VLEUGELSPEL_POT, vCount]));
                if Pos('*',vPotentie) > 0 then
                begin
                  ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET VLEUGELSPEL_TOP3 = -1 WHERE ID = :ID',
                    ['ID'],[vDbPlayer.KarakterID]);
                end;
                vVleugelspelPot   := XLSValueToFloat(vPotentie);

                vPotentie := vExcelFunctions.GetCellValueAsString(Format('%s%d', [VERDEDIGEN_POT, vCount]));
                if Pos('*',vPotentie) > 0 then
                begin
                  ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET VERDEDIGEN_TOP3 = -1 WHERE ID = :ID',
                    ['ID'],[vDbPlayer.KarakterID]);
                end;
                vVerdedigenPot    := XLSValueToFloat(vPotentie);

                vPotentie := vExcelFunctions.GetCellValueAsString(Format('%s%d', [SCOREN_POT, vCount]));
                if Pos('*',vPotentie) > 0 then
                begin
                  ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET SCOREN_TOP3 = -1 WHERE ID = :ID',
                    ['ID'],[vDbPlayer.KarakterID]);
                end;
                vScorenPot        := XLSValueToFloat(vPotentie);

                vSpelhervattenPot := XLSValueToFloat(vExcelFunctions.GetCellValueAsString(Format('%s%d', [SPELHERVATTEN_POT, vCount])));
                vSpecialiteitXLS  := vExcelFunctions.GetCellValueAsString(Format('%s%d', [SPECIALITEIT, vCount]));
                vSpecialiteit := uHattrick.FormatSpecialiteit(vSpecialiteitXLS);

                if (GetLinie(IntToStr(vPlayerID)) <> 0) then
                begin
                  if (vDbPlayer.Specialiteit <> vSpecialiteit) then
                  begin
                    if (vDbPlayer.Specialiteit = '') then
                    begin
                      FErrorList.Add(Format('[youthplayerid=%d] %s [onbekend]',[vPlayerID, vDBPlayer.Naam]));
                    end
                    else
                    begin
                      FErrorList.Add(Format('[youthplayerid=%d] %s [%s]',[vPlayerID, vDBPlayer.Naam, vDBPlayer.Specialiteit]));
                    end;
                  end
                  else if (vDbPlayer.Specialiteit = '') and (vDbPlayer.Promoted) then
                  begin
                    FErrorList.Add(Format('[youthplayerid=%d] %s [?]',[vPlayerID, vDBPlayer.Naam]));
                  end;
                end;

                try
                  vCurNivo := vExcelFunctions.GetCellValueAsString(Format('%s%d', [KEEPEN, vCount]));
                  if Pos('*',vCurNivo) > 0 then
                  begin
                    ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET KEEPEN_TOP3 = -1 WHERE ID = :ID',
                      ['ID'],[vDbPlayer.KarakterID]);
                  end;
                  vKeepen := XLSValueToFloat(vCurNivo);
                except
                  vKeepen := 0;
                end;
                try
                  vCurNivo := vExcelFunctions.GetCellValueAsString(Format('%s%d', [VERDEDIGEN, vCount]));
                  if Pos('*',vCurNivo) > 0 then
                  begin
                    ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET VERDEDIGEN_TOP3 = -1 WHERE ID = :ID',
                      ['ID'],[vDbPlayer.KarakterID]);
                  end;
                  vVerdedigen    := XLSValueToFloat(vCurNivo);
                except
                  vVerdedigen := 0;
                end;
                try
                  vCurNivo := vExcelFunctions.GetCellValueAsString(Format('%s%d', [SCOREN, vCount]));
                  if Pos('*',vCurNivo) > 0 then
                  begin
                    ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET SCOREN_TOP3 = -1 WHERE ID = :ID',
                      ['ID'],[vDbPlayer.KarakterID]);
                  end;
                  vScoren        := XLSValueToFloat(vCurNivo);
                except
                  vScoren := 0;
                end;
                try
                  vCurNivo := vExcelFunctions.GetCellValueAsString(Format('%s%d', [POSITIESPEL, vCount]));
                  if Pos('*',vCurNivo) > 0 then
                  begin
                    ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET POSITIESPEL_TOP3 = -1 WHERE ID = :ID',
                      ['ID'],[vDbPlayer.KarakterID]);
                  end;
                  vPositiespel   := XLSValueToFloat(vCurNivo);
                except
                  vPositiespel := 0;
                end;
                try
                  vCurNivo := vExcelFunctions.GetCellValueAsString(Format('%s%d', [PASSEN, vCount]));
                  if Pos('*',vCurNivo) > 0 then
                  begin
                    ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET PASSEN_TOP3 = -1 WHERE ID = :ID',
                      ['ID'],[vDbPlayer.KarakterID]);
                  end;
                  vPassen        := XLSValueToFloat(vCurNivo);
                except
                  vPassen := 0;
                end;
                try
                  vCurNivo := vExcelFunctions.GetCellValueAsString(Format('%s%d', [VLEUGELSPEL, vCount]));
                  if Pos('*',vCurNivo) > 0 then
                  begin
                    ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET VLEUGELSPEL_TOP3 = -1 WHERE ID = :ID',
                      ['ID'],[vDbPlayer.KarakterID]);
                  end;
                  vVleugelspel   := XLSValueToFloat(vCurNivo);
                except
                  vVleugelspel := 0;
                end;
                try
                  vSpelhervatten := XLSValueToFloat(vExcelFunctions.GetCellValueAsString(Format('%s%d', [SPELHERVATTEN, vCount])));
                except
                  vSpelhervatten := 0;
                end;
                vAllround         := AnyStrToInt(vExcelFunctions.GetCellValueAsString(Format('%s%d', [ALLROUND, vCount])));

                FCurCheckPlayer := Format('[youthplayerid=%d] %s',[vDbPlayer.ID, vDbPlayer.Naam]);

                if (DoChangeValue(vDbPlayer.PotKeepen, vKeepenPot, vDbPlayer.KarakterHTYC, 7.9)) then
                begin
                  FCurCheckVaardigheid := 'Keepen (pot)';
                  UpdateFieldValue(ibdbHTInfo, nil, 'KARAKTER_PROFIEL', ['ID'], [vDbPlayer.KarakterID],
                    ['POT_KEEPEN'], [vKeepenPot]);

                  inc(vChanged);
                end;

                if (DoChangeValue(vDbPlayer.CurKeepen, vKeepen, False, 7.9)) then
                begin
                  FCurCheckVaardigheid := 'Keepen';
                  UpdateFieldValue(ibdbHTInfo, nil, 'JEUGDSPELERS', ['PLAYER_ID'], [vPlayerID],
                    ['KEEPEN'], [vKeepen]);
                  inc(vPlayerChanged);
                end;

                if (DoChangeValue(vDbPlayer.PotPositiespel, vPositiespelPot, vDbPlayer.KarakterHTYC)) then
                begin
                  FCurCheckVaardigheid := 'Positiespel (pot)';
                  UpdateFieldValue(ibdbHTInfo, nil, 'KARAKTER_PROFIEL', ['ID'], [vDbPlayer.KarakterID],
                    ['POT_POSITIESPEL'], [vPositiespelPot]);

                  inc(vChanged);
                end;

                if (DoChangeValue(vDBPlayer.CurPositiespel, vPositiespel, FALSE)) then
                begin
                  FCurCheckVaardigheid := 'Positiespel';
                  UpdateFieldValue(ibdbHTInfo, nil, 'JEUGDSPELERS', ['PLAYER_ID'], [vPlayerID],
                    ['POSITIESPEL'], [vPositiespel]);

                  inc(vPlayerChanged);
                end;

                if (DoChangeValue(vDbPlayer.PotPassen, vPassenPot, vDbPlayer.KarakterHTYC)) then
                begin
                  FCurCheckVaardigheid := 'Passen (pot)';
                  UpdateFieldValue(ibdbHTInfo, nil, 'KARAKTER_PROFIEL', ['ID'], [vDbPlayer.KarakterID],
                    ['POT_PASSEN'], [vPassenPot]);

                  inc(vChanged);
                end;

                if (DoChangeValue(vDBPlayer.CurPassen, vPassen, FALSE)) then
                begin
                  FCurCheckVaardigheid := 'Passen';
                  UpdateFieldValue(ibdbHTInfo, nil, 'JEUGDSPELERS', ['PLAYER_ID'], [vPlayerID],
                    ['PASSEN'], [vPassen]);

                  inc(vPlayerChanged);
                end;

                if (DoChangeValue(vDBPlayer.PotVleugelspel, vVleugelspelPot, vDbPlayer.KarakterHTYC)) then
                begin
                  FCurCheckVaardigheid := 'Vleugelspel (pot)';
                  UpdateFieldValue(ibdbHTInfo, nil, 'KARAKTER_PROFIEL', ['ID'], [vDbPlayer.KarakterID],
                    ['POT_VLEUGELSPEL'], [vVleugelspelPot]);

                  inc(vChanged);
                end;

                if (DoChangeValue(vDBPlayer.CurVleugelspel, vVleugelspel, FALSE)) then
                begin
                  FCurCheckVaardigheid := 'Vleugelspel';
                  UpdateFieldValue(ibdbHTInfo, nil, 'JEUGDSPELERS', ['PLAYER_ID'], [vPlayerID],
                    ['VLEUGELSPEL'], [vVleugelspel]);

                  inc(vPlayerChanged);
                end;

                if (DoChangeValue(vDbPlayer.PotVerdedigen, vVerdedigenPot, vDbPlayer.KarakterHTYC)) then
                begin
                  FCurCheckVaardigheid := 'Verdedigen (pot)';
                  UpdateFieldValue(ibdbHTInfo, nil, 'KARAKTER_PROFIEL', ['ID'], [vDbPlayer.KarakterID],
                    ['POT_VERDEDIGEN'], [vVerdedigenPot]);

                  inc(vChanged);
                end;

                if (DoChangeValue(vDbPlayer.CurVerdedigen, vVerdedigen, FALSE)) then
                begin
                  FCurCheckVaardigheid := 'Verdedigen';
                  UpdateFieldValue(ibdbHTInfo, nil, 'JEUGDSPELERS', ['PLAYER_ID'], [vPlayerID],
                    ['VERDEDIGEN'], [vVerdedigen]);

                  inc(vPlayerChanged);
                end;

                if (DoChangeValue(vDbPlayer.PotScoren, vScorenPot, vDbPlayer.KarakterHTYC)) then
                begin
                  FCurCheckVaardigheid := 'Scoren (pot)';
                  UpdateFieldValue(ibdbHTInfo, nil, 'KARAKTER_PROFIEL', ['ID'], [vDbPlayer.KarakterID],
                    ['POT_SCOREN'], [vScorenPot]);

                  inc(vChanged);
                end;

                if (DoChangeValue(vDbPlayer.CurScoren, vScoren, FALSE)) then
                begin
                  FCurCheckVaardigheid := 'Scoren';
                  UpdateFieldValue(ibdbHTInfo, nil, 'JEUGDSPELERS', ['PLAYER_ID'], [vPlayerID],
                    ['SCOREN'], [vScoren]);

                  inc(vPlayerChanged);
                end;

                if (DoChangeValue(vDbPlayer.PotSpelhervatten, vSpelhervattenPot, vDbPlayer.KarakterHTYC)) then
                begin
                  FCurCheckVaardigheid := 'Spelhervatten (pot)';
                  UpdateFieldValue(ibdbHTInfo, nil, 'KARAKTER_PROFIEL', ['ID'], [vDbPlayer.KarakterID],
                    ['POT_SPELHERVATTEN'], [vSpelhervattenPot]);

                  inc(vChanged);
                end;

                if (DoChangeValue(vDbPlayer.CurSpelhervatten, vSpelhervatten, FALSE)) then
                begin
                  FCurCheckVaardigheid := 'Spelhervatten';
                  UpdateFieldValue(ibdbHTInfo, nil, 'JEUGDSPELERS', ['PLAYER_ID'], [vPlayerID],
                    ['SPELHERVATTEN'], [vSpelhervatten]);

                  inc(vPlayerChanged);
                end;

                if (DoChangeValue(vDbPlayer.Allround, vAllround, vDbPlayer.KarakterHTYC, 7)) then
                begin
                  FCurCheckVaardigheid := 'Allround';
                  UpdateFieldValue(ibdbHTInfo, nil, 'KARAKTER_PROFIEL', ['ID'], [vDbPlayer.KarakterID],
                    ['ALLROUND'], [vAllround]);

                  inc(vChanged);
                end;

                if (vChanged > vCurChanged) and (vDbPlayer.LastKarakterUpdate > FStartParsing) then
                begin
                  FChangeLog.Add(Format('Karakter ID %d changed again',[vDbPlayer.KarakterID]));
                end;
              end;
            end;
          end;
          inc(vCountNotChecked);

          if ((FNoTalentCheck) and (Pos(UpperCase('VERWIJDERD'),UpperCase(vExcelFunctions.CurrentWorksheet.Name)) = 0) and
            (Pos(UpperCase('GEPROMOVEERD'),UpperCase(vExcelFunctions.CurrentWorksheet.Name)) = 0) and
            (vDbPlayer.GeboorteDatum >= Date - 2* 16 * 7))
            or
            ((FNoTalentCheck) and (vCountNotChecked > 50)) then
          begin
            vDbPlayer.TestNTAsPossibleU20 := TRUE;
            
            vTalented := vDbPlayer.PossibleTalented;
            if (not vTalented) or (vCountNotChecked > 50) then
            begin
              if ((vDbPlayer.LastPlayerUpdate < Date) or (vCountNotChecked > 50)) and (GetJeugdspelerInfoByID(vDbPlayer.ID, vDbPlayer.TeamID, vDbPlayer.Naam,
                TRUE, vDbPlayer.Keeper, TRUE)) then
              begin
                vTalented := vDbPlayer.PossibleTalented;
                vCountNotChecked := 0;
              end;

              if not vTalented  then
              begin
                vNoTalentList.Add(Format('[youthplayerid=%d] %s %s',
                  [vDBPlayer.ID, vDBPlayer.Naam, vDBPlayer.Potentie]));
              end;
            end;
          end;
        finally
          vDbPlayer.Free;
        end;
      end;

      vFormVoortgang.StepIt;
    end;

    if (vNoTalentList.Count > 0) then
    begin
      FErrorList.Add('');
      FErrorList.Add('Afwijzen');
      FErrorList.Add('');
      for i:=0 to vNoTalentList.Count - 1 do
      begin
        FErrorList.Add(vNoTalentList[i]);
      end;
    end;
  finally
    vNoTalentList.free;
  end;
  FChangeLog.Add(Format('%s: %d changes',[vExcelFunctions.CurrentWorksheet.Name, vChanged + vPlayerChanged]));
end;

function TfrmHTScanner.DoChangeValue(aOldValue, aNewValue: double; aIsHTYC: boolean; aMax: double = 8.1):boolean;
begin
  result := FALSE;

  if (aNewValue > 0) and (aNewValue <= aMax) then
  begin
    if (aOldValue = 0) then
    begin
      // Aanpassen als er een waarde staat
      result := TRUE;
    end
    else
    begin
      if (aIsHTYC) then
      begin
        // Als de oude waarde uit HTYC komt, alleen aanpassen als het subnivo hoger ligt.
        result := (aNewValue > aOldValue) and (Floor(aNewValue) = Floor(aOldValue));
      end
      else
      begin
        // Afwijkend t.o.v. de database, aanpassen dus.
        if (Floor(aNewValue) = Floor(aOldValue)) then
        begin
          // Subskill naar boven aanpassen
          result := (aNewValue > aOldValue);
        end
        else
        begin
          result := TRUE;
        end;
      end;
    end;
  end;

  if not(result) and (aNewValue > 0) and (Floor(aNewValue) <> Floor(aOldValue)) then
  begin
    mLogging.Lines.Add(Format('%s: %s NO %.2f to %.2f',[FCurCheckPlayer, FCurCheckVaardigheid,
      aOldValue, aNewValue]));
  end;
end;

procedure TfrmHTScanner.btnTestClick(Sender: TObject);
procedure ScoutPlayers(aKarakterID: Integer);
begin
  with uHTDb.CreateSQL(ibdbHTInfo, '') do
  begin
    try
      with SQL do
      begin
        Add('SELECT J.*');
        Add('FROM JEUGDSPELERS J');
        Add('LEFT JOIN KARAKTER_PROFIEL P ON (J.KARAKTER_ID = P.ID)');
        Add('WHERE J.PROMOTED = -1 AND CAST(J.LAST_UPDATE AS DATE) = CURRENT_DATE AND');
        Add('COALESCE(P.SPECIALITEIT,'''') = ''''');
      end;
      ExecQuery;
      while not EOF do
      begin
        GetJeugdspelerInfoByID(FieldByName('PLAYER_ID').asInteger,
          FieldByName('TEAM_ID').asInteger,FieldByName('PLAYER_NAME').asString,
          TRUE,FALSE,TRUE);
        Next;
      end;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

begin
  //ThreadBrowseTo('http://www.dutchscouts.nl/web/NTSpy.php');

  SendStatusMail('Test',TRUE);
  ShowMessage(IntToStr(StrToInt('A')));
end;

function TfrmHTScanner.VertaalPositie(aPosition:String):String;
begin
  result := aPosition;
  if (aPosition = 'Winger') then
  begin
    result := 'LVL';
  end
  else if (aPosition = 'Inner') then
  begin
    result := 'CM';
  end
  else if (aPosition = 'Back winger') then
  begin
    result := 'RV';
  end
  else if (aPosition = 'Keeper') then
  begin
    result := 'K';
  end
  else if (aPosition = 'Central defender') then
  begin
    result := 'CV';
  end
  else if (aPosition = 'Forward') then
  begin
    result := 'A';
  end;
end;

function TfrmHTScanner.VertaalInstructie(aInstruction:String):String;
begin
  result := 'normaal';
  if (aInstruction = 'Off.') then
  begin
    result := 'aanvallend';
  end
  else if (aInstruction = 'T.Mid.') then
  begin
    result := 'naar het midden';
  end
  else if (aInstruction = 'Def.') then
  begin
    result := 'verdedigend';
  end;
end;

function TfrmHTScanner.VertaalSpecialiteit(aSpeciality:String):String;
begin
  result := '';
  if (aSpeciality <> '') and (aSpeciality <> '-') then
  begin
    result := aSpeciality;

    if (aSpeciality = 'Powerfull') then
    begin
      result := 'Krachtig';
    end
    else if (aSpeciality = 'Unpredictable') then
    begin
      result := 'Onvoorspelbaar';
    end
    else if (aSpeciality = 'Head specialist') then
    begin
      result := 'Koppen';
    end
    else if (aSpeciality = 'Quick') then
    begin
      result := 'Snel';
    end else if (aSpeciality = 'Technical') then
    begin
      result := 'Technisch';
    end;
  end;
end;

function TfrmHTScanner.LoadBigScoutPlayers(aSilent:boolean;aFileName:String; var aError: boolean; var
  aRows: integer; var aBekend: integer):integer;
const
  COL_PLAYERID = 'B';
  COL_PLAYERNAME = 'D';
  COL_MATCHID = 'I';
  COL_SPEC = 'J';
  COL_TEAMID = 'G';
  COL_POSITION = 'K';
  COL_STARS = 'M';
  COL_INSTRUCTIE = 'L';

var
  vExcelFunctions: TExcelFunctions;
  vCount, i, vPlayerID, vMatchID, vAantalSheets, vAantalRows, vID: integer;
  vFormVoortgang: TfrmVoortgang;
  vWedstrijd:TWedstrijd;
  vSpeler:TJeugdspeler;
  vGo:boolean;
begin
  result := 0;
  aBekend := 0;
  vGo := TRUE;
  aError := FALSE;
  aRows := 0;
  FLastPlayerID := 0;

  vFormVoortgang := TfrmVoortgang.Create(nil,0);
  vFormVoortgang.Melding := 'Importeren BigScout players...';
  try
    vExcelFunctions := TExcelFunctions.Create(OfficeType);
    with vExcelFunctions do
    begin
      try
        try
          Open(aFileName);
        except
          on E:Exception do
          begin
            vGo := FALSE;
            aError := TRUE;
            if not(aSilent) then
            begin
              MessageBoxError(E.Message,'HTScanner');
            end;
          end;
        end;
        if (vGo) then
        begin
          try
            vAantalSheets := SheetCount;
            for vCount := 1 to vAantalSheets do
            begin
              SetWorksheetActive(vCount);
              vAantalRows := RowCount['B'];

              vFormVoortgang.Max := vAantalRows;
              vFormVoortgang.Progress := 1;
              aRows := Max(0,vAantalRows - 1);

              lblStatus.Caption := Format('0/%d',[vAantalRows - 1]);

              for i := 2 to vAantalRows do
              begin
                vPlayerID := AnyStrToInt(vExcelFunctions.GetCellValueAsString(Format('%s%d', [COL_PLAYERID,i])));
                vMatchID :=  AnyStrToInt(vExcelFunctions.GetCellValueAsString(Format('%s%d', [COL_MATCHID,i])));
                if (i=2) then
                begin
                  if (vPlayerID <> FLastPlayerID) then
                  begin
                    FLastPlayerID := vPlayerID;
                  end
                  else
                  begin
                    aError := TRUE;
                  end;
                  StatusBar1.Panels[5].Text := IntToStr(vPlayerID);
                  StatusBar1.Update;
                end;
                vID := GetFieldValue(ibdbHTInfo,'JEUGD_PRESTATIES',['PLAYER_ID','MATCH_ID'],
                  [vPlayerID,vMatchID],'ID',srtInteger,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));

                if (vID = 0) then
                begin
                  inc(result);

                  lblStatus.Caption := Format('%d/%d',[result,vAantalRows - 1]);

                  vWedstrijd := TWedstrijd.Create('-1',IntToStr(vMatchID));
                  try
                    vWedstrijd.SpeelDatum := Date;
                    vWedstrijd.MainLeagueID := -1;

                    vSpeler := TJeugdSpeler.Create;
                    vSpeler.ID := IntToStr(vPlayerID);
                    vSpeler.TeamID := AnyStrToInt(vExcelFunctions.GetCellValueAsString(Format('%s%d', [COL_TEAMID,i])));
                    vSpeler.Naam := vExcelFunctions.GetCellValueAsString(Format('%s%d', [COL_PLAYERNAME,i]));
                    vSpeler.Specialiteit := VertaalSpecialiteit(vExcelFunctions.GetCellValueAsString(Format('%s%d', [COL_SPEC,i])));
                    vSpeler.Sterren :=  vExcelFunctions.GetCellValueAsNumber(Format('%s%d', [COL_STARS,i]));
                    vSpeler.Positie := VertaalPositie(vExcelFunctions.GetCellValueAsString(Format('%s%d', [COL_POSITION,i])));
                    vSpeler.Instructie := VertaalInstructie(vExcelFunctions.GetCellValueAsString(Format('%s%d', [COL_INSTRUCTIE,i])));


                    vWedstrijd.Spelers.Add(vSpeler);

                    SaveWedstrijd(vWedstrijd, CompetitieReeks);
                  finally
                    vWedstrijd.Free;
                  end;
                end
                else
                begin
                  inc(aBekend);
                end;

                Application.ProcessMessages;
                vFormVoortgang.StepIt;
              end;
            end;
          finally
            // Sluit file
            CloseActiveWorkbook(FALSE);
            //ShowMessage(IntToStr(vPlayerID));
          end;
        end;
      finally
        Free;
      end;
    end;
  finally
    vFormVoortgang.Release;
  end;

  if (aError) then
  begin
    aBekend := 0;
  end;
end;

function TfrmHTScanner.GetTotalPlayers(aReeks:integer):integer;
begin
  with uHTDb.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
  begin
    try
      SQL.Add('SELECT');
      SQL.Add('COUNT(DISTINCT(P.PLAYER_ID)) AANTAL');
      SQL.Add('FROM JEUGD_PRESTATIES P');
      SQL.Add('LEFT JOIN JEUGDSPELERS J ON (P.PLAYER_ID = J.PLAYER_ID)');
      SQL.Add('WHERE');
      SQL.Add('P.JEUGD_COMPETITIES_ID = :ID AND');
      SQL.Add('J.PLAYER_ID IS NULL AND');
      SQL.Add('P.STERREN >= 6.0');

      ParamByName('ID').asInteger := aReeks;
      ExecQuery;

      result := FIeldByName('AANTAL').asInteger;
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.ScoutBigScoutPlayers(aReeks:integer);
var
  vFileName, vPath, vXLSFiles, vTitle:String;
  vFiles:TSearchRec;
  vCount, vSubCount, vTotaalBekend, vBekend, vNewCount, i, vPos, vRows, vSterren, vResult, vTotalPlayers: integer;
  vAuto, vDoorgaan, vError, vDoExporteren:boolean;
  vURL, vNextURL: String;
  vLinks: Variant;
begin
  CompetitieReeks := aReeks;
  FOpnieuw := FALSE;
  btnStopScouting.Visible := ivAlways;
  InitScanResults;

  vDoExporteren := GetFieldValue(ibdbHTInfo,'JEUGD_COMPETITIES',['ID'],[aReeks],'EXPORTEREN',srtInteger,
    svtNormal, uHattrick.CreateReadTransaction(ibdbHTInfo)) = -1;

  vPath := ExtractFilePath(Application.ExeName)+'BigScout\';
  IEDownload1.DownloadFolder := vPath;

  vAuto := (MessageBox(Handle,PChar('TBS files automatisch downloaden?'),
    PChar('Hattrick scanner'),MB_ICONINFORMATION + MB_YESNO) = ID_YES);

  if (vAuto) then
  begin
    vURL := GetFieldValue(ibdbHTInfo,'JEUGD_COMPETITIES',['ID'],[aReeks],'TBS_URL',srtString,
      svtNormal, uHattrick.CreateReadTransaction(ibdbHTInfo));

    if (vURL <> '') then
    begin
      vSterren := GetFieldValue(ibdbHTInfo,'JEUGD_COMPETITIES',['ID'],[aReeks],'COALESCE(MIN_RATING,6)',srtInteger,
        svtNormal, uHattrick.CreateReadTransaction(ibdbHTInfo));

      pgctrlLijst.ActivePage := tbTSI;
      if (vURL <> TSIBrowser.LocationURL) then
      begin
        BrowseTo(TSIBrowser,vURL);
      end;
      
      SetValue(TSIBrowser,['resultperpag'],'500');
      SetValue(TSIBrowser,['estrellas'],Format('%d',[vSterren * 10]));
      TSIBrowser.oleobject.document.forms.item(1).submit();
      StreamToMemo(TSIBrowser);
      while not (FTSIBrowserDocumentCompleted) do
      begin
        Sleep(2000);
        Application.ProcessMessages;
      end;

      vLinks := TSIBrowser.OLEObject.Document.Links;
      vNextURL := '';
      if not(VarIsClear(vLinks)) then
      begin
        for i:=0 to vLinks.Length -1 do
        begin
          vUrl := Trim(vLinks.Item(i).toString);
          vPos := Pos('.XLS', UpperCase(vUrl));
          if (vPos > 0) then
          begin
            vXLSFiles := vURL;
          end;

          vTitle := vLinks.Item(i).getAttribute('title');
          if (vTitle = 'Next page') then
          begin
            vNextURL := Trim(vLinks.Item(i).toString);
          end;
        end;
      end;

      IEDownload1.Go(vXLSFiles,'',vPath);

      while not (FTSIBrowserDocumentCompleted) do
      begin
        Application.ProcessMessages;
      end;
    end
    else
    begin
      vAuto := FALSE;
    end;
  end;

  try
    CurScan := Format('TBS %s %d',[FormatDateTime('mmmm',Date),esbDates.ThisYear]);


    vCount := 0;
    vBekend := 0;
    vTotaalBekend := 0;
    vDoorgaan := vAuto and (vXLSFiles <> '');

    repeat
      if FindFirst(vPath+'*.xls',faAnyFile,vFiles) = 0 then
      begin
        try
          repeat
            vFileName := vFiles.Name;
            vSubCount := LoadBigScoutPlayers(vAuto, vPath + vFileName, vError, vRows, vBekend);
            vCount := vCount + vSubCount;
            vTotaalBekend := vTotaalBekend + vBekend;

            if CopyFile(PChar(vPath + vFileName),PChar(vPath + 'Imported\'+ vFileName),FALSE) then
            begin
              DeleteFile(vPath + vFileName);
            end;
          until FindNext(vFiles) <> 0;
        finally
          FindClose(vFiles);
        end;

        if (vAuto) then
        begin
          vURL := vNextURL;

          if (vError) or (vRows <= 0) then
          begin
            vURL := FTSIBrowserUrl;
            vNextURL := vURL;
          end;

          if (vNextURL = '') then
          begin
            vDoorgaan := FALSE;
          end
          else
          begin
            vNextURL := '';
            vDoorgaan := TRUE;
            BrowseTo(TSIBrowser, vURL, 120);
            while not (FTSIBrowserDocumentCompleted) do
            begin
              Sleep(2000);
              Application.ProcessMessages;
            end;

            vLinks := TSIBrowser.OLEObject.Document.Links;
            if not(VarIsClear(vLinks)) then
            begin
              for i:=0 to vLinks.Length -1 do
              begin
                vUrl := Trim(vLinks.Item(i).toString);
                vPos := Pos('.XLS', UpperCase(vUrl));
                if (vPos > 0) then
                begin
                  vXLSFiles := vURL;
                end;

                vTitle := vLinks.Item(i).getAttribute('title');
                if (vTitle = 'Next page') then
                begin
                  vNextURL := Trim(vLinks.Item(i).toString);
                end;
              end;
            end;

            IEDownload1.Go(vXLSFiles,'',vPath);

            while not (FTSIBrowserDocumentCompleted) do
            begin
              Application.ProcessMessages;
            end;
          end;
        end
      end;

      if (vAuto) then
      begin
        if btnStopScouting.Down then
        begin
          vDoorgaan := FALSE;
        end;
      end
      else if not(vAuto) then
      begin
        vDoorgaan := (MessageBox(Handle,PChar('Doorgaan met scouten?'),PChar('Hattrick Scanner'),MB_ICONINFORMATION + MB_YESNO) = ID_YES);
      end;
    until not (vDoorgaan);

    vNewCount := 0;

    if (vCount > 0) then
    begin
      vTotalPlayers := GetTotalPlayers(aReeks);

      ExecSQL(ibdbHTInfo,'INSERT INTO COMPETITIES_SCANNED (ID, SCAN_DATE, JEUGD_COMPETITIES_ID, TOTAL_PLAYERS) '+
        'VALUES (GEN_ID(GEN_COMP_SCANNED,1),CURRENT_TIMESTAMP,:ID,:TOTAAL)',
        ['ID','TOTAAL'],[aReeks, vTotalPlayers]);
    end;

    vResult := MessageBox(Handle,PChar(Format('%d/%d nieuwe prestaties ingeladen!'+#13+#13+
      'Spelersinfo ophalen?',[vCount,vCount + vTotaalBekend])),PChar('Hattrick scanner'),MB_ICONINFORMATION + MB_YESNO);

    pgctrlLijst.ActivePage := tbBrowser;


    if (vResult = ID_YES) then
    begin

      if (aReeks = -1) and ((AutoStart) or (MessageBoxQuestion('U17 Docs inlezen?','Hattrick Scanner'))) then
      begin
        btnParseU17DocsClick(btnParseU17Docs);
      end;

      ScoutJeugdTalents(CompetitieReeks);

      if not(btnStopScouting.Down) and (vDoExporteren) then
      begin
        if (AutoStart) or (MessageBox(Handle,PChar('TBS run voorbereiden?'),PChar('Hattrick scanner'),MB_ICONINFORMATION + MB_YESNO) = ID_YES) then
        begin
          PrepareTBSRun(aReeks);
        end;
        if (AutoStart) or (MessageBoxQuestion('Inclusief onbekende specialiteiten?','HTScanner')) then
        begin
          vCount := ExtractPlayersToCSV(CompetitieReeks, TRUE, 0);
          FOpnieuw := TRUE;
        end
        else
        begin
          vCount := ExtractPlayersToCSV(CompetitieReeks, FALSE, 0);
        end;

        if (FOpnieuw) then
        begin
          if not(AutoStart) then
          begin
            ShowMessage('Spelers opnieuw exporteren, door wijzigingen in de specialiteiten!');
          end;
          vNewCount := ExtractPlayersToCSV(CompetitieReeks, FALSE, 0);
        end;
      end;
    end;

    if (vNewCount > 0) then
    begin
      ShowMessage(Format('%d spelers te posten (%d afgevallen)!',[vNewCount, vCount - vNewCount]));
    end
    else
    begin
      ShowMessage(Format('%d spelers te posten!',[vCount]));
    end;
  finally
     btnStopScouting.Visible := ivAlways;
  end;
end;

procedure TfrmHTScanner.btnBigScoutClick(Sender: TObject);
var
  aReeks:integer;
  aComp: String;
begin
  aReeks := formKiesJeudcompetities.KiesCompetitieReeks(ibdbHTInfo,TRUE,aComp);
  if (aReeks < 0) then
  begin
    ScoutBigScoutPlayers(aReeks);
  end;
end;

procedure TfrmHTScanner.DoMiniTBS;
var
  vCount: Integer;
begin
  btnStopScouting.Visible := ivAlways;
  if MessageBoxQuestion('TBS Run voorbereiden?','HTScanner') then
  begin
    PrepareTBSRun(-1);
  end;
  
  CurScan := 'Mini-TBS ' + FormatDateTime('mmmm yyyy',Date);

  ExtractPlayersToCSV(-1, TRUE, 0, TRUE);
  vCount := ExtractPlayersToCSV(-1, TRUE, 0);

  ShowMessage(Format('%d spelers gepost!',[vCount]));
end;

procedure TfrmHTScanner.btnPlayerInfoClick(Sender: TObject);
begin
  if not (Quadspeed1.Checked) then
  begin
    Quadspeed1Click(nil);
  end;
  
  ToonPlayerInfoScreen;
end;

procedure TfrmHTScanner.ToonPlayerInfoScreen;
begin
  with TfrmPlayerINfo.Create(nil) do
  begin
    try
      ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfrmHTScanner.btnAddToKoopBotClick(Sender: TObject);
var
  vPlayerIDStr,
  vMaxPrijsStr: String;
  vPlayerID,
  vMaxPrijs: integer;
  vTSISet: TTSISet;
begin
  InputQuery('Speler-ID', 'Voer de speler-ID in', vPlayerIDStr);

  vPlayerID := AnyStrToInt(vPlayerIDStr);
  if (vPlayerID > 0) then
  begin
    BrowseToPlayer(vPlayerID);

    vTSISet := ParsePlayerInfo;
    try
      InputQuery('Maximaal bod', 'Voer het maximale bod in', vMaxPrijsStr);

      vMaxPrijs := AnyStrToInt(vMaxPrijsStr);

      if (vMaxPrijs > 0) then
      begin
        SaveKoopje(SaveScouting(vTSISet, TRUE), vTSISet.PlayerID, vMaxPrijs,
          Ceil(Max(vTSISet.VraagPrijs, vTSISet.HoogsteBod)), vMaxPrijs, vTSISet.DeadLine, 8);
      end;
    finally
      vTSISet.Free;
    end;
  end;
end;

procedure TfrmHTScanner.btnWarpspeedClick(Sender: TObject);
begin
  btnWarpspeed.Checked := not (btnWarpspeed.Checked);
  if (btnWarpspeed.Checked) then
  begin
    btnDoubleSpeed.Checked := FALSE;
    btnTripleSpeed.Checked := FALSE;
    Quadspeed1.Checked := FALSE;
  end;
end;

procedure TfrmHTScanner.btnDoubleSpeedClick(Sender: TObject);
begin
  btnDoubleSpeed.Checked := not(btnDoubleSpeed.Checked);

  if (btnDoubleSpeed.Checked) then
  begin
    btnWarpspeed.Checked := FALSE;
    btnTripleSpeed.Checked := FALSE;
    Quadspeed1.Checked := FALSE;
  end;
end;

procedure TfrmHTScanner.btnAgeTestClick(Sender: TObject);
var
  i, vMax:integer;
  vSub: String;
  vWeeks:integer;
begin
  if GetU20Leeftijden then
  begin
    vWeeks := WeeksApart(StrTODate(START_SEIZOEN),EncodeDate(2010,8,15));

    ShowMessage(IntToStr(vWeeks));


    vMax := 1 + (High(FLeeftijden) + 2);

    for i:=2 to vMax do
    begin
      GetFilter(i, vSub);
      ShowMessage(vSub);
    end;
  end;
end;

procedure TfrmHTScanner.WriteScanResults(aKarakterID: Integer;aTeken:String);
var
  vPerc:double;
  vAantal : integer;
begin
  if (FIsU20) then
  begin
    StatusBar1.Panels[1].Text := 'U20';
  end
  else
  begin
    StatusBar1.Panels[1].Text := 'NT';
  end;

  if (aKarakterID <> 0) then
  begin
    FLastKarakterID := aKarakterID;
  end;

  if (FLastKarakterID > 0) then
  begin
    vAantal := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
      ['KARAKTER_ID'],[FLastKarakterID],'ID',srtInteger,svtCount,
      uHattrick.CreateReadTransaction(ibdbHTInfo));
  end
  else
  begin
    vAantal := 0
  end;

  if (FBekendeSpelers + FOnbekendeSpelers) > 0 then
  begin
    vPerc := FBekendeSpelers / (FBekendeSpelers + FOnbekendeSpelers) * 100;
  end
  else
  begin
    vPerc := 0;
  end;


  StatusBar1.Panels[4].Text :=
    Format('Bekend %d / Onbekend %d (%.2f%%) [Specs ontdekt %d] [%d gepromoveerd / %d listed] %s [%d*] [spec: %s / %s]',
      [FBekendeSpelers, FOnbekendeSpelers, vPerc, FSpecOntdekt, FJeugdSpelerRestored, FTransferListed, aTeken, vAantal, FCurSpec, FCurLeiderschap]);
end;

procedure TfrmHTScanner.SetBekendeSpelers(const Value: integer);
begin
  FBekendeSpelers := Value;
  WriteScanResults(0,'+');
end;

procedure TfrmHTScanner.SetOnbekendeSpelers(const Value: integer);
begin
  FOnbekendeSpelers := Value;
  WriteScanResults(0,'-');
end;

procedure TfrmHTScanner.SetSpecOntdekt(const Value: integer);
begin
  FSpecOntdekt := Value;
  WriteScanResults(0,'!');
end;

procedure TfrmHTScanner.SetJeugdSpelerRestored(const Value: integer);
begin
  FJeugdSpelerRestored := Value;
  WriteScanResults(0,'@');
end;

procedure TfrmHTScanner.SetCurSpec(const Value: String);
begin
  if (Value = '') then
    FCurspec := '?'
  else
    FCurSpec := Value;
end;

procedure TfrmHTScanner.SetDownloadErrors(const Value: integer);
begin
  FDownloadErrors := Value;
  StatusBar1.Panels[5].Text := Format('%d errors',[Value]);
end;

procedure TfrmHTScanner.VerwerkNTDoc(aDoc:String; aISU20:boolean);
var
  vExcelFunctions: TExcelFunctions;
  vAantalSheets, vCount:integer;
begin
  vExcelFunctions := TExcelFunctions.Create(OfficeType);

  with vExcelFunctions do
  begin
    try
      Open(aDoc);
      try
        vAantalSheets := ExcelApp.ActiveWorkbook.Worksheets.Count;

        if (aIsU20) then
        begin
          vAantalSheets := vAantalSheets - 1;
        end;

        for vCount := 1 to vAantalSheets - 1 do
        begin
          ExcelApp.ActiveWorkbook.Worksheets[vCount].Activate;
          VerwerkNTTabsheet(vExcelFunctions, vCount, aIsU20);
        end;
      finally
        // Sluit file
        CloseActiveWorkbook(FALSE);
      end;
    finally
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.VerwerkNTTabsheet(vExcelFunctions: TExcelFunctions;
  aTabIndex:integer; aIsU20:boolean);
var
  vAantalRows, vCount:Integer;
  vFormVoortgang: TfrmVoortgang;

  vPlayerID, vID, vTeamID, vConditie, vKeepen, vPos, vPas, vVleugel, vDef, vSc,
  vSH, vXP, vLeider: integer;
  vLastUpdate, vGeboorteDatum, vLastPop:TDate;
  vNaam, vSpec:String;
  vVerwijderd: boolean;
begin
  vExcelFunctions.ExcelApp.ActiveSheet.Range['A1'].Select;

  vAantalRows := vExcelFunctions.ExcelApp.ActiveSheet.UsedRange.Rows.Count;

  vFormVoortgang := TFrmVoortgang.Create(nil,vAantalRows);
  try
    vFormVoortgang.Melding := Format('Bezig met inlezen %s...',[vExcelFunctions.ExcelApp.ActiveSheet.Name]);

    vVerwijderd := vExcelFunctions.ExcelApp.ActiveSheet.Name = 'Verwijderd';

    for vCount := 2 to vAantalRows do
    begin
      vPlayerID := vExcelFunctions.GetCellRange(Format('B%d', [vCount]));

      if (vPlayerID > 0) then
      begin
        if (aIsU20) then
        begin
          vNaam := VarToStr(vExcelFunctions.GetCellRange(Format('A%d', [vCount])));
          vTeamID := vExcelFunctions.GetCellRange(Format('C%d', [vCount]));
          try
            vLastUpdate := VarToDateTime(vExcelFunctions.GetCellRange(Format('G%d', [vCount])));
          except
            vLastUpdate := 0;
          end;
          vGeboorteDatum := VarToDateTime(vExcelFunctions.GetCellRange(Format('K%d', [vCount]))) - 2 * (16 * 7);
          vSpec := VarToStr(vExcelFunctions.GetCellRange(Format('N%d', [vCount])));
          vSpec := uHattrick.FormatSpecialiteit(vSpec);
          vConditie := vExcelFunctions.GetCellRange(Format('O%d', [vCount]));
          vKeepen := vExcelFunctions.GetCellRange(Format('P%d', [vCount]));
          vPos := vExcelFunctions.GetCellRange(Format('Q%d', [vCount]));
          vPas := vExcelFunctions.GetCellRange(Format('R%d', [vCount]));
          vVleugel := vExcelFunctions.GetCellRange(Format('S%d', [vCount]));
          vDef := vExcelFunctions.GetCellRange(Format('T%d', [vCount]));
          vSc := vExcelFunctions.GetCellRange(Format('U%d', [vCount]));
          vSH := vExcelFunctions.GetCellRange(Format('V%d', [vCount]));
          vXP := vExcelFunctions.GetCellRange(Format('W%d', [vCount]));
          vLeider := vExcelFunctions.GetCellRange(Format('X%d', [vCount]));
          vLastPop := vLastUpdate;
        end
        else
        begin
          vNaam := VarToStr(vExcelFunctions.GetCellRange(Format('A%d', [vCount])));
          vTeamID := vExcelFunctions.GetCellRange(Format('C%d', [vCount]));
          vLastUpdate := VarToDateTime(vExcelFunctions.GetCellRange(Format('G%d', [vCount])));
          vGeboorteDatum := VarToDateTime(vExcelFunctions.GetCellRange(Format('O%d', [vCount]))) - 2 * (16 * 7);
          vSpec := VarToStr(vExcelFunctions.GetCellRange(Format('R%d', [vCount])));
          vSpec := uHattrick.FormatSpecialiteit(vSpec);
          vConditie := vExcelFunctions.GetCellRange(Format('S%d', [vCount]));
          vKeepen := vExcelFunctions.GetCellRange(Format('T%d', [vCount]));
          vPos := vExcelFunctions.GetCellRange(Format('U%d', [vCount]));
          vPas := vExcelFunctions.GetCellRange(Format('V%d', [vCount]));
          vVleugel := vExcelFunctions.GetCellRange(Format('W%d', [vCount]));
          vDef := vExcelFunctions.GetCellRange(Format('X%d', [vCount]));
          vSc := vExcelFunctions.GetCellRange(Format('Y%d', [vCount]));
          vSH := vExcelFunctions.GetCellRange(Format('Z%d', [vCount]));
          vXP := vExcelFunctions.GetCellRange(Format('AA%d', [vCount]));
          vLeider := vExcelFunctions.GetCellRange(Format('AB%d', [vCount]));
          vLastPop := VarToDateTime(vExcelFunctions.GetCellRange(Format('AE%d', [vCount])));
        end;

        vID := GetFieldValue(ibdbHTInfo,'NT_SCOUTING',
          ['PLAYER_ID'],[vPlayerID],'ID',srtInteger, svtNormal,
          uHattrick.CreateReadTransaction(ibdbHTInfo));

        if (vID = 0) then
        begin
          ExecSQL(ibdbHTInfo,
            'INSERT INTO NT_SCOUTING(ID,PLAYER_ID,PLAYER_NAME,TEAM_ID,LAST_UPDATE,GEBOORTE_DATUM,SPECIALITEIT,CONDITIE,KEEPEN,POSITIESPEL,PASSEN,VLEUGELSPEL,VERDEDIGEN,SCOREN,SPELHERVATTEN,ERVARING,LEIDERSCHAP,TABSHEET,TAB_INDEX,LAST_SKILLUP, U20) VALUES'+#13+
            '(GEN_ID(GEN_NT_SCOUTING_ID,1),:PLAYER_ID,:PLAYER_NAME,:TEAM_ID,:LAST_UPDATE,:GEBOORTE_DATUM,:SPECIALITEIT,:CONDITIE,:KEEPEN,:POSITIESPEL,:PASSEN,:VLEUGELSPEL,:VERDEDIGEN,:SCOREN,:SPELHERVATTEN,:ERVARING,:LEIDERSCHAP,:TABSHEET,:TAB_INDEX,'+
            ':LAST_SKILLUP,:U20)',
            ['PLAYER_ID','PLAYER_NAME','TEAM_ID','LAST_UPDATE','GEBOORTE_DATUM','SPECIALITEIT','CONDITIE','KEEPEN','POSITIESPEL','PASSEN','VLEUGELSPEL','VERDEDIGEN','SCOREN','SPELHERVATTEN','ERVARING','LEIDERSCHAP','TABSHEET','TAB_INDEX','LAST_SKILLUP','U20'],
            [vPlayerID,vNaam,vTeamID,vLastUpdate,vGeboorteDatum,vSpec,vConditie,vKeepen,vPos,vPas,vVleugel,vDef,vSC,vSH,vXP,vLeider,
            vExcelFunctions.ExcelApp.ActiveSheet.Name,aTabIndex,vLastPop, Ord(aIsU20) * -1]);
        end
        else
        begin
          ExecSQL(ibdbHTInfo,
          'UPDATE NT_SCOUTING SET PLAYER_ID = :PLAYER_ID, PLAYER_NAME = :PLAYER_NAME, TEAM_ID = :TEAM_ID, LAST_UPDATE = :LAST_UPDATE,'+#13+
            'GEBOORTE_DATUM = :GEBOORTE_DATUM, SPECIALITEIT = :SPECIALITEIT, CONDITIE = :CONDITIE, KEEPEN = :KEEPEN, '+#13+
            'POSITIESPEL = :POSITIESPEL, PASSEN = :PASSEN, VLEUGELSPEL = :VLEUGELSPEL, VERDEDIGEN = :VERDEDIGEN, SCOREN = :SCOREN,'+#13+
            'SPELHERVATTEN = :SPELHERVATTEN, ERVARING = :ERVARING, LEIDERSCHAP = :LEIDERSCHAP, TABSHEET = :TABSHEET, TAB_INDEX = :TAB_INDEX, LAST_SKILLUP = :LAST_SKILLUP, U20 = :U20 WHERE ID = :ID',
           ['ID','PLAYER_ID','PLAYER_NAME','TEAM_ID','LAST_UPDATE','GEBOORTE_DATUM','SPECIALITEIT','CONDITIE','KEEPEN','POSITIESPEL','PASSEN','VLEUGELSPEL','VERDEDIGEN','SCOREN','SPELHERVATTEN','ERVARING','LEIDERSCHAP','TABSHEET','TAB_INDEX','LAST_SKILLUP','U20'],
            [vID,vPlayerID,vNaam,vTeamID,vLastUpdate,vGeboorteDatum,vSpec,vConditie,vKeepen,vPos,vPas,vVleugel,vDef,vSC,vSH,vXP,vLeider,
            vExcelFunctions.ExcelApp.ActiveSheet.Name,aTabIndex, vLastPop, Ord(aIsU20) * -1]);
        end;

        ExecSQL(ibdbHTInfo,'UPDATE SCOUTING SET IN_NT_DOCS = :IN_DOCS WHERE PLAYER_ID = :ID',
          ['ID','IN_DOCS'],[vPlayerID, Ord(not vVerwijderd) * -1]);
      end;

      vFormVoortgang.Stepit;
    end;
  finally
    vFormVoortgang.Release;
  end;
end;

procedure TfrmHTScanner.btnNTDocClick(Sender: TObject);
const
  KEY_NTDOC = '0ArhQyyT-cdtydE5RUlQ2ZUhjWVBIWmhBdHd0emctWlE';
  KEY_U20DOC ='0ArhQyyT-cdtydFlwM1gyejJKUmNWT3hhdnFqX2xOU3c';
var
  vMap:String;
  vFormVoortgang: TfrmVoortgang;
  vOk, vU20: Boolean;
  vDoc: String;
begin
  vU20 := MessageBoxQuestion('U20?','Hattrick Scanner');

  if (vU20) then
  begin
    vDoc := KEY_U20DOC;
  end
  else
  begin
    vDoc := KEY_NTDOC;
  end;


  if MessageBoxQuestion('Google Doc downloaden?','Hattrick Scanner') then
  begin

    pgctrlLijst.ActivePage := tbTSI;
    BrowseTo(TSIBrowser, 'https://docs.google.com/#all');

    StreamToMemo(TSIBrowser);

    Sleep(100);
    Application.ProcessMessages;

    while (Pos('U17', vMemo.Text) = 0) do
    begin
      Sleep(2000);

      Application.ProcessMessages;

      StreamToMemo(TSIBrowser);
    end;

    vMap := Format('%sXLS\NTDoc', [ExtractFilePath(Application.ExeName)]);
    if not (DirectoryExists(vMap)) then
    begin
      ForceDirectories(vMap);
    end;
  
    vFormVoortgang := TfrmVoortgang.Create(nil, 1);
    try
      vFormVoortgang.Melding := 'Bezig met downloaden NTDOC.XLS...';
      StatusBar1.Panels[4].Text := 'NTDoc.xlsx';

      UrlDownloadToFile(TSIBrowser,
        PChar(Format('https://spreadsheets.google.com/ccc?key=%s&output=xls', [vDoc])),
        PChar(vMap + '\NTDoc.xlsx'), 0, nil);

      vFormVoortgang.StepIt;
      vOk := FileExists(vMap + '\NTDoc.xlsx');
    finally
      vFormVoortgang.Release;
    end;

    if (vOk) then
    begin
      VerwerkNTDoc(vMap + '\NTDoc.xlsx', vU20);
    end
    else
    begin
      ShowMessage('Downloaden niet gelukt!');
    end;
  end;

  with TfrmNTScouting.Create(nil) do
  begin
    try
      U20 := vU20;

      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TfrmHTScanner.SaveScanHistorie(aSpecCount, aSpecLoos:integer);
begin
  ExecSQL(ibdbHTInfo,'UPDATE SCAN_HISTORIE SET SPECS_FOUND = :SPECS, NO_SPEC_FOUND = :NO_SPECS WHERE DATUM = :DATUM',
    ['SPECS','NO_SPECS','DATUM'],[aSpecCount, aSpecLoos, ScanDate]);
end;

procedure TfrmHTScanner.RebuildIndexes;
var
  vIndexName, vFkey: String;
  vMax: Integer;
  vVoortgang: TfrmVoortgang;
begin
  if (DayOfWeek(Date) = 7) then
  begin
    // Iedere zaterdag herindexeren
    with uHattrick.CreateSQL(ibdbHTInfo, TRUE) do
    begin
      try
        with SQL do
        begin
          Add('select count(i.rdb$index_name) aantal');
          Add('from rdb$indices i');
          Add('left outer join rdb$relation_constraints c on (i.rdb$index_name = c.rdb$index_name and c.rdb$index_name is not null)');
          Add('where (i.rdb$system_flag is null or i.rdb$system_flag = 0)');
          Add('and (i.rdb$foreign_key is not null or c.rdb$index_name is null)');
        end;
        ExecQuery;
        vMax := FieldByName('AANTAL').asInteger;
      finally
        Transaction.Commit;
        Transaction.Free;
        Free;
      end;
    end;


    vVoortgang := TfrmVoortgang.Create(nil,vMax);
    try
      with uHattrick.CreateSQL(ibdbHTInfo, TRUE) do
      begin
        try
          with SQL do
          begin
            Add('select i.rdb$index_name indexname,');
            Add('i.rdb$foreign_key fkey');
            Add('from rdb$indices i');
            Add('left outer join rdb$relation_constraints c on (i.rdb$index_name = c.rdb$index_name and c.rdb$index_name is not null)');
            Add('where (i.rdb$system_flag is null or i.rdb$system_flag = 0)');
            Add('and (i.rdb$foreign_key is not null or c.rdb$index_name is null)');
          end;
          ExecQuery;
          while not EOF do
          begin
            vIndexName := FieldByName('indexname').asTrimString;
            vFkey := FieldByName('fkey').asTrimString;

            vVoortgang.Melding := Format('Rebuilding index %s...',[vIndexName]);

            //uHattrick.SetIndexStatus(ibdbHTInfo, vIndexName , FALSE);
            uHattrick.SetIndexStatus(ibdbHTInfo, vIndexName, TRUE);
            uHattrick.SetIndexStatistics(ibdbHTInfo, vIndexName);


            vVoortgang.StepIt;
            Next;
          end;
        finally
          Transaction.Commit;
          Transaction.Free;
          Free;
        end;
      end;
    finally
      vVoortgang.Free;
    end;
  end;
end;

procedure TfrmHTScanner.WriteScanHistorie;
var
  vID: Integer;
  vSQL : TIBSQL;
begin

  vID := GetFieldValue(ibdbHTInfo,'SCAN_HISTORIE',['DATUM'],[ScanDate],'ID',srtInteger,
    svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo));
  if (vID = 0) then
  begin
    FirstTime := TRUE;
    RebuildIndexes;
    
    vSQL := CreateInsertSQL(ibdbHTInfo,'SCAN_HISTORIE');
    try
      vSQL.ParamByName('ID').asInteger := GetGeneratorValue(ibdbHTInfo,
        'GEN_SCAN_HISTORIE_ID');

      with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
      begin
        try
          with SQL do
          begin
            Add('SELECT');
            Add('COUNT(K.ID) AANTAL,');
            Add('COALESCE(K.SPECIALITEIT,'''') SPECIALITEIT');
            Add('FROM KARAKTER_PROFIEL K');
            Add('WHERE K.YOUTH_KARAKTER_ID IS NULL');
            Add('GROUP BY 2');
          end;
          ExecQuery;
          while not EOF do
          begin
            if (FieldByName('SPECIALITEIT').asString = '') then
            begin
              vSQL.ParamByName('ONBEKEND').asInteger := FieldByName('AANTAL').asInteger;
            end
            else if (FieldByName('SPECIALITEIT').asString = 'Snel herstel') then
            begin
              vSQL.ParamByName('SNEL_HERSTEL').asInteger := FieldByName('AANTAL').asInteger;
            end
            else
            begin
              vSQL.ParamByName(FieldByName('SPECIALITEIT').asString).asInteger := FieldByName('AANTAL').asInteger;
            end;
            Next;
          end;
        finally
          CommitTransaction(Transaction,dbaFree);
          Free;
        end;
      end;
      vSQL.ParamByName('DATUM').asDate := ScanDate;
      vSQL.ParamByName('TOTAAL_SPELERS').asInteger := GetFieldValue(ibdbHTInfo,
        'JEUGDSPELERS',[],[],'ID',srtInteger,svtCount,uHattrick.CreateReadTransaction(ibdbHTInfo));
      vSQL.ParamByName('TOTAAL_KARAKTERS').AsInteger := GetFieldValue(ibdbHTInfo,
        'KARAKTER_PROFIEL',[],[],'ID',srtInteger,svtCount,uHattrick.CreateReadTransaction(ibdbHTInfo));
      vSQL.ExecQuery;
    finally
      CommitTransaction(vSQL.Transaction, dbaFree);
      vSQL.Free;
    end;
  end
  else
  begin
    FirstTime := GetFieldValue(ibdbHTInfo,
        'SCAN_HISTORIE',['ID'],[vID],'NO_SPEC_FOUND',srtInteger,svtNormal,uHattrick.CreateReadTransaction(ibdbHTInfo)) = 0;
  end;
end;

procedure TfrmHTScanner.SetCurLeiderschap(const Value: String);
begin
  if (Value = '') then
    FCurLeiderschap := '?'
  else
    FCurLeiderschap := Format('%s leider',[Value]);
end;

procedure TfrmHTScanner.btnTripleSpeedClick(Sender: TObject);
begin
  btnTripleSpeed.Checked := not(btnTripleSpeed.Checked);

  if (btnTripleSpeed.Checked) then
  begin
    btnWarpspeed.Checked := FALSE;
    btnDoubleSpeed.Checked := FALSE;
    Quadspeed1.Checked := FALSE;
  end;
end;

procedure TfrmHTScanner.TSIBrowserDownloadBegin(Sender: TObject);
begin
  FTSIBrowserDocumentCompleted := FALSE;
end;

procedure TfrmHTScanner.IEDownload1DownloadComplete(Sender: TBSCB;
  Stream: TStream; Result: HRESULT);
begin
  FTSIBrowserDocumentCompleted := TRUE;
end;

procedure TfrmHTScanner.Ignoreerrors1Click(Sender: TObject);
begin
  Ignoreerrors1.Checked := not Ignoreerrors1.Checked;
end;

procedure TfrmHTScanner.IEDownload1BeforeDownload(Sender: TInfoData; const Url,
  FileName, FileExtension, Host, DownloadFolder: string;
  const FileSize: Integer; var Cancel: Boolean);
begin
  FTSIBrowserDocumentCompleted := FALSE;
end;

procedure TfrmHTScanner.IEDownload1Complete(Sender: TCustomIEDownload;
  aFileNameAndPath, aFileName, aFolderName, aExtension: WideString;
  const ActiveConnections: Integer);
begin
  FTSIBrowserDocumentCompleted := TRUE;
end;

procedure TfrmHTScanner.IEDownload1Download(Res: HRESULT;
  stMessage: String);
begin
  FTSIBrowserDocumentCompleted := FALSE;
end;

procedure TfrmHTScanner.tmrAutoStartTimer(Sender: TObject);
begin
  tmrAutoStart.Enabled := FALSE;
  DoAutoStart;
end;

procedure TfrmHTScanner.FormDestroy(Sender: TObject);
begin
  mLogging.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'log.txt');

  if (FInsertSQL <> nil) then
  begin
    if (FInsertSQL.Transaction <> nil) then
    begin
      CommitTransaction(FInsertSQL.Transaction, dbaFree);
    end;
    FInsertSQL.Free;
  end;

  if (FJeugdPrestatiesSQL <> nil) then
  begin
    if (FJeugdPrestatiesSQL.Transaction <> nil) then
    begin
      CommitTransaction(FJeugdPrestatiesSQL.Transaction, dbaFree);
    end;
    FJeugdPrestatiesSQL.Free;
  end;

  if (FJeugdSpelersSQL <> nil) then
  begin
    if (FJeugdspelersSQL.Transaction <> nil) then
    begin
      CommitTransaction(FJeugdspelersSQL.Transaction, dbaFree);
    end;
    FJeugdspelersSQL.Free;
  end;

  if (FTSISQL <> nil) then
  begin
    if (FTSISQL.Transaction <> nil) then
    begin
      CommitTransaction(FTSISQL.Transaction, dbaFree);
    end;
    FTSISQL.Free;
  end;

  if (FScoutingHistorySQL <> nil) then
  begin
    if (FScoutingHistorySQL.Transaction <> nil) then
    begin
      CommitTransaction(FScoutingHistorySQL.Transaction,dbaFree);
    end;
    FScoutingHistorySQL.Free;
  end;

  FUitdagingen.Free;
  FErrorList.Free;
  FChangeLog.Free;
end;

procedure TfrmHTScanner.SetNextBidwarCheck(const Value: TDateTime);
begin
  FNextBidwarCheck := Value;
end;

procedure TfrmHTScanner.Quadspeed1Click(Sender: TObject);
begin
  Quadspeed1.Checked := not(Quadspeed1.Checked);

  if (Quadspeed1.Checked) then
  begin
    btnWarpspeed.Checked := FALSE;
    btnDoubleSpeed.Checked := FALSE;
    btnTripleSpeed.Checked := FALSE;
  end;
end;

procedure TfrmHTScanner.Forcesave1Click(Sender: TObject);
begin
  Forcesave1.Checked := not Forcesave1.Checked;
end;

function TfrmHTScanner.GetForceSave: boolean;
begin
  result := Forcesave1.Checked;
end;

procedure TfrmHTScanner.PrepareTBSRun(aReeks: integer);
var
  vDatum16_75, vDatum17: TDate;
  vVoortgang: TfrmVoortgang;
  vTalented: boolean;
  vValues: TDBFieldValues;
  vNationaliteit: String;
begin
  vNationaliteit := GetFieldValue(ibdbHTInfo,'JEUGD_COMPETITIES',
    ['ID'],[aReeks],'NATIONALITEIT',srtString,svtNormal, uHattrick.CreateReadTransaction(ibdbHTInfo));

  vDatum16_75 := Date - (16 * 7) - 75;
  vDatum17 :=  Date - (16 * 7) - (16 * 7);

  with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
  begin
    try
      with SQL do
      begin
        Add('SELECT');
        Add('COUNT(J.PLAYER_ID) AANTAL');
        Add('FROM JEUGDSPELERS J');
        Add('LEFT JOIN KARAKTER_PROFIEL P ON (J.KARAKTER_ID = P.ID)');
        Add('LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM, CURRENT_DATE) L ON (0=0)');
        Add('LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM, J.TOETREED_DATUM) L1 ON (0=0)');
        Add('LEFT JOIN BLACKLIST B ON (J.TEAM_ID = B.TEAM_ID)');
        Add('LEFT JOIN GET_IS_U20(J.GEBOORTE_DATUM,1) U20 ON (0=0)');
        Add('WHERE');
        Add('((J.GEBOORTE_DATUM >= :DATUM_16_75) OR ((J.GEBOORTE_DATUM >= :DATUM_17) AND (U20.U20 = -1)))');
        Add('AND COALESCE(J.IN_DOCS,0) = 0');
        Add('AND COALESCE(J.INTERESTING,0) = 0');
        Add('AND COALESCE(J.NATIONALITEIT,:NATIONALITEIT) = :NATIONALITEIT');
        //Add('AND (J.PLAYER_ID IN (SELECT PLAYER_ID FROM JEUGD_PRESTATIES WHERE PLAYER_ID = J.PLAYER_ID AND JEUGD_COMPETITIES_ID = :REEKS))');
      end;
      //ParamByName('REEKS').asInteger := aReeks;
      ParamByName('DATUM_16_75').asDate :=  vDatum16_75;
      ParamByName('DATUM_17').asDate := vDatum17;
      ParamByName('NATIONALITEIT').asString := vNationaliteit;
      ExecQuery;
      vVoortgang := TfrmVoortgang.Create(nil,FieldByName('AANTAL').asInteger);
    finally
      CommitTransaction(Transaction, dbaFree);
      Free;
    end;
  end;
  vValues := nil;
  try
    vVoortgang.Melding := 'TBS-run voorbereiden...';
    with uHTDB.CreateSQL(ibdbHTInfo,'',uHattrick.CreateReadTransAction(ibdbHTInfo)) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          Add('J.PLAYER_ID');
          Add('FROM JEUGDSPELERS J');
          Add('LEFT JOIN KARAKTER_PROFIEL P ON (J.KARAKTER_ID = P.ID)');
          Add('LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM, CURRENT_DATE) L ON (0=0)');
          Add('LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM, J.TOETREED_DATUM) L1 ON (0=0)');
          Add('LEFT JOIN BLACKLIST B ON (J.TEAM_ID = B.TEAM_ID)');
          Add('LEFT JOIN GET_IS_U20(J.GEBOORTE_DATUM,1) U20 ON (0=0)');
          Add('WHERE');
          Add('((J.GEBOORTE_DATUM >= :DATUM_16_75) OR ((J.GEBOORTE_DATUM >= :DATUM_17) AND (U20.U20 = -1)))');
          Add('AND COALESCE(J.IN_DOCS,0) = 0');
          Add('AND COALESCE(J.INTERESTING,0) = 0');
          Add('AND COALESCE(J.NATIONALITEIT,:NATIONALITEIT) = :NATIONALITEIT');
          //Add('AND (J.PLAYER_ID IN (SELECT PLAYER_ID FROM JEUGD_PRESTATIES WHERE PLAYER_ID = J.PLAYER_ID AND JEUGD_COMPETITIES_ID = :REEKS))');
        end;
        //ParamByName('REEKS').asInteger := aReeks;
        ParamByName('DATUM_16_75').asDate :=  vDatum16_75;
        ParamByName('DATUM_17').asDate := vDatum17;
        ParamByName('NATIONALITEIT').asString := vNationaliteit;
        ExecQuery;
        while not EOF do
        begin
          vValues := GetSPValues(ibdbHTInfo,'GET_TALENTED_EX',[FieldByName('PLAYER_ID').asInteger,-1, -1],
            ['TALENTED','U20_TALENTED'],[srtInteger,srtInteger],svtNormal);

          vTalented := (vValues[0] = -1) or (vValues[1] = -1);

          ExecSQL(ibdbHTInfo,'UPDATE JEUGDSPELERS SET INTERESTING = :INTERESTING WHERE PLAYER_ID = :ID',
            ['ID','INTERESTING'],[FieldByName('PLAYER_ID').asInteger, Ord(vTalented) * -1]);

          vVoortgang.StepIt;
          Application.ProcessMessages;
          next;
        end;
      finally
        CommitTransaction(Transaction, dbaFree);
        Free;
      end;
    end;
  finally
    vVoortgang.Free;
  end;
end;

function TfrmHTScanner.IsTalented(aPlayerID: Integer):boolean;
begin
  with uHTDB.CreateSQL(frmHTScanner.ibdbHTInfo,'',uHattrick.CreateReadTransaction(ibdbHTInfo)) do
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


procedure TfrmHTScanner.ImportHTYCFile(aFileName: String);
var
  vExcelFunctions: TExcelFunctions;
  vAantalSheets, i, vRows, vCount: integer;
  sPlayerID, sPlayerName, sWaarde: String;
  vPlayerID, vKarakterID: Integer;
  vWaarde, vCurWaarde: double;
  vVoortgang: TfrmVoortgang;
  vGewijzigd, vSpelerGewijzigdCount:integer;
  vSpelerChanged, vTalented, vTalentedNew, vIsKeeper: boolean;
  vUpdated: TStringList;
const
  COL_PLAYERID = 'A';
  COL_PLAYERNAME = 'C';
  COL_ALLROUND = 'I';
  COL_KEEPEN = 'K';
  COL_VERDEDIGEN = 'M';
  COL_VLEUGELSPEL = 'O';
  COL_POSITIESPEL = 'Q';
  COL_SCOREN = 'S';
  COL_PASSEN = 'U';
  COL_SPELHERVATTEN = 'W';
begin
  vUpdated := TStringList.Create;
  btnTripleSpeedClick(btnTripleSpeed);
  FChangeLog.Clear;
  vGewijzigd := 0;
  vSpelerGewijzigdCount := 0;
  vExcelFunctions := TExcelFunctions.Create(OfficeType);
  vVoortgang := TfrmVoortgang.Create(nil,0);
  try
    with vExcelFunctions do
    begin
      try
        Open(aFileName);
        try
          vAantalSheets := SheetCount;
          for vCount := 1 to vAantalSheets do
          begin
            SetWorkSheetActive(vCount);

            vRows := RowCount['A'];
            vVoortgang.Max := vRows - 1;
            for i := 2 to vRows do
            begin
              vUpdated.Clear;
              vTalented := FALSE;
              vSpelerChanged := FALSE;
              sPlayerID := GetCellValueAsString(Format('%s%d', [COL_PLAYERID, i]));
              sPlayerName := GetCellValueAsString(Format('%s%d', [COL_PLAYERNAME,i]));

              vVoortgang.Melding := Format('Inlezen %s...',[sPlayerName]);

              if (sPlayerID <> '') then
              begin
                vPlayerID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
                  ['PLAYER_ID'],[sPlayerID],'PLAYER_ID',srtInteger,svtNormal,
                  uHattrick.CreateReadTransaction(ibdbHTInfo));

                sWaarde := GetCellValueAsString(Format('%s%d', [COL_KEEPEN, i]));
                if (sWaarde <> '') then
                begin
                  vIsKeeper := StrToFloat(sWaarde) > 5;
                end
                else
                begin
                  vIsKeeper := FALSE;
                end;

                if (vPlayerID = 0) then
                begin

                  vTalented := FALSE;

                  GetJeugdSpelerInfoByID(
                    StrToInt(sPlayerID),
                    0,
                    sPlayerName,
                    TRUE,vIsKeeper,TRUE)
                end
                else
                begin
                  vTalented := IsTalented(vPlayerID);
                end;

                vKarakterID := GetFieldValue(ibdbHTInfo,'JEUGDSPELERS',
                  ['PLAYER_ID'],[sPlayerID],'KARAKTER_ID',srtInteger,svtNormal,
                  uHattrick.CreateReadTransaction(ibdbHTInfo));

                if (vKarakterID > 0) then
                begin
                  vUpdated.Add(Format('[%s] %s',[sPlayerID, sPlayerName]));

                  with uHTDB.CreateSQL(ibdbHTInfo,'SELECT * FROM KARAKTER_PROFIEL WHERE ID = :ID',
                    uHattrick.CreateReadTransaction(ibdbHTInfo)) do
                  begin
                    try
                      ParamByName('ID').asInteger := vKarakterID;
                      ExecQuery;

                      if (FieldByName('IS_KEEPER').asInteger = Ord(vIsKeeper) * -1) then
                      begin
                        // Allround
                        sWaarde := GetCellValueAsString(Format('%s%d', [COL_ALLROUND,i]));
                        if (sWaarde <> '') then
                        begin
                          if (FieldByName('ALLROUND').asString <> sWaarde) then
                          begin
                            vUpdated.Add(Format('Allround van %s naar %s',[FieldByName('ALLROUND').asString, sWaarde]));
                            ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET ALLROUND = :WAARDE WHERE ID = :ID',
                              ['ID','WAARDE'],[vKarakterID, StrToInt(sWaarde)]);
                          end;
                        end;

                        // Keepen
                        sWaarde := GetCellValueAsString(Format('%s%d', [COL_KEEPEN, i]));
                        if (sWaarde <> '') then
                        begin
                          vWaarde := StrToFloat(sWaarde);
                          vCurWaarde := RoundTo(FieldByName('POT_KEEPEN').asFloat, -1);

                          if ((vIsKeeper) or (vWaarde < 5)) and ((vCurWaarde < vWaarde) or
                             (
                              (Floor(FieldByName('POT_KEEPEN').asFloat) > Floor(vWaarde)) and
                              (MessageBoxWarning(Format('Keepen van %s naar %.1f wijzigen?!',[FieldByName('POT_KEEPEN').asString, vWaarde]),'HTScanner',TRUE))
                              )) then
                          begin
                            inc(vGewijzigd);
                            vSpelerChanged := TRUE;
                            vUpdated.Add(Format('Keepen van %s naar %.1f',[FieldByName('POT_KEEPEN').asString, vWaarde]));
                            ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET POT_KEEPEN = :WAARDE WHERE ID = :ID',
                              ['ID','WAARDE'],[vKarakterID, vWaarde]);
                          end;
                        end;

                        // Verdedigen
                        sWaarde := GetCellValueAsString(Format('%s%d', [COL_VERDEDIGEN, i]));
                        if (sWaarde <> '') then
                        begin
                          vWaarde := StrToFloat(sWaarde);
                          vCurWaarde := RoundTo(FieldByName('POT_VERDEDIGEN').asFloat, -1);
                          if (vCurWaarde < vWaarde) or
                             (
                              (Floor(FieldByName('POT_VERDEDIGEN').asFloat) > Floor(vWaarde)) and
                              (MessageBoxWarning(Format('Verdedigen van %s naar %.1f wijzigen?!',[FieldByName('POT_VERDEDIGEN').asString, vWaarde]),'HTScanner',TRUE))
                              ) then
                          begin
                            inc(vGewijzigd);
                            vSpelerChanged := TRUE;
                            vUpdated.Add(Format('Verdedigen van %s naar %.1f',[FieldByName('POT_VERDEDIGEN').asString, vWaarde]));
                            ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET POT_VERDEDIGEN = :WAARDE WHERE ID = :ID',
                              ['ID','WAARDE'],[vKarakterID, vWaarde]);
                          end;
                        end;

                        // Vleugelspel
                        sWaarde := GetCellValueAsString(Format('%s%d', [COL_VLEUGELSPEL,i]));
                        if (sWaarde <> '') then
                        begin
                          vWaarde := StrToFloat(sWaarde);
                          vCurWaarde := RoundTo(FieldByName('POT_VLEUGELSPEL').asFloat, -1);
                          if (vCurWaarde < vWaarde) or
                             (
                              (Floor(FieldByName('POT_VLEUGELSPEL').asFloat) > Floor(vWaarde)) and
                              (MessageBoxWarning(Format('Vleugelspel van %s naar %.1f wijzigen?!',[FieldByName('POT_VLEUGELSPEL').asString, vWaarde]),'HTScanner',TRUE))
                              ) then
                          begin
                            inc(vGewijzigd);
                            vSpelerChanged := TRUE;
                            vUpdated.Add(Format('Vleugelspel van %s naar %.1f',[FieldByName('POT_VLEUGELSPEL').asString, vWaarde]));
                            ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET POT_VLEUGELSPEL = :WAARDE WHERE ID = :ID',
                              ['ID','WAARDE'],[vKarakterID, vWaarde]);
                          end;
                        end;

                        // Positiespel
                        sWaarde := GetCellValueAsString(Format('%s%d', [COL_POSITIESPEL, i]));
                        if (sWaarde <> '') then
                        begin
                          vWaarde := StrToFloat(sWaarde);
                          vCurWaarde := RoundTo(FieldByName('POT_POSITIESPEL').asFloat, -1);
                          if (vCurWaarde < vWaarde) or
                             (
                              (Floor(FieldByName('POT_POSITIESPEL').asFloat) > Floor(vWaarde)) and
                              (MessageBoxWarning(Format('Positiespel van %s naar %.1f wijzigen?!',[FieldByName('POT_POSITIESPEL').asString, vWaarde]),'HTScanner',TRUE))
                              ) then
                          begin
                            inc(vGewijzigd);
                            vSpelerChanged := TRUE;
                            vUpdated.Add(Format('Positiespel van %s naar %.1f',[FieldByName('POT_POSITIESPEL').asString, vWaarde]));
                            ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET POT_POSITIESPEL = :WAARDE WHERE ID = :ID',
                              ['ID','WAARDE'],[vKarakterID, vWaarde]);
                          end;
                        end;

                        // Scoren
                        sWaarde := GetCellValueAsString(Format('%s%d', [COL_SCOREN, i]));
                        if (sWaarde <> '') then
                        begin
                          vWaarde := StrToFloat(sWaarde);
                          vCurWaarde := RoundTo(FieldByName('POT_SCOREN').asFloat, -1);
                          if (vCurWaarde < vWaarde) or
                             (
                              (Floor(FieldByName('POT_SCOREN').asFloat) > Floor(vWaarde)) and
                              (MessageBoxWarning(Format('Scoren van %s naar %.1f wijzigen?!',[FieldByName('POT_SCOREN').asString, vWaarde]),'HTScanner',TRUE))
                              ) then
                          begin
                            inc(vGewijzigd);
                            vSpelerChanged := TRUE;
                            vUpdated.Add(Format('Scoren van %s naar %.1f',[FieldByName('POT_SCOREN').asString, vWaarde]));
                            ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET POT_SCOREN = :WAARDE WHERE ID = :ID',
                              ['ID','WAARDE'],[vKarakterID, vWaarde]);
                          end;
                        end;

                        // Passen
                        sWaarde := GetCellValueAsString(Format('%s%d', [COL_PASSEN, i]));
                        if (sWaarde <> '') then
                        begin
                          vWaarde := StrToFloat(sWaarde);
                          vCurWaarde := RoundTo(FieldByName('POT_PASSEN').asFloat,-1);
                          if (vCurWaarde < vWaarde) or
                             (
                              (Floor(FieldByName('POT_PASSEN').asFloat) > Floor(vWaarde)) and
                              (MessageBoxWarning(Format('Passen van %s naar %.1f wijzigen?!',[FieldByName('POT_PASSEN').asString, vWaarde]),'HTScanner',TRUE))
                              ) then
                          begin
                            inc(vGewijzigd);
                            vSpelerChanged := TRUE;
                            vUpdated.Add(Format('Passen van %s naar %.1f',[FieldByName('POT_PASSEN').asString, vWaarde]));
                            ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET POT_PASSEN = :WAARDE WHERE ID = :ID',
                              ['ID','WAARDE'],[vKarakterID, vWaarde]);
                          end;
                        end;

                        // Spelhervatting
                        sWaarde := GetCellValueAsString(Format('%s%d', [COL_SPELHERVATTEN, i]));
                        if (sWaarde <> '') then
                        begin
                          vWaarde := StrToFloat(sWaarde);
                          vCurWaarde := RoundTo(FieldByName('POT_SPELHERVATTEN').asFloat, -1);
                          if (vCurWaarde < vWaarde) or
                             (
                              (Floor(FieldByName('POT_SPELHERVATTEN').asFloat) > Floor(vWaarde)) and
                              (MessageBoxWarning(Format('Spelhervatting van %s naar %.1f wijzigen?!',[FieldByName('POT_SPELHERVATTEN').asString, vWaarde]),'HTScanner',TRUE))
                              ) then
                          begin
                            inc(vGewijzigd);
                            vSpelerChanged := TRUE;
                            vUpdated.Add(Format('Spelhervatting van %s naar %.1f',[FieldByName('POT_SPELHERVATTEN').asString, vWaarde]));
                            ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET POT_SPELHERVATTEN = :WAARDE WHERE ID = :ID',
                              ['ID','WAARDE'],[vKarakterID, vWaarde]);
                          end;
                        end;
                      end;
                    finally
                      CommitTransaction(Transaction, dbaFree);
                      Free;
                    end;
                  end;

                  ExecSQL(ibdbHTInfo,'UPDATE KARAKTER_PROFIEL SET HTYC = -1 WHERE ID = :ID',
                    ['ID'],[vKarakterID]);
                end;
              end;

              if (vSpelerChanged) then
              begin
                inc(vSpelerGewijzigdCount);
                vTalentedNew := IsTalented(StrToInt(sPlayerID));

                if (vTalentedNew) then
                begin
                  if (vUpdated.Count > 0) then
                  begin
                    if (vTalentedNew <> vTalented) then
                    begin
                      vUpdated[0] := vUpdated[0] + ' *!';
                    end
                    else
                    begin
                      vUpdated[0] := vUpdated[0] + ' *';
                    end;
                  end;
                end;

                FChangeLog.Add(vUpdated.Text);
                FChangeLog.Add('');
              end;
              vVoortgang.Stepit;
            end;
            MessageBoxInfo(Format('%d spelers gecontroleerd, %d gewijzigd.' +#13+
              '%d vaardigheden aangepast!',[vRows, vSpelerGewijzigdCount, vGewijzigd]),'HTScanner');
          end;
        finally
          // Sluit file
          CloseActiveWorkbook(FALSE);
        end;
      finally
        Free;
      end;
    end;
  finally
    vUpdated.Free;
    vVoortgang.Free;
    FChangeLog.SaveToFile(ExtractFilePath(aFileName)+'changelog.txt');

    ShellExecute(Handle,PChar('open'),PChar(ExtractFilePath(aFileName)+'changelog.txt'),nil,nil,SW_SHOWNORMAL);
  end;
end;

procedure TfrmHTScanner.btnHTCYClick(Sender: TObject);
var
  vFileName: String;
begin
  with TOpenDialog.Create(nil) do
  begin
    try
      Filter := 'Excel files|*.xls;*.xlsx';

      if (Execute) then
      begin
        vFileName := FileName;
      end;
    finally
      Free;
    end;
  end;

  if (vFileName <> '') then
  begin
    ImportHTYCFile(vFileName);
  end;
end;

procedure TfrmHTScanner.btnAutoClick(Sender: TObject);
begin
  AutoStart := not AutoStart;
end;

procedure TfrmHTScanner.SetAutoStart(const Value: boolean);
begin
  FAutoStart := Value;
  btnAuto.Checked := Value;
end;

procedure TfrmHTScanner.tmrActivityTimer(Sender: TObject);
begin
  uHattrick.WriteActivity(ibdbHTInfo);
end;

procedure TfrmHTScanner.WriteActivity;
begin
  if (FWriteActivitiy) then
  begin
    uHattrick.WriteActivity(ibdbHTInfo);
  end;
end;

procedure TfrmHTScanner.tmrDSTimer(Sender: TObject);
begin
  BrowseToDS;
end;

procedure TfrmHTScanner.OnThreadTerminate(Sender: TObject);
begin
  mLogging.Lines.Add(
    Format('Thread '+TDownloadThread(Sender).URL+' terminated after %s',
      [FormatDateTime('hh:nn',Now - TDownloadThread(Sender).StartTime)]));

  dec(FActiveThreadCount);
end;

procedure TfrmHTScanner.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := ( (FActiveThreadCount = 0) or
                (MessageBoxWarning(Format('Er zijn nog %d downloadthreads!',[FActiveThreadCount])+#13+#13+
    'Doorgaan met afsluiten?','HTScanner',TRUE))
               );
end;

end.

