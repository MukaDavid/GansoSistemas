unit frmPrincipal;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  StdCtrls,
  uFuncoes,
  uSistema, ExtCtrls;

type
  TFormato = (frTexto, frXml, frIni, frJson);

  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    btnSalvar: TButton;
    Button3: TButton;
    edtCodigo: TEdit;
    edtNome: TEdit;
    btnLogar: TButton;
    Button2: TButton;
    Button4: TButton;
    edtX: TEdit;
    edtY: TEdit;
    lblX: TLabel;
    Label3: TLabel;
    Button5: TButton;
    rdgFormato: TRadioGroup;
    btnGerarFormato: TButton;
    Button6: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure ExecutaTeste(Sender: TObject);
    procedure btnLogarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnGerarFormatoClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    procedure SalvarRegistro;
    procedure NotificarUsuarioDoSalvamento;
    function dividir(pX, pY: integer): integer;
    { Private declarations }
    procedure AdicionarItensNoMemo; overload;
    procedure AdicionarItensNoMemo(pMemo: TMemo; pEdit: TEdit); overload;
    function Somar(pX, pY : integer): integer;
    procedure GerarUserIni;
    procedure GerarUserJson;
    procedure GerarUserText;
    procedure GerarUserXml;
    procedure GerarUserFormatado(pFormato: TFormato);
    function GerarUserIni(pCodigo: integer; pNome: string): string;
    function GerarUserXml(pCodigo: integer; pNome: string): string;


    { Public declarations }
  end;

var
  Form1: TForm1;    

implementation

uses
  Dialogs;

{$R *.dfm}

procedure TForm1.btnSalvarClick(Sender: TObject);
begin
  if MessageDlg('Deseja salvar este registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    SalvarRegistro;
    // Nofifica usuario do Salvamento do registo
    NotificarUsuarioDoSalvamento;
  end;
end;

procedure TForm1.SalvarRegistro;
begin
  ShowMessage('Registro salvo sucesso');
end;          

procedure TForm1.NotificarUsuarioDoSalvamento;
begin

end;

procedure TForm1.ExecutaTeste(Sender: TObject);
begin
  ShowMessage('ExecutaTeste');
end;

procedure TForm1.btnLogarClick(Sender: TObject);
begin
  Sistema.UsuarioLogado.Codigo := StrToInt(edtCodigo.text);
  Sistema.UsuarioLogado.Nome   := edtNome.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add('Codigo: '+IntToStr(Sistema.UsuarioLogado.Codigo));
  Memo1.Lines.Add('Nome: '+Sistema.UsuarioLogado.Nome);
end;

procedure TForm1.AdicionarItensNoMemo;
begin
  Memo1.Lines.Add(Edit1.Text);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdicionarItensNoMemo(Memo1,Edit1);
end;

procedure TForm1.AdicionarItensNoMemo(pMemo: TMemo; pEdit: TEdit);
begin
  pMemo.Lines.Add(pEdit.Text);
end;

function TForm1.Somar(pX, pY: integer): integer;
begin
  Result := pX + pY;
end;

function TForm1.dividir(pX, pY: integer): integer;
begin
  Result := pX div pY;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  lResultado, lx, lY : integer;
begin
  lResultado :=  0;
  lx := StrToInt(edtX.Text);
  lY := StrToInt(edtY.Text);
  if ly <> 0 then
    lResultado := Dividir(lx,ly);

  Memo1.Lines.Add('Total: '+IntToStr(lResultado));
end;

procedure TForm1.btnGerarFormatoClick(Sender: TObject);
var
  lFormato: TFormato;
begin
  lFormato := TFormato(rdgFormato.ItemIndex);
  GerarUserFormatado(lFormato);
end;

procedure TForm1.GerarUserFormatado(pFormato: TFormato);
begin
  case pFormato of
    frTexto: GerarUserText;
    frXml:   GerarUserXml;
    frIni:   GerarUserIni;
    frJson:  GerarUserJson;
  else
    ShowMessage('Opção não suportada');
  end;
end;

procedure TForm1.GerarUserIni;
begin
  ShowMessage('GerarUserIni');
end;

procedure TForm1.GerarUserJson;
begin
  ShowMessage('GerarUserJson');
end;

procedure TForm1.GerarUserText;
begin
  ShowMessage('GerarUserText');
end;

procedure TForm1.GerarUserXml;
begin
  ShowMessage('GerarUserXml');
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  li: TFormato;
begin
  for li := low(TFormato) to high(TFormato) do
  begin
    Memo1.Lines.add(IntToStr(ord(li)));
  end;
end;

function TForm1.GerarUserIni(pCodigo: integer; pNome: string): string;
begin
  Result := '[USUARIO]'+sLineBreak+
            'Codigo='+ IntToStr(pCodigo)+sLineBreak+
            'Nome='+pNome;
end;

function TForm1.GerarUserXml(pCodigo: integer; pNome: string): string;
begin

end;

end.
