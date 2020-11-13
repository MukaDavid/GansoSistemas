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

    class function ObterDados(pUsuario: TUsuario): string;
  end;

  TExportaDadosUsuarioClass = class of TExportaDadosUsuario;


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


class function TExportaDadosUsuario.ObterDados(pUsuario: TUsuario): string;
var
  lExportaDadosUsuario: TExportaDadosUsuario;
begin
  lExportaDadosUsuario := Self.Create(pUsuario);
  try
    result := lExportaDadosUsuario.Dados;
  finally
    lExportaDadosUsuario.Free;
  end;
end;

end.
