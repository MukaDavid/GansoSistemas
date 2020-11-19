unit cervejaria.datamodule.cadastro.categoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cervejaria.datamodule.cadastro.base, Provider, DBClient, DB,
  IBCustomDataSet, IBQuery;

type
  TdmdCadastroCategoria = class(TdmdCadastroBase)
    cdsCadastroCAT_ID: TIntegerField;
    cdsCadastroCAT_NOME: TStringField;
  private
    { Private declarations }
  public
    function CampoId: String; override;
    function SequenceName: string; override;
    { Public declarations }
  end;

var
  dmdCadastroCategoria: TdmdCadastroCategoria;

implementation

{$R *.dfm}

{ TdmdCadastroCategoria }

function TdmdCadastroCategoria.CampoId: String;
begin
  Result := 'CAT_ID';
end;

function TdmdCadastroCategoria.SequenceName: string;
begin
  Result := 'SEQ_CAT'
end;

end.
