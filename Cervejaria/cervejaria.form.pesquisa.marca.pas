unit cervejaria.form.pesquisa.marca;

interface

uses
  forms, cervejaria.datamodule.cadastro.marca,
  cervejaria.datamodule.conexao, DB, StdCtrls, Controls, Grids, DBGrids,
  ComCtrls, Mask, DBCtrls, Classes, ExtCtrls;

type
  TfrmPesquisaMarca = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBEdit1: TDBEdit;
    dscPesquisa: TDataSource;
    Button2: TButton;
    btSalvar: TButton;
    procedure Button2Click(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaMarca: TfrmPesquisaMarca;

implementation

{$R *.dfm}

procedure TfrmPesquisaMarca.btSalvarClick(Sender: TObject);
begin
  if dmdCadastroMarca.qryPesquisa.State in dsEditModes then
     dmdCadastroMarca.qryPesquisa.Post;
end;

procedure TfrmPesquisaMarca.Button2Click(Sender: TObject);
begin
  dmdCadastroMarca.qryPesquisa.Append;
  dmdCadastroMarca.qryPesquisa.FieldByName('MRC_ID').AsInteger := dmdConexao.GerarId('SEQ_MRC');
end;

end.
