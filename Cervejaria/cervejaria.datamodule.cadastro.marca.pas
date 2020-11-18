unit cervejaria.datamodule.cadastro.marca;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery,
  cervejaria.datamodule.conexao, IBUpdateSQL, DBClient, Provider;

type
  TdmdCadastroMarca = class(TDataModule)
    qryPesquisa: TIBQuery;
    qryPesquisaMRC_ID: TIntegerField;
    qryPesquisaMRC_CODIGO: TIBStringField;
    qryPesquisaMRC_NOME: TIBStringField;
    ibdCadastro: TIBDataSet;
    ibdCadastroMRC_ID: TIntegerField;
    ibdCadastroMRC_CODIGO: TIBStringField;
    ibdCadastroMRC_NOME: TIBStringField;
    ibdCadastroCod_nome: TStringField;
    qryCadastro: TIBQuery;
    cdsCadastro: TClientDataSet;
    dspCadastro: TDataSetProvider;
    cdsCadastroMRC_ID: TIntegerField;
    cdsCadastroMRC_CODIGO: TStringField;
    cdsCadastroMRC_NOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdCadastroMarca: TdmdCadastroMarca;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
