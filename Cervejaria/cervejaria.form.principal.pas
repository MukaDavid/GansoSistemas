unit cervejaria.form.principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,
  cervejaria.datamodule.cadastro.marca,
  cervejaria.form.pesquisa.marca;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnCadMarca: TButton;
    procedure btnCadMarcaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses cervejaria.datamodule.conexao;

{$R *.dfm}

procedure TfrmPrincipal.btnCadMarcaClick(Sender: TObject);
begin
  if frmPesquisaMarca = nil then
  begin
    dmdCadastroMarca := TdmdCadastroMarca.Create(Application);
    frmPesquisaMarca := TfrmPesquisaMarca.Create(Application);
  end;

  frmPesquisaMarca.Show;
end;

end.
