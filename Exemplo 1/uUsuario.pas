unit uUsuario;

interface

type
  TUsuario = class
  private
    FNome: string;
    FHoraLogin: TDateTime;
    FCodigo: integer;
    function GetTempoLogado: integer;
    procedure SetCodigo(const Value: integer);
  public
    constructor Create;
    property Codigo: integer read FCodigo write SetCodigo;
    property Nome: string read FNome write FNome;
    property TempoLogado: integer read GetTempoLogado;
  end;


implementation

uses SysUtils, DateUtils;

{ TUsuario }

constructor TUsuario.Create;
begin
  FHoraLogin := Now;
end;

function TUsuario.GetTempoLogado: integer;
begin
  Result := SecondsBetween(FHoraLogin, Now);
end;

procedure TUsuario.SetCodigo(const Value: integer);
begin
  if Value < 1 then
    raise Exception.Create('Códido do objeto deve ser maior que Zero');
  FCodigo := Value;
end;

end.
