program HTScanner;

{$R *.dres}

uses
  FastMM4,
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  FormMain in 'FormMain.pas' {frmHTScanner},
  formAutoScout in 'formAutoScout.pas' {frmAutoScout},
  uHattrick in 'uHattrick.pas',
  formKiesJeudcompetities in 'formKiesJeudcompetities.pas' {frmKiesReeks},
  FormPlayerInfo in 'FormPlayerInfo.pas' {frmPlayerInfo},
  FornNewName in 'FornNewName.pas' {frmNewName},
  FormNTScouting in 'FormNTScouting.pas' {frmNTScouting},
  FormKiesLichting in 'FormKiesLichting.pas' {frmKiesLichting},
  FormVoortgang in 'FormVoortgang.pas',
  uHTDb in 'uHTDb.pas',
  uHTXLS in 'uHTXLS.pas',
  uHTGrid in 'uHTGrid.pas',
  uHTMisc in 'uHTMisc.pas',
  OOoConstants in 'OOoConstants.pas',
  OOoMessages in 'OOoMessages.pas';

{ *.RES}

begin
  Application.Initialize;
  Application.Title := 'Hattrick Scanner';
  Application.CreateForm(TfrmHTScanner, frmHTScanner);
  Application.Run;
end.
