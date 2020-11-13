unit uExportaDadosUsuarioXML;

interface

uses
  uExportaDadosUsuario, SysUtils, dialogs;

type
  TExportaDadosUsuarioXML = class(TExportaDadosUsuario)
  protected
    procedure GerarDados; override;
  public
    procedure MostrarDados; override;
  end;

implementation

{ TExportaDadosUsuarioXML }

procedure TExportaDadosUsuarioXML.GerarDados;
begin
  inherited;
  FDados.Add( '<?xml version="1.0"?>');
  FDados.Add('<Company>');
  FDados.Add('  <Employee>');
  FDados.Add('      <Codigo>'+IntToStr(FUsuario.Codigo)+'</Codigo>');
  FDados.Add('      <Name>'+FUsuario.Nome+'</Name>');
  FDados.Add('  </Employee>');
  FDados.Add('</Company>');
end;

procedure TExportaDadosUsuarioXML.MostrarDados;
begin
  inherited;
  ShowMessage('TExportaDadosUsuarioXML');
end;

end.
 