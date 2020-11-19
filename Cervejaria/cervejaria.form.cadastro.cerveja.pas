unit cervejaria.form.cadastro.cerveja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cervejaria.form.cadastro.base, DB, StdCtrls, Buttons, ExtCtrls,
  cervejaria.datamodule.cadastro.cerveja, Mask, DBCtrls;

type
  TfrmCadastroCerveja = class(TfrmCadastroBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCerveja: TfrmCadastroCerveja;

implementation

{$R *.dfm}

end.
