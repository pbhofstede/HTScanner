unit FormPlayerInfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, IBSQL, dxCntner, dxTL, dxDBCtrl, dxDBGrid, Db,
  IBCustomDataSet, IBQuery, IBDatabase, dxEditor, dxEdLib, dxDBELib,
  dxPageControl, dxExEdtr, DBCtrls, dxDBTLCl, dxGrClms, OleCtrls,
  SHDocVw_EWB, EwbCore, EmbeddedWB, IBUpdateSQL, cxControls, cxContainer,
  cxEdit, cxTextEdit;

type
  TSTdTekst = (stdInfo,stdUpdate,stdAfwijzing,stdPromotie);

  TfrmPlayerInfo = class(TForm)
    DataSource1: TDataSource;
    ibqrTalenten: TIBQuery;
    IBWriteTransaction: TIBTransaction;
    ibdtstManagerInfo: TIBDataSet;
    dsManagerInfo: TDataSource;
    pcgControlInfo: TdxPageControl;
    tbPlayerinfo: TdxTabSheet;
    tbBericht: TdxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edPlayerID: TEdit;
    edTeamID: TEdit;
    Button1: TButton;
    Panel3: TPanel;
    lblPlayerName: TLabel;
    lblKeepen: TLabel;
    lblVerdedigen: TLabel;
    lblPositiespel: TLabel;
    lblVleugelspel: TLabel;
    lblPassen: TLabel;
    lblSpelhervatten: TLabel;
    lblScoren: TLabel;
    lblSpecialiteit: TLabel;
    lblAllRound: TLabel;
    lblManagerNaam: TLabel;
    Panel2: TPanel;
    mBericht: TdxMemo;
    Button2: TButton;
    btnInfo: TButton;
    Button4: TButton;
    tbSTDBerichten: TdxTabSheet;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit2: TdxDBEdit;
    Label4: TLabel;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dsSTDBerichten: TDataSource;
    ibdtstSTDBerichten: TIBDataSet;
    dxDBCheckEdit4: TdxDBCheckEdit;
    chckU20: TCheckBox;
    Button3: TButton;
    Button5: TButton;
    dxDBCheckEdit5: TdxDBCheckEdit;
    Button6: TButton;
    dxDBImageEdit1: TdxDBImageEdit;
    Label5: TLabel;
    Label6: TLabel;
    btnScout: TButton;
    chckInDocs: TCheckBox;
    chckbxExported: TCheckBox;
    lblDatum: TLabel;
    dxPageControl1: TdxPageControl;
    tbTeamSpelers: TdxTabSheet;
    tbBatchlings: TdxTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1PLAYER_ID: TdxDBGridColumn;
    dxDBGrid1PLAYER_NAME: TdxDBGridMaskColumn;
    dxDBGrid1LEEFTIJD: TdxDBGridMaskColumn;
    dxDBGrid1U20: TdxDBGridCheckColumn;
    dxDBGrid1SPECIALITEIT: TdxDBGridColumn;
    dxDBGrid1KEEPEN: TdxDBGridMaskColumn;
    dxDBGrid1VERDEDIGEN: TdxDBGridMaskColumn;
    dxDBGrid1POSITIESPEL: TdxDBGridMaskColumn;
    dxDBGrid1PASSEN: TdxDBGridMaskColumn;
    dxDBGrid1SCOREN: TdxDBGridMaskColumn;
    dxDBGrid1SPELHERVATTEN: TdxDBGridMaskColumn;
    dxDBGrid1VLEUGELSPEL: TdxDBGridMaskColumn;
    dxDBGrid2: TdxDBGrid;
    ibqrBatchlings: TIBQuery;
    dsBatchlings: TDataSource;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column3: TdxDBGridColumn;
    dxDBGrid1TABSHEET: TdxDBGridColumn;
    dxDBGrid1GOOGLE_DOC: TdxDBGridColumn;
    dxDBGrid1SCOUT: TdxDBGridColumn;
    lblBlacklist: TLabel;
    tbNTScouting: TdxTabSheet;
    Panel5: TPanel;
    dxDBGrid3: TdxDBGrid;
    ibdtstScouting: TIBDataSet;
    dsScouting: TDataSource;
    ibdtstScoutingID: TIntegerField;
    ibdtstScoutingPLAYER_ID: TIntegerField;
    ibdtstScoutingPLAYER_NAAM: TIBStringField;
    ibdtstScoutingYOUTHPLAYER_ID: TIntegerField;
    ibdtstScoutingSPECIALITEIT: TIBStringField;
    ibdtstScoutingIN_NT_DOCS: TSmallintField;
    dxDBGrid3ID: TdxDBGridMaskColumn;
    dxDBGrid3PLAYER_ID: TdxDBGridMaskColumn;
    dxDBGrid3PLAYER_NAAM: TdxDBGridMaskColumn;
    dxDBGrid3YOUTHPLAYER_ID: TdxDBGridMaskColumn;
    dxDBGrid3SPECIALITEIT: TdxDBGridMaskColumn;
    dxDBGrid3IN_NT_DOCS: TdxDBGridCheckColumn;
    chckKeeper: TCheckBox;
    dxDBGrid2Column4: TdxDBGridColumn;
    dxDBGrid1GEBOORTEDATUM: TdxDBGridDateColumn;
    dxDBGrid2Column5: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    tbPotentials: TdxTabSheet;
    dxDBGrid4: TdxDBGrid;
    dsPotentials: TDataSource;
    ibqrPotentials: TIBQuery;
    dxDBGrid4LEEFTIJD: TdxDBGridMaskColumn;
    dxDBGrid4IS_U20: TdxDBGridCheckColumn;
    dxDBGrid4PLAYER_ID: TdxDBGridMaskColumn;
    dxDBGrid4PLAYER_NAAM: TdxDBGridMaskColumn;
    dxDBGrid4HERKOMST: TdxDBGridMaskColumn;
    dxDBGrid4SPECIALITEIT: TdxDBGridMaskColumn;
    dxDBGrid4TSI: TdxDBGridMaskColumn;
    dxDBGrid4DEADLINE: TdxDBGridDateColumn;
    dxDBGrid4HOOGSTE_BOD: TdxDBGridMaskColumn;
    dxDBGrid4KEEPEN: TdxDBGridMaskColumn;
    dxDBGrid4VERDEDIGEN: TdxDBGridMaskColumn;
    dxDBGrid4POSITIESPEL: TdxDBGridMaskColumn;
    dxDBGrid4VLEUGELSPEL: TdxDBGridMaskColumn;
    dxDBGrid4PASSEN: TdxDBGridMaskColumn;
    dxDBGrid4SCOREN: TdxDBGridMaskColumn;
    dxDBGrid4SPELHERVATTING: TdxDBGridMaskColumn;
    dxDBGrid4GK_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid4CD_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid4OCD_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid4OWB_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid4IM_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid4WING_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid4FW_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid4DFW_INDEX: TdxDBGridCurrencyColumn;
    dxDBGrid4LEEFTIJD1: TdxDBGridMaskColumn;
    dxDBGrid4YOUTHPLAYER_ID: TdxDBGridMaskColumn;
    dsTalenten: TDataSource;
    ibqrNTTalenten: TIBQuery;
    dxDBGrid4DATUM: TdxDBGridColumn;
    ibdtstScoutingKARAKTER_PROFIEL_ID: TIntegerField;
    Panel6: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lblNTGK: TLabel;
    lblU20GK: TLabel;
    Label18: TLabel;
    lblNTCD: TLabel;
    lblU20CD: TLabel;
    Label19: TLabel;
    lblNTOCD: TLabel;
    lblU20OCD: TLabel;
    Label20: TLabel;
    lblNTOWB: TLabel;
    lblU20OWB: TLabel;
    Label21: TLabel;
    lblNTIM: TLabel;
    lblU20IM: TLabel;
    Label22: TLabel;
    lblNTWing: TLabel;
    lblU20Wing: TLabel;
    Label23: TLabel;
    lblNTFW: TLabel;
    lblU20FW: TLabel;
    Label24: TLabel;
    lblNTdFW: TLabel;
    lblU20dfW: TLabel;
    chckNTTalented: TCheckBox;
    chckU20Talented: TCheckBox;
    Label25: TLabel;
    dxTabSheet2: TdxTabSheet;
    dxDBGrid6: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dsPrestaties: TDataSource;
    ibqrPrestaties: TIBQuery;
    dxDBGrid6Column7: TdxDBGridColumn;
    dxDBGrid6Column8: TdxDBGridColumn;
    dxDBGrid6Column9: TdxDBGridDateColumn;
    dxDBGrid6Column10: TdxDBGridColumn;
    Panel7: TPanel;
    Panel8: TPanel;
    Label3: TLabel;
    edNTPlayerID: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lblPassen1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Leeftijd: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lblGK: TLabel;
    lblCD: TLabel;
    lblOCD: TLabel;
    lblOWB: TLabel;
    lblIM: TLabel;
    lblWing: TLabel;
    lblFW: TLabel;
    lblDFW: TLabel;
    pckEdKeepen: TdxPickEdit;
    pckEdVerdedigen: TdxPickEdit;
    pckEdPositiespel: TdxPickEdit;
    pckEdVleugelspel: TdxPickEdit;
    pckEdPassen: TdxPickEdit;
    pckEdScoren: TdxPickEdit;
    pckEdSpelhervatten: TdxPickEdit;
    spedJaar: TdxSpinEdit;
    spedDagen: TdxSpinEdit;
    Button7: TButton;
    chckIsU20: TCheckBox;
    chckEDKeeper: TdxCheckEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    GroupBox2: TGroupBox;
    dxDBGrid5: TdxDBGrid;
    dxDBGrid5PLAYER_ID: TdxDBGridMaskColumn;
    dxDBGrid5PLAYER_NAME: TdxDBGridMaskColumn;
    dxDBGrid5LEEFTIJD: TdxDBGridMaskColumn;
    dxDBGrid5SPECIALITEIT: TdxDBGridMaskColumn;
    dxDBGrid5POS_INDEX: TdxDBGridCurrencyColumn;
    Panel11: TPanel;
    btnNTScouting: TButton;
    Button8: TButton;
    btnYouthplayerID: TButton;
    Button10: TButton;
    dxDBGrid2Column7: TdxDBGridCheckColumn;
    dxDBGrid2Column8: TdxDBGridCheckColumn;
    tbPosTwins: TdxTabSheet;
    dxDBGrid7: TdxDBGrid;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridColumn8: TdxDBGridColumn;
    dxDBGridColumn9: TdxDBGridColumn;
    dxDBGridColumn10: TdxDBGridColumn;
    dxDBGridColumn11: TdxDBGridColumn;
    dxDBGridColumn12: TdxDBGridColumn;
    dxDBGridCheckColumn1: TdxDBGridCheckColumn;
    dxDBGridCheckColumn2: TdxDBGridCheckColumn;
    ibqrPosBatchlings: TIBQuery;
    dsPosBatchlings: TDataSource;
    dxDBGrid7Column9: TdxDBGridColumn;
    dxDBGrid2Column9: TdxDBGridColumn;
    dxDBGrid7Column10: TdxDBGridColumn;
    dxDBGrid7Column11: TdxDBGridColumn;
    dxDBGrid7Column12: TdxDBGridColumn;
    dxDBGrid7Column13: TdxDBGridColumn;
    dxDBGrid7Column14: TdxDBGridColumn;
    dxDBGrid7Column15: TdxDBGridColumn;
    dxDBGrid7Column16: TdxDBGridColumn;
    dxDBGrid7Column17: TdxDBGridColumn;
    dxDBGrid7Column18: TdxDBGridColumn;
    dxDBGrid7Column19: TdxDBGridColumn;
    dxDBGrid7Column20: TdxDBGridColumn;
    dxDBGrid7Column21: TdxDBGridColumn;
    lblStatus: TLabel;
    lblCurGK: TLabel;
    lblCurCD: TLabel;
    lblCurOCD: TLabel;
    lblCurOWB: TLabel;
    lblCurIM: TLabel;
    lblCurWNG: TLabel;
    lblCurFW: TLabel;
    lblCurdFW: TLabel;
    Label26: TLabel;
    lblNTSP: TLabel;
    lblCurSP: TLabel;
    lblU20SP: TLabel;
    cxedtManager: TcxTextEdit;
    IBReadTransaction: TIBTransaction;
    dxDBGrid2Column10: TdxDBGridColumn;
    Label27: TLabel;
    chckPossible: TCheckBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ibdtstSTDBerichtenAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure mBerichtExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure edPlayerIDChange(Sender: TObject);
    procedure lblPlayerNameDblClick(Sender: TObject);
    procedure btnScoutClick(Sender: TObject);
    procedure btnNTScoutingClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btnYouthplayerIDClick(Sender: TObject);
    procedure ibdtstScoutingAfterPost(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ibqrPotentialsBeforeOpen(DataSet: TDataSet);
    procedure dxDBGrid4GK_INDEXCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBGrid4CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure Button7Click(Sender: TObject);
    procedure lblGKClick(Sender: TObject);
    procedure pcgControlInfoChanging(Sender: TObject; NewPage: TdxTabSheet;
      var AllowChange: Boolean);
    procedure lblKeepenDblClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure ibdtstScoutingBeforeOpen(DataSet: TDataSet);
    procedure ibdtstScoutingAfterClose(DataSet: TDataSet);
    procedure cxedtManagerPropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FCurPlayerID, FCurTeamID: integer;
    FLoaded: boolean;
    procedure GetYouthPlayerID;
    //procedure LoadPicture(aKarakterID: Integer);
    //procedure AddPart(aPart: String);
    procedure ToonNTTalenten(aIndex: Integer);
    procedure ShowPotential(aIndex: integer);
    function AddPotentie(aCurPotentie, aSkill:String; aNewPotentie: Integer): String;
    procedure CalcPotentials(aPlayerID, aKarakterID: integer);
    procedure SetLabel(aLabel: TLabel; isTop3: boolean);
    procedure GetPossibleBatchlings;
    function GetCurU20Index(aPlayerID, aPosition: Integer;
      var aIndex: double): boolean;
  private
    FSpelerSQL: TIBSQL;
    FReloadTwinsEtc, FNoChange: boolean;
    { Private declarations }
    procedure ParsePlayerInfo(aSQL:TIBSQL);
    procedure Zoek;
    function GetSTDTekst(aType: TStdTekst; aCount: integer;aHerhaling:boolean): String;
    function GenerateTekst(aType: TStdTekst; aCount: integer;
      aHerhaling:boolean):boolean;
    function GetFieldName(aStart, aField: String): String;
    function ParseFields(aTekst: String): String;
  public
    { Public declarations }
    property CurPlayerID: integer read FCurPlayerID;
    property SpelerSQL:TIBSQL read FSpelerSQL write FSpelerSQL;
  end;

var
  frmPlayerInfo: TfrmPlayerInfo;

implementation

uses
  ubibRuntime, FormMain, uBibDB, ClipBrd, FornNewName, uHattrick, uBibGrid,
  uBibConv;

{$R *.DFM}

procedure TfrmPlayerInfo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Zoek;
end;

{procedure TfrmPlayerInfo.AddPart(aPart:String);
var
  vID : integer;
begin
  vID := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,'FACE_PARTS',['PART'],[aPart],'ID',srtInteger);
  if (vID = 0) then
  begin
    vID := uBibDB.GetGeneratorValue(frmHTScanner.ibdbHTInfo,'GEN_FACE_PARTS_ID');

    uBibDb.ExecSQL(frmHTScanner.ibdbHTInfo,'INSERT INTO FACE_PARTS(ID, PART) VALUES (:ID,:PART)',
      ['ID','PART'],[vID,aPart]);
  end;
end;  }

