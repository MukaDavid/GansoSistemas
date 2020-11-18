unit cervejaria.form.pesquisa.marca;

interface

uses
  forms,
  cervejaria.datamodule.conexao, DB, StdCtrls, Controls, Grids, DBGrids,
  ComCtrls, Mask, DBCtrls, Classes, ExtCtrls,
  cervejaria.form.cadastro.marca,
  cervejaria.datamodule.cadastro.marca;

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
    btnIncluir: TButton;
    btnEditar: TButton;
    btnRefresh: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    procedure RefreshDataDet;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaMarca: TfrmPesquisaMarca;

implementation

{$R *.dfm}

procedure TfrmPesquisaMarca.FormShow(Sender: TObject);
begin
  dscPesquisa.DataSet.Open;
end;

procedure TfrmPesquisaMarca.btnEditarClick(Sender: TObject);
var
  ldmdCadastroMarca : TdmdCadastroMarca;
  lfrmCadastroMarca : TfrmCadastroMarca;
begin
  if dscPesquisa.DataSet.IsEmpty then
    exit;

  lfrmCadastroMarca := TfrmCadastroMarca.Create(self);
  ldmdCadastroMarca := TdmdCadastroMarca.Create(lfrmCadastroMarca);

  {
  ldmdCadastroMarca.ibdCadastro.Close;
  ldmdCadastroMarca.ibdCadastro.ParamByName('MRC_ID').AsInteger := dscPesquisa.DataSet.FieldByName('MRC_ID').AsInteger;
  ldmdCadastroMarca.ibdCadastro.Open;
  }

  ldmdCadastroMarca.cdsCadastro.Close;
  ldmdCadastroMarca.cdsCadastro.Params.ParamByName('MRC_ID').AsInteger := dscPesquisa.DataSet.FieldByName('MRC_ID').AsInteger;
  ldmdCadastroMarca.cdsCadastro.Open;


  //lfrmCadastroMarca.dscCadastro.DataSet := ldmdCadastroMarca.ibdCadastro;
  lfrmCadastroMarca.dscCadastro.DataSet := ldmdCadastroMarca.cdsCadastro;
  lfrmCadastroMarca.OnRefreshDataset := RefreshDataDet;
  lfrmCadastroMarca.Show;
end;

procedure TfrmPesquisaMarca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPesquisaMarca.btnRefreshClick(Sender: TObject);
begin
  RefreshDataDet;
end;

procedure TfrmPesquisaMarca.RefreshDataDet;
var
  lBookmark : String;
begin
  if dscPesquisa.DataSet.IsEmpty then
    exit;

  lBookmark := dscPesquisa.DataSet.Bookmark;
  try
    dscPesquisa.DataSet.DisableControls;

    dscPesquisa.DataSet.Close;
    dscPesquisa.DataSet.Open;

    dscPesquisa.DataSet.Bookmark := lBookmark;
  finally
    dscPesquisa.DataSet.EnableControls;
  end;

end;

procedure TfrmPesquisaMarca.btnIncluirClick(Sender: TObject);
var
  ldmdCadastroMarca : TdmdCadastroMarca;
  lfrmCadastroMarca : TfrmCadastroMarca;
begin
  if dscPesquisa.DataSet.IsEmpty then
    exit;

  lfrmCadastroMarca := TfrmCadastroMarca.Create(self);
  ldmdCadastroMarca := TdmdCadastroMarca.Create(lfrmCadastroMarca);

  ldmdCadastroMarca.cdsCadastro.Close;
  ldmdCadastroMarca.cdsCadastro.Params.ParamByName('MRC_ID').AsInteger := -1;
  ldmdCadastroMarca.cdsCadastro.Open;

  ldmdCadastroMarca.cdsCadastro.Append;
  ldmdCadastroMarca.cdsCadastro.FieldByName('MRC_ID').AsInteger := dmdConexao.GerarId('SEQ_MRC');
  lfrmCadastroMarca.dscCadastro.DataSet := ldmdCadastroMarca.ibdCadastro;
  lfrmCadastroMarca.dscCadastro.DataSet := ldmdCadastroMarca.cdsCadastro;
  lfrmCadastroMarca.OnRefreshDataset := RefreshDataDet;
  lfrmCadastroMarca.Show;
end;

end.
