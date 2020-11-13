unit uFuncoes;

interface

type
  TValidacao = class
  private
    FUltimoCpf: string;
  public
    class function ValidarCpf(pCpf: string): boolean;
  end;

implementation

{ TValidacao }

class function TValidacao.ValidarCpf(pCpf: string): boolean;
begin
  Result := length(pCpf) = 11;
end;

end.
