unit uExportaDadosUsuario;

interface
uses
  SysUtils, uUsuario, classes, dialogs;

type
  TExportaDadosUsuario = class
  private
    function GetDados: string;
  protected
    FUsuario: TUsuario;
    FDados: TStringList;
    procedure GerarDados; virtual;
  public
    constructor Create(pUsuario: TUsuario);
    destructor Destroy; override;
    procedure MostrarDados; virtual;
    property Dados: string read GetDados;
  end;

  TExportaDadosUsuarioXml = class(TExportaDadosUsuario)
  protected
    procedure GerarDados; override;
  end;

implementation

{ TExportaDadosUsuario }

constructor TExportaDadosUsuario.Create(pUsuario: TUsuario);
begin
  FUsuario := pUsuario;
  FDados := TStringList.Create;
end;

destructor TExportaDadosUsuario.Destroy;
begin
  FDados.Free;
  inherited;
end;

procedure TExportaDadosUsuario.GerarDados;
begin
  FDados.Clear; 
end;

function TExportaDadosUsuario.GetDados: string;
begin
  GerarDados;
  Result := FDados.Text;
end;

procedure TExportaDadosUsuario.MostrarDados;
begin
  ShowMessage('TExportaDadosUsuario');
end;

{ TExportaDadosUsuarioXml }

procedure TExportaDadosUsuarioXml.GerarDados;
begin
  inherited;
  FDados.Add('<?xml version="1.0"?>');
  FDados.Add('<Company>');
  FDados.Add('  <Employee>');
  FDados.Add('      <Codigo>'+IntToStr(FUsuario.Codigo)+'</Codigo>');
  FDados.Add('      <Name>'+FUsuario.Nome+'</Name>');
  FDados.Add('  </Employee>');
  FDados.Add('</Company>');
end;

end.
