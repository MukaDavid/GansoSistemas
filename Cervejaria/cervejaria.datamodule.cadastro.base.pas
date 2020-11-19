unit cervejaria.datamodule.cadastro.base;

interface

uses
  SysUtils, Classes,
  cervejaria.datamodule.conexao, Provider, DBClient, DB, IBCustomDataSet,
  IBQuery, Math;

type
  TOperacao = (opIncluir,opEditar);

  TdmdCadastroBase = class(TDataModule)
    qryPesquisa: TIBQuery;
    qryCadastro: TIBQuery;
    cdsCadastro: TClientDataSet;
    dspCadastro: TDataSetProvider;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
  private
    { Private declarations }
  public
    function CampoId: string; virtual; abstract;
    function SequenceName: string; virtual; abstract;
    procedure Editar(pId: integer);
    procedure Incluir;

    { Public declarations }
  end;

  TdmdCadastroBaseClass = class of TdmdCadastroBase;

var
  dmdCadastroBase: TdmdCadastroBase;

implementation

{$R *.dfm}

{ TdmdCadastroBase }

procedure TdmdCadastroBase.Editar(pId: integer);
begin
  cdsCadastro.Close;
  cdsCadastro.Params.ParamByName(CampoId).AsInteger := pId;
  cdsCadastro.Open;
  cdsCadastro.Edit;

end;

procedure TdmdCadastroBase.Incluir;
begin
  cdsCadastro.Close;
  cdsCadastro.Params.ParamByName(CampoId).AsInteger := -1;
  cdsCadastro.Open;

  cdsCadastro.Append;
  cdsCadastro.FieldByName(CampoId).AsInteger := dmdConexao.GerarId(SequenceName);
end;

end.
