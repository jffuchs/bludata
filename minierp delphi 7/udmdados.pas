unit udmdados;

interface

uses
  SysUtils, Classes, IBDatabase, DB, bancoutils, IBCustomDataSet, IBQuery;

type
  Tdmdados = class(TDataModule)
    banco: TIBDatabase;
    transacao: TIBTransaction;
    QGeral: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdados: Tdmdados;

implementation

{$R *.dfm}

procedure Tdmdados.DataModuleCreate(Sender: TObject);
begin
  banco.DatabaseName := 'localhost:' +
                        ExtractFilePath(ParamStr(0)) +
                        '\dados\BANCO.FDB';
  try
    banco.Connected := true;
    transacao.StartTransaction;
  except
    raise Exception.create('Problemas ao conectar ao banco de dados.'#13#10+
                           'Verifique se o caminho do banco está na pasta dados a partir do diretório da raiz da aplicação');
  end;
end;

procedure Tdmdados.DataModuleDestroy(Sender: TObject);
begin
  transacao.Commit;
  banco.Connected := false;
end;

end.
