unit uClienteModel;

interface

uses
    System.SysUtils;

type
  TCliente = class
  private
    FCPF_CNPJ: string;
    FBAIRRO: string;
    FDATA_CADASTRO: TDateTime;
    FCEP: string;
    FID: Integer;
    FCOMPLEMENTO: string;
    FDATA_ATUALIZACAO: TDateTime;
    FDATA_ULTIMA_VENDA: TDateTime;
    FNOME: string;
    FCIDADE: string;
    FENDERECO: string;
    FTELEFONE: string;
    FCELULAR: string;
    procedure SetNOME(const Value: string);
  public
    property ID: Integer read FID write FID;
    property NOME: string read FNOME write SetNOME;
    property CPF_CNPJ: string read FCPF_CNPJ write FCPF_CNPJ;
    property TELEFONE: string read FTELEFONE write FTELEFONE;
    property CELULAR: string read FCELULAR write FCELULAR;
    property ENDERECO: string read FENDERECO write FENDERECO;
    property BAIRRO: string read FBAIRRO write FBAIRRO;
    property COMPLEMENTO: string read FCOMPLEMENTO write FCOMPLEMENTO;
    property CIDADE: string read FCIDADE write FCIDADE;
    property CEP: string read FCEP write FCEP;
    property DATA_CADASTRO: TDateTime read FDATA_CADASTRO write FDATA_CADASTRO;
    property DATA_ATUALIZACAO: TDateTime read FDATA_ATUALIZACAO write FDATA_ATUALIZACAO;
    property DATA_ULTIMA_VENDA: TDateTime read FDATA_ULTIMA_VENDA write FDATA_ULTIMA_VENDA;

  end;

implementation

{ TCliente }

procedure TCliente.SetNOME(const Value: string);
begin
  if Value = EmptyStr then
    raise EArgumentException.Create('Nome precisa ser preenchido!');
  FNOME := Value;
end;

end.
