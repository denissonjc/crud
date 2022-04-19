unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    BtCliente: TButton;
    procedure BtClienteClick(Sender: TObject);
  private
    procedure AbrirCliente;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmCadastroCliente;

procedure TfrmPrincipal.AbrirCliente;
begin
  frmCadastroCliente := TfrmCadastroCliente.Create(nil);
  try
    frmCadastroCliente.ShowModal;
  finally
  FreeAndNil(frmCadastroCliente);
  end;
end;

procedure TfrmPrincipal.BtClienteClick(Sender: TObject);
begin
  AbrirCliente;
end;

end.
