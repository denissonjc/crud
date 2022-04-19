unit ufrmCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TOperacao = (opNovo, opAlterar, opNavegar);

  TfrmCadastroCliente = class(TForm)
    pnlRodape: TPanel;
    btnFechar: TButton;
    pgcPrincipal: TPageControl;
    tbPesq: TTabSheet;
    tbDados: TTabSheet;
    pnlFiltro: TPanel;
    edtPesquisa: TLabeledEdit;
    btnPesquisar: TButton;
    pnlBtnPesq: TPanel;
    btnNovo: TButton;
    btnDetalhar: TButton;
    btnExcluir: TButton;
    DBGrid1: TDBGrid;
    dsPesq: TDataSource;
    edtCodigo: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtCPF: TLabeledEdit;
    edtTelefone: TLabeledEdit;
    edtCelular: TLabeledEdit;
    edtEndereco: TLabeledEdit;
    edtBairro: TLabeledEdit;
    edtComplemento: TLabeledEdit;
    edtCidade: TLabeledEdit;
    edtCEP: TLabeledEdit;
    edtDataCadastro: TLabeledEdit;
    edtDataAtualizacao: TLabeledEdit;
    edtDataUltimaVenda: TLabeledEdit;
    pnlBtnCad: TPanel;
    btnListar: TButton;
    btnAlterar: TButton;
    btnGravar: TButton;
    btnCancelar: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FOperacao: TOperacao;
    procedure Novo;
    procedure Detalhar;
    procedure Configuracoes;
    procedure Pesquisar;
    procedure CarregarCliente;
    procedure Listar;
    Procedure Alterar;
    procedure Excluir;
    procedure Inserir;
    procedure Gravar;
    procedure HabilitarControles(aOperacao: TOperacao);

  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses uClienteController, uClienteModel, uDmCliente;

procedure TfrmCadastroCliente.Alterar;
var
  Ocliente: TCliente;
  OclienteController: TClienteConroller;
  sErro: String;
begin
  oCliente := TCliente.create;
  OclienteController := TClienteConroller.create;
  try
    with Ocliente do
    begin
      ID := StrToIntDef(edtCodigo.Text, 0);
      NOME := edtNome.Text;
      CPF_CNPJ := edtCPF.Text;
      TELEFONE := edtTelefone.Text;
      CELULAR := edtCelular.Text;
      ENDERECO := edtEndereco.Text;
      BAIRRO := edtBairro.Text;
      COMPLEMENTO := edtComplemento.Text;
      CIDADE := edtCidade.Text;
      CEP := edtCEP.Text;
      DATA_CADASTRO := StrToDateTime(edtDataCadastro.Text);
      DATA_ATUALIZACAO := StrToDateTime(edtDataAtualizacao.Text);
      DATA_ULTIMA_VENDA := StrToDateTime(edtDataUltimaVenda.Text);
    end;
    if OclienteController.Alterar(Ocliente, sErro) = false then
      raise Exception.Create(sErro)
    else
      ShowMessage('cadastro ok');

  finally
    FreeAndNil(Ocliente);
    FreeAndNil(OclienteController);
  end;

end;

procedure TfrmCadastroCliente.btnAlterarClick(Sender: TObject);
begin
  FOperacao :=opAlterar;
  HabilitarControles(opAlterar);
end;

procedure TfrmCadastroCliente.btnCancelarClick(Sender: TObject);
begin
  HabilitarControles(opNavegar);
end;

procedure TfrmCadastroCliente.btnDetalharClick(Sender: TObject);
begin
  Detalhar;
end;

procedure TfrmCadastroCliente.btnExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TfrmCadastroCliente.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroCliente.btnGravarClick(Sender: TObject);
begin
  Gravar;
  HabilitarControles(opNavegar);
end;

procedure TfrmCadastroCliente.btnListarClick(Sender: TObject);
begin
  Listar;
end;

procedure TfrmCadastroCliente.btnNovoClick(Sender: TObject);
begin
  Novo;
  HabilitarControles(opNovo);
end;

procedure TfrmCadastroCliente.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmCadastroCliente.CarregarCliente;
var
  oCliente: TCliente;
  oClienteController: TClienteConroller;
begin
  oCliente := TCliente.create;
  oClienteController := TClienteConroller.create;
  try
    oClienteController.CarregarCliente(oCliente, dsPesq.DataSet.FieldByName('id').AsInteger );
    with oCliente do
    begin
      edtCodigo.Text := IntToStr(ID);
      edtNome.Text := NOME;
      edtCPF.Text := CPF_CNPJ;
      edtTelefone.Text := TELEFONE;
      edtCelular.Text := CELULAR;
      edtEndereco.Text := ENDERECO;
      edtBairro.Text := BAIRRO;
      edtComplemento.Text := COMPLEMENTO;
      edtCidade.Text := CIDADE;
      edtCEP.Text := CEP;
      edtDataCadastro.Text := DateToStr(DATA_CADASTRO);
      edtDataAtualizacao.Text := DateToStr(DATA_ATUALIZACAO);
      edtDataUltimaVenda.Text := DateToStr(DATA_ULTIMA_VENDA);

    end;
  finally
    FreeAndNil(oCliente);
    FreeAndNil(oClienteController);
  end;

