object dmdCadastroMarca: TdmdCadastroMarca
  OldCreateOrder = False
  Left = 777
  Top = 196
  Height = 359
  Width = 510
  object qryPesquisa: TIBQuery
    Database = dmdConexao.IBConexao
    Transaction = dmdConexao.IBTransaction1
    Active = True
    SQL.Strings = (
      'select *'
      'from MARCA')
    Left = 48
    Top = 24
    object qryPesquisaMRC_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'MRC_ID'
      Origin = '"MARCA"."MRC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesquisaMRC_CODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 15
      FieldName = 'MRC_CODIGO'
      Origin = '"MARCA"."MRC_CODIGO"'
      Size = 30
    end
    object qryPesquisaMRC_NOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'MRC_NOME'
      Origin = '"MARCA"."MRC_NOME"'
      ProviderFlags = []
      Size = 50
    end
  end
  object ibdCadastro: TIBDataSet
    Database = dmdConexao.IBConexao
    Transaction = dmdConexao.IBTransaction1
    DeleteSQL.Strings = (
      'delete from MARCA'
      'where'
      '  MRC_ID = :OLD_MRC_ID')
    InsertSQL.Strings = (
      'insert into MARCA'
      '  (MRC_CODIGO, MRC_ID, MRC_NOME)'
      'values'
      '  (:MRC_CODIGO, :MRC_ID, :MRC_NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  MRC_ID,'
      '  MRC_CODIGO,'
      '  MRC_NOME'
      'from MARCA '
      'where'
      '  MRC_ID = :MRC_ID')
    SelectSQL.Strings = (
      'select * from MARCA'
      'where MRC_ID = :MRC_ID')
    ModifySQL.Strings = (
      'update MARCA'
      'set'
      '  MRC_CODIGO = :MRC_CODIGO,'
      '  MRC_ID = :MRC_ID,'
      '  MRC_NOME = :MRC_NOME'
      'where'
      '  MRC_ID = :OLD_MRC_ID')
    Left = 136
    Top = 24
  end
end
