unit uCalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TOperacao = (opNone, opSoma, opSubtracao, opMultiplicacao, opDivisao);

  TControlX = class(TControl)
  end;

  TForm1 = class(TForm)
    Btn0: TButton;
    Btn2: TButton;
    Btn1: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    Btn9: TButton;
    Btn8: TButton;
    Btn7: TButton;
    Btn3: TButton;
    BtnIgual: TButton;
    BtnSoma: TButton;
    BtnMult: TButton;
    BtnDivide: TButton;
    BtnSub: TButton;
    edtVisor: TEdit;
    BtnClear: TButton;
    emuHistorico: TMemo;
    BtnLimpar: TButton;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnNumeroClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSomaClick(Sender: TObject);
    procedure BtnSubClick(Sender: TObject);
    procedure BtnMultClick(Sender: TObject);
    procedure BtnDivideClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnIgualClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    valor_atual: double;
    operacao: TOperacao;
    Limpar: boolean;
    procedure InserirNumero(pNumero: String);
    procedure ExecutarOperacao(pOperacao: TOperacao);
    procedure MontarHistorico(pOperacao: TOperacao);
    function OperacaoToStr(pOperacao: TOperacao): string;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  operacao :=opNone;
  valor_atual := 0;
  limpar := false;
end;

procedure TForm1.BtnSomaClick(Sender: TObject);
begin
  ExecutarOperacao(opSoma);
end;

procedure TForm1.BtnSubClick(Sender: TObject);
begin
  ExecutarOperacao(opSubtracao);
end;

procedure TForm1.BtnMultClick(Sender: TObject);
begin
  ExecutarOperacao(opMultiplicacao);
end;

procedure TForm1.BtnDivideClick(Sender: TObject);
begin
  ExecutarOperacao(opDivisao);
end;

procedure TForm1.BtnClearClick(Sender: TObject);
begin
  valor_atual := 0;
  edtVisor.Text := '0';
  operacao := opNone;
  limpar := true;
end;

procedure TForm1.BtnIgualClick(Sender: TObject);
begin
  if operacao = opNone then
    exit;

  MontarHistorico(operacao);

  case Operacao of
    opSoma:          valor_atual := valor_atual + StrToFloat(edtVisor.Text);
    opSubtracao:     valor_atual := valor_atual - StrToFloat(edtVisor.Text);
    opMultiplicacao: valor_atual := valor_atual * StrToFloat(edtVisor.Text);
    opDivisao:       valor_atual := valor_atual / StrToFloat(edtVisor.Text);
  end;

  limpar := true;
  edtVisor.Text := FloatToStr(valor_atual);
  emuHistorico.Text := emuHistorico.Text + edtVisor.Text + #13#10 + #13#10;

end;

procedure TForm1.BtnNumeroClick(Sender: TObject);
begin
 // Type Cast
 // (Sender as TButton).Caption -> Tipo pascal
 // TButton(Sender).Caption     -> Tipo C

  if Sender is TControl then
    InserirNumero(TControlX(Sender).Caption);

  {if Sender is TButton then
    InserirNumero(TButton(Sender).Caption);

  if Sender is TSpeedButton then
    InserirNumero(TSpeedButton(Sender).Caption);}


end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(key in ['0'..'9']) then
    InserirNumero(key);
end;

procedure TForm1.BtnLimparClick(Sender: TObject);
begin
  emuHistorico.Text := '';
end;


procedure TForm1.InserirNumero(pNumero: String);
begin
  if (limpar) then
  begin
    edtVisor.Text := '';
    limpar := false;
  end;

  if (edtVisor.Text = '0') then
  begin
    edtVisor.Text := '';
  end;

  edtVisor.Text := edtVisor.Text + pNumero;
end;

procedure TForm1.ExecutarOperacao(pOperacao: TOperacao);
begin
  operacao := pOperacao;
  limpar := true;
  valor_atual := StrToFloat(edtVisor.Text);
end;

procedure TForm1.MontarHistorico(pOperacao: TOperacao);
begin
  emuHistorico.Text := emuHistorico.Text + FloatToStr(valor_atual) +
                       OperacaoToStr(pOperacao) + edtVisor.Text +' = '+#13#10;
end;

function TForm1.OperacaoToStr(pOperacao: TOperacao): string;
begin
  case pOperacao of
    opSoma: Result := '+';
    opSubtracao: Result := '-';
    opMultiplicacao: Result := '*';
    opDivisao: Result := '/';
  else
    Result := '';
  end;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
  Button1.Parent := Edit1;
  Button1.Top := 5;
  Button1.Left := 5;
end;

end.
