inherited frmCadastroCerveja: TfrmCadastroCerveja
  Left = 928
  Top = 195
  Width = 474
  Height = 272
  Caption = 'frmCadastroCerveja'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 16
    Width = 36
    Height = 13
    Caption = 'CVJ_ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 56
    Width = 57
    Height = 13
    Caption = 'CVJ_NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 96
    Width = 41
    Height = 13
    Caption = 'MRC_ID'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 24
    Top = 136
    Width = 38
    Height = 13
    Caption = 'CAT_ID'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 134
    Height = 21
    DataField = 'CVJ_ID'
    DataSource = dscCadastro
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [5]
    Left = 24
    Top = 72
    Width = 400
    Height = 21
    DataField = 'CVJ_NOME'
    DataSource = dscCadastro
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [6]
    Left = 24
    Top = 112
    Width = 134
    Height = 21
    DataField = 'MRC_ID'
    DataSource = dscCadastro
    TabOrder = 2
  end
  object DBEdit4: TDBEdit [7]
    Left = 24
    Top = 152
    Width = 134
    Height = 21
    DataField = 'CAT_ID'
    DataSource = dscCadastro
    TabOrder = 3
  end
  inherited pnlConfirmacao: TPanel
    Top = 184
    Width = 458
    TabOrder = 4
    inherited btnOk: TBitBtn
      Left = 375
    end
    inherited btnCancel: TBitBtn
      Left = 290
    end
  end
  inherited dscCadastro: TDataSource
    DataSet = dmdCadastroCerveja.cdsCadastro
    Left = 256
    Top = 104
  end
end
