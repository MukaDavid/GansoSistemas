unit cervejaria.form.pesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBClient,
  cervejaria.datamodule.cadastro.base;

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
  private
    { Private declarations }
  public
    class procedure AbrirPesquisa(pdmdCadastroBaseClass: TdmdCadastroBaseClass);
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
  ldmdCadastro := pdmdCadastroBaseClass.Create(lfrmPesquisa);
  lfrmPesquisa.dscPesquisa.DataSet := ldmdCadastro.cdsPesquisa;

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

end.
