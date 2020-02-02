unit Empresa;

interface

type
  TEmpresa = class
  private
    Id: Integer;
    Uf: String;
    NomeFantasia: String;
    Cnpj: String;

    function ValidaCNPJ(CNPJ: string): Boolean;


  public
    procedure apagar;
    procedure atualizar(AUf, ACnpj, ANomeFantasia: String);
    procedure incluir(AUf, ACnpj, ANomeFantasia: String);

    function getId(): Integer;
    function getUF(): String;
    function getNomeFantasia(): String;
    function getCnpj(): String;
    procedure setId(AValue: Integer);
    procedure setUF(AValue: String);
    procedure setNomeFantasia(AValue: String);
    procedure setCnpj(AValue: String);
  end;

implementation

uses udmdados, SysUtils, IBQuery;

{ TEmpresa }

procedure TEmpresa.apagar;
begin
  with dmdados.qgeral do
  begin
    close;
    Sql.clear;
    sql.add('delete from empresa where id = :id');
    ParamByName('id').AsInteger := getId();
    ExecSQL;
    dmdados.transacao.CommitRetaining;
  end;
end;

procedure TEmpresa.atualizar(AUf, ACnpj, ANomeFantasia: String);
begin
  Self.setUF(AUf);
  Self.setCnpj(ACnpj);
  Self.setNomeFantasia(ANomeFantasia);

  with dmdados.qgeral do
  begin
    close;
    Sql.clear;
    sql.add('update empresa set uf = :uf, cnpj=:cnpj, nomefantasia=:nomefantasia where id = :id');
    ParamByName('id').AsInteger := getId();
    ParamByName('cnpj').AsString := ACnpj;
    ParamByName('uf').AsString := AUf;
    ParamByName('nomefantasia').AsString := ANomeFantasia;
    ExecSQL;
    dmdados.transacao.CommitRetaining;
  end;

end;

function TEmpresa.getCnpj: String;
begin
  Result := cnpj;
end;

function TEmpresa.getId: Integer;
begin
  result := id;
end;

function TEmpresa.getNomeFantasia: String;
begin
  Result := NomeFantasia;
end;

function TEmpresa.getUF: String;
begin
  Result := Uf;
end;

procedure TEmpresa.incluir(AUf, ACnpj, ANomeFantasia: String);
begin
  Self.setUF(AUf);
  Self.setCnpj(ACnpj);
  Self.setNomeFantasia(ANomeFantasia);

  with dmdados.qgeral do
  begin
    close;
    sql.Text := 'SELECT GEN_ID( GEN_EMPRESA_ID, 1 ) FROM RDB$DATABASE';
    open;
    setId(Fields[0].AsInteger);
    close;
    Sql.clear;
    sql.add('insert into empresa (id, uf, cnpj, nomefantasia) values (:id, :uf, :cnpj, :nomefantasia)');

    ParamByName('id').AsInteger := getId();
    ParamByName('cnpj').AsString := getCnpj();
    ParamByName('uf').AsString := getUF();
    ParamByName('nomefantasia').AsString := ANomeFantasia;

    ExecSQL;
    dmdados.transacao.CommitRetaining;
  end;

end;

procedure TEmpresa.setCnpj(AValue: String);
begin
  if not ValidaCNPJ(AValue) then
    raise Exception.Create('Número de Cnpj inválido (' + AValue + ')');
  Cnpj := AValue;
end;

procedure TEmpresa.setId(AValue: Integer);
begin
  id := AValue;
end;

procedure TEmpresa.setNomeFantasia(AValue: String);
begin
  NomeFantasia := AValue;
end;

procedure TEmpresa.setUF(AValue: String);
begin
  uf := AValue;
end;

function TEmpresa.ValidaCNPJ(CNPJ: string): Boolean;
var
  i, digito1, digito2, cont: integer;
begin
  //Deleta a mascara do CPF caso tenho
  Delete(CNPJ, AnsiPos('.', CNPJ), 1);
  Delete(CNPJ, AnsiPos('.', CNPJ), 1);
  Delete(CNPJ, AnsiPos('/', CNPJ), 1);
  Delete(CNPJ, AnsiPos('-', CNPJ), 1);
  if (Length(CNPJ) <> 14) then //Verifica se o mesmo possui 14 digitos exatos
    Result := False
  else if (CNPJ = '00000000000000') then //Verifica se todos os digitos são 0
    Result := False
  else
  begin
    digito1 := 0;
    digito2 := 0;
    cont := 2;
    try //Caso ocorra algum erro não previsto retorna False
      for i := 12 downto 1 do
      begin
        if cont = 10 then
          cont := 2;
        digito1 := digito1 + (StrToInt(CNPJ[i]) * cont);
        digito2 := digito2 + (StrToInt(CNPJ[i + 1]) * cont);
        cont := cont + 1;
      end;
      digito2 := digito2 + (StrToInt(CNPJ[1]) * 6);
      if (digito1 mod 11) < 2 then
        digito1 := 0
      else
        digito1 := 11 - (digito1 mod 11);
      if (digito2 mod 11) < 2 then
        digito2 := 0
      else
        digito2 := 11 - (digito2 mod 11);
      if (digito1 <> StrToInt(CNPJ[13])) or (digito2 <> StrToInt(CNPJ[14])) then
        Result := False
      else
        Result := True;
    except
      Result := False;
    end;
  end;
end;

end.
