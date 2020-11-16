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
  uExportaDadosUsuario,
  uExportaDadosUsuarioTxt,
  uExportaDadosUsuarioXml,
  uExportaDadosUsuarioIni,
  uExportaDadosUsuarioJson, ComCtrls, uUsuario;

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
    btnLogin: TButton;
    lblCodigo: TLabel;
    Label5: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    Button2: TButton;
    Button4: TButton;
    edtCpf: TEdit;
    Label4: TLabel;
    Button5: TButton;
    stbInfo: TStatusBar;
    Button1: TButton;
    ListBox1: TListBox;
    Button6: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure ExecutaTeste(Sender: TObject);
    procedure btnAddMemoClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnGerarFormatoClick(Sender: TObject);
    procedure btnLoopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    procedure SalvarRegistro;
    procedure NotificarUsuarioDoSalvamento;
    function dividir(pX, pY: integer): integer;
    procedure AdicionarItensNoMemo; overload;
    procedure AdicionarItensNoMemo(pMemo: TMemo; pEdit: TEdit); overload;
    function Somar(pX, pY : integer): integer;

    procedure ExibirDados(pExportaDadosUsuarioClass: TExportaDadosUsuarioClass);
    procedure GerarUserFormatado(pFormato: TFormato);
    procedure AtualizarNomeUsuario(pNomeUsuario: string);
    procedure ChamarLogin;


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
    frTexto: ExibirDados(TExportaDadosUsuarioIni);
    frXml:   ExibirDados(TExportaDadosUsuarioXml);
    frIni:   ExibirDados(TExportaDadosUsuarioTxt);
    frJson:  ExibirDados(TExportaDadosUsuarioJson);
  else
    ShowMessage('Opção não suportada');
  end;
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


procedure TForm1.FormCreate(Sender: TObject);
begin
  //ChamarLogin;


  Sistema.UsuarioLogado.Codigo := StrToInt(edtCodigo.text);
  Sistema.UsuarioLogado.Nome   := edtNome.Text;
  Sistema.UsuarioLogado.OnNomeAlterado := AtualizarNomeUsuario;
end;

procedure TForm1.btnLoginClick(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var
  lUsuario1, lUsuario2 : TUsuario;
begin
  lUsuario1 := TUsuario.Create;
  lUsuario2 := TUsuario.Create;
  lUsuario2 := lUsuario1;

  if Assigned(lUsuario1) then
    FreeAndNil(lUsuario1);

  if Assigned(lUsuario2) then
    FreeAndNil(lUsuario2);


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

procedure TForm1.ExibirDados(pExportaDadosUsuarioClass: TExportaDadosUsuarioClass);
//var
//  lExportaDadosUsuario: TExportaDadosUsuario;
begin
{  lExportaDadosUsuario := pExportaDadosUsuarioClass.Create(Sistema.UsuarioLogado);
  try
    Memo1.Text := lExportaDadosUsuario.Dados;
  finally
    lExportaDadosUsuario.Free;
  end;  }

  Memo1.Text := pExportaDadosUsuarioClass.ObterDados(Sistema.UsuarioLogado);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   if TValidacao.ValidarCpf(edtCpf.Text) then
     ShowMessage('CPF Válido!')
   else
     ShowMessage('CPF Inválido!');

end;

procedure TForm1.AtualizarNomeUsuario(pNomeUsuario: string);
begin
  stbInfo.Panels[0].Text := pNomeUsuario;
end;

procedure TForm1.ChamarLogin;
begin
  FormLogin := TFormLogin.Create(Application);
  try
    if FormLogin.ShowModal = mrCancel then
    begin
      ShowMessage('Login não atribuido');
      Application.Terminate;
    end
    else
    begin
      Application.ProcessMessages;
      lblDataLogin.Caption := FormatDateTime('DD/MM/YYYY HH:NN:SS', FormLogin.DataLogin);
    end;
  finally
    FormLogin.Free;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  lUsuario : TUsuario;
begin
  lUsuario := TUsuario.Create;
  lUsuario.Codigo := 1;
  lUsuario.Nome := 'Ana';
  ListBox1.Items.Add(IntToStr(integer(lUsuario)));

  lUsuario := TUsuario.Create;
  lUsuario.Codigo := 2;
  lUsuario.Nome := 'Bia';
  ListBox1.Items.Add(IntToStr(integer(lUsuario)));

  lUsuario := TUsuario.Create;
  lUsuario.Codigo := 3;
  lUsuario.Nome := 'Carol';
  ListBox1.Items.Add(IntToStr(integer(lUsuario)));

  lUsuario := TUsuario.Create;
  lUsuario.Codigo := 4;
  lUsuario.Nome := 'Daniela';
  ListBox1.Items.Add(IntToStr(integer(lUsuario)));

  lUsuario := TUsuario.Create;
  lUsuario.Codigo := 5;
  lUsuario.Nome := 'Elize';
  ListBox1.Items.Add(IntToStr(integer(lUsuario)));


  Edit1.Handle
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  lUsuario : TUsuario;
  lIdMemoria: integer;
begin
  if ListBox1.ItemIndex > -1 then
  begin
    lIdMemoria := StrToInt(ListBox1.Items[ListBox1.ItemIndex]);

    lUsuario := TUsuario(lIdMemoria);

    edtCodigo.Text := IntToStr(lUsuario.Codigo);

    edtNome.Text := lUsuario.Nome;
  end;


end;

end.
