unit formKiesJeudcompetities;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, IBDatabase, Db, IBCustomDataSet,
  IBQuery, dxDBTLCl, dxGrClms;

type
  TfrmKiesReeks = class(TForm)
    dxdbgrdSISObjectInfo: TdxDBGrid;
    dxdbgrdSISObjectInfoOMSCHRIJVING: TdxDBGridMaskColumn;
    ibqrComps: TIBQuery;
    ibtrComp: TIBTransaction;
    dsComps: TDataSource;
    dxdbgrdSISObjectInfoLAATSTE_SCAN: TdxDBGridDateColumn;
    dxdbgrdSISObjectInfoColumn3: TdxDBGridColumn;
    dxdbgrdSISObjectInfoColumn4: TdxDBGridColumn;
    dxdbgrdSISObjectInfoColumn5: TdxDBGridColumn;
    procedure dxdbgrdSISObjectInfoDblClick(Sender: TObject);
    procedure dxdbgrdSISObjectInfoCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    FGekozenCompetitie: integer;
    FLastScan: TDateTime;
    FOmschrijving: String;
    { Private declarations }
  public
    { Public declarations }
    procedure ToonCompetities(aDatabase:TIBDatabase;aIsBigScout:boolean);
    property GekozenCompetitie:integer read FGekozenCompetitie;
    property Omschrijving:String read FOmschrijving;
  end;

function KiesCompetitieReeks(aDatabase:TIBDatabase;aIsBigScout:boolean;var aCompetitie:String):Integer;


implementation

uses
  uBibGrid, uBibDB, esbDates;

{$R *.DFM}

function KiesCompetitieReeks(aDatabase:TIBDatabase;aIsBigScout:boolean;var aCompetitie:String):Integer;
begin
  result := 0;
  with TfrmKiesReeks.Create(nil) do
  begin
    try
      ToonCompetities(aDatabase, aIsBigScout);
      if ShowModal = mrOk then
      begin
        result := GekozenCompetitie;
        aCompetitie := Omschrijving;
      end;
    finally
      Release;
    end;
  end;
end;

{ TfrmKiesReeks }

procedure TfrmKiesReeks.ToonCompetities(aDatabase: TIBDatabase; aIsBigScout:boolean);
begin
  ibtrComp.DefaultDatabase := aDatabase;
  ibqrComps.Database := aDatabase;
  ibtrComp.StartTransaction;

  FLastScan := uBibDb.GetFieldValue(aDatabase,'COMPETITIES_SCANNED',
    [],[],'SCAN_DATE',srtDateTime,svtMax,nil,'JEUGD_COMPETITIES_ID <> -1');

  with ibqrComps.SQL do
  begin
    Clear;
    Add('SELECT');
    Add('JC.ID,');
    Add('JC.OMSCHRIJVING,');
    Add('JC.TBS_DATUM,');
    Add('MAX(SC.SCAN_DATE) LAATSTE_SCAN,');
    Add('(SELECT SUM(NO_COMPETITIES) FROM JEUGD_COMPETITIES_ID WHERE');
    Add(' JEUGD_COMPETITIES_ID = JC.ID) AANTAL_COMP,');
    Add('');
    Add('(SELECT COUNT(ID) FROM COMPETITIES_SCANNED WHERE');
    Add('JEUGD_COMPETITIES_ID = JC.ID AND SCAN_DATE BETWEEN');
    Add('MAX(SC.SCAN_DATE) - 6 AND CURRENT_DATE) AANTAL_GESCOUT');
    Add('');
    Add('FROM JEUGD_COMPETITIES JC');
    Add('LEFT JOIN COMPETITIES_SCANNED SC ON (JC.ID = SC.JEUGD_COMPETITIES_ID)');
    Add('WHERE');
    if (aIsBigScout) then
    begin
      Add('  JC.ID < 0');
    end
    else
    begin
      Add('  JC.ID > 0');
    end;
    Add('GROUP BY');
    Add('  JC.ID, JC.OMSCHRIJVING, JC.VOLGORDE, JC.TBS_DATUM');
    Add('ORDER BY VOLGORDE');
  end;
  ibqrComps.Open;
end;

procedure TfrmKiesReeks.dxdbgrdSISObjectInfoDblClick(Sender: TObject);
begin
  FGekozenCompetitie := ibqrComps.FieldByName('ID').asInteger;
  FOmschrijving := ibqrComps.FieldByname('OMSCHRIJVING').asString;
  ModalResult := mrOK;
end;

procedure TfrmKiesReeks.dxdbgrdSISObjectInfoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  vDatum: TDateTime;
  vNextRun:TDate;
  vTotal,vDone, vDag:integer;
  vJaar,vMaand,vDummy: Word;
begin
  if (aNode <> nil) then
  begin
    vDatum := uBibGrid.GetNodeValue(aNode,'LAATSTE_SCAN',srtDateTime);
    vDag := uBibGrid.GetNodeValue(aNode,'TBS_DATUM',srtDateTime);

    if (vDag > 0) then
    begin
      // Laatste scan...
      DecodeDate(vDatum,vJaar,vMaand,vDummy);
      vNextRun := EncodeDate(vJaar,vMaand,vDag) + 1;
      if (vNextRun <= vDatum) then
      begin
        vNextRun :=  EsbDates.AddMonths(vNextRun,1);
      end;
    end
    else
    begin
      vNextRun := esbDates.AddMonths(vDatum,1);
    end;

    if (vDatum = FLastScan) then
    begin
      aFont.Color := clBlue;
    end
    else if (vNextRun <= Date) then
    begin
      aFont.Color := clRed;
    end
    else
    begin
      vTotal :=  uBibGrid.GetNodeValue(aNode,'AANTAL_COMP',srtInteger);
      vDone := uBibGrid.GetNodeValue(aNode,'AANTAL_GESCOUT',srtInteger);

      if (vDone < vTotal) then
      begin
        aFont.Color := clBlue;
      end;
    end;
  end;
end;

end.
