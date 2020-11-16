program Cervejaria;

uses
  Forms,
  cervejaria.form.principal in 'cervejaria.form.principal.pas' {frmPrincipal},
  cervejaria.datamodule.conexao in 'cervejaria.datamodule.conexao.pas' {dmdConexao: TDataModule},
  cervejaria.form.pesquisa.marca in 'cervejaria.form.pesquisa.marca.pas' {frmPesquisaMarca},
  cervejaria.datamodule.cadastro.marca in 'cervejaria.datamodule.cadastro.marca.pas' {dmdCadastroMarca: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmdConexao, dmdConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
