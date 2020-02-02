unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, utelapadraosys, StdCtrls, Tabs,
  Mask, Menus, jpeg, ExtCtrls;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    CadastrodeFornecedor1: TMenuItem;
    CadastrodeEmpresas1: TMenuItem;
    Sair1: TMenuItem;
    Relatrio1: TMenuItem;
    Fornecedores1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    ImBludata: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure CadastrodeFornecedor1Click(Sender: TObject);
    procedure CadastrodeEmpresas1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses USobre, UFornecedor, UEmpresa, URelatorio;


{$R *.dfm}

procedure TFPrincipal.Sair1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  ImBludata.Align := alClient;
  ImBludata.Center := true;  
end;

procedure TFPrincipal.Sobre1Click(Sender: TObject);
begin
  inherited;
  FSobre := TFSobre.Create(Self);
  FSobre.ShowModal;
  FreeAndNil(FSobre);
end;

procedure TFPrincipal.CadastrodeFornecedor1Click(Sender: TObject);
begin
  inherited;
  FFornecedor := TFFornecedor.Create(Self);
  FFornecedor.ShowModal;
  FreeAndNil(FFornecedor);
end;

procedure TFPrincipal.CadastrodeEmpresas1Click(Sender: TObject);
begin
  inherited;
  FEmpresa := TFEmpresa.Create(Self);
  FEmpresa.ShowModal;
  FreeAndNil(FEmpresa);
end;

procedure TFPrincipal.Fornecedores1Click(Sender: TObject);
begin
  FRelatorio := TFRelatorio.Create(Self);
  FRelatorio.ShowModal;
  FreeAndNil(FRelatorio);
end;

end.
