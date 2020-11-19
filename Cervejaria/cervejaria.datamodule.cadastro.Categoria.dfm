inherited dmdCadastroCategoria: TdmdCadastroCategoria
  OldCreateOrder = True
  Left = 350
  Top = 125
  inherited qryPesquisa: TIBQuery
    SQL.Strings = (
      'select * '
      'from CATEGORIA')
  end
  inherited qryCadastro: TIBQuery
    SQL.Strings = (
      'select * '
      'from CATEGORIA'
      'where CAT_ID = :CAT_ID')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CAT_ID'
        ParamType = ptUnknown
      end>
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'CAT_ID'
        ParamType = ptUnknown
      end>
    object cdsCadastroCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = '"CATEGORIA"."CAT_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroCAT_NOME: TStringField
      FieldName = 'CAT_NOME'
      Origin = '"CATEGORIA"."CAT_NOME"'
      Size = 100
    end
  end
end
