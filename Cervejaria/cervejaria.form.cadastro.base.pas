unit cervejaria.form.cadastro.base;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB;

type
  TAtualizaPesquisa = procedure of object;

  TfrmCadastroBase = class(TForm)
    dscCadastro: TDataSource;
    pnlConfirmacao: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
  private
    FonAtualizaPesquisa: TAtualizaPesquisa;
    { Private declarations }
  public
    { Public declarations }
    property onAtualizaPesquisa: TAtualizaPesquisa read FonAtualizaPesquisa write FonAtualizaPesquisa;
  end;

  TfrmCadastroBaseClass = class of TfrmCadastroBase;

var
  frmCadastroBase: TfrmCadastroBase;

implementation

{$R *.dfm}

end.
