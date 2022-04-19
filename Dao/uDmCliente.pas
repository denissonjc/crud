unit uDmCliente;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.DBClient, Datasnap.Provider, uDmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uClienteModel;

type
  TDmCliente = class(TDataModule)
    sqlPesquisar: TSQLDataSet;
    sqlInserir: TSQLDataSet;
    sqlAlterar: TSQLDataSet;
    sqlExcluir: TSQLDataSet;
    dspPesquisar: TDataSetProvider;
    cdsPesquisar: TClientDataSet;
    qPesquisar: TFDQuery;
    qPesquisarID: TIntegerField;
    qPesquisarNOME: TStringField;
    qPesquisarCPF_CNPJ: TStringField;
    qPesquisarTELEFONE: TStringField;
    qPesquisarCELULAR: TStringField;
    qPesquisarENDERECO: TStringField;
    qPesquisarBAIRRO: TStringField;
    qPesquisarCOMPLEMENTO: TStringField;
    qPesquisarCIDADE: TStringField;
    qPesquisarCEP: TStringField;
    qPesquisarDATA_CADASTRO: TSQLTimeStampField;
    qPesquisarDATA_ATUALIZACAO: TSQLTimeStampField;
    qPesquisarDATA_ULTIMA_VENDA: TSQLTimeStampField;
    cdsPesquisarID: TIntegerField;
    cdsPesquisarNOME: TStringField;
    cdsPesquisarCPF_CNPJ: TStringField;
    cdsPesquisarTELEFONE: TStringField;
    cdsPesquisarCELULAR: TStringField;
    cdsPesquisarENDERECO: TStringField;
    cdsPesquisarBAIRRO: TStringField;
    cdsPesquisarCOMPLEMENTO: TStringField;
    cdsPesquisarCIDADE: TStringField;
    cdsPesquisarCEP: TStringField;
    cdsPesquisarDATA_CADASTRO: TSQLTimeStampField;
    cdsPesquisarDATA_ATUALIZACAO: TSQLTimeStampField;
    cdsPesquisarDATA_ULTIMA_VENDA: TSQLTimeStampField;
    qInserir: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    SQLTimeStampField3: TSQLTimeStampField;
    qAlterar: TFDQuery;
    IntegerField2: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    SQLTimeStampField4: TSQLTimeStampField;
    SQLTimeStampField5: TSQLTimeStampField;
    SQLTimeStampField6: TSQLTimeStampField;
    qExcluir: TFDQuery;
    IntegerField3: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    SQLTimeStampField7: TSQLTimeStampField;
    SQLTimeStampField8: TSQLTimeStampField;
    SQLTimeStampField9: TSQLTimeStampField;
  private
    { Private declarations }
  public
    function GerarID: Integer;
    procedure Pesquisar(sNome: string);
    procedure CarregarCliente (oCliente: TCliente; iCodigo: Integer);
    function Inserir(oCliente: TCliente; out sErro: string): Boolean;
    function Alterar(oCliente: TCliente; out sErro: string): Boolean;
    function Excluir(iCodigo: Integer; out sErro: string): Boolean;

  end;

var
  DmCliente: TDmCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

{ TDmCliente }

function TDmCliente.Alterar(oCliente: TCliente; out sErro: string): Boolean;
begin
  with qAlterar, oCliente do
  begin
    Params[0].AsString := NOME;
    Params[1].AsString := CPF_CNPJ;
    Params[2].AsString := TELEFONE;
    Params[3].AsString := CELULAR;
    Params[4].AsString := ENDERECO;
    Params[5].AsString := BAIRRO;
    Params[6].AsString := COMPLEMENTO;
    Params[7].AsString := CIDADE;
    Params[8].AsString := CEP;
    Params[10].AsDateTime := Date();
    Params[12].AsInteger := ID;

    try
      ExecSQL();
      Result := true;
    except on E: exception do
      begin
        sErro := 'Ocorreu um erro ao Alterar o Cliente: ' + sLineBreak + E.message;
        Result := False;
      end;

    end;
  end;
