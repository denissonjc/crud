unit uClienteController;

interface

uses
  uClienteModel, uDmCliente, System.SysUtils;

type
  TClienteConroller = class
  public
    constructor Create;
    destructor Destroy; override;
    procedure Pesquisar(sNome:string);
    procedure CarregarCliente(oCliente:TCliente; iCodigo: Integer);
    function Inserir(oCliente: TCliente; var sERRO: string): Boolean;
    function Alterar(oCliente: TCliente; var sERRO: string): Boolean;
    Function Exlcuir(icodigo: Integer; var sERRO: string): Boolean;

  end;
implementation

{ TClienteConroller }

function TClienteConroller.Alterar(oCliente: TCliente;
  var sERRO: string): Boolean;
begin
  Result := DmCliente.Alterar(oCliente, sERRO);
end;

procedure TClienteConroller.CarregarCliente(oCliente: TCliente;
  iCodigo: Integer);
begin
  DmCliente.CarregarCliente(oCliente, iCodigo);
end;

constructor TClienteConroller.Create;
begin
  //DmCliente := TDmCliente.Create(nil);
end;

destructor TClienteConroller.Destroy;
begin
//  FreeAndNil(DmCliente);
  inherited;
end;

function TClienteConroller.Exlcuir(iCodigo: Integer;
  var sERRO: string): Boolean;
begin
  result := DmCliente.Excluir(iCodigo, sERRO);
end;

function TClienteConroller.Inserir(oCliente: TCliente; var sERRO: string): Boolean;
begin
  Result := DmCliente.Inserir(oCliente, sERRO);
end;

procedure TClienteConroller.Pesquisar(sNome: string);
begin
  DmCliente.Pesquisar(sNome);
end;

end.