{procedure TfrmPlayerInfo.LoadPicture(aKarakterID:Integer);
var
  vFieldValues: TFieldValues;
begin
  vFieldValues := nil;
  with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo) do
  begin
    try
      SQL.Add('SELECT P.* FROM KARAKTER_PROFIEL P');
      SQL.Add('WHERE P.ID = :ID');
      ParamByName('ID').asInteger := aKarakterID;
      ExecQuery;
      with HTBrowser.HTMLCode do
      begin
        Clear;
        if (FieldByName('ID').asInteger > 0) then
        begin
          Add('<HTML>');
          Add('<table style="width:100%>');
          Add('<tr>');
          Add('<td style="padding: 0px">');
          Add('<div style="margin:5px auto; float: left; position: relative; height: 155px; width: 110px; background-image:url(''http://static.hattrick-youthclub.org/avatar/backgrounds/card1.png'')">');
          Add('<img src="http://static.hattrick-youthclub.org/avatar/backgrounds/bg_blue.png" style="position:absolute;left:9px;top:10px;" alt="" />');
          AddPart(FieldByName('BODY').asString);
          vFieldValues := uBibDb.GetFieldValues(frmHTScanner.ibdbHTInfo,'FACE_PARTS',['PART'],[FieldByName('BODY').asString],['PART_LEFT','PART_TOP'],[srtInteger,srtInteger]);
          Add(Format('<img src="http://static.hattrick-youthclub.org/avatar/bodies/%s.png" style="position:absolute;left:%dpx;top:%dpx;" alt="" />',[FieldByName('BODY').asString,Integer(vFieldValues[0]),Integer(vFieldValues[1])]));
          AddPart(FieldByName('GEZICHT').asString);
          vFieldValues := uBibDb.GetFieldValues(frmHTScanner.ibdbHTInfo,'FACE_PARTS',['PART'],[FieldByName('GEZICHT').asString],['PART_LEFT','PART_TOP'],[srtInteger,srtInteger]);
          Add(Format('<img src="http://static.hattrick-youthclub.org/avatar/faces/%s.png" style="position:absolute;left: %dx; top: %dpx;" alt="" />',[FieldByName('GEZICHT').asString,Integer(vFieldValues[0]),Integer(vFieldValues[1])]));

          AddPart(FieldByName('OGEN').asString);
          vFieldValues := uBibDb.GetFieldValues(frmHTScanner.ibdbHTInfo,'FACE_PARTS',['PART'],[FieldByName('OGEN').asString],['PART_LEFT','PART_TOP'],[srtInteger,srtInteger]);
          Add(Format('<img src="http://static.hattrick-youthclub.org/avatar/eyes/%s.png" style="position:absolute;left: %dpx; top: %dpx;" alt="" />',[FieldByName('OGEN').asString,Integer(vFieldValues[0]),Integer(vFieldValues[1])]));

          AddPart(FieldByName('MOND').asString);
          vFieldValues := uBibDb.GetFieldValues(frmHTScanner.ibdbHTInfo,'FACE_PARTS',['PART'],[FieldByName('MOND').asString],['PART_LEFT','PART_TOP'],[srtInteger,srtInteger]);
          Add(Format('<img src="http://static.hattrick-youthclub.org/avatar/mouths/%s.png" style="position:absolute;left: %dpx; top: %dpx;" alt="" />',[FieldByName('MOND').asString,Integer(vFieldValues[0]),Integer(vFieldValues[1])]));

          AddPart(FieldByName('NEUS').asString);
          vFieldValues := uBibDb.GetFieldValues(frmHTScanner.ibdbHTInfo,'FACE_PARTS',['PART'],[FieldByName('NEUS').asString],['PART_LEFT','PART_TOP'],[srtInteger,srtInteger]);
          Add(Format('<img src="http://static.hattrick-youthclub.org/avatar/noses/%s.png" style="position:absolute;left: %dpx; top: %dpx;" alt="" />',[FieldByName('NEUS').asString,Integer(vFieldValues[0]),Integer(vFieldValues[1])]));

          AddPart(FieldByName('HAAR').asString);
          vFieldValues := uBibDb.GetFieldValues(frmHTScanner.ibdbHTInfo,'FACE_PARTS',['PART'],[FieldByName('HAAR').asString],['PART_LEFT','PART_TOP'],[srtInteger,srtInteger]);
          Add(Format('<img src="http://static.hattrick-youthclub.org/avatar/hair/%s.png" style="position:absolute;left: %dpx; top: %dpx;" alt="" />',[FieldByName('HAAR').asString,Integer(vFieldValues[0]),Integer(vFieldValues[1])]));
          Add('</td>');
          Add('</tr>');
          Add('</table>');
          Add('</HTML>');
        end;
      end;
    finally
      uBibDb.CommitTransaction(Transaction,TRUE);
      Free;
    end;
  end;