end;

procedure TfrmCadastroCliente.Configuracoes;
begin
  tbPesq.TabVisible := False;
  tbDados.TabVisible := False;
  pgcPrincipal.ActivePage := tbPesq;
end;

procedure TfrmCadastroCliente.DBGrid1DblClick(Sender: TObject);
begin
  Detalhar;
end;

procedure TfrmCadastroCliente.Detalhar;
begin
 if (DmCliente.cdsPesquisar.Active) and (DmCliente.cdsPesquisar.RecordCount > 0) then
 begin
  CarregarCliente;
  HabilitarControles(opNavegar);
  FOperacao := opNavegar;
  pgcPrincipal.ActivePage := tbDados;
 end
 else
  raise Exception.Create('Não a registro selecionado');
end;

procedure TfrmCadastroCliente.Excluir;
var
  oClienteController: TClienteConroller;
  sErro: string;
begin
  oClienteController := TClienteConroller.create;
  try
    if (DmCliente.cdsPesquisar.Active) and (DmCliente.cdsPesquisar.RecordCount > 0) then
    begin
      if MessageDlg('deseja Ecluir?', mtConfirmation, [mbYes, mbno], 0) = IDYES then
      begin
        if oClienteController.Exlcuir(DmCliente.cdsPesquisarID.AsInteger, sErro) = false then
          raise Exception.Create(sErro);
        oClienteController.Pesquisar(edtPesquisa.Text);
      end;
    end
    else
    raise Exception.Create('nao a registro para excluir');
  finally
    FreeAndNil(oClienteController);
  end;

end;

procedure TfrmCadastroCliente.FormCreate(Sender: TObject);
begin
  DmCliente := TDmCliente.Create(nil);
end;

procedure TfrmCadastroCliente.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DmCliente);
end;

procedure TfrmCadastroCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
  configuracoes
end;

procedure TfrmCadastroCliente.Gravar;
var
  oClienteController: TClienteConroller;
begin
  oClienteController := TClienteConroller.create;
  try
    case FOperacao of
      opNovo: Inserir;
      opAlterar: Alterar;
    end;
    oClienteController.Pesquisar(edtPesquisa.Text);
  finally
    FreeAndNil(oClienteController);
  end;

end;

procedure TfrmCadastroCliente.HabilitarControles(aOperacao: TOperacao);
begin
  case aOperacao of
    opNovo,opAlterar:
    begin
      edtNome.Enabled := True;
      edtCPF.Enabled := True;
      edtTelefone.Enabled := True;
      edtCelular.Enabled := True;
      edtEndereco.Enabled := True;
      edtBairro.Enabled := True;
      edtComplemento.Enabled := True;
      edtCidade.Enabled := True;
      edtCEP.Enabled := True;
      btnListar.Enabled := False;
      btnFechar.Enabled := False;
      btnAlterar.Enabled := False;
      btnGravar.Enabled := True;
      btnCancelar.Enabled := True;
    end;
    opNavegar:
    begin
      edtNome.Enabled := False;
      edtCPF.Enabled := False;
      edtTelefone.Enabled := False;
      edtCelular.Enabled := False;
      edtEndereco.Enabled := False;
      edtBairro.Enabled := False;
      edtComplemento.Enabled := False;
      edtCidade.Enabled := False;
      edtCEP.Enabled := False;
      btnListar.Enabled := True;
      btnFechar.Enabled := True;
      btnAlterar.Enabled := True;
      btnGravar.Enabled := False;
      btnCancelar.Enabled := False;
    end;
  end;
end;

procedure TfrmCadastroCliente.Inserir;
var
  oCliente: TCliente;
  oClienteController: TClienteConroller;
  sErro: string;
begin
  oCliente := TCliente.create;
  oClienteController := TClienteConroller.Create;
  try
    with oCliente do
    begin
      ID := 0;
      NOME := edtNome.Text;
      CPF_CNPJ := edtCPF.Text;
      TELEFONE := edtTelefone.Text;
      CELULAR := edtCelular.Text;
      ENDERECO := edtEndereco.Text;
      BAIRRO := edtBairro.Text;
      COMPLEMENTO := edtComplemento.Text;
      CIDADE := edtCidade.Text;
      CEP := edtCEP.Text;
    end;
    if oClienteController.Inserir(oCliente, sErro) = false then
      raise Exception.Create(sErro);
  finally
    FreeAndNil(oCliente);
    FreeAndNil(oClienteController);
  end;

end;

procedure TfrmCadastroCliente.Listar;
begin
  pgcPrincipal.ActivePage := tbPesq;
end;

procedure TfrmCadastroCliente.Novo;
begin
  FOperacao := opNovo;
  pgcPrincipal.ActivePage := tbDados;
end;

procedure TfrmCadastroCliente.Pesquisar;
var
  oClienteController: TClienteConroller;
begin
  oClienteController := TClienteConroller.create;
  try
    oClienteController.Pesquisar(edtPesquisa.Text);
  finally
    FreeAndNil(oClienteController);
  end;
end;

end.
