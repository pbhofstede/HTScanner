unit FornNewName;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxEditor, dxEdLib, StdCtrls, dxExEdtr, Db,
  IBCustomDataSet, dxDBELib, IBDatabase;

type
  TfrmNewName = class(TForm)
    lblPrompt: TLabel;
    btnOk: TButton;
    btnAnnuleren: TButton;
    dxDBEdit1: TdxDBEdit;
    ibdtstPlayerName: TIBDataSet;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    procedure btnOkClick(Sender: TObject);
    procedure btnAnnulerenClick(Sender: TObject);
  private
    procedure SetTitel(const Value: String);
    procedure SetPrompt(const Value: String);
    procedure SetPlayerID(const Value: integer);
    procedure Opslaan;
    { Private declarations }
  public
    { Public declarations }
    property Titel: String write SetTitel;
    property Prompt:String write SetPrompt;
    property PlayerID: integer write SetPlayerID;
  end;

var
  frmNewName: TfrmNewName;

implementation

uses
  FormMain;

{$R *.DFM}

{ TfrmNewName }


procedure TfrmNewName.SetPlayerID(const Value: integer);
begin
  IBTransaction1.StartTransaction;
  with ibdtstPlayerName do
  begin
    ParamByName('ID').asInteger := Value;
    Open;
  end;
end;

procedure TfrmNewName.SetPrompt(const Value: String);
begin
  lblPrompt.Caption := Value;  
end;

procedure TfrmNewName.Opslaan;
begin
  with ibdtstPlayerName do
  begin
    if (State in [dsEdit,dsInsert]) then
      Post;
  end;
end;

procedure TfrmNewName.SetTitel(const Value: String);
begin
  Caption := Value;
end;

procedure TfrmNewName.btnOkClick(Sender: TObject);
begin
  Opslaan;
  IBTransaction1.Commit;
end;

procedure TfrmNewName.btnAnnulerenClick(Sender: TObject);
begin
  Opslaan;
  IBTransaction1.Rollback;
end;

end.