end;    }

procedure TfrmPlayerInfo.ParsePlayerInfo(aSQL: TIBSQL);
var
  vSQL:TIBSQL;

  vKeepen, vVerdedigen, vPositiespel, vPassen, vVleugelspel,
  vScoren, vSpelhervatten, vAfwijking:integer;
begin
  //LoadPicture(aSQL.FieldByName('KARAKTER_ID').asInteger);
  with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo,'SELECT * FROM GET_PROMOTED_STATS(:KARAKTERID)') do
  begin
    try
      ParamByName('KARAKTERID').asInteger := aSQL.FieldByName('KARAKTER_ID').asInteger;
      ExecQuery;

      vKeepen := FieldByName('KEEPEN').asInteger;
      vVerdedigen := FieldByName('VERDEDIGEN').asInteger;
      vPositiespel := FieldByName('POSITIESPEL').asInteger;
      vPassen := FieldByName('PASSEN').asInteger;
      vVleugelspel := FieldByName('VLEUGELSPEL').asInteger;
      vScoren := FieldByName('SCOREN').asInteger;
      vSpelhervatten:= FieldByName('SPELHERVATTEN').asInteger;
    finally
      uBibDb.CommitTransaction(Transaction, TRUE);
      Free;
    end;
  end;


  with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo) do
  begin
    try
      with SQL do
      begin
        Add('SELECT');
        Add('  J.PLAYER_ID,');
        Add('  J.PLAYER_NAME,');
        Add('  L.LEEFTIJD,');
        Add('  U20.AFWIJKING_OPTIMALE_LEEFTIJD,');
        Add('  U20.SPEELDATUM,');
        Add('  U20.U20_LICHTING,');
        Add('  J.GEBOORTE_DATUM + (6 * (16 * 7)) -1 LAATSTE_SPEELDAG,');
        Add('  U20.SPEELDATUM - (J.GEBOORTE_DATUM + (6 * (16 * 7)) -1) AFWIJKING');
        Add('FROM JEUGDSPELERS J');
        Add('LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM, CURRENT_DATE) L ON (0=0)');
        Add('LEFT JOIN GET_IS_U20(J.GEBOORTE_DATUM, 1) U20 ON (0=0)');
        Add('WHERE J.PLAYER_ID = :ID');
      end;
      ParamByName('ID').asInteger := aSQL.FieldByName('PLAYER_ID').asInteger;
      ExecQuery;
      vAfwijking := FieldByName('AFWIJKING').asInteger;
    finally
      uBibDb.CommitTransaction(Transaction, TRUE);
      Free;
    end;
  end;

  vSQL := uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo);

  with vSQL.SQL do
  begin
    Add('SELECT');
    Add('SPECIALITEIT,');
    Add('ALLROUND,');
    Add('POT_KEEPEN,');
    Add('POT_SPELHERVATTEN,');
    Add('POT_POSITIESPEL,');
    Add('POT_VERDEDIGEN,');
    Add('POT_PASSEN,');
    Add('EERLIJKHEID,');
    Add('POT_VLEUGELSPEL,');
    Add('KARAKTER,');
    Add('AGRESSIVITEIT,');
    Add('LEIDERSCHAP,');
    Add('IS_KEEPER,');
    Add('POT_SCOREN');
    Add('FROM KARAKTER_PROFIEL');
    Add('WHERE ID = :ID');
  end;
  vSQL.ParamByName('ID').asInteger := aSQL.FieldByName('KARAKTER_ID').asInteger;
  vSQL.ExecQuery;

  try

    with aSQL do
    begin
      chckKeeper.Checked := vSQL.FieldByName('IS_KEEPER').asInteger = -1;
      chckU20.Checked := FieldByName('U20').asInteger = -1;
      chckInDocs.Checked := FieldByName('IN_DOCS').asInteger = -1;
      chckbxExported.Checked := FieldByName('EXPORTED').asInteger = -1;
      if (chckbxExported.Checked) then
        lblDatum.Caption := FormatDateTime('dd-mm-yyyy',FieldByName('SCAN_DATUM').asDateTime)
      else
        lblDatum.Caption := '';

      lblPlayerName.Caption := Format('%s [%s] %s [%d] (%d) [%s/%s] (%s)',[FieldByName('PLAYER_NAME').asString,
        FieldByName('PLAYER_ID').asString,FieldByName('LEEFTIJD').asString, vAfwijking,
        FieldByName('UPDATE_COUNT').asInteger,FieldByName('GOOGLE_DOC').asString,FieldByName('TABSHEET').asString,
        FieldByName('SCOUT').asString]);

      if (edPlayerID.Text <> '') then
      begin
        Clipboard.AsText := FieldByName('PLAYER_NAME').asString;
      end;
      
      lblKeepen.Caption := Format('Keepen: %s/%s (%d)',[FieldByName('KEEPEN').asString,
        vSQL.FieldByName('POT_KEEPEN').asString, vKeepen]);
      lblVerdedigen.Caption := Format('Verdedigen: %s/%s (%d)',[FieldByName('VERDEDIGEN').asString,
        vSQL.FieldByName('POT_VERDEDIGEN').asString, vVerdedigen]);
      lblPositiespel.Caption := Format('Positiespel: %s/%s (%d)',[FieldByName('POSITIESPEL').asString,
        vSQL.FieldByName('POT_POSITIESPEL').asString, vPositiespel]);
      lblVleugelspel.Caption := Format('Vleugelspel: %s/%s (%d)',[FieldByName('VLEUGELSPEL').asString,
        vSQL.FieldByName('POT_VLEUGELSPEL').asString, vVleugelspel]);
      lblPassen.Caption := Format('Passen: %s/%s (%d)',[FieldByName('PASSEN').asString,
        vSQL.FieldByName('POT_PASSEN').asString, vPassen]);
      lblScoren.Caption := Format('Scoren: %s/%s (%d)',[FieldByName('SCOREN').asString,
        vSQL.FieldByName('POT_SCOREN').asString, vScoren]);
      lblSpelhervatten.Caption := Format('Spelhervatten: %s/%s (%d)',[FieldByName('SPELHERVATTEN').asString,
        vSQL.FieldByName('POT_SPELHERVATTEN').asString, vSpelhervatten]);

      lblSpecialiteit.Caption := vSQL.FieldByName('SPECIALITEIT').asString;
      if (vSQL.FieldByName('KARAKTER').asString <> '') then
      begin
        lblSpecialiteit.Caption := Format('%s [Een %s persoon die %s en %s is. (%s leider)]',
          [lblSpecialiteit.Caption, vSQL.FieldByName('KARAKTER').asString,
            vSQL.FieldByName('AGRESSIVITEIT').asString, vSQL.FieldByName('EERLIJKHEID').asString,
            vSQL.FieldByName('LEIDERSCHAP').asString]);
      end;
      lblAllRound.Caption := Format('Allround: %s',[vSQL.FieldByName('ALLROUND').asString]);

      CalcPotentials(FieldByName('PLAYER_ID').asInteger,  aSQL.FieldByName('KARAKTER_ID').asInteger);
    end;
  finally
    uBibDb.CommitTransaction(vSQL.Transaction,TRUE);
    vSQL.Free;
  end;
end;

procedure TfrmPlayerInfo.SetLabel(aLabel: TLabel; isTop3:boolean);
begin
  if (isTop3) then
  begin
    aLabel.Font.Style := aLabel.Font.Style + [fsBold];
  end
  else
  begin
    aLabel.Font.Style := aLabel.Font.Style - [fsBold];
  end;
end;

function TfrmPlayerInfo.GetCurU20Index(aPlayerID, aPosition:Integer; var aIndex:double):boolean;
var
  vValues: TFieldValues;
begin
  vValues := uBibDb.GetSPValues(frmHTScanner.ibdbHTInfo,'GET_U20_TALENT',
    [aPlayerId, aPosition],
    ['PLAYER_ID','CURRENT_INDEX','INDEX_BONUS'],[srtInteger,srtFloat,srtFloat]);

  result := vValues[1] <> 0;
  aIndex := vValues[1] - vValues[2];
