unit cervejaria.datamodule.cadastro.marca;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery,
  cervejaria.datamodule.conexao;

type
  TdmdCadastroMarca = class(TDataModule)
    qryPesquisa: TIBQuery;
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
