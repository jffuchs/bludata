unit UEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaPadraoSys, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB,
  IBCustomDataSet, IBQuery, Grids, DBGrids, UICadastro, Empresa;

type
  TFEmpresa = class(TFTelaPadraoSys, ICadastro)
    Label1: TLabel;
    UF: TLabel;
    CbUf: TComboBox;
    Label2: TLabel;
    ENomeFantasia: TEdit;
    Label3: TLabel;
    ECnpj: TEdit;
    dsDados: TDataSource;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FEmpresa: TEmpresa;
    procedure limparTela();
    procedure fechar();
    procedure salvar();
    function validaCadastro(): Boolean;
    procedure excluir();
    procedure novoRegistro();
    procedure buscar();
    procedure carregaTela();

    function getNextId(): Integer;
  public
    { Public declarations }
  end;

var
  FEmpresa: TFEmpresa;

implementation

uses udmdados;



{$R *.dfm}

procedure TFEmpresa.buscar;
var
  cFiltro: String;
begin
  cFiltro := ' and UF = ' + QuotedStr(CbUf.Text);
  if ECnpj.Text <> '' then
    cFiltro := ' and cnpj like ' + QuotedStr('%' + ECnpj.Text + '%');
  if ENomeFantasia.Text <> '' then
    cFiltro := cFiltro + ' and NOMEFANTASIA like ' + QuotedStr('%' + ENomeFantasia.Text + '%');

  with consultaPrincipal do
  begin
    close;
    Sql.Text := 'Select * from empresa where 1=1 ' + cFiltro +
                ' Order by NomeFantasia';
    open;
    TsConsultar.ActivePageIndex := 1;

  end;
end;

procedure TFEmpresa.excluir;
begin

end;

procedure TFEmpresa.fechar;
begin

end;

function TFEmpresa.getNextId: Integer;
begin

end;

procedure TFEmpresa.limparTela;
begin
  TsConsultar.ActivePageIndex := 0;
  CbUf.ItemIndex := 0;
  ECnpj.Clear;
  ENomeFantasia.Clear;
end;

procedure TFEmpresa.novoRegistro;
begin
  limparTela;
  FEmpresa.Free;
  FEmpresa :=  TEmpresa.Create;
end;

procedure TFEmpresa.salvar;
begin
  if FEmpresa.getId() <> 0 then
    FEmpresa.atualizar(CbUf.Text, ECnpj.Text, ENomeFantasia.Text)
  else
    FEmpresa.incluir(CbUf.Text, ECnpj.Text, ENomeFantasia.Text);
end;

function TFEmpresa.validaCadastro(): Boolean;
begin
  result := true;
  if Trim(ECnpj.Text) = '' then
  begin
    result := false;
    MessageDlg('Preencha o campo "cnpj".', mtWarning, [MbOK],0);
    ECnpj.SetFocus;
    exit;
  end;

  if Trim(ENomeFantasia.Text) = '' then
  begin
    result := false;
    MessageDlg('Preencha o campo "Nome fantasia".', mtWarning, [MbOK],0);
    ENomeFantasia.SetFocus;
    exit;
  end;

end;

procedure TFEmpresa.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  novoRegistro();

end;

procedure TFEmpresa.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if validaCadastro() then
     salvar();
end;

procedure TFEmpresa.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if (FEmpresa.getId <> 0) and
     (confirma('Tem certeza de que deseja excluir este registro?')) then
  begin
    FEmpresa.apagar;
    limparTela;
  end;
end;

procedure TFEmpresa.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  buscar;
end;

procedure TFEmpresa.FormShow(Sender: TObject);
begin
  inherited;
 
  limparTela;
end;

procedure TFEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  FEmpresa := TEmpresa.Create;

end;

procedure TFEmpresa.FormDestroy(Sender: TObject);
begin
  FEmpresa.Free;
  FEmpresa := nil;

  inherited;
end;

procedure TFEmpresa.carregaTela;
begin

end;

end.
