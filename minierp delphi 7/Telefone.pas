unit Telefone;

interface

type
  TTelefone = class
  private
    id: Integer;
    idFornecedor: Integer;
    telefone: String;
  public
    function getId(): Integer;
    function getIdFornecedor(): Integer;
    function getTelefone(): String;

    procedure setId(AValue: Integer);
    procedure setIdFornecedor(AValue: Integer);
    procedure setTelefone(AValue: String);
  end;

implementation

{ TTelefone }

function TTelefone.getId: Integer;
begin
  result := Id;
end;

function TTelefone.getIdFornecedor: Integer;
begin
  result := idFornecedor;
end;

function TTelefone.getTelefone: String;
begin
  result := telefone;
end;

procedure TTelefone.setId(AValue: Integer);
begin
  id := AValue;
end;

procedure TTelefone.setIdFornecedor(AValue: Integer);
begin
  idFornecedor := AValue;

end;

procedure TTelefone.setTelefone(AValue: String);
begin
  telefone := AValue;
end;

end.
