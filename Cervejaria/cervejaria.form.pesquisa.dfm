object frmPesquisa: TfrmPesquisa
  Left = 441
  Top = 222
  Width = 815
  Height = 569
  Caption = 'frmPesquisa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 98
    Width = 799
    Height = 413
    Align = alClient
    DataSource = dscPesquisa
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 799
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      799
      41)
    object Label1: TLabel
      Left = 11
      Top = 13
      Width = 46
      Height = 13
      Caption = 'Pesquisar'
    end
    object Edit1: TEdit
      Left = 63
      Top = 9
      Width = 640
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'Edit1'
    end
    object Button1: TButton
      Left = 713
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Button1'
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 799
    Height = 57
    Align = alTop
    TabOrder = 2
    object btnIncluir: TButton
      Left = 11
      Top = 11
      Width = 75
      Height = 34
      Caption = 'btnIncluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnEditar: TButton
      Left = 96
      Top = 12
      Width = 75
      Height = 33
      Caption = 'btnEditar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnRefresh: TButton
      Left = 296
      Top = 13
      Width = 75
      Height = 33
      Caption = 'btnRefresh'
      TabOrder = 2
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 511
    Width = 799
    Height = 19
    Panels = <>
  end
  object dscPesquisa: TDataSource
    DataSet = dmdCadastroMarca.qryPesquisa
    Left = 328
    Top = 160
  end
end