end;

procedure TfrmPlayerInfo.CalcPotentials(aPlayerID, aKarakterID: integer);
var
  vCurIndex: double;
begin
  lblCurGK.Caption := '';
  lblCurCD.Caption := '';
  lblCurOCD.Caption := '';
  lblCurOWB.Caption := '';
  lblCurIM.Caption := '';
  lblCurWNG.Caption := '';
  lblCurFW.Caption := '';
  lblCurdFW.Caption := '';
  lblCurSP.Caption := '';

  if (aPlayerID > 0) and (aKarakterID > 0) then
  begin
    uBibDb.ExecSQL(frmHTScanner.ibdbHTInfo,'EXECUTE PROCEDURE SAVE_NT_U20_POTENTIAL(:KARAKTERID)',
      ['KARAKTERID'],[aKarakterID]);

    with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo) do
    begin
      try
        with SQL do
        begin
          Add('SELECT * FROM GET_TALENTED_EX(:PLAYERID, 0, -1)');
        end;
        ParamByName('PLAYERID').asInteger := aPlayerID;
        ExecQuery;
        chckNTTalented.Checked := FieldByName('TALENTED').asInteger = -1;
        chckU20Talented.Checked := FieldByName('U20_TALENTED').asInteger = -1;
        chckPossible.Checked := FieldByName('POSSIBLE_TALENTED').asInteger = -1;
      finally
        uBibdb.CommitTransaction(Transaction, TRUE);
        Free;
      end;
    end;

    with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          Add('POT.GK_INDEX,');
          Add('POT.CD_INDEX,');
          Add('POT.OCD_INDEX,');
          Add('POT.OWB_INDEX,');
          Add('POT.IM_INDEX,');
          Add('POT.WING_INDEX,');
          Add('POT.FW_INDEX ,');
          Add('POT.DFW_INDEX,');
          Add('POT.SP_DEF_INDEX,');
          Add('P.KEEPEN_TOP3, P.VERDEDIGEN_TOP3, P.POSITIESPEL_TOP3, P.PASSEN_TOP3,');
          Add('P.VLEUGELSPEL_TOP3, P.SCOREN_TOP3');
          Add('FROM JEUGDSPELERS J');
          Add('LEFT JOIN KARAKTER_PROFIEL P ON (J.KARAKTER_ID = P.ID)');
          Add('LEFT JOIN NT_INDICES POT ON (P.ID = POT.KARAKTER_ID AND POT.IS_U20 = 0)');
          Add('WHERE J.PLAYER_ID = :ID');
        end;
        ParamByName('ID').asInteger := aPlayerID;
        ExecQuery;

        SetLabel(lblKeepen, FieldByName('KEEPEN_TOP3').asInteger = -1);
        SetLabel(lblVerdedigen, FieldByName('VERDEDIGEN_TOP3').asInteger = -1);
        SetLabel(lblPositiespel, FieldByName('POSITIESPEL_TOP3').asInteger = -1);
        SetLabel(lblVleugelspel, FieldByName('VLEUGELSPEL_TOP3').asInteger = -1);
        SetLabel(lblPassen, FieldByName('PASSEN_TOP3').asInteger = -1);
        SetLabel(lblScoren, FieldByName('SCOREN_TOP3').asInteger = -1);

        lblNTGK.Caption := Format('%.2f',[FieldByName('GK_INDEX').asFloat]);
        lblNTCD.Caption := Format('%.2f',[FieldByName('CD_INDEX').asFloat]);
        lblNTOCD.Caption := Format('%.2f',[FieldByName('OCD_INDEX').asFloat]);
        lblNTOWB.Caption := Format('%.2f',[FieldByName('OWB_INDEX').asFloat]);
        lblNTIM.Caption := Format('%.2f',[FieldByName('IM_INDEX').asFloat]);
        lblNTWING.Caption := Format('%.2f',[FieldByName('WING_INDEX').asFloat]);
        lblNTFW.Caption := Format('%.2f',[FieldByName('FW_INDEX').asFloat]);
        lblNTdFW.Caption := Format('%.2f',[FieldByName('DFW_INDEX').asFloat]);
        lblNTSP.Caption := Format('%.2f',[FieldByName('SP_DEF_INDEX').asFloat]);
      finally
        uBibdb.CommitTransaction(Transaction, TRUE);
        Free;
      end;
    end;



    // U20
    with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          Add('POT.GK_INDEX,');
          Add('POT.CD_INDEX,');
          Add('POT.OCD_INDEX,');
          Add('POT.OWB_INDEX,');
          Add('POT.IM_INDEX,');
          Add('POT.WING_INDEX,');
          Add('POT.FW_INDEX ,');
          Add('POT.DFW_INDEX,');
          Add('POT.SP_DEF_INDEX,');
          Add('P.KEEPEN_TOP3, P.VERDEDIGEN_TOP3, P.POSITIESPEL_TOP3, P.PASSEN_TOP3,');
          Add('P.VLEUGELSPEL_TOP3, P.SCOREN_TOP3');
          Add('FROM JEUGDSPELERS J');
          Add('LEFT JOIN KARAKTER_PROFIEL P ON (J.KARAKTER_ID = P.ID)');
          Add('LEFT JOIN NT_INDICES POT ON (P.ID = POT.KARAKTER_ID AND POT.IS_U20 = -1)');
          Add('WHERE J.PLAYER_ID = :ID');
        end;
        ParamByName('ID').asInteger := aPlayerID;
        ExecQuery;


        lblU20GK.Caption := Format('%.2f',[FieldByName('GK_INDEX').asFloat]);
        if (GetCurU20Index(aPlayerId,6,vCurIndex)) then
        begin
          lblCurCD.Caption := Format('[%.2f]',[vCurIndex]);
        end;
        lblU20CD.Caption := Format('%.2f',[FieldByName('CD_INDEX').asFloat]);
        if (GetCurU20Index(aPlayerId,5,vCurIndex)) then
        begin
          lblCurOCD.Caption := Format('[%.2f]',[vCurIndex]);
        end;
        lblU20OCD.Caption := Format('%.2f',[FieldByName('OCD_INDEX').asFloat]);
        if (GetCurU20Index(aPlayerId,1,vCurIndex)) then
        begin
          lblCurOWB.Caption := Format('[%.2f]',[vCurIndex]);
        end;
        lblU20OWB.Caption := Format('%.2f',[FieldByName('OWB_INDEX').asFloat]);
        if (GetCurU20Index(aPlayerId,2,vCurIndex)) then
        begin
          lblCurIM.Caption := Format('[%.2f]',[vCurIndex]);
        end;
        lblU20IM.Caption := Format('%.2f',[FieldByName('IM_INDEX').asFloat]);
        if (GetCurU20Index(aPlayerId,3,vCurIndex)) then
        begin
          lblCurWNG.Caption := Format('[%.2f]',[vCurIndex]);
        end;
        lblU20WING.Caption := Format('%.2f',[FieldByName('WING_INDEX').asFloat]);
        if (GetCurU20Index(aPlayerId,4,vCurIndex)) then
        begin
          lblCurFW.Caption := Format('[%.2f]',[vCurIndex]);
        end;
        lblU20FW.Caption := Format('%.2f',[FieldByName('FW_INDEX').asFloat]);
        if (GetCurU20Index(aPlayerId,7,vCurIndex)) then
        begin
          lblCurdFW.Caption := Format('[%.2f]',[vCurIndex]);
        end;
        lblU20dFW.Caption := Format('%.2f',[FieldByName('DFW_INDEX').asFloat]);

        if (GetCurU20Index(aPlayerId,8,vCurIndex)) then
        begin
          lblCurSP.Caption := Format('[%.2f]',[vCurIndex]);
        end;
        lblU20SP.Caption := Format('%.2f',[FieldByName('SP_DEF_INDEX').asFloat]);
      finally
        uBibdb.CommitTransaction(Transaction, TRUE);
        Free;
      end;
    end;
  end
  else
  begin
    lblNTGK.Caption := '';
    lblNTCD.Caption := '';
    lblNTOCD.Caption := '';
    lblNTOWB.Caption := '';
    lblNTIM.Caption := '';
    lblNTWING.Caption := '';
    lblNTFW.Caption := '';
    lblNTdFW.Caption := '';
    lblNTSP.Caption := '';
    lblU20GK.Caption := '';
    lblU20CD.Caption := '';
    lblU20OCD.Caption := '';
    lblU20OWB.Caption := '';
    lblU20IM.Caption := '';
    lblU20WING.Caption := '';
    lblU20FW.Caption := '';
    lblU20dFW.Caption := '';
    lblU20SP.Caption := '';
  end;
end;

procedure TfrmPlayerInfo.GetPossibleBatchlings;
var
  vList: TBatchlingArray;
  i: integer;
begin
  ibqrPosBatchlings.Close;
  vList := uHattrick.GetPossibleTwins(frmHTScanner.ibdbHTInfo, FSpelerSQL.FieldByName('KARAKTER_ID').asInteger);

  if High(vList) > -1 then
  begin
    ibqrPosBatchlings.SQL.Clear;
    for i:=Low(vList) to High(vList) do
    begin
      if (i > 0) then
      begin
        ibqrPosBatchlings.SQL.Add('UNION');
      end;
      ibqrPosBatchlings.SQL.Add(Format('SELECT * FROM GET_BATCHLINGS_UNLIMITED(%d,0)',[vList[i]]));
    end;
    ibqrPosBatchlings.SQL.Add('ORDER BY 4');
    ibqrPosBatchlings.Open;

    if (ibqrPosBatchlings.RecordCount > 0) then
    begin
      tbPosTwins.Caption := Format('Possible batchlings (%d)',[ibqrPosBatchlings.RecordCount]);
    end
    else
    begin
      tbPosTwins.Caption := 'Possible batchlings';
    end;
  end
  else
  begin
    tbPosTwins.Caption := 'Possible batchlings';
  end;
