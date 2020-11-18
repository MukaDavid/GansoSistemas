unit cervejaria.form.principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MidasLib,
  cervejaria.datamodule.cadastro.marca,
  cervejaria.form.pesquisa,
  cervejaria.form.pesquisa.marca,
  cervejaria.datamodule.cadastro.categoria,
  cervejaria.datamodule.cadastro.cerveja;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnCadMarca: TButton;
    btnCategoria: TButton;
    btnCerveja: TButton;
    procedure btnCadMarcaClick(Sender: TObject);
    procedure btnCategoriaClick(Sender: TObject);
    procedure btnCervejaClick(Sender: TObject);
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
var
  lfrmPesquisaMarca : TfrmPesquisaMarca;
  ldmdCadastroMarca : TdmdCadastroMarca;
begin
  lfrmPesquisaMarca := TfrmPesquisaMarca.Create(Application);
  ldmdCadastroMarca := TdmdCadastroMarca.Create(lfrmPesquisaMarca);
  lfrmPesquisaMarca.dscPesquisa.DataSet := ldmdCadastroMarca.qryPesquisa;

  lfrmPesquisaMarca.Show;
end;

procedure TfrmPrincipal.btnCategoriaClick(Sender: TObject);
begin
  TfrmPesquisa.AbrirPesquisa(TdmdCadastroCategoria);
end;

procedure TfrmPrincipal.btnCervejaClick(Sender: TObject);
begin
  TfrmPesquisa.AbrirPesquisa(TdmdCadastroCerveja);
end;

end.
