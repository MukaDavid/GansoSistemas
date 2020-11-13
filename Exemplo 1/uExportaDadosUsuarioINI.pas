unit uExportaDadosUsuarioINI;

interface

uses
  uExportaDadosUsuario, SysUtils, dialogs;

type
  TExportaDadosUsuarioINI = class(TExportaDadosUsuario)
  protected
    procedure GerarDados; override;
  public
    procedure MostrarDados; override;
  end;

implementation

{ TExportaDadosUsuarioINI }

procedure TExportaDadosUsuarioINI.GerarDados;
begin
  inherited;
  FDados.Add('[USUARIO]');
  FDados.Add('Codigo='+ IntToStr(FUsuario.Codigo));
  FDados.Add('Nome='+FUsuario.Nome);
end;

procedure TExportaDadosUsuarioINI.MostrarDados;
begin
  inherited;
  ShowMessage('TExportaDadosUsuarioINI');
end;

end.
 