end;

procedure TDmCliente.CarregarCliente(oCliente: TCliente; iCodigo: Integer);
var
  sqlCliente: TFDQuery;
begin
  sqlCliente := TFDQuery.Create(nil);
  try
    with sqlCliente do
    begin
      Connection := DmConexao.SQLConexao;
      SQL.Text :=('select * from pessoa where (id = ' + IntToStr(iCodigo) + ') ');
      Open;

      with oCliente do
      begin
        id := FieldByName('id').AsInteger;
        NOME:= FieldByName('NOME').AsString;
        CPF_CNPJ:= FieldByName('CPF_CNPJ').AsString;
        TELEFONE:= FieldByName('TELEFONE').AsString;
        CELULAR:= FieldByName('CELULAR').AsString;
        ENDERECO:= FieldByName('ENDERECO').AsString;
        BAIRRO:= FieldByName('BAIRRO').AsString;
        COMPLEMENTO:= FieldByName('COMPLEMENTO').AsString;
        CIDADE:= FieldByName('CIDADE').AsString;
        CEP:= FieldByName('CEP').AsString;
        DATA_CADASTRO:= FieldByName('DATA_CADASTRO').AsDateTime;
        DATA_ATUALIZACAO:= FieldByName('DATA_ATUALIZACAO').AsDateTime;
        DATA_ULTIMA_VENDA:= FieldByName('DATA_ULTIMA_VENDA').AsDateTime;
      end;
    end;
  finally
    FreeAndNil(sqlCliente);
  end;

end;

function TDmCliente.Excluir(iCodigo: Integer; out sErro: string): Boolean;
begin
  with qExcluir do
  begin
    Params[0].AsInteger := iCodigo;
     try
      ExecSQL();
      Result := true;
      except on E: exception do
      begin
        sErro := 'Ocorreu um erro ao Excluir: ' + sLineBreak + E.message;
        Result := False;
      end;

    end;
  end;
end;

function TDmCliente.GerarID: Integer;
var
  sqlSequencia:TFDQuery;
begin
  sqlSequencia := TFDQuery.Create(nil);
  try
    sqlSequencia.Connection := DmConexao.SQLConexao;
    sqlSequencia.SQL.Text :=('select (coalesce(max(id), 0) + 1) as seq from pessoa');
    sqlSequencia.Open;
    Result := sqlSequencia.FieldByName('seq').AsInteger;
  finally
    FreeAndNil(sqlSequencia)
  end;
end;

function TDmCliente.Inserir(oCliente: TCliente; out sErro: string): Boolean;
begin
  with qInserir, oCliente do
  begin
    Params[0].AsInteger := GerarID;
    Params[1].AsString := NOME;
    Params[2].AsString := CPF_CNPJ;
    Params[3].AsString := TELEFONE;
    Params[4].AsString := CELULAR;
    Params[5].AsString := ENDERECO;
    Params[6].AsString := BAIRRO;
    Params[7].AsString := COMPLEMENTO;
    Params[8].AsString := CIDADE;
    Params[9].AsString := CEP;
    Params[10].AsDateTime := Date();
    Params[11].AsDateTime := Date();
    Params[12].AsDateTime := Date();

    try
      ExecSQL();
      Result := true;
    except on E: exception do
      begin
        sErro := 'Ocorreu um erro ao Inserir Cliente: ' + sLineBreak + E.message;
        Result := False;
      end;

    end;
  end;
end;

procedure TDmCliente.Pesquisar(sNome: string);
begin
  if cdsPesquisar.Active then
    cdsPesquisar.Close;
  cdsPesquisar.Params[0].AsString := '%' + sNome + '%';
  cdsPesquisar.Open;
  cdsPesquisar.First;
end;

end.



