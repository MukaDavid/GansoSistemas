unit uExportaDadosUsuarioJson;

interface

uses
  uExportaDadosUsuario, SysUtils, dialogs;

type
  TExportaDadosUsuarioJson = class(TExportaDadosUsuario)
  protected
    procedure GerarDados; override;
  public
    procedure MostrarDados; override;
  end;

implementation

{ TExportaDadosUsuarioJson }

procedure TExportaDadosUsuarioJson.GerarDados;
begin
  inherited;
  FDados.Add('{');
  FDados.Add('  "Titulo": "USUARIO",');
  FDados.Add('  "Codigo":'+IntToStr(FUsuario.Codigo)+',');
  FDados.Add('  "Nome": "'+FUsuario.Nome+'"');
  FDados.Add('}');
end;

procedure TExportaDadosUsuarioJson.MostrarDados;
begin
  inherited;
  ShowMessage('TExportaDadosUsuarioJson');
end;

end.
 