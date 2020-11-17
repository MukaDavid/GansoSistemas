object frmCadastroMarca: TfrmCadastroMarca
  Left = 869
  Top = 223
  Width = 579
  Height = 260
  Caption = 'frmCadastroMarca'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 16
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 104
    Top = 56
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 104
    Top = 96
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 32
    Width = 72
    Height = 21
    DataField = 'MRC_ID'
    DataSource = dscCadastro
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 72
    Width = 73
    Height = 21
    DataField = 'MRC_CODIGO'
    DataSource = dscCadastro
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 104
    Top = 112
    Width = 148
    Height = 21
    DataField = 'MRC_NOME'
    DataSource = dscCadastro
    TabOrder = 2
  end
  object pnlConfirmacao: TPanel
    Left = 0
    Top = 160
    Width = 563
    Height = 61
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 472
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 384
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object dscCadastro: TDataSource
    Left = 32
    Top = 24
  end
end
