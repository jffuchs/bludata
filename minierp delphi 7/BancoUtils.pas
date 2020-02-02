unit BancoUtils;

interface

uses
  SysUtils, Classes, IBDatabase, DB;

type
  TBancoUtils = class
  end;


var
  bancoUtilitario: TBancoUtils;

implementation

initialization
  bancoUtilitario := TBancoUtils.Create();

finalization
  bancoUtilitario.Free;

end.
