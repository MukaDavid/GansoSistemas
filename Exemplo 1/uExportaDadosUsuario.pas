unit uExportaDadosUsuario;

interface
uses
  SysUtils, uUsuario;

type
  TExportaDadosUsuario = class
  private
    FUsuario: TUsuario;
    FDados: string;
    function GetDados: string;
  protected
    procedure GerarDados; //Virtual, Abstract
  public
    constructor Create(pUsuario: TUsuario);
    property Dados: string read GetDados;
  end;


implementation

{ TExportaDadosUsuario }

constructor TExportaDadosUsuario.Create(pUsuario: TUsuario);
begin
  FUsuario := pUsuario;
end;

procedure TExportaDadosUsuario.GerarDados;
begin
  FDados := 'USUARIO'+sLineBreak+
            'Codigo='+ IntToStr(FUsuario.Codigo)+sLineBreak+
            'Nome='+FUsuario.Nome;
end;

function TExportaDadosUsuario.GetDados: string;
begin
  GerarDados;
  Result := FDados;
end;

end.
