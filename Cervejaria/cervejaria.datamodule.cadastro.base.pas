unit cervejaria.datamodule.cadastro.base;

interface

uses
  SysUtils, Classes,
  cervejaria.datamodule.conexao, Provider, DBClient, DB, IBCustomDataSet,
  IBQuery;

type
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
    { Public declarations }
  end;

  TdmdCadastroBaseClass = class of TdmdCadastroBase;

var
  dmdCadastroBase: TdmdCadastroBase;

implementation

{$R *.dfm}

end.
