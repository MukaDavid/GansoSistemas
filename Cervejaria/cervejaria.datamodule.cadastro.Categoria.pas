unit cervejaria.datamodule.cadastro.categoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cervejaria.datamodule.cadastro.base, Provider, DBClient, DB,
  IBCustomDataSet, IBQuery;

type
  TdmdCadastroCategoria = class(TdmdCadastroBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdCadastroCategoria: TdmdCadastroCategoria;

implementation

{$R *.dfm}

end.
