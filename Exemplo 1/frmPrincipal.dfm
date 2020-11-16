object Form1: TForm1
  Left = 455
  Top = 222
  Width = 949
  Height = 605
  Caption = 'Form1'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClick = btnSalvarClick
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Texto:'
  end
  object lblX: TLabel
    Left = 74
    Top = 369
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label3: TLabel
    Left = 73
    Top = 401
    Width = 7
    Height = 13
    Caption = 'Y'
  end
  object lblDataLogin: TLabel
    Left = 392
    Top = 24
    Width = 59
    Height = 13
    Caption = 'lblDataLogin'
  end
  object Label2: TLabel
    Left = 328
    Top = 24
    Width = 51
    Height = 13
    Caption = 'Data login:'
  end
  object lblCodigo: TLabel
    Left = 536
    Top = 35
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label5: TLabel
    Left = 539
    Top = 69
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label4: TLabel
    Left = 536
    Top = 128
    Width = 19
    Height = 13
    Caption = 'Cpf:'
  end
  object Edit1: TEdit
    Left = 80
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnAddMemo: TButton
    Left = 232
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Add Memo'
    TabOrder = 1
    OnClick = btnAddMemoClick
  end
  object Memo1: TMemo
    Left = 32
    Top = 56
    Width = 281
    Height = 281
    TabOrder = 2
  end
  object btnSalvar: TButton
    Left = 144
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = ExecutaTeste
  end
  object Button3: TButton
    Left = 32
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
  end
  object edtX: TEdit
    Left = 120
    Top = 365
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'edtX'
  end
  object edtY: TEdit
    Left = 120
    Top = 395
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'edtY'
  end
  object btnDividir: TButton
    Left = 32
    Top = 440
    Width = 121
    Height = 25
    Caption = 'Dividir'
    TabOrder = 7
    OnClick = btnDividirClick
  end
  object rdgFormato: TRadioGroup
    Left = 320
    Top = 56
    Width = 185
    Height = 129
    Caption = 'Formato'
    ItemIndex = 0
    Items.Strings = (
      'Texto'
      'XML'
      'INI'
      'Json')
    TabOrder = 8
  end
  object btnGerarFormato: TButton
    Left = 320
    Top = 192
    Width = 193
    Height = 25
    Caption = 'Gerar Formato'
    TabOrder = 9
    OnClick = btnGerarFormatoClick
  end
  object btnLoop: TButton
    Left = 256
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Loop'
    TabOrder = 10
    OnClick = btnLoopClick
  end
  object btnLogin: TButton
    Left = 288
    Top = 360
    Width = 75
    Height = 25
    Caption = 'btnLogin'
    TabOrder = 11
    OnClick = btnLoginClick
  end
  object edtCodigo: TEdit
    Left = 584
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 12
    Text = '123'
  end
  object edtNome: TEdit
    Left = 584
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 13
    Text = 'Samuel David'
  end
  object Button2: TButton
    Left = 384
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 14
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 192
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 15
    OnClick = Button4Click
  end
  object edtCpf: TEdit
    Left = 559
    Top = 124
    Width = 121
    Height = 21
    TabOrder = 16
  end
  object Button5: TButton
    Left = 692
    Top = 123
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 17
    OnClick = Button5Click
  end
  object stbInfo: TStatusBar
    Left = 0
    Top = 547
    Width = 933
    Height = 19
    Panels = <
      item
        Width = 500
      end
      item
        Width = 50
      end>
  end
  object Button1: TButton
    Left = 692
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 19
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 504
    Top = 240
    Width = 153
    Height = 289
    ItemHeight = 13
    TabOrder = 20
  end
  object Button6: TButton
    Left = 696
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 21
    OnClick = Button6Click
  end
end
