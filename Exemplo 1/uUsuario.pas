unit uUsuario;

interface

type
  TProcNomeAlterado = procedure(pNome: string) of object;

  TUsuario = class
  private
    FNome: string;
    FHoraLogin: TDateTime;
    FCodigo: integer;
    FOnNomeAlterado: TProcNomeAlterado;
    function GetTempoLogado: integer;
    procedure SetCodigo(const Value: integer);
    procedure SetNome(const Value: string);
  public
    constructor Create;
    property Codigo: integer read FCodigo write SetCodigo;
    property Nome: string read FNome write SetNome;
    property TempoLogado: integer read GetTempoLogado;
    property OnNomeAlterado: TProcNomeAlterado read FOnNomeAlterado write FOnNomeAlterado;
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

procedure TUsuario.SetNome(const Value: string);
begin
  FNome := Value;
  if Assigned(FOnNomeAlterado) then
    FOnNomeAlterado(FNome);
end;

end.
