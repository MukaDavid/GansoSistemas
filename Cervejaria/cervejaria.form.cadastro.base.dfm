object frmCadastroBase: TfrmCadastroBase
  Left = 333
  Top = 397
  Width = 770
  Height = 424
  Caption = 'frmCadastroBase'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConfirmacao: TPanel
    Left = 0
    Top = 336
    Width = 754
    Height = 49
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      754
      49)
    object btnOk: TBitBtn
      Left = 670
      Top = 13
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 0
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 585
      Top = 13
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object dscCadastro: TDataSource
    Left = 56
    Top = 72
  end
end
