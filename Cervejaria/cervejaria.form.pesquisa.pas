unit cervejaria.form.pesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBClient,
  cervejaria.datamodule.cadastro.base,
  cervejaria.form.cadastro.base;

type
  TfrmPesquisa = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    btnIncluir: TButton;
    btnEditar: TButton;
    btnRefresh: TButton;
    StatusBar1: TStatusBar;
    dscPesquisa: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnEditarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    FdmdCadastroBaseClass: TdmdCadastroBaseClass;
    FfrmCadastroBaseClass: TfrmCadastroBaseClass;
    procedure AtualizarPesquisa;
  public
    class procedure AbrirPesquisa(pdmdCadastroBaseClass: TdmdCadastroBaseClass);
    class procedure AbrirCadastro(pdmdCadastroBaseClass: TdmdCadastroBaseClass; pfrmCadastroBaseClass: TfrmCadastroBaseClass);
    procedure ExecutarOperacao(pOperacao: TOperacao);
    { Public declarations }
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

{$R *.dfm}

class procedure TfrmPesquisa.AbrirPesquisa(pdmdCadastroBaseClass: TdmdCadastroBaseClass);
var
  lfrmPesquisa : TfrmPesquisa;
  ldmdCadastro : TdmdCadastroBase;
begin
  lfrmPesquisa := TfrmPesquisa.Create(Application);
  lfrmPesquisa.FdmdCadastroBaseClass := pdmdCadastroBaseClass;

  ldmdCadastro := pdmdCadastroBaseClass.Create(lfrmPesquisa);
  lfrmPesquisa.dscPesquisa.DataSet   := ldmdCadastro.cdsPesquisa;

  lfrmPesquisa.Show;
end;

procedure TfrmPesquisa.FormShow(Sender: TObject);
begin
  dscPesquisa.DataSet.Open;
end;

procedure TfrmPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfrmPesquisa.DBGrid1TitleClick(Column: TColumn);
begin
  if dscPesquisa.DataSet is TClientDataSet then
    TClientDataSet(dscPesquisa.DataSet).IndexFieldNames := Column.FieldName;

end;

class procedure TfrmPesquisa.AbrirCadastro(
  pdmdCadastroBaseClass: TdmdCadastroBaseClass;
  pfrmCadastroBaseClass: TfrmCadastroBaseClass);
var
  lfrmPesquisa : TfrmPesquisa;
  ldmdCadastro : TdmdCadastroBase;
begin
  lfrmPesquisa := TfrmPesquisa.Create(Application);
  lfrmPesquisa.FdmdCadastroBaseClass := pdmdCadastroBaseClass;
  lfrmPesquisa.FfrmCadastroBaseClass := pfrmCadastroBaseClass;

  ldmdCadastro := pdmdCadastroBaseClass.Create(lfrmPesquisa);
  lfrmPesquisa.dscPesquisa.DataSet := ldmdCadastro.cdsPesquisa;  

  lfrmPesquisa.Show;
end;

procedure TfrmPesquisa.AtualizarPesquisa;
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

procedure TfrmPesquisa.btnEditarClick(Sender: TObject);
begin
  ExecutarOperacao(opEditar);
end;

procedure TfrmPesquisa.btnIncluirClick(Sender: TObject);
begin
  ExecutarOperacao(opIncluir);
end;

procedure TfrmPesquisa.ExecutarOperacao(pOperacao: TOperacao);
var
  ldmdCadastro : TdmdCadastroBase;
  lfrmCadastro : TfrmCadastroBase;
begin
  if (pOperacao = opEditar) and dscPesquisa.DataSet.IsEmpty then
    exit;

  lfrmCadastro := FfrmCadastroBaseClass.Create(self);
  ldmdCadastro := FdmdCadastroBaseClass.Create(lfrmCadastro);

  case pOperacao of
    opIncluir : ldmdCadastro.Incluir;
    opEditar : ldmdCadastro.Editar(dscPesquisa.DataSet.FieldByName(ldmdCadastro.CampoId).AsInteger);
  end;

  lfrmCadastro.dscCadastro.DataSet := ldmdCadastro.cdsCadastro;
  lfrmCadastro.onAtualizaPesquisa  := AtualizarPesquisa;
  lfrmCadastro.Show;
end;

procedure TfrmPesquisa.DBGrid1DblClick(Sender: TObject);
begin
  ExecutarOperacao(opEditar);
end;

end.
