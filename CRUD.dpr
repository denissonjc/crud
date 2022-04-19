program CRUD;

uses
  Vcl.Forms,
  ufrmPrincipal in 'View\ufrmPrincipal.pas' {frmPrincipal},
  ufrmCadastroCliente in 'View\ufrmCadastroCliente.pas' {frmCadastroCliente},
  uClienteModel in 'Model\uClienteModel.pas',
  uClienteController in 'Controller\uClienteController.pas',
  uDmConexao in 'Dao\uDmConexao.pas' {DmConexao: TDataModule},
  uDmCliente in 'Dao\uDmCliente.pas' {DmCliente: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.Run;
end.
