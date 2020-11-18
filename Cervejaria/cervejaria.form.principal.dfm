object frmPrincipal: TfrmPrincipal
  Left = 631
  Top = 202
  Width = 1195
  Height = 290
  Caption = 'frmPrincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1179
    Height = 58
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object btnCadMarca: TButton
      Left = 5
      Top = 3
      Width = 75
      Height = 51
      Caption = 'Marca'
      TabOrder = 0
      OnClick = btnCadMarcaClick
    end
    object btnCategoria: TButton
      Left = 84
      Top = 4
      Width = 75
      Height = 50
      Caption = 'Categoria'
      TabOrder = 1
      OnClick = btnCategoriaClick
    end
    object btnCerveja: TButton
      Left = 164
      Top = 4
      Width = 75
      Height = 50
      Caption = 'Cervejas'
      TabOrder = 2
      OnClick = btnCervejaClick
    end
  end
end
