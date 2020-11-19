object dmdCadastroBase: TdmdCadastroBase
  OldCreateOrder = False
  Left = 519
  Top = 250
  Height = 343
  Width = 531
  object qryPesquisa: TIBQuery
    Database = dmdConexao.IBConexao
    Transaction = dmdConexao.IBTransaction1
    Left = 48
    Top = 24
  end
  object qryCadastro: TIBQuery
    Database = dmdConexao.IBConexao
    Transaction = dmdConexao.IBTransaction1
    Left = 136
    Top = 24
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'MRC_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCadastro'
    Left = 138
    Top = 136
  end
  object dspCadastro: TDataSetProvider
    DataSet = qryCadastro
    UpdateMode = upWhereChanged
    Left = 136
    Top = 80
  end
  object dspPesquisa: TDataSetProvider
    DataSet = qryPesquisa
    Left = 48
    Top = 80
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    Left = 48
    Top = 136
  end
end