end;

procedure TfrmPlayerInfo.Zoek;
var
  vParam:String;
begin
  FNoChange := TRUE;
  cxedtManager.Text := '';
  FCurPlayerID := -1;
  FCurTeamID := -1;
  IBReadTransaction.CommitRetaining;
  Screen.Cursor := crSQLWait;
  if (FReloadTwinsEtc) then
  begin
    ibqrBatchlings.Close;
    ibqrPrestaties.Close;
  end;
  
  try
    if ibdtstManagerInfo.State in [dsEdit,dsInsert] then
      ibdtstManagerInfo.Post;

    if (edPlayerID.Text <> '') then
    begin
      vParam := edPlayerID.Text;
    end
    else
    begin
      vParam := edTeamID.Text;
      FCurTeamID := StrToInt(vParam);
    end;

    if (edPlayerID.Text <> '') then
    begin
      FCurPlayerID := StrToInt(vParam);
      with FSpelerSQL do
      begin
        Close;
        ParamByName('ID').asString := vParam;
        ExecQuery;
        FCurTeamID := FieldByName('TEAM_ID').asInteger;

        ParsePlayerInfo(FSpelerSQL);
      end;

      if (FReloadTwinsEtc) then
      begin
        with ibqrBatchlings do
        begin
          ParamByName('KARAKTERID').asInteger := FSpelerSQL.FieldByName('KARAKTER_ID').asInteger;
          Open;
          if (RecordCount > 0) then
          begin
            tbBatchlings.Caption := Format('Batchlings (%d)',[RecordCount]);
          end
          else
          begin
            tbBatchlings.Caption := 'Batchlings';
          end;
        end;

        GetPossibleBatchlings;

        with ibqrPrestaties do
        begin
          ParamByName('KARAKTERID').asInteger := FSpelerSQL.FieldByName('KARAKTER_ID').asInteger;
          Open;
        end;
      end;
    end;

    If (FReloadTwinsEtc) then
    begin
      with ibqrTalenten do
      begin
        Close;
        if FCurTeamID > 0 then
        begin
          ParamByName('TEAMID').asInteger := FCurTeamID;
          Open;
        end;
      end;
    end;
    
    if (FCurTeamID > 0) then
    begin
      lblBlacklist.Visible := (uBibDB.GetFieldValue(frmHTScanner.ibdbHTInfo,'BLACKLIST',
          ['TEAM_ID'],[FCurTeamID],'ID',srtInteger,svtNormal, uHattrick.CreateReadTransAction(frmHTScanner.ibdbHTInfo))) > 0;
    end
    else
    begin
      lblBlacklist.Visible := FALSE;
    end;

    with ibdtstManagerInfo do
    begin
      if (Active) then
      begin
        Close;
      end;
      if FCurTeamID > 0 then
      begin
        ParamByName('TEAMID').asInteger := FCurTeamID;
        Open;
        cxedtManager.Text := FieldByName('MANAGER_NAAM').asString;
        FNoChange := FALSE;
        if (RecordCount = 0) then
        begin
          Insert;
          FieldByName('TEAM_ID').asInteger := FCurTeamID;
          Post;
        end;
        Close;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    edPlayerID.Text := '';
    edTeamID.Text := '';
    if (edPlayerId.Visible) then
    begin
      edPlayerID.SetFocus;
    end;
    FReloadTwinsEtc := TRUE;
  end;
end;

procedure TfrmPlayerInfo.FormCreate(Sender: TObject);
const
  cSQL_PLAYERID = 'SELECT J.PLAYER_ID,J.KARAKTER_ID,J.PLAYER_NAME,J.TABSHEET,J.GOOGLE_DOC,J.EXPORTED,J.SCAN_DATUM,J.TEAM_ID,J.KEEPEN,J.VERDEDIGEN,J.POSITIESPEL,J.PASSEN,'+#13+
    'J.SCOREN,J.SPELHERVATTEN,J.VLEUGELSPEL,J.UPDATE_COUNT,J.IN_DOCS,D.SCOUT,L.LEEFTIJD,I.MANAGER_NAAM,U.U20 FROM JEUGDSPELERS J'+#13+
    'LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM,CURRENT_DATE) L ON (0=0)'+#13+
    'LEFT JOIN MANAGER_INFO I ON (J.TEAM_ID = I.TEAM_ID)'+#13+
    'LEFT JOIN GET_IS_U20(J.GEBOORTE_DATUM,1) U ON (0=0)'+#13+
    'LEFT JOIN DOCS D ON (J.GOOGLE_DOC = D.DOC_NAME AND J.TABSHEET = D.SHEET_NAME)'+#13+
    'WHERE J.PLAYER_ID = :ID';
begin
  FReloadTwinsEtc := TRUE;

  ibdtstScouting.Database := frmHTScanner.ibdbHTInfo;
  ibqrPotentials.Database := frmHTScanner.ibdbHTInfo;
  ibqrNTTalenten.Database := frmHTScanner.ibdbHTInfo;
  ibqrPosBatchlings.Database := frmHTScanner.ibdbHTInfo;

  IBWriteTransaction.DefaultDatabase := frmHTScanner.ibdbHTInfo;
  IBReadTransaction.DefaultDatabase := frmHTScanner.ibdbHTInfo;

  ibqrBatchlings.Transaction := IBReadTransaction;
  ibqrTalenten.Transaction := IBReadTransaction;
  ibqrPotentials.Transaction := IBReadTransaction;
  ibqrNTTalenten.Transaction := IBReadTransaction;
  ibqrPosBatchlings.Transaction := IBReadTransaction;
  ibqrPrestaties.Transaction := IBReadTransaction;

  ibdtstScouting.Transaction := IBWriteTransaction;
  ibdtstSTDBerichten.Transaction := IBWriteTransaction;
  ibdtstManagerInfo.Transaction := IBWriteTransaction;

  IBReadTransaction.StartTransaction;
  FSpelerSQL := uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo,cSQL_PLAYERID,IBReadTransaction);
  CalcPotentials(0,0);
  FLoaded := TRUE;
  pcgControlInfo.ActivePage := tbPlayerinfo;
  dxPageControl1.ActivePage := tbBatchlings;
end;

procedure TfrmPlayerInfo.FormDestroy(Sender: TObject);
begin
  if (ibdtstManagerInfo.State in [dsEdit,dsInsert]) then
  begin
    ibdtstManagerInfo.Post;
  end;

  if (ibdtstSTDBerichten.State in [dsEdit,dsInsert]) then
  begin
    ibdtstSTDBerichten.Post;
  end;

  FSpelerSQL.Free;
  IBReadTransaction.Commit;
end;

function TfrmPlayerInfo.GetFieldName(aStart,aField:String):String;
var
  vPos,vPos1:integer;
begin
  result := '';
  vPos := Pos(aStart,aField);
  if (vPos > 0) then
  begin
    vPos1 := Pos(']',aField);
    if (vPos1 > 0) then
    begin
      result := Copy(aField,vPos+1,(vPos1 - vPos) - 1);
    end;
  end;
end;

function TfrmPlayerInfo.ParseFields(aTekst:String):String;
var
  vFieldName:String;
begin
  result := aTekst;
  while pos('@',result) > 0 do
  begin
    vFieldName := GetFieldName('@',result);
    if (vFieldName <> '') then
    begin
      result := StringReplace(result,Format('[@%s]',[vFieldName]),
        FSpelerSQL.FieldByname(vFieldName).asString,[rfReplaceAll]);
    end;
  end;
end;

function TfrmPlayerInfo.GenerateTekst(aType:TStdTekst;aCount:integer;
  aHerhaling:boolean):boolean;
var
  vTekst:String;
begin
  vTekst := GetSTDTekst(aType,aCount,aHerhaling);
  if (vTekst <> '') then
  begin
    vTekst := ParseFields(vTekst);

    mBericht.Text := vTekst;
  end;

  result := vTekst <> '';

  if (result) then
  begin
    Clipboard.AsText := mBericht.Text;
  end;
end;

function TfrmPlayerInfo.GetSTDTekst(aType:TStdTekst;aCount:integer;
  aHerhaling:boolean):String;
var
  vID, vCount: integer;
begin
  vID := -1;
  case aType of
    stdInfo,stdAfwijzing,stdPromotie:
    begin
      vCount := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,
        'STD_BERICHTEN',['BERICHT_TYPE','U20','HERHALING'],[Ord(aType),
        Ord(chckU20.Checked) * -1,Ord(aHerhaling) * -1],'ID',srtInteger,svtCount);

      if (vCount = 1) then
      begin
        vID := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,
        'STD_BERICHTEN',['BERICHT_TYPE','U20','HERHALING'],
        [Ord(aType),Ord(chckU20.Checked) * -1,Ord(aHerhaling) * -1],'ID',srtInteger);
      end;
    end;
    stdUpdate:
    begin
      vCount := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,
        'STD_BERICHTEN',['BERICHT_TYPE','UPDATE_COUNT','U20','HERHALING'],
          [Ord(aType), aCount,Ord(chckU20.Checked) * -1,Ord(aHerhaling) * -1],'ID',srtInteger,svtCount);

      if (vCount = 1) then
      begin
        vID := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,
        'STD_BERICHTEN',['BERICHT_TYPE','UPDATE_COUNT','U20','HERHALING'],
        [Ord(aType), aCount,Ord(chckU20.Checked) * -1, Ord(aHerhaling) * -1],'ID',srtInteger);
      end;
    end;
  end;


  if (vID > 0) then
  begin
    result := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,
      'STD_BERICHTEN',['ID'],[vID],'BERICHT',srtString);
  end
  else
  begin
    ShowMessage('Geen bericht gevonden');
  end;
