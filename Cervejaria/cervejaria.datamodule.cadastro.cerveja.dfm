inherited dmdCadastroCerveja: TdmdCadastroCerveja
  OldCreateOrder = True
  Left = 866
  Top = 214
  inherited qryPesquisa: TIBQuery
    SQL.Strings = (
      'SELECT CRV.*,'
      'MRC.MRC_CODIGO,'
      'MRC.MRC_NOME,'
      'CAT.CAT_NOME'
      'FROM CERVEJA CRV'
      'LEFT JOIN CATEGORIA CAT ON'
      '  CAT.CAT_ID = CRV.CAT_ID'
      'LEFT JOIN MARCA MRC ON'
      '  MRC.MRC_ID = CRV.MRC_ID')
  end
  inherited qryCadastro: TIBQuery
    SQL.Strings = (
      'select * '
      'from CERVEJA'
      'where CVJ_ID = :CVJ_ID')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CVJ_ID'
        ParamType = ptUnknown
      end>
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'CVJ_ID'
        ParamType = ptUnknown
      end>
    object cdsCadastroCVJ_ID: TIntegerField
      FieldName = 'CVJ_ID'
      Origin = '"CERVEJA"."CVJ_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroCVJ_NOME: TStringField
      FieldName = 'CVJ_NOME'
      Origin = '"CERVEJA"."CVJ_NOME"'
      Size = 250
    end
    object cdsCadastroMRC_ID: TIntegerField
      FieldName = 'MRC_ID'
      Origin = '"CERVEJA"."MRC_ID"'
    end
    object cdsCadastroCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = '"CERVEJA"."CAT_ID"'
    end
  end
  inherited cdsPesquisa: TClientDataSet
    object cdsPesquisaCVJ_ID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 5
      FieldName = 'CVJ_ID'
      Required = True
    end
    object cdsPesquisaCVJ_NOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'CVJ_NOME'
      Size = 250
    end
    object cdsPesquisaMRC_ID: TIntegerField
      FieldName = 'MRC_ID'
      Visible = False
    end
    object cdsPesquisaCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Visible = False
    end
    object cdsPesquisaMRC_CODIGO: TStringField
      DisplayLabel = 'Cod Marca'
      DisplayWidth = 10
      FieldName = 'MRC_CODIGO'
      Size = 30
    end
    object cdsPesquisaMRC_NOME: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldName = 'MRC_NOME'
      Size = 50
    end
    object cdsPesquisaCAT_NOME: TStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 20
      FieldName = 'CAT_NOME'
      Size = 100
    end
  end
end
