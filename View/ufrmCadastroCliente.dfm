object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de cliente'
  ClientHeight = 386
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRodape: TPanel
    Left = 0
    Top = 345
    Width = 511
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      511
      41)
    object btnFechar: TButton
      Left = 422
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 511
    Height = 345
    ActivePage = tbPesq
    Align = alClient
    TabOrder = 0
    object tbPesq: TTabSheet
      Caption = 'tbPesq'
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 503
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          503
          73)
        object edtPesquisa: TLabeledEdit
          Left = 24
          Top = 27
          Width = 369
          Height = 21
          EditLabel.Width = 91
          EditLabel.Height = 13
          EditLabel.Caption = 'Pesquise por Nome'
          TabOrder = 0
        end
        object btnPesquisar: TButton
          Left = 418
          Top = 25
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
      end
      object pnlBtnPesq: TPanel
        Left = 0
        Top = 276
        Width = 503
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          503
          41)
        object btnNovo: TButton
          Left = 256
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnDetalhar: TButton
          Left = 337
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Detalhar'
          TabOrder = 1
          OnClick = btnDetalharClick
        end
        object btnExcluir: TButton
          Left = 418
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 76
        Width = 497
        Height = 197
        Align = alClient
        DataSource = dsPesq
        DrawingStyle = gdsGradient
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
      end
    end
    object tbDados: TTabSheet
      Caption = 'tbDados'
      ImageIndex = 1
      object edtCodigo: TLabeledEdit
        Left = 16
        Top = 24
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        TabOrder = 0
      end
      object edtNome: TLabeledEdit
        Left = 152
        Top = 24
        Width = 337
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 1
      end
      object edtCPF: TLabeledEdit
        Left = 16
        Top = 72
        Width = 153
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = 'CPF'
        TabOrder = 2
      end
      object edtTelefone: TLabeledEdit
        Left = 178
        Top = 72
        Width = 151
        Height = 21
        EditLabel.Width = 42
        EditLabel.Height = 13
        EditLabel.Caption = 'Telefone'
        TabOrder = 3
      end
      object edtCelular: TLabeledEdit
        Left = 338
        Top = 72
        Width = 151
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Celular'
        TabOrder = 4
      end
      object edtEndereco: TLabeledEdit
        Left = 16
        Top = 120
        Width = 314
        Height = 21
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Endere'#231'o'
        TabOrder = 5
      end
      object edtBairro: TLabeledEdit
        Left = 336
        Top = 120
        Width = 153
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro'
        TabOrder = 6
      end
      object edtComplemento: TLabeledEdit
        Left = 16
        Top = 176
        Width = 162
        Height = 21
        EditLabel.Width = 65
        EditLabel.Height = 13
        EditLabel.Caption = 'Complemento'
        TabOrder = 7
      end
      object edtCidade: TLabeledEdit
        Left = 184
        Top = 176
        Width = 146
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        TabOrder = 8
      end
      object edtCEP: TLabeledEdit
        Left = 336
        Top = 176
        Width = 153
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = 'CEP'
        TabOrder = 9
      end
      object edtDataCadastro: TLabeledEdit
        Left = 19
        Top = 224
        Width = 153
        Height = 21
        EditLabel.Width = 85
        EditLabel.Height = 13
        EditLabel.Caption = 'Data de Cadastro'
        Enabled = False
        TabOrder = 10
      end
      object edtDataAtualizacao: TLabeledEdit
        Left = 178
        Top = 224
        Width = 151
        Height = 21
        EditLabel.Width = 96
        EditLabel.Height = 13
        EditLabel.Caption = 'Data de Atualiza'#231#227'o'
        Enabled = False
        TabOrder = 11
      end
      object edtDataUltimaVenda: TLabeledEdit
        Left = 338
        Top = 224
        Width = 151
        Height = 21
        EditLabel.Width = 103
        EditLabel.Height = 13
        EditLabel.Caption = 'Data da Ultima Venda'
        Enabled = False
        TabOrder = 12
      end
      object pnlBtnCad: TPanel
        Left = 0
        Top = 260
        Width = 503
        Height = 57
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 13
        DesignSize = (
          503
          57)
        object btnListar: TButton
          Left = 184
          Top = 16
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Listar'
          TabOrder = 3
          OnClick = btnListarClick
        end
        object btnAlterar: TButton
          Left = 263
          Top = 16
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Alterar'
          TabOrder = 0
          OnClick = btnAlterarClick
        end
        object btnGravar: TButton
          Left = 344
          Top = 16
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = btnGravarClick
        end
        object btnCancelar: TButton
          Left = 425
          Top = 16
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = btnCancelarClick
        end
      end
    end
  end
  object dsPesq: TDataSource
    DataSet = DmCliente.cdsPesquisar
    Left = 212
    Top = 296
  end
end
