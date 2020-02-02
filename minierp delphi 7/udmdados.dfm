object dmdados: Tdmdados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 210
  Top = 152
  Height = 390
  Width = 514
  object banco: TIBDatabase
    DatabaseName = 'localhost:C:\bludata\sysflavio\dados\BANCO.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=3')
    LoginPrompt = False
    DefaultTransaction = transacao
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 200
    Top = 32
  end
  object transacao: TIBTransaction
    Active = False
    DefaultDatabase = banco
    AutoStopAction = saNone
    Left = 112
    Top = 32
  end
  object QGeral: TIBQuery
    Database = banco
    Transaction = transacao
    BufferChunks = 1000
    CachedUpdates = False
    Left = 232
    Top = 160
  end
end
