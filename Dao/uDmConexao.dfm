object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 439
  Width = 561
  object SQLConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\denis\OneDrive\'#193'rea de Trabalho\Teste\crud\Dad' +
        'os\DATABASE_TESTE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object dsConexao: TDataSource
    Left = 32
    Top = 64
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 160
    Top = 8
  end
end
