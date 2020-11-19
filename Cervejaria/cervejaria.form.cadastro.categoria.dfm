inherited frmCadastroCategoria: TfrmCadastroCategoria
  Left = 932
  Top = 114
  Width = 346
  Height = 200
  Caption = 'frmCadastroCategoria'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 16
    Width = 38
    Height = 13
    Caption = 'CAT_ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 56
    Width = 59
    Height = 13
    Caption = 'CAT_NOME'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit [2]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'CAT_ID'
    DataSource = dscCadastro
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [3]
    Left = 24
    Top = 72
    Width = 250
    Height = 21
    DataField = 'CAT_NOME'
    DataSource = dscCadastro
    TabOrder = 1
  end
  inherited pnlConfirmacao: TPanel
    Top = 112
    Width = 330
    TabOrder = 2
    inherited btnOk: TBitBtn
      Left = 244
    end
    inherited btnCancel: TBitBtn
      Left = 159
    end
  end
  inherited dscCadastro: TDataSource
    DataSet = dmdCadastroCategoria.cdsCadastro
    Left = 184
    Top = 24
  end
end
