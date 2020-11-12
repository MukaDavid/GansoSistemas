object Form1: TForm1
  Left = 752
  Top = 229
  Width = 521
  Height = 347
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 248
    Top = 192
    Width = 49
    Height = 22
    Caption = '1'
    OnClick = BtnNumeroClick
  end
  object Btn0: TButton
    Left = 74
    Top = 186
    Width = 31
    Height = 30
    Caption = '0'
    TabOrder = 0
    OnClick = BtnNumeroClick
  end
  object Btn2: TButton
    Left = 74
    Top = 141
    Width = 31
    Height = 31
    Caption = '2'
    TabOrder = 1
    OnClick = BtnNumeroClick
  end
  object Btn1: TButton
    Left = 30
    Top = 141
    Width = 30
    Height = 31
    Caption = '1'
    TabOrder = 2
    OnClick = BtnNumeroClick
  end
  object Btn4: TButton
    Left = 30
    Top = 97
    Width = 30
    Height = 30
    Caption = '4'
    TabOrder = 3
    OnClick = BtnNumeroClick
  end
  object Btn5: TButton
    Left = 74
    Top = 97
    Width = 31
    Height = 30
    Caption = '5'
    TabOrder = 4
    OnClick = BtnNumeroClick
  end
  object Btn6: TButton
    Left = 119
    Top = 97
    Width = 31
    Height = 30
    Caption = '6'
    TabOrder = 5
    OnClick = BtnNumeroClick
  end
  object Btn9: TButton
    Left = 119
    Top = 52
    Width = 31
    Height = 31
    Caption = '9'
    TabOrder = 6
    OnClick = BtnNumeroClick
  end
  object Btn8: TButton
    Left = 74
    Top = 52
    Width = 31
    Height = 31
    Caption = '8'
    TabOrder = 7
    OnClick = BtnNumeroClick
  end
  object Btn7: TButton
    Left = 30
    Top = 52
    Width = 30
    Height = 31
    Caption = '7'
    TabOrder = 8
    OnClick = BtnNumeroClick
  end
  object Btn3: TButton
    Left = 119
    Top = 141
    Width = 31
    Height = 31
    Caption = '3'
    TabOrder = 9
    OnClick = BtnNumeroClick
  end
  object BtnIgual: TButton
    Left = 119
    Top = 186
    Width = 31
    Height = 30
    Caption = '='
    TabOrder = 10
    OnClick = BtnIgualClick
  end
  object BtnSoma: TButton
    Left = 163
    Top = 52
    Width = 31
    Height = 31
    Caption = '+'
    TabOrder = 11
    OnClick = BtnSomaClick
  end
  object BtnMult: TButton
    Left = 163
    Top = 141
    Width = 31
    Height = 31
    Caption = '*'
    TabOrder = 12
    OnClick = BtnMultClick
  end
  object BtnDivide: TButton
    Left = 163
    Top = 186
    Width = 31
    Height = 30
    Caption = '/'
    TabOrder = 13
    OnClick = BtnDivideClick
  end
  object BtnSub: TButton
    Left = 163
    Top = 97
    Width = 31
    Height = 30
    Caption = '-'
    TabOrder = 14
    OnClick = BtnSubClick
  end
  object edtVisor: TEdit
    Left = 30
    Top = 15
    Width = 164
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object BtnClear: TButton
    Left = 30
    Top = 186
    Width = 30
    Height = 30
    Caption = 'C'
    TabOrder = 16
    OnClick = BtnClearClick
  end
  object emuHistorico: TMemo
    Left = 208
    Top = 15
    Width = 231
    Height = 157
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 17
  end
  object BtnLimpar: TButton
    Left = 357
    Top = 186
    Width = 82
    Height = 30
    Caption = 'Limpar'
    TabOrder = 18
    OnClick = BtnLimparClick
  end
  object Edit1: TEdit
    Left = 32
    Top = 232
    Width = 121
    Height = 49
    TabOrder = 19
    Text = '5'
    OnClick = BtnNumeroClick
  end
  object Button1: TButton
    Left = 168
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 20
    OnClick = Button1Click
  end
end
