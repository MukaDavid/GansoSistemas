object frmPesquisaMarca: TfrmPesquisaMarca
  Left = 771
  Top = 38
  Width = 778
  Height = 463
  Caption = 'frmPesquisaMarca'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 57
    Align = alTop
    TabOrder = 0
    object DBEdit1: TDBEdit
      Left = 576
      Top = 19
      Width = 137
      Height = 21
      DataField = 'MRC_NOME'
      DataSource = dscPesquisa
      TabOrder = 0
    end
    object btnIncluir: TButton
      Left = 11
      Top = 11
      Width = 75
      Height = 34
      Caption = 'btnIncluir'
      TabOrder = 1
      OnClick = btnIncluirClick
    end
    object btnEditar: TButton
      Left = 96
      Top = 12
      Width = 75
      Height = 33
      Caption = 'btnEditar'
      TabOrder = 2
      OnClick = btnEditarClick
    end
    object btnRefresh: TButton
      Left = 296
      Top = 13
      Width = 75
      Height = 33
      Caption = 'btnRefresh'
      TabOrder = 3
      OnClick = btnRefreshClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 405
    Width = 762
    Height = 19
    Panels = <>
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 98
    Width = 762
    Height = 307
    Align = alClient
    DataSource = dscPesquisa
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 762
    Height = 41
    Align = alTop
    TabOrder = 3
    DesignSize = (
      762
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
      Width = 603
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'Edit1'
    end
    object Button1: TButton
      Left = 676
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Button1'
      TabOrder = 1
    end
  end
  object dscPesquisa: TDataSource
    DataSet = dmdCadastroMarca.qryPesquisa
    Left = 216
    Top = 8
  end
end
