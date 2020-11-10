object Form1: TForm1
  Left = 547
  Top = 220
  Width = 932
  Height = 575
  Caption = 'Form1'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClick = btnSalvarClick
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 31
    Height = 13
    Caption = 'Nome:'
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
  object Edit1: TEdit
    Left = 80
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Digite seu texto aqui!'
  end
  object Button1: TButton
    Left = 232
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 56
    Width = 281
    Height = 281
    TabOrder = 2
  end
  object btnSalvar: TButton
    Left = 400
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = ExecutaTeste
  end
  object Button3: TButton
    Left = 304
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
  end
  object edtCodigo: TEdit
    Left = 472
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '123'
  end
  object edtNome: TEdit
    Left = 472
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Samuel David'
  end
  object btnLogar: TButton
    Left = 336
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Logar'
    TabOrder = 7
    OnClick = btnLogarClick
  end
  object Button2: TButton
    Left = 336
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 336
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 9
    OnClick = btnLogarClick
  end
  object edtX: TEdit
    Left = 120
    Top = 365
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'edtX'
  end
  object edtY: TEdit
    Left = 120
    Top = 395
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'edtY'
  end
  object Button5: TButton
    Left = 120
    Top = 440
    Width = 121
    Height = 25
    Caption = 'Button5'
    TabOrder = 12
    OnClick = Button5Click
  end
  object rdgFormato: TRadioGroup
    Left = 608
    Top = 64
    Width = 185
    Height = 129
    Caption = 'Formato'
    ItemIndex = 0
    Items.Strings = (
      'Texto'
      'XML'
      'INI'
      'Json')
    TabOrder = 13
  end
  object btnGerarFormato: TButton
    Left = 608
    Top = 200
    Width = 193
    Height = 25
    Caption = 'Gerar Formato'
    TabOrder = 14
    OnClick = btnGerarFormatoClick
  end
  object Button6: TButton
    Left = 616
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 15
    OnClick = Button6Click
  end
end
