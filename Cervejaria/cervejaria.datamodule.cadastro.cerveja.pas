unit cervejaria.datamodule.cadastro.cerveja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cervejaria.datamodule.cadastro.base, Provider, DBClient, DB,
  IBCustomDataSet, IBQuery;

type
  TdmdCadastroCerveja = class(TdmdCadastroBase)
    cdsPesquisaCVJ_ID: TIntegerField;
    cdsPesquisaCVJ_NOME: TStringField;
    cdsPesquisaMRC_ID: TIntegerField;
    cdsPesquisaCAT_ID: TIntegerField;
    cdsPesquisaMRC_CODIGO: TStringField;
    cdsPesquisaMRC_NOME: TStringField;
    cdsPesquisaCAT_NOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdCadastroCerveja: TdmdCadastroCerveja;

implementation

{$R *.dfm}

end.
