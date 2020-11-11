unit frmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uSistema, Buttons;

type
  TFormLogin = class(TForm)
    edtCodigo: TEdit;
    edtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    FDataLogin: TDateTime;
    { Private declarations }
  public
    property DataLogin: TDateTime read FDataLogin;
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation



{$R *.dfm}

procedure TFormLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDataLogin := Now;
   // Action := caFree;
end;

procedure TFormLogin.FormDestroy(Sender: TObject);
begin
  Caption := '';
  FormLogin := nil;
end;

procedure TFormLogin.BitBtn2Click(Sender: TObject);
begin
  try
    Sistema.UsuarioLogado.Codigo := StrToInt(edtCodigo.text);
    Sistema.UsuarioLogado.Nome   := edtNome.Text;
  except
    ShowMessage('Deu Erro');
    raise;
  end;
end;

end.
