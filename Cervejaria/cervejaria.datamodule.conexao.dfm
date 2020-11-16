object dmdConexao: TdmdConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 464
  Width = 710
  object IBConexao: TIBDatabase
    DatabaseName = 
      '127.0.0.1:C:\Muka\Delphi\Git\GansoSistemas\Cervejaria\CERVEJARIA' +
      '.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    Left = 56
    Top = 32
  end
end
