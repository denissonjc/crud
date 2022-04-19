object DmCliente: TDmCliente
  OldCreateOrder = False
  Height = 302
  Width = 511
  object sqlPesquisar: TSQLDataSet
    CommandText = 'select *'#13#10'from pessoa p'#13#10'where (p.nome like :nome)'
    DataSource = DmConexao.dsConexao
    MaxBlobSize = -1
    Params = <>
    Left = 24
    Top = 16
  end
  object sqlInserir: TSQLDataSet
    DataSource = DmConexao.dsConexao
    Params = <>
    Left = 86
    Top = 16
  end
  object sqlAlterar: TSQLDataSet
    DataSource = DmConexao.dsConexao
    Params = <>
    Left = 148
    Top = 16
  end
  object sqlExcluir: TSQLDataSet
    DataSource = DmConexao.dsConexao
    Params = <>
    Left = 210
    Top = 16
  end
  object dspPesquisar: TDataSetProvider
    DataSet = qPesquisar
    Left = 24
    Top = 136
  end
  object cdsPesquisar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
        Size = 128
      end>
    ProviderName = 'dspPesquisar'
    Left = 24
    Top = 184
    object cdsPesquisarID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPesquisarNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object cdsPesquisarCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object cdsPesquisarTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 13
    end
    object cdsPesquisarCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 14
    end
    object cdsPesquisarENDERECO: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object cdsPesquisarBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object cdsPesquisarCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object cdsPesquisarCIDADE: TStringField
      DisplayLabel = 'Cidade UF'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object cdsPesquisarCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object cdsPesquisarDATA_CADASTRO: TSQLTimeStampField
      DisplayLabel = 'Data de Cadastro'
      DisplayWidth = 15
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object cdsPesquisarDATA_ATUALIZACAO: TSQLTimeStampField
      DisplayLabel = 'Ultima Atualiza'#231#227'o'
      DisplayWidth = 15
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
    object cdsPesquisarDATA_ULTIMA_VENDA: TSQLTimeStampField
      DisplayLabel = 'Ultima Venda'
      DisplayWidth = 15
      FieldName = 'DATA_ULTIMA_VENDA'
      Origin = 'DATA_ULTIMA_VENDA'
    end
  end
  object qPesquisar: TFDQuery
    Connection = DmConexao.SQLConexao
    SQL.Strings = (
      'select *'
      'from pessoa p'
      'where (p.nome like :nome)'
      'order by p.id')
    Left = 24
    Top = 92
    ParamData = <
      item
        Position = 1
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 128
      end>
    object qPesquisarID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPesquisarNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 128
    end
    object qPesquisarCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qPesquisarTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 13
    end
    object qPesquisarCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 14
    end
    object qPesquisarENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 128
    end
    object qPesquisarBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 128
    end
    object qPesquisarCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 128
    end
    object qPesquisarCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 128
    end
    object qPesquisarCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 128
    end
    object qPesquisarDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qPesquisarDATA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
    object qPesquisarDATA_ULTIMA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_VENDA'
      Origin = 'DATA_ULTIMA_VENDA'
    end
  end
  object qInserir: TFDQuery
    Connection = DmConexao.SQLConexao
    SQL.Strings = (
      
        'insert into pessoa (id, nome, cpf_cnpj, telefone, celular, ender' +
        'eco, bairro, complemento, cidade, cep, data_cadastro, data_atual' +
        'izacao, data_ultima_venda)'
      
        'values (:id, :nome, :cpf_cnpj, :telefone, :celular, :endereco, :' +
        'bairro, :complemento, :cidade, :cep, :data_cadastro, :data_atual' +
        'izacao, :data_ultima_venda)')
    Left = 86
    Top = 92
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 128
        Value = Null
      end
      item
        Name = 'CPF_CNPJ'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CELULAR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CEP'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_ATUALIZACAO'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_ULTIMA_VENDA'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 128
    end
    object StringField2: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object StringField3: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 13
    end
    object StringField4: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 14
    end
    object StringField5: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 128
    end
    object StringField6: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 128
    end
    object StringField7: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 128
    end
    object StringField8: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 128
    end
    object StringField9: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 128
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_VENDA'
      Origin = 'DATA_ULTIMA_VENDA'
    end
  end
  object qAlterar: TFDQuery
    Connection = DmConexao.SQLConexao
    SQL.Strings = (
      'update pessoa'
      'set nome = :nome,'
      '    cpf_cnpj = :cpf_cnpj,'
      '    telefone = :telefone,'
      '    celular = :celular,'
      '    endereco = :endereco,'
      '    bairro = :bairro,'
      '    complemento = :complemento,'
      '    cidade = :cidade,'
      '    cep = :cep,'
      '    data_cadastro = :data_cadastro,'
      '    data_atualizacao = :data_atualizacao,'
      '    data_ultima_venda = :data_ultima_venda'
      'where (id = :id)')
    Left = 148
    Top = 92
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 128
        Value = Null
      end
      item
        Name = 'CPF_CNPJ'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CELULAR'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CEP'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA_ATUALIZACAO'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA_ULTIMA_VENDA'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField10: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 128
    end
    object StringField11: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object StringField12: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 13
    end
    object StringField13: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 14
    end
    object StringField14: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 128
    end
    object StringField15: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 128
    end
    object StringField16: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 128
    end
    object StringField17: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 128
    end
    object StringField18: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 128
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQLTimeStampField5: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
    object SQLTimeStampField6: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_VENDA'
      Origin = 'DATA_ULTIMA_VENDA'
    end
  end
  object qExcluir: TFDQuery
    Connection = DmConexao.SQLConexao
    SQL.Strings = (
      'delete from pessoa'
      'where (id = :id)')
    Left = 210
    Top = 92
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object IntegerField3: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField19: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 128
    end
    object StringField20: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object StringField21: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 13
    end
    object StringField22: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 14
    end
    object StringField23: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 128
    end
    object StringField24: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 128
    end
    object StringField25: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 128
    end
    object StringField26: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 128
    end
    object StringField27: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 128
    end
    object SQLTimeStampField7: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQLTimeStampField8: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
    object SQLTimeStampField9: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_VENDA'
      Origin = 'DATA_ULTIMA_VENDA'
    end
  end
end
