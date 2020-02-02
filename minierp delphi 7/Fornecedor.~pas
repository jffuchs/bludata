unit Fornecedor;

interface

uses Empresa, DateUtils, classes, DBClient;

type
  TFornecedor = class
  private
    id: Integer;
    idEmpresa: Integer;
    nome: String;
    cnpj: String;
    dataHora: TDateTime;
    datanascimento: TDateTime;
    rg: String;
    tipo: Integer;

    empresa: TEmpresa;

    function getIdadeFornecedor(): Integer;
  public
    destructor destroy;

    function getId: Integer;
    function getIdEmpresa: Integer;
    function getNome: String;
    function getCnpj: String;
    function getDataHora: TDateTime;
    function getDataNascimento: TDatetime;
    function getRg: String;
    function getTipo: Integer;

    procedure setId(AValue: Integer);
    procedure setIdEmpresa(AValue: Integer);
    procedure setNome(AValue: String);
    procedure setCnpj(AValue: String);
    procedure setDataHora(AValue: TDateTime);

    procedure setDataNascimento(AValue: TDatetime);
    procedure setRg(AValue: String);
    procedure setTipo(AValue: Integer);
    procedure salvar(ANome, ACnpj, ARg: String; AdtDataNascimento: String;
      ATipo: Integer; cdsTelefones: TClientDataSet);
    procedure salvarTelefones(cdsTelefones: TClientDataSet);
    function carregaTelefones(AId: Integer): TList;

    procedure setEmpresa(AEmpresa: TEmpresa);
    function getEmpresa(): TEmpresa;

    procedure apagar();

  end;

implementation

uses udmdados, IBQuery, SysUtils, Telefone;

{ TFornecedor }

function TFornecedor.getDataHora: TDateTime;
begin
  result := dataHora;
end;

function TFornecedor.getId: Integer;
begin
  result := Id;
end;

function TFornecedor.getIdEmpresa: Integer;
begin
  result := idEmpresa;
end;

function TFornecedor.getCnpj: String;
begin
  result := cnpj;
end;

function TFornecedor.getNome: String;
begin
  result := nome;
end;

procedure TFornecedor.setDataHora(AValue: TDateTime);
begin
  dataHora := AValue;
end;

procedure TFornecedor.setId(AValue: Integer);
begin
  Id := AValue;
end;

procedure TFornecedor.setIdEmpresa(AValue: Integer);
begin
  idEmpresa := AValue;
end;

procedure TFornecedor.setCnpj(AValue: String);
begin
  cnpj := AValue;
end;

procedure TFornecedor.setNome(AValue: String);
begin
  nome := AValue;
end;

function TFornecedor.getDataNascimento: TDatetime;
begin
  result := datanascimento;
end;

function TFornecedor.getRg: String;
begin
  result := rg;
end;

function TFornecedor.getTipo: Integer;
begin
  result := tipo;
end;

procedure TFornecedor.setDataNascimento(AValue: TDatetime);
begin
  datanascimento := AValue;
end;

procedure TFornecedor.setRg(AValue: String);
begin
  Rg := AValue;
end;

procedure TFornecedor.setTipo(AValue: Integer);
begin
  tipo := AValue;
end;

