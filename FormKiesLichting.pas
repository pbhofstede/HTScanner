unit FormKiesLichting;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxCntner, IBDatabase, Db,
  IBCustomDataSet, IBQuery;

type
  TfrmKiesLichting = class(TForm)
    dxdbgrdSISObjectInfo: TdxDBGrid;
    dxdbgrdSISObjectInfoOMSCHRIJVING: TdxDBGridMaskColumn;
    dxdbgrdSISObjectInfoID: TdxDBGridColumn;
    dxdbgrdSISObjectInfoNT_SEIZOEN: TdxDBGridColumn;
    ibtrLichting: TIBTransaction;
    ibqrKiesLichting: TIBQuery;
    dsKiesLichting: TDataSource;
    procedure dxdbgrdSISObjectInfoDblClick(Sender: TObject);
  private
    FNTLichting: String;
    FU20Lichting: String;
    FKwalificatie: boolean;
    { Private declarations }
  public
    { Public declarations }
    property Kwalificatie: boolean read FKwalificatie write FKwalificatie;
    property NTLichting: String read FNTLichting write FNTLichting;
    property U20Lichting: String read FU20Lichting write FU20Lichting;
    procedure ToonLichtingen(aDatabase: TIBDatabase);
  end;

procedure KiesLichting(aDatabase:TIBDatabase;var aU20Lichting, aNTLichting:String;
  var aIsKwalificatie:boolean);

implementation

{$R *.DFM}

procedure KiesLichting(aDatabase:TIBDatabase;var aU20Lichting, aNTLichting:String;
  var aIsKwalificatie:boolean);
begin
  aU20Lichting := '';
  aNTLichting := '';
  aIsKwalificatie := FALSE;
  with TfrmKiesLichting.Create(nil) do
  begin
    try
      ToonLichtingen(aDatabase);
      if ShowModal = mrOk then
      begin
        aU20Lichting := U20Lichting;
        aNTLichting := NTLichting;
        aIsKwalificatie := Kwalificatie;
      end;
    finally
      Release;
    end;
  end;
end;

{ TfrmKiesLichting }

procedure TfrmKiesLichting.ToonLichtingen(aDatabase: TIBDatabase);
begin
  if ibtrLichting.InTransaction then
  begin
    ibtrLichting.Commit;
  end;
  ibtrLichting.DefaultDatabase := aDatabase;
  ibtrLichting.StartTransaction;

  ibqrKiesLichting.Database := aDatabase;
  ibqrKiesLichting.Open;
end;

procedure TfrmKiesLichting.dxdbgrdSISObjectInfoDblClick(Sender: TObject);
begin
  FU20Lichting := ibqrKiesLichting.FieldByName('OMSCHRIJVING').asString;
  FNTLichting := Format('NT [Seizoen %s]',[ibqrKiesLichting.FieldByName('NT_SEIZOEN').asString]);
  FKwalificatie := ibqrKiesLichting.FieldByName('KWALIFICATIE').asInteger = -1;
  ModalResult := mrOK;
end;

end.
