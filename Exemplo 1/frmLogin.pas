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
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TFormLogin.Button1Click(Sender: TObject);
begin
  Sistema.UsuarioLogado.Codigo := StrToInt(edtCodigo.text);
  Sistema.UsuarioLogado.Nome   := edtNome.Text;
  close;
end;

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
  Sistema.UsuarioLogado.Codigo := StrToInt(edtCodigo.text);
  Sistema.UsuarioLogado.Nome   := edtNome.Text;

  ShowMessage('Teste');
end;

end.
