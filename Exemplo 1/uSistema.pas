unit uSistema;

interface

uses
  uUsuario;

type
  TSistema = class
  private
    FUsuario: TUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    property UsuarioLogado: TUsuario read FUsuario write FUsuario;
  end;

var
  Sistema: TSistema;

implementation

{ TSistema }

constructor TSistema.Create;
begin
  FUsuario := TUsuario.Create;
end;

destructor TSistema.Destroy;
begin
  FUsuario.Free;
  inherited;
end;

initialization
  Sistema := TSistema.create;

finalization
  Sistema.Free;

end.
