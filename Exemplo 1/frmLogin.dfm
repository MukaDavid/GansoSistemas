object FormLogin: TFormLogin
  Left = 546
  Top = 153
  Caption = 'FormLogin'
  ClientHeight = 307
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 35
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel
    Left = 43
    Top = 69
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object edtCodigo: TEdit
    Left = 96
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '123'
  end
  object edtNome: TEdit
    Left = 96
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Samuel David'
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 104
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 104
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Button1: TButton
    Left = 96
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
end
