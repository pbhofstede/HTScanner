unit formAutoScout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, FormMain, Db, IBCustomDataSet, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, dxDBTLCl, dxGrClms, dxmdaset, IBDatabase;

type
  TfrmAutoScout = class(TForm)
    Panel1: TPanel;
    CancelBtn: TButton;
    qyAutoscan: TIBDataSet;
    dsAutoscan: TDataSource;
    dbgAutoscan: TdxDBGrid;
    dbgAutoscanMIN_LEEFTIJD: TdxDBGridColumn;
    dbgAutoscanID: TdxDBGridColumn;
    dbgAutoscanMAX_LEEFTIJD: TdxDBGridColumn;
    qyAutoscanID: TIntegerField;
    qyAutoscanMIN_LEEFTIJD: TSmallintField;
    qyAutoscanMAX_LEEFTIJD: TSmallintField;
    qyAutoscanSKILL1_TYPE: TSmallintField;
    qyAutoscanSKILL1_MIN: TSmallintField;
    qyAutoscanSKILL1_MAX: TSmallintField;
    qyAutoscanSKILL2_TYPE: TSmallintField;
    qyAutoscanSKILL2_MIN: TSmallintField;
    qyAutoscanSKILL2_MAX: TSmallintField;
    qyAutoscanSKILL3_TYPE: TSmallintField;
    qyAutoscanSKILL3_MIN: TSmallintField;
    qyAutoscanSKILL3_MAX: TSmallintField;
    mmVaardigheden: TdxMemData;
    mmVaardighedenID: TSmallintField;
    mmVaardighedenOMSCHRIJVING: TStringField;
    qyAutoscanSKILL1_TYPE_OMS: TStringField;
    dbgAutoscanSKILL1_TYPE_OMS: TdxDBGridLookupColumn;
    ibtrAutoScan: TIBTransaction;
    qyAutoscanSKILL2_TYPE_OMS: TStringField;
    dbgAutoscanSKILL2_TYPE_OMS: TdxDBGridLookupColumn;
    qyAutoscanSKILL1_MIN_OMS: TStringField;   
    qyAutoscanSKILL1_MAX_OMS: TStringField;
    qyAutoscanSKILL2_MIN_OMS: TStringField;
    qyAutoscanSKILL2_MAX_OMS: TStringField;    
    qyAutoscanSKILL3_TYPE_OMS: TStringField;
    dbgAutoscanSKILL3_TYPE_OMS: TdxDBGridLookupColumn;
    qyAutoscanSKILL3_MIN_OMS: TStringField;
    qyAutoscanSKILL3_MAX_OMS: TStringField;
    mmWaarden: TdxMemData;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    dbgAutoscanSKILL1_MIN_OMS: TdxDBGridLookupColumn;
    dbgAutoscanSKILL1_MAX_OMS: TdxDBGridLookupColumn;
    dbgAutoscanSKILL2_MIN_OMS: TdxDBGridLookupColumn;
    dbgAutoscanSKILL2_MAX_OMS: TdxDBGridLookupColumn;   
    dbgAutoscanSKILL3_MIN_OMS: TdxDBGridLookupColumn;
    dbgAutoscanSKILL3_MAX_OMS: TdxDBGridLookupColumn;
    btnScan: TButton;
    procedure FormCreate(Sender: TObject);
    procedure qyAutoscanAfterPost(DataSet: TDataSet);
    procedure btnScanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TfrmAutoScout.FormCreate(Sender: TObject);
begin
  qyAutoscan.Open;
end;

procedure TfrmAutoScout.qyAutoscanAfterPost(DataSet: TDataSet);
begin
  ibtrAutoScan.CommitRetaining;
end;

procedure TfrmAutoScout.btnScanClick(Sender: TObject);
begin
  if (qyAutoscan.State in [dsEdit, dsInsert]) then
  begin
    qyAutoscan.Post;
  end;
end;

end.