procedure TFornecedor.salvar(ANome, ACnpj, ARg: String; AdtDataNascimento: String; ATipo: Integer; cdsTelefones: TClientDataSet);
begin
  try
    setDataNascimento(StrToDate(AdtDataNascimento));
  except
    setDataNascimento(0);
  end;
  if (getEmpresa().getUF() = 'PR') and (atipo=0) and (getIdadeFornecedor() < 18) then
    raise Exception.Create('Ação Cancelada!'#13#10+
          'Não é possível cadastrar um fornecedor pessoa física menor de idade no Estado do Paraná!');
  setNome(Anome);
  setRg(ARg);
  setCnpj(ACnpj);

  if getId() = 0 then
  begin
    // insert
    with dmdados.qgeral do
    begin
      close;
      sql.Text := 'SELECT GEN_ID( GEN_FORNECEDOR_ID, 1 ) FROM RDB$DATABASE';
      open;
      setId(Fields[0].AsInteger);
      close;
      Sql.clear;
      sql.add('insert into FORNECEDOR (id, idempresa, nome, cnpj, rg, datanasc, tipo) '+
              ' values (:id, :idempresa, :nome, :cnpj, :rg, :datanasc, :tipo)');
      ParamByName('id').AsInteger := getId();
      ParamByName('idempresa').AsInteger := getIdEmpresa();
      ParamByName('nome').AsString := getNome();
      ParamByName('cnpj').AsString := getCnpj();
      ParamByName('rg').AsString := getRg();
      if getDataNascimento() = 0 then
        ParamByName('datanasc').Clear
      else
        ParamByName('datanasc').AsDateTime := getDataNascimento();
      ParamByName('tipo').AsInteger := getTipo();
      ExecSQL;
      dmdados.transacao.CommitRetaining;
    end;
  end else
  begin
    // update
    with dmdados.qgeral do
    begin
      close;
      Sql.clear;
      sql.add('update FORNECEDOR set idempresa=:idempresa, nome=:nome, cnpj=:cnpj, rg=:rg, '+
              'datanasc=:datanasc, tipo=:tipo where id=:id');
      ParamByName('id').AsInteger := getId();
      ParamByName('idempresa').AsInteger := getIdEmpresa();
      ParamByName('nome').AsString := getNome();
      ParamByName('cnpj').AsString := getCnpj();
      ParamByName('rg').AsString := getRg();
      if getDataNascimento() = 0 then
        ParamByName('datanasc').Clear
      else
        ParamByName('datanasc').AsDateTime := getDataNascimento();
      ParamByName('tipo').AsInteger := getTipo();
      ExecSQL;
      dmdados.transacao.CommitRetaining;
    end;
  end;
  salvarTelefones(cdsTelefones);

end;

procedure TFornecedor.apagar;
begin
  if self.getId() <> 0 then
  begin
    with dmdados.QGeral do
    begin
      close;
      Sql.Text := 'Delete from TELEFONES where IDFORNECEDOR = :id';
      ParamByName('id').AsInteger := id;
      ExecSQL;
      close;
      Sql.Text := 'Delete from fornecedor where id = :id';
      ParamByName('id').AsInteger := id;
      ExecSQL;
      dmdados.transacao.CommitRetaining;
    end;
  end;
end;

procedure TFornecedor.setEmpresa(AEmpresa: TEmpresa);
begin
  if Self.empresa <> nil then
    FreeAndnil(Self.empresa);
  Self.empresa := AEmpresa;
  setIdEmpresa( AEmpresa.getId() );
end;

destructor TFornecedor.destroy;
begin
  if empresa <> nil then
  begin
    freeandnil(empresa);
  end;
end;

function TFornecedor.getEmpresa(): TEmpresa;
begin
  result := Empresa;
end;

function TFornecedor.getIdadeFornecedor(): Integer;
begin
  result := YearsBetween(Now, getDataNascimento());
end;

function TFornecedor.carregaTelefones(AId: Integer): TList;
var
  telefone: TTelefone;
begin
  setId(AId);
  Result := TList.create;
  with dmdados.QGeral do
  begin
    close;
    sql.Text := 'select * from telefones where idfornecedor = :id ' +
                ' order by telefone';
    ParamByName('id').AsInteger := getId();
    open;
    first;
    while not eof do
    begin
      telefone := TTelefone.Create;
      telefone.setId( fieldbyname('id').AsInteger );
      telefone.setIdFornecedor( getId() );
      telefone.setTelefone( fieldbyname('telefone').AsString );
      result.Add(telefone);
      next;
    end;
  end;
end;

procedure TFornecedor.salvarTelefones(cdsTelefones: TClientDataSet);
begin
  with dmdados.QGeral do
  begin
    close;
    sql.Text := ' delete from telefones where idfornecedor = :id ';
    ParamByName('id').AsInteger := getId();
    ExecSQL;

    cdsTelefones.First;
    while not cdsTelefones.Eof do
    begin
      close;
      Sql.Text := 'insert into telefones(idfornecedor, telefone) values '+
                  ' (:idfornecedor, :telefone)';
      ParamByName('idfornecedor').AsInteger := getId();
      ParamByName('telefone').AsString := cdsTelefones.fieldByName('telefone').AsString;
      ExecSQL;

      cdsTelefones.Next;
    end;
    dmdados.transacao.CommitRetaining;

  end;
end;

end.