end;

procedure TfrmPlayerInfo.btnInfoClick(Sender: TObject);
begin
  GenerateTekst(stdInfo,-1,FALSE);
end;

procedure TfrmPlayerInfo.Button2Click(Sender: TObject);
var
  vPlayerID: integer;
begin
  if GenerateTekst(stdUpdate,FSpelerSQL.FieldByName('UPDATE_COUNT').asInteger + 1,FALSE) then
  begin
    vPlayerID := FSpelerSQL.FieldByName('PLAYER_ID').asInteger;

    uBibDb.ExecSQL(frmHTScanner.ibdbHTInfo,'UPDATE JEUGDSPELERS SET UPDATE_COUNT = :COUNT WHERE PLAYER_ID = :ID',
      ['ID','COUNT'],[FSpelerSQL.FieldByName('PLAYER_ID').asInteger,FSpelerSQL.FieldByName('UPDATE_COUNT').asInteger + 1]);

    FSpelerSQL.Close;
    FSpelerSQL.ParamByName('ID').asInteger := vPlayerID;
    FSpelerSQL.ExecQuery;
    ParsePlayerInfo(FSpelerSQL);
  end;
end;

procedure TfrmPlayerInfo.Button4Click(Sender: TObject);
begin
  GenerateTekst(stdAfwijzing,-1,FALSE);
end;

procedure TfrmPlayerInfo.Button1Click(Sender: TObject);
begin
  Zoek;
  edPlayerID.SetFocus;
end;

procedure TfrmPlayerInfo.ibdtstSTDBerichtenAfterPost(DataSet: TDataSet);
begin
  IBWriteTransaction.CommitRetaining;
end;

procedure TfrmPlayerInfo.FormActivate(Sender: TObject);
begin
  pcgControlInfo.ActivePage := tbPlayerinfo;
end;

procedure TfrmPlayerInfo.mBerichtExit(Sender: TObject);
begin
  Clipboard.AsText := mBericht.Text;
end;

procedure TfrmPlayerInfo.Button3Click(Sender: TObject);
begin
  GenerateTekst(stdInfo,-1,TRUE);
end;

procedure TfrmPlayerInfo.Button5Click(Sender: TObject);
begin
  GenerateTekst(stdUpdate,1,TRUE);
end;

procedure TfrmPlayerInfo.Button6Click(Sender: TObject);
begin
  GenerateTekst(stdPromotie,-1,FALSE);
end;

procedure TfrmPlayerInfo.edPlayerIDChange(Sender: TObject);
begin
  if (edPlayerID.Text <> '') and (Length(edPlayeriD.Text) >= 8) then
  begin
    try
      StrToInt(edPlayerID.Text);
      Zoek;
    except

    end;
  end;
end;

procedure TfrmPlayerInfo.lblPlayerNameDblClick(Sender: TObject);
begin
  with TfrmNewName.Create(nil) do
  begin
    try
      PlayerID := FSpelerSQL.FieldByName('PLAYER_ID').asInteger;
      Titel := 'HTScanner';
      Prompt := 'Geef de nieuwe spelersnaam...';

      if ShowModal = mrOK then
      begin
        edPlayerID.Text := FSpelerSQL.FieldByName('PLAYER_ID').asString;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfrmPlayerInfo.btnScoutClick(Sender: TObject);
var
  vTeamID: integer;
  vFound: boolean;
begin
  lblStatus.Caption := 'Busy...';
  edPlayerID.Visible := FALSE;
  vFound := FALSE;
  try
    if (CurPlayerID > 0) then
    begin
      // ZOek de speler maar ff op
      vFound := frmHTScanner.GetJeugdspelerInfoByID(CurPlayerID,0,'',TRUE, chckKeeper.Checked, TRUE);
      edPlayerID.Text := IntToStr(CurPlayerID);
    end;

    if (vFound) then
    begin
      frmHTScanner.CurScan := '[post=xxx]';

      vTeamID := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],[CurPlayerID],'TEAM_ID',srtInteger);
      if (vTeamID <= 0) then
      begin
        vTeamID := StrToInt(InputBox('HTScanner','Geef het TeamID...','0'));

        uBibDb.ExecSQL(frmHTScanner.ibdbHTInfo,'UPDATE JEUGDSPELERS SET TEAM_ID = :TEAMID WHERE PLAYER_ID = :ID',
          ['ID','TEAMID'],[CurPlayerID, vTeamID]);
      end;

      if frmHTScanner.ExtractPlayersToCSV(0,FALSE,CurPlayerID) > 0 then
      begin
        edPlayerID.Text := IntToStr(CurPlayerID);
        frmHTScanner.ExtractPlayersToCSV(0,FALSE,CurPlayerID);

        //ShowMessage('Klaar');
      end;
    end;
  finally
    lblStatus.Caption := 'Idle...';
    edPlayerID.Visible := TRUE;
  end;
end;

procedure TfrmPlayerInfo.btnNTScoutingClick(Sender: TObject);
begin
  with ibdtstScouting do
  begin
    if (Active) and (State in [dsEdit,dsInsert]) then
    begin
      Post;
    end;

    Close;
    ParamByName('ID').asString := edNTPlayerID.Text;
    Open;
  end;
end;

procedure TfrmPlayerInfo.Button8Click(Sender: TObject);
var
  vSenior: TTSISet;
begin
  Screen.Cursor := crSQLWait;
  try
    frmHTScanner.BrowseToPlayer(StrToInt(edNTPlayerID.Text));

    vSenior := frmHTScanner.ParsePlayerInfo;
    try
      vSenior.IsKeeper := chckEDKeeper.Checked;
      frmHTScanner.SaveScouting(vSenior, TRUE);

      btnNTScoutingClick(btnNTScouting);
    finally
      vSenior.Free;
    end;
    btnYouthplayerIDClick(btnYouthplayerID);

    chckEDKeeper.Checked := FALSE;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPlayerInfo.GetYouthPlayerID;
begin
  if (ibdtstScouting.Active) and (ibdtstScouting.State in [dsEdit,dsInsert]) then
  begin
    ibdtstScouting.Post;
  end;

  if (ibdtstScouting.FieldByName('PLAYER_NAAM').asString <> '') and (ibdtstScouting.FieldByName('KARAKTER_PROFIEL_ID').asInteger > 0) then
  begin
    with uBibRunTime.CreateSQL(frmHTScanner.ibdbHTInfo) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          Add('PLAYER_ID, TEAM_ID, PLAYER_NAME');
          Add('FROM JEUGDSPELERS');
          Add('WHERE KARAKTER_ID = :ID AND COALESCE(DELETED,0) = 0');
        end;
        ParamByName('ID').asInteger := ibdtstScouting.FieldByName('KARAKTER_PROFIEL_ID').asInteger;
        ExecQuery;
        while not EOF do
        begin
          frmHTScanner.GetJeugdspelerInfoByID(FieldByName('PLAYER_ID').asInteger,
            FieldByName('TEAM_ID').asInteger,FieldByName('PLAYER_NAME').asString,TRUE,FALSE,TRUE);
          Next;
        end;
      finally
        uBibDB.CommitTransaction(Transaction,TRUE);
        Free;
      end;
    end;
  end;
end;

procedure TfrmPlayerInfo.btnYouthplayerIDClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    GetYouthPlayerID;
    btnNTScoutingClick(btnNTScouting);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPlayerInfo.ibdtstScoutingAfterPost(DataSet: TDataSet);
begin
  IBWriteTransaction.CommitRetaining;
end;

procedure TfrmPlayerInfo.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  vGeboorteDatum: TDate;
begin
  vGeboorteDatum := uBibGrid.GetNodeValue(aNode,'GEBOORTE_DATUM',srtDate);
  if (vGeboorteDatum < (Date - 2 * 16 * 7)) then
  begin
    aFont.Color := clSilver;
  end;
end;

procedure TfrmPlayerInfo.dxDBGrid2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  vDeleted, vPromoted, vIsTrainer:boolean;
begin
  vDeleted := uBibGrid.GetNodeValue(aNode,'DELETED',srtInteger) = -1;
  if (vDeleted) then
  begin
    aFont.Color := clRed;
  end
  else
  begin
    vIsTrainer := uBibGrid.GetNodeValue(aNode,'IS_TRAINER',srtInteger) = -1;
    if (vIsTrainer) then
    begin
      aFont.Color := clMaroon;
    end
    else
    begin
      vPromoted := uBibGrid.GetNodeValue(aNode,'PROMOTED',srtInteger) = -1;
      if (vPromoted) then
      begin
        aFont.Color := clBlue;
      end;
    end;
  end;
end;

procedure TfrmPlayerInfo.ibqrPotentialsBeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).ParamByName('MAX_AWIJKING').asInteger := -5;
end;

