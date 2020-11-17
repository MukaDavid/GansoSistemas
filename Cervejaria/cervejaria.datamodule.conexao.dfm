object dmdConexao: TdmdConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 622
  Top = 175
  Height = 464
  Width = 710
  object IBConexao: TIBDatabase
    Connected = True
    DatabaseName = 
      '127.0.0.1:C:\Muka\Delphi\Git\GansoSistemas\Cervejaria\CERVEJARIA' +
      '.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 64
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 32
  end
end
