program sysFlavio;

uses
  Forms,
  SysUtils,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  udmdados in 'udmdados.pas' {dmdados: TDataModule},
  UTelaPadraoSys in 'UTelaPadraoSys.pas' {FTelaPadraoSys},
  UformSplash in 'UformSplash.pas' {FormSplash},
  USobre in 'USobre.pas' {FSobre},
  UFornecedor in 'UFornecedor.pas' {FFornecedor},
  UContato in 'UContato.pas' {FContato},
  UEmpresa in 'UEmpresa.pas' {FEmpresa},
  Empresa in 'Empresa.pas',
  Fornecedor in 'Fornecedor.pas',
  Telefone in 'Telefone.pas',
  UICadastro in 'UICadastro.pas',
  Entidade in 'Entidade.pas',
  USearchfastEmpresa in 'USearchfastEmpresa.pas' {SearchfastEmpresa},
  URelatorio in 'URelatorio.pas' {FRelatorio},
  funformatartexto in 'funformatartexto.pas';

{$R *.res}

begin
  FormSplash := TFormSplash.Create(Application);
  FormSplash.Show; //Inicializa o Splash
  FormSplash.Refresh;
  FormSplash.Gauge1.Progress:= 1; // Começa com 1%
  Sleep(100);
  Application.Initialize;
  FormSplash.Gauge1.Progress:= 25; // porque o programa inicializa rapido
  Sleep(100);
  Application.CreateForm(Tdmdados, dmdados);
  FormSplash.Gauge1.Progress:= 50;
  Sleep(100);
  Application.CreateForm(TFPrincipal, FPrincipal);
  FormSplash.Gauge1.Progress:= 75;
  Sleep(100);
  FormSplash.Gauge1.Progress:= 100;
  Sleep(200);
  FormSplash.Hide;
  FormSplash.Free;
  Application.Run;
end.
