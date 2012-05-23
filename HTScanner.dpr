program HTScanner;

uses
  FastMM4,
  Forms,
  FormMain in 'FormMain.pas' {frmHTScanner},
  formAutoScout in 'formAutoScout.pas' {frmAutoScout},
  uHattrick in 'uHattrick.pas',
  formKiesJeudcompetities in 'formKiesJeudcompetities.pas' {frmKiesReeks},
  FormPlayerInfo in 'FormPlayerInfo.pas' {frmPlayerInfo},
  FornNewName in 'FornNewName.pas' {frmNewName},
  FormNTScouting in 'FormNTScouting.pas' {frmNTScouting},
  FormKiesLichting in 'FormKiesLichting.pas' {frmKiesLichting};

{ *.RES}

begin
  Application.Initialize;
  Application.Title := 'Hattrick Scanner';
  Application.CreateForm(TfrmHTScanner, frmHTScanner);
  Application.Run;
end.