procedure TfrmPlayerInfo.dxDBGrid4GK_INDEXCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  vValue:double;
begin
  vValue := uBibGrid.GetNodeValue(aNode,AColumn.Index,srtFloat);

  if (vValue < -5) then
  begin
    aColor := clRed;
    aFont.color := clBlack;
  end
  else if (vValue < 0) then
  begin
    aColor := clBlue;
    aFont.Color := clWhite;
  end
  else
  begin
    aColor := clGreen;
    aFont.Color := clWhite;
  end;
end;

procedure TfrmPlayerInfo.dxDBGrid4CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  vValue:String;
  vDatum:TDate;
begin
  vValue := uBibGrid.GetNodeValue(aNode,'HERKOMST',srtstring);
  if (vValue = 'Netherlands') then
  begin
    aFont.Style := aFont.Style + [fsBold];
  end;

  vDatum := uBibGrid.GetNodeValue(aNode,'DATUM',srtDate);
  if (vDatum = Date) then
  begin
    aFont.Color := clBlue;
  end
  else if (vDatum = Date -1) then
  begin
    aFont.Color := clDkGray;
  end;
end;

procedure TfrmPlayerInfo.Button7Click(Sender: TObject);
begin
  with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo,'SELECT * FROM CALC_NT_POTENTIAL_OVERALL(:JAAR,:DAGEN,:KEEPEN'+
    ',:VERDEDIGEN,:POSITIESPEL,:VLEUGELSPEL,:PASSEN,:SCOREN,:SPELHERVATTEN)') do
  begin
    try
      ParamByName('JAAR').asInteger := spedJaar.IntValue;
      ParamByName('DAGEN').asInteger := spedDagen.IntValue;
      ParamByName('KEEPEN').asInteger := pckEdKeepen.ItemIndex;
      ParamByName('VERDEDIGEN').asInteger := pckEdVerdedigen.ItemIndex;
      ParamByName('POSITIESPEL').asInteger := pckEdPositiespel.ItemIndex;
      ParamByName('VLEUGELSPEL').asInteger := pckEdVleugelspel.ItemIndex;
      ParamByname('PASSEN').asInteger := pckEdPassen.ItemIndex;
      ParamByName('SCOREN').asInteger := pckEdScoren.ItemIndex;
      ParamByname('SPELHERVATTEN').asInteger := pckEdSpelhervatten.ItemIndex;
      ExecQuery;

      lblGK.Caption := Format('GK %.2f',[FieldByName('GK_INDEX').asFloat]);
      lblCD.Caption := Format('CD %.2f',[FieldByName('CD_INDEX').asFloat]);
      lblOCD.Caption := Format('OCD %.2f',[FieldByName('OCD_INDEX').asFloat]);
      lblOWB.Caption := Format('OWB %.2f',[FieldByName('OWB_INDEX').asFloat]);
      lblIM.Caption := Format('IM %.2f',[FieldByName('IM_INDEX').asFloat]);
      lblWING.Caption := Format('WING %.2f',[FieldByName('WING_INDEX').asFloat]);
      lblFW.Caption := Format('FW %.2f',[FieldByName('FW_INDEX').asFloat]);
      lblDFW.Caption := Format('DFW %.2f',[FieldByName('DFW_INDEX').asFloat]);
      chckIsU20.Checked := FieldByName('IS_U20').asInteger = -1;
    finally
      ubibDb.CommitTransaction(Transaction,TRUE);
      Free;
    end;
  end;
end;

procedure TfrmPlayerInfo.ToonNTTalenten(aIndex:Integer);
var
  vGeboortedatum: TDate;
begin
  vGeboortedatum := Date - ( ((spedJaar.IntValue - 15) * 16 * 7) + spedDagen.IntValue);

  with ibqrNTTalenten do
  begin
    Close;
    with SQL do
    begin
      Clear;
      Add('SELECT');
      Add('N.PLAYER_ID,');
      Add('N.PLAYER_NAME,');
      Add('L.LEEFTIJD,');
      Add('N.SPECIALITEIT,');
      case aIndex of
        0: Add('POT.GK_INDEX');
        1: Add('POT.CD_INDEX');
        2: Add('POT.OCD_INDEX');
        3: Add('POT.OWB_INDEX');
        4: Add('POT.IM_INDEX');
        5: Add('POT.WING_INDEX');
        6: Add('POT.FW_INDEX');
        7: Add('POT.DFW_INDEX');
      end;
      Add(' AS POS_INDEX');
      Add('FROM NT_SCOUTING N');
      Add('LEFT JOIN GET_LEEFTIJD(N.GEBOORTE_DATUM, CURRENT_DATE) L ON (0=0)');
      Add('LEFT JOIN CALC_NT_POTENTIAL_OVERALL(L.AGE,L.DAYS,N.KEEPEN,N.VERDEDIGEN,N.POSITIESPEL,');
      Add(' N.VLEUGELSPEL,N.PASSEN,N.SCOREN,N.SPELHERVATTEN) POT ON (0=0)');

      Add('WHERE');
      Add('GEBOORTE_DATUM BETWEEN :STARTDATUM AND :EINDDATUM');
      case aIndex of
        0: Add('AND TAB_INDEX = 1');
        1: Add('AND TAB_INDEX = 2');
        2: Add('AND TAB_INDEX = 3');
        3: Add('AND TAB_INDEX = 4');
        4: Add('AND TAB_INDEX = 5');
        5: Add('AND TAB_INDEX = 6');
        6: Add('AND TAB_INDEX = 8');
        7: Add('AND TAB_INDEX = 9');
      end;
      Add('ORDER BY 5 DESC');
    end;
    ParamByName('STARTDATUM').asDateTime := vGeboortedatum - 56;
    ParamByName('EINDDATUM').asDateTime := vGeboortedatum + 56;
    Open;
  end;
end;

procedure TfrmPlayerInfo.lblGKClick(Sender: TObject);
begin
  ToonNTTalenten(TLabel(Sender).Tag);
end;

procedure TfrmPlayerInfo.pcgControlInfoChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  if (FLoaded) then
  begin
    ibdtstScouting.Close;
    ibdtstSTDBerichten.Close;

    if NewPage = tbPotentials then
    begin
      if not (ibqrPotentials.Active) then
      begin
        Screen.Cursor := crSQLWait;
        try
          ibqrPotentials.Open;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
    end
    else if NewPage = tbNTScouting then
    begin
      ibdtstScouting.Open;
    end
    else if NewPage = tbSTDBerichten then
    begin
      ibdtstSTDBerichten.Open;
    end;
  end;
end;

procedure TfrmPlayerInfo.ShowPotential(aIndex: integer);
var
  vKarakterID:integer;
  vPot:double;
  vField,vTop3Field, vResult: String;
begin
  vKarakterID := FSpelerSQL.FieldByName('KARAKTER_ID').asInteger;
  if (vKarakterID > 0) then
  begin
    case aIndex of
      0:
      begin
        vField := 'POT_KEEPEN';
        vTop3Field := 'KEEPEN_TOP3';
      end;
      1:
      begin
        vField := 'POT_VERDEDIGEN';
        vTop3Field := 'VERDEDIGEN_TOP3';
      end;
      2:
      begin
        vField := 'POT_POSITIESPEL';
        vTop3Field := 'POSITIESPEL_TOP3';
      end;
      3:
      begin
       vField := 'POT_VLEUGELSPEL';
       vTop3Field := 'VLEUGELSPEL_TOP3';
      end;
      4:
      begin
        vField := 'POT_PASSEN';
        vTop3Field := 'PASSEN_TOP3';
      end;
      5:
      begin
        vField := 'POT_SCOREN';
        vTop3Field := 'SCOREN_TOP3';
      end;
      6:
      begin
        vField := 'POT_SPELHERVATTEN';
        vTop3Field := '';
      end;
    end;

    if (vField <> '') then
    begin
      vPot := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,'KARAKTER_PROFIEL',['ID'],[vKarakterId],vField,srtFloat);

      vResult := InputBox('KarakterProfiel','Geef de potentie',FloatToStr(vPot));

      try
        if Pos('*',vResult) > 0 then
        begin
          uBibDb.ExecSQL(frmHTScanner.ibdbHTInfo,Format('UPDATE KARAKTER_PROFIEL SET %s = -1 WHERE ID = :ID',[vTop3Field]),
            ['ID'],[vKarakterId]);

          vPot := uBibConv.AnyStrToFloat(vResult);
        end
        else if Pos('#',vResult) > 0 then
        begin
          uBibDb.ExecSQL(frmHTScanner.ibdbHTInfo,Format('UPDATE KARAKTER_PROFIEL SET %s = 0 WHERE ID = :ID',[vTop3Field]),
            ['ID'],[vKarakterId]);

          vPot := uBibConv.AnyStrToFloat(vResult);
        end
        else
        begin
          vPot := StrToFloat(vResult);
        end;

        if (vPot > 0) then
        begin
          uBibDb.ExecSQL(frmHTScanner.ibdbHTInfo,
            Format('UPDATE KARAKTER_PROFIEL SET %s = :WAARDE WHERE ID = :ID',[vField]),
              ['ID','WAARDE'],[vKarakterID, vPot]);
        end
        else
        begin
          uBibDb.ExecSQL(frmHTScanner.ibdbHTInfo,
            Format('UPDATE KARAKTER_PROFIEL SET %s = NULL WHERE ID = :ID',[vField]),
              ['ID'],[vKarakterID]);
        end;
        FReloadTwinsEtc := FALSE;

        edPlayerID.Text := IntToStr(CurPlayerID);

        //CalcPotentials(CurPlayerID, vKarakterID);
      except
        ShowMessage('Duh! Ongeldige waarde :S');
      end;
    end;
  end;
