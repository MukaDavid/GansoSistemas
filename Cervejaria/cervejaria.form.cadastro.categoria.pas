unit cervejaria.form.cadastro.categoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cervejaria.form.cadastro.base, DB, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls;

type
  TfrmCadastroCategoria = class(TfrmCadastroBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCategoria: TfrmCadastroCategoria;

implementation

uses cervejaria.datamodule.cadastro.Categoria;

{$R *.dfm}

end.
