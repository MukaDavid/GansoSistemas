unit cervejaria.form.principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MidasLib, DB, Provider, DBClient, Grids,
  DBGrids, IBCustomDataSet,
  cervejaria.datamodule.cadastro.marca,
  cervejaria.form.pesquisa,
  cervejaria.form.pesquisa.marca,
  cervejaria.datamodule.cadastro.categoria,
  cervejaria.form.cadastro.categoria,
  cervejaria.datamodule.cadastro.cerveja,
  cervejaria.form.cadastro.cerveja;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnCadMarca: TButton;
    btnCategoria: TButton;
    btnCerveja: TButton;
    IBDataSet1: TIBDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    IBDataSet2: TIBDataSet;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1FST_ID: TIntegerField;
    ClientDataSet1FST_NOME: TStringField;
    ClientDataSet1FST_DATA: TDateTimeField;
    ClientDataSet1IBDataSet2: TDataSetField;
    DataSource3: TDataSource;
    ClientDataSet2: TClientDataSet;
    DataSource4: TDataSource;
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
  TfrmPesquisa.AbrirCadastro(TdmdCadastroCategoria, TfrmCadastroCategoria);
end;

procedure TfrmPrincipal.btnCervejaClick(Sender: TObject);
begin
  TfrmPesquisa.AbrirCadastro(TdmdCadastroCerveja,TfrmCadastroCerveja);
end;

end.
