program AppExemplo1;

uses
  Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  uFuncoes in 'uFuncoes.pas',
  uSistema in 'uSistema.pas',
  frmLogin in 'frmLogin.pas' {FormLogin},
  uExportaDadosUsuario in 'uExportaDadosUsuario.pas',
  uUsuario in 'uUsuario.pas',
  uExportaDadosUsuarioTxt in 'uExportaDadosUsuarioTxt.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
