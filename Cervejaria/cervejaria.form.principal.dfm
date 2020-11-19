object frmPrincipal: TfrmPrincipal
  Left = 137
  Top = 141
  Width = 1470
  Height = 739
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
    Width = 1454
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
  object DBGrid1: TDBGrid
    Left = 320
    Top = 88
    Width = 729
    Height = 120
    DataSource = DataSource3
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FST_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FST_NOME'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FST_DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IBDataSet2'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 320
    Top = 280
    Width = 729
    Height = 120
    DataSource = DataSource4
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FCV_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FST_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FCV_QTD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CVJ_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CVJ_ID1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CVJ_NOME'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRC_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAT_ID'
        Visible = True
      end>
  end
  object IBDataSet1: TIBDataSet
    Database = dmdConexao.IBConexao
    Transaction = dmdConexao.IBTransaction1
    DeleteSQL.Strings = (
      'delete from FESTA'
      'where'
      '  FST_ID = :OLD_FST_ID')
    InsertSQL.Strings = (
      'insert into FESTA'
      '  (FST_DATA, FST_ID, FST_NOME)'
      'values'
      '  (:FST_DATA, :FST_ID, :FST_NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  FST_ID,'
      '  FST_NOME,'
      '  FST_DATA'
      'from FESTA '
      'where'
      '  FST_ID = :FST_ID')
    SelectSQL.Strings = (
      'select * from FESTA')
    ModifySQL.Strings = (
      'update FESTA'
      'set'
      '  FST_DATA = :FST_DATA,'
      '  FST_ID = :FST_ID,'
      '  FST_NOME = :FST_NOME'
      'where'
      '  FST_ID = :OLD_FST_ID')
    Left = 80
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = IBDataSet1
    Left = 80
    Top = 104
  end
  object IBDataSet2: TIBDataSet
    Database = dmdConexao.IBConexao
    Transaction = dmdConexao.IBTransaction1
    DeleteSQL.Strings = (
      'delete from FESTA_CERVEJA'
      'where'
      '  FCV_ID = :OLD_FCV_ID')
    InsertSQL.Strings = (
      'insert into FESTA_CERVEJA'
      '  (FCV_ID, FCV_QTD, FST_ID)'
      'values'
      '  (:FCV_ID, :FCV_QTD, :FST_ID)')
    RefreshSQL.Strings = (
      'select * '
      'from FESTA_CERVEJA FTC'
      'left join CERVEJA CVJ on'
      '  CVJ.CVJ_ID = FTC.CVJ_ID'
      'where FTC.FST_ID = :FST_ID'
      '  ')
    SelectSQL.Strings = (
      'select * '
      'from FESTA_CERVEJA FTC'
      'left join CERVEJA CVJ on'
      '  CVJ.CVJ_ID = FTC.CVJ_ID'
      'where FTC.FST_ID = :FST_ID'
      '  ')
    ModifySQL.Strings = (
      'update FESTA_CERVEJA'
      'set'
      '  FCV_ID = :FCV_ID,'
      '  FCV_QTD = :FCV_QTD,'
      '  FST_ID = :FST_ID'
      'where'
      '  FCV_ID = :OLD_FCV_ID')
    DataSource = DataSource1
    Left = 184
    Top = 160
  end
  object DataSource2: TDataSource
    DataSet = IBDataSet2
    Left = 184
    Top = 104
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 80
    Top = 272
    object ClientDataSet1FST_ID: TIntegerField
      FieldName = 'FST_ID'
      Origin = '"FESTA"."FST_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1FST_NOME: TStringField
      FieldName = 'FST_NOME'
      Origin = '"FESTA"."FST_NOME"'
      Size = 250
    end
    object ClientDataSet1FST_DATA: TDateTimeField
      FieldName = 'FST_DATA'
      Origin = '"FESTA"."FST_DATA"'
    end
    object ClientDataSet1IBDataSet2: TDataSetField
      FieldName = 'IBDataSet2'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = IBDataSet1
    Left = 80
    Top = 216
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet1
    Left = 80
    Top = 336
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    DataSetField = ClientDataSet1IBDataSet2
    Params = <>
    Left = 184
    Top = 272
  end
  object DataSource4: TDataSource
    DataSet = ClientDataSet2
    Left = 184
    Top = 336
  end
end
