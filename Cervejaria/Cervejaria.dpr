program Cervejaria;

uses
  Forms,
  cervejaria.form.principal in 'cervejaria.form.principal.pas' {frmPrincipal},
  cervejaria.datamodule.conexao in 'cervejaria.datamodule.conexao.pas' {dmdConexao: TDataModule},
  cervejaria.form.pesquisa.marca in 'cervejaria.form.pesquisa.marca.pas' {frmPesquisaMarca},
  cervejaria.datamodule.cadastro.marca in 'cervejaria.datamodule.cadastro.marca.pas' {dmdCadastroMarca: TDataModule},
  cervejaria.form.cadastro.marca in 'cervejaria.form.cadastro.marca.pas' {frmCadastroMarca},
  cervejaria.form.pesquisa in 'cervejaria.form.pesquisa.pas' {frmPesquisa},
  cervejaria.datamodule.cadastro.base in 'cervejaria.datamodule.cadastro.base.pas' {dmdCadastroBase: TDataModule},
  cervejaria.datamodule.cadastro.Categoria in 'cervejaria.datamodule.cadastro.Categoria.pas' {dmdCadastroCategoria: TDataModule},
  cervejaria.datamodule.cadastro.cerveja in 'cervejaria.datamodule.cadastro.cerveja.pas' {dmdCadastroCerveja: TDataModule},
  cervejaria.form.cadastro.base in 'cervejaria.form.cadastro.base.pas' {frmCadastroBase},
  cervejaria.form.ReconcileErrorDgl in 'cervejaria.form.ReconcileErrorDgl.pas' {ReconcileErrorForm},
  cervejaria.form.cadastro.categoria in 'cervejaria.form.cadastro.categoria.pas' {frmCadastroCategoria},
  cervejaria.form.cadastro.cerveja in 'cervejaria.form.cadastro.cerveja.pas' {frmCadastroCerveja};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmdConexao, dmdConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmdCadastroCerveja, dmdCadastroCerveja);
  Application.CreateForm(TfrmCadastroBase, frmCadastroBase);
  Application.CreateForm(TfrmCadastroCategoria, frmCadastroCategoria);
  Application.CreateForm(TfrmCadastroCerveja, frmCadastroCerveja);
  Application.Run;
end.
