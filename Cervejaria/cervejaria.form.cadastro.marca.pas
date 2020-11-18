unit cervejaria.form.cadastro.marca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, DBClient,
  ExtCtrls, cervejaria.datamodule.conexao, cervejaria.datamodule.cadastro.marca;

type
  TRefreshMetodo = procedure of object;

  TfrmCadastroMarca = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dscCadastro: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    pnlConfirmacao: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FOnRefreshDataset: TRefreshMetodo;
    { Private declarations }
  public
    property OnRefreshDataset : TRefreshMetodo read FOnRefreshDataset write FOnRefreshDataset;
    { Public declarations }
  end;

var
  frmCadastroMarca: TfrmCadastroMarca;

implementation

{$R *.dfm}

procedure TfrmCadastroMarca.BitBtn1Click(Sender: TObject);
begin
  if dscCadastro.State in dsEditModes then
  begin
    dscCadastro.DataSet.Post;
    if dscCadastro.DataSet is TClientDataSet then
      TClientDataSet(dscCadastro.DataSet).ApplyUpdates(0);

    dmdConexao.Commit;
    if Assigned(FOnRefreshDataset) then
      FOnRefreshDataset;
  end;
  Close;  
end;

procedure TfrmCadastroMarca.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroMarca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
