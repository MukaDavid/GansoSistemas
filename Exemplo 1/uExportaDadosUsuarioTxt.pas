unit uExportaDadosUsuarioTxt;

interface

uses
  uExportaDadosUsuario, SysUtils, dialogs;

type
  TExportaDadosUsuarioTxt = class(TExportaDadosUsuario)
  protected
    procedure GerarDados; override;
  public
    procedure MostrarDados; override;
  end;

implementation
{ TExportaDadosUsuarioTxt }


procedure TExportaDadosUsuarioTxt.GerarDados;
begin
  inherited;
  FDados.Add('USUARIO');
  FDados.Add('Codigo='+ IntToStr(FUsuario.Codigo));
  FDados.Add('Nome='+FUsuario.Nome);
  MostrarDados;
end;

procedure TExportaDadosUsuarioTxt.MostrarDados;
begin
  inherited;
  ShowMessage('TExportaDadosUsuarioTxt');
end;

end.