end;

procedure TfrmPlayerInfo.lblKeepenDblClick(Sender: TObject);
begin
  ShowPotential(TLabel(Sender).Tag);
end;

function TfrmPlayerInfo.AddPotentie(aCurPotentie, aSkill:String; aNewPotentie: Integer):String;
begin
  result := aCurPotentie;
  if (aNewPotentie > 0) then
  begin
    if (result = '') then
    begin
      result := Format('[%d %s]',[aNewPotentie,aSkill]);
    end
    else
    begin
      result := Format('%s [%d %s]',[result,aNewPotentie,aSkill]);
    end;
  end;
end;

procedure TfrmPlayerInfo.Button10Click(Sender: TObject);
var
  vKarakterID: Integer;
  vInfo: TStringList;
  vPotentie: String;
  vCount, vIndex: integer;
  vFound, vIsKeeper: boolean;
  vLastUpdate: TDate;
begin
  vPotentie := '';
  vFound := FALSE;
  vInfo := TStringList.Create;
  try
    if (ibdtstScouting.Active) then
    begin
      if (ibdtstScouting.State in [dsEdit,dsInsert]) then
      begin
        ibdtstScouting.Post;
      end;
      vKarakterID := ibdtstScouting.FieldByName('KARAKTER_PROFIEL_ID').asInteger;

      vInfo.Add(Format('[b][playerid=%d] %s[/b]',[ibdtstScouting.FieldByName('PLAYER_ID').asInteger, ibdtstScouting.FieldByName('PLAYER_NAAM').asString]));

      with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo) do
      begin
        try
          with SQL do
          begin
            Add('SELECT * FROM SCOUTING WHERE PLAYER_ID = :ID');
          end;
          ParamByName('ID').asInteger := ibdtstScouting.FieldByName('PLAYER_ID').asInteger;
          ExecQuery;
          if FieldByName('POSITIESPEL').asInteger > 0 then
          begin
            vFound := TRUE;
            
            vPotentie := AddPotentie(vPotentie,'GK',FieldByName('KEEPEN').asInteger);
            vPotentie := AddPotentie(vPotentie,'DEF',FieldByName('VERDEDIGEN').asInteger);
            vPotentie := AddPotentie(vPotentie,'POS',FieldByName('POSITIESPEL').asInteger);
            vPotentie := AddPotentie(vPotentie,'WNG',FieldByName('VLEUGELSPEL').asInteger);
            vPotentie := AddPotentie(vPotentie,'PAS',FieldByName('PASSEN').asInteger);
            vPotentie := AddPotentie(vPotentie,'SCO',FieldByName('SCOREN').asInteger);
            vPotentie := AddPotentie(vPotentie,'SH',FieldByName('SPELHERVATTING').asInteger);

            vInfo.Add(Format('Vaardigheden: %s',[vPotentie]));
          end;
        finally
          uBibDb.CommitTransaction(Transaction,TRUE);
          Free;
        end;
      end;

      if not (vFound) and (vKarakterID > 0) then
      begin
        with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo) do
        begin
          try
            with SQL do
            begin
              Add('SELECT * FROM GET_COMBINED_SKILLS(:ID)');
            end;
            ParamByName('ID').asInteger := vKarakterID;
            ExecQuery;
            vIsKeeper := FieldByName('IS_KEEPER').asInteger = -1;
            
            vPotentie := AddPotentie(vPotentie,'GK',FieldByName('POT_KEEPEN').asInteger);
            vPotentie := AddPotentie(vPotentie,'DEF',FieldByName('POT_VERDEDIGEN').asInteger);
            vPotentie := AddPotentie(vPotentie,'POS',FieldByName('POT_POSITIESPEL').asInteger);
            vPotentie := AddPotentie(vPotentie,'WNG',FieldByName('POT_VLEUGELSPEL').asInteger);
            vPotentie := AddPotentie(vPotentie,'PAS',FieldByName('POT_PASSEN').asInteger);
            vPotentie := AddPotentie(vPotentie,'SCO',FieldByName('POT_SCOREN').asInteger);
            vPotentie := AddPotentie(vPotentie,'SH',FieldByName('POT_SPELHERVATTEN').asInteger);
          finally
            uBibDb.CommitTransaction(Transaction,TRUE);
            Free;
          end;
        end;

        if (vPotentie = '') then
        begin
          vPotentie := 'Onbekend';
        end;
        vInfo.Add(Format('Max. vaardigheden in jeugd: %s',[vPotentie]));
        vCount := 0;
        vIndex := vInfo.Count;

        with uBibRuntime.CreateSQL(frmHTScanner.ibdbHTInfo) do
        begin
          try
            with SQL do
            begin
              Add('SELECT');
              Add('J.PLAYER_ID JEUGDSPELER_ID,');
              Add('J.KARAKTER_ID,');
              Add('J.TEAM_ID,');
              Add('J.PLAYER_NAME,');
              Add('S.*');
              Add('FROM');
              Add('GET_POSSIBLE_TWINS(:ID,-1) T');
              Add('LEFT JOIN JEUGDSPELERS J ON (T.ID = J.KARAKTER_ID)');
              Add('LEFT JOIN SCOUTING S ON (J.PLAYER_ID = S.YOUTHPLAYER_ID)');
              Add('WHERE');
              Add('J.PLAYER_ID <> :PLAYERID');
            end;

            ParamByName('ID').asInteger := vKarakterID;
            ParamByname('PLAYERID').asInteger := ibdtstScouting.FieldByName('YOUTHPLAYER_ID').asInteger;
            ExecQuery;

            while not EOF do
            begin
              vLastUpdate := uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],
                [FieldByName('JEUGDSPELER_ID').asInteger],'LAST_UPDATE',srtDateTime);

              if (vLastUpdate < Date) then
              begin
                frmHTScanner.GetJeugdspelerInfoByID(FieldByName('JEUGDSPELER_ID').asInteger,
                  FieldByName('TEAM_ID').asInteger,FieldByName('PLAYER_NAME').asString,
                  TRUE,vIsKeeper,TRUE);
              end;

              if ((FieldByName('VERDEDIGEN').asInteger > 0) or
                (uBibDb.GetFieldValue(frmHTScanner.ibdbHTInfo,'JEUGDSPELERS',['PLAYER_ID'],
                [FieldByName('JEUGDSPELER_ID').asInteger],'DELETED',srtInteger) = 0)) then
              begin
                inc(vCount);
                vPotentie := '';

                vPotentie := AddPotentie(vPotentie,'GK',FieldByName('KEEPEN').asInteger);
                vPotentie := AddPotentie(vPotentie,'DEF',FieldByName('VERDEDIGEN').asInteger);
                vPotentie := AddPotentie(vPotentie,'POS',FieldByName('POSITIESPEL').asInteger);
                vPotentie := AddPotentie(vPotentie,'WNG',FieldByName('VLEUGELSPEL').asInteger);
                vPotentie := AddPotentie(vPotentie,'PAS',FieldByName('PASSEN').asInteger);
                vPotentie := AddPotentie(vPotentie,'SCO',FieldByName('SCOREN').asInteger);
                vPotentie := AddPotentie(vPotentie,'SH',FieldByName('SPELHERVATTING').asInteger);

                If FieldByName('KARAKTER_ID').asInteger <> vKarakterID then
                begin
                  vInfo.Add(Format('[i][youthplayerid=%d] %s[/i]',[FieldByName('JEUGDSPELER_ID').asInteger, vPotentie]));
                end
                else
                begin
                  vInfo.Add(Format('[youthplayerid=%d] %s',[FieldByName('JEUGDSPELER_ID').asInteger, vPotentie]));
                end;
              end;
              Next;
            end;

          finally
            uBibDb.CommitTransaction(Transaction,TRUE);
            Free;
          end;
        end;
        vInfo.Insert(vIndex,Format('Batchlings: %d',[vCount]));
      end;
      
      Clipboard.AsText := vInfo.Text;

      ShowMessage(vInfo.Text);
    end;
  finally
    vInfo.Free;
  end;
end;

procedure TfrmPlayerInfo.ibdtstScoutingBeforeOpen(DataSet: TDataSet);
begin
  if not (IBWriteTransaction.InTransaction) then
  begin
    IBWriteTransaction.StartTransaction;
  end;
end;

procedure TfrmPlayerInfo.ibdtstScoutingAfterClose(DataSet: TDataSet);
begin
  IBWriteTransaction.Commit;
end;

procedure TfrmPlayerInfo.cxedtManagerPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (FCurTeamID > 0) and (not FNoChange) then
  begin
    ibdtstManagerInfo.ParamByName('TEAMID').asInteger := FCurTeamID;
    ibdtstManagerInfo.Open;
    if (ibdtstManagerInfo.FieldByName('ID').asInteger > 0) and
       (ibdtstManagerInfo.FieldByName('MANAGER_NAAM').asString <> cxedtManager.Text) then
    begin
      ibdtstManagerInfo.Edit;
      ibdtstManagerInfo.FieldByName('TEAM_ID').asInteger := FCurTeamID;
      ibdtstManagerInfo.FieldByName('MANAGER_NAAM').asString := cxedtManager.Text;
      ibdtstManagerInfo.Post;
    end;
    ibdtstManagerInfo.Close;
  end;
end;

procedure TfrmPlayerInfo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxedtManagerPropertiesEditValueChanged(cxedtManager);
end;

end.
