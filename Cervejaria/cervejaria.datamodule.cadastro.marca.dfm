object dmdCadastroMarca: TdmdCadastroMarca
  OldCreateOrder = False
  Height = 359
  Width = 510
  object qryPesquisa: TIBQuery
    Database = dmdConexao.IBConexao
    SQL.Strings = (
      'select *'
      'from MARCA')
    Left = 72
    Top = 40
  end
end
