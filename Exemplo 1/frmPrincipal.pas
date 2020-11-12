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
  uSistema, ExtCtrls,
  Dialogs, frmLogin,
  uExportaDadosUsuario, uExportaDadosUsuarioTxt;

type
  TFormato = (frTexto, frXml, frIni, frJson);

  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    btnAddMemo: TButton;
    Memo1: TMemo;
    btnSalvar: TButton;
    Button3: TButton;
    edtX: TEdit;
    edtY: TEdit;
    lblX: TLabel;
    Label3: TLabel;
    btnDividir: TButton;
    rdgFormato: TRadioGroup;
    btnGerarFormato: TButton;
    btnLoop: TButton;
    lblDataLogin: TLabel;
    Label2: TLabel;
    Button1: TButton;
    lblCodigo: TLabel;
    Label5: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    Button2: TButton;
    Button4: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure ExecutaTeste(Sender: TObject);
    procedure btnAddMemoClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnGerarFormatoClick(Sender: TObject);
    procedure btnLoopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    FExportaDadosUsuarioTxt: TExportaDadosUsuarioTxt;
    procedure SalvarRegistro;
    procedure NotificarUsuarioDoSalvamento;
    function dividir(pX, pY: integer): integer;
    { Private declarations }
    procedure AdicionarItensNoMemo; overload;
    procedure AdicionarItensNoMemo(pMemo: TMemo; pEdit: TEdit); overload;
    function Somar(pX, pY : integer): integer;

    procedure GerarUserIni;  overload;
    procedure GerarUserJson; overload;
    procedure GerarUserText; overload;
    procedure GerarUserXml;  overload;

    procedure GerarUserFormatado(pFormato: TFormato);
    function GerarUserIni(pCodigo: integer; pNome: string): string;  overload;
    function GerarUserXml(pCodigo: integer; pNome: string): string;  overload;
    function GerarUserJson(pCodigo: integer; pNome: string): string; overload;
    function GerarUserText(pCodigo: integer; pNome: string): string; overload;


    { Public declarations }
  end;

var
  Form1: TForm1;    

implementation
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

procedure TForm1.AdicionarItensNoMemo;
begin
  Memo1.Lines.Add(Edit1.Text);
end;

procedure TForm1.btnAddMemoClick(Sender: TObject);
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

procedure TForm1.btnDividirClick(Sender: TObject);
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
  Memo1.Text := GerarUserIni(Sistema.UsuarioLogado.Codigo, Sistema.UsuarioLogado.Nome);
end;

procedure TForm1.GerarUserJson;
begin
  Memo1.Text := GerarUserJson(Sistema.UsuarioLogado.Codigo, Sistema.UsuarioLogado.Nome);
end;

procedure TForm1.GerarUserText;
begin
  Memo1.Text := FExportaDadosUsuarioTxt.Dados;

  //Memo1.Text := GerarUserText(Sistema.UsuarioLogado.Codigo, Sistema.UsuarioLogado.Nome);
end;

procedure TForm1.GerarUserXml;
begin
  Memo1.Text := GerarUserXml(Sistema.UsuarioLogado.Codigo, Sistema.UsuarioLogado.Nome);
end;

procedure TForm1.btnLoopClick(Sender: TObject);
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
  Result := '<?xml version="1.0"?>'+sLineBreak+
            '<Company>'+sLineBreak+
            '  <Employee>'+sLineBreak+
            '      <Codigo>'+IntToStr(pCodigo)+'</Codigo>'+sLineBreak+
            '      <Name>'+pNome+'</Name>'+sLineBreak+
            '  </Employee>'+sLineBreak+
            '</Company>';
end;

function TForm1.GerarUserText(pCodigo: integer; pNome: string): string;
begin
  Result := 'USUARIO'+sLineBreak+
            'Codigo='+ IntToStr(pCodigo)+sLineBreak+
            'Nome='+pNome;
end;

function TForm1.GerarUserJson(pCodigo: integer; pNome: string): string;
begin
  Result := '{'+sLineBreak+
            '  "Titulo": "USUARIO",'+sLineBreak+
            '  "Codigo":'+IntToStr(pCodigo)+','+sLineBreak+
            '  "Nome": "'+pNome+'"'+sLineBreak+
            '}';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  {FormLogin := TFormLogin.Create(Application);
  try
    if FormLogin.ShowModal = mrCancel then
    begin
      ShowMessage('Login não atribuido');
      Application.Terminate;
    end else begin
      Application.ProcessMessages;
      lblDataLogin.Caption := FormatDateTime('DD/MM/YYYY HH:NN:SS', FormLogin.DataLogin);
    end;
  finally
    FormLogin.Free;
  end;}

  Sistema.UsuarioLogado.Codigo := StrToInt(edtCodigo.text);
  Sistema.UsuarioLogado.Nome   := edtNome.Text;
  FExportaDadosUsuarioTxt := TExportaDadosUsuarioTxt.Create(Sistema.UsuarioLogado);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FormLogin := TFormLogin.Create(Application);
  //try
    if FormLogin.ShowModal = mrCancel then
    begin
      ShowMessage('Login não atribuido');
      Application.Terminate;
    end else begin
      Application.ProcessMessages;
      lblDataLogin.Caption := FormatDateTime('DD/MM/YYYY HH:NN:SS', FormLogin.DataLogin);
    end;
  //finally
    FormLogin.Free;
  //end;

  ShowMessage('Teste');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FExportaDadosUsuarioTxt.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
//  FExportaDadosUsuarioTxt.
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  lResultado, lx, lY : integer;
begin
  lx := StrToInt(edtX.Text);
  lY := StrToInt(edtY.Text);
  lResultado := Somar(lx,ly);

  Memo1.Lines.Add('Total: '+IntToStr(lResultado));


  
end;

end.
