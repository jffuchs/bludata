unit UFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaPadraoSys, StdCtrls, Buttons, ExtCtrls, UICadastro, DB,
  IBCustomDataSet, IBQuery, Grids, DBGrids, ComCtrls, fornecedor, DBClient,
  Mask;

type
  TFFornecedor = class(TFTelaPadraoSys, ICadastro)
    Label1: TLabel;
    Label2: TLabel;
    rgTipo: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ECodEmpresa: TEdit;
    SpeedButton7: TSpeedButton;
    EDescricaoEmpresa: TEdit;
    ENome: TEdit;
    ECnpj: TEdit;
    ERg: TEdit;
    dsBusca: TDataSource;
    consultaPrincipalID: TIntegerField;
    consultaPrincipalIDEMPRESA: TIntegerField;
    consultaPrincipalNOME: TIBStringField;
    consultaPrincipalCNPJ: TIBStringField;
    consultaPrincipalDATAHORA: TDateTimeField;
    consultaPrincipalRG: TIBStringField;
    consultaPrincipalDATANASC: TDateField;
    consultaPrincipalTIPO: TIntegerField;
    consultaPrincipalNOMEFANTASIA: TIBStringField;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton8: TSpeedButton;
    pAddTelefone: TPanel;
    Label7: TLabel;
    meTelAdd: TMaskEdit;
    BitBtn1: TBitBtn;
    bCancelaTelefone: TBitBtn;
    dsTelefones: TDataSource;
    telefones: TClientDataSet;
    telefonestelefone: TStringField;
    telefonesidfornecedor: TIntegerField;
    meDataNascimento: TMaskEdit;
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ECodEmpresaExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure bCancelaTelefoneClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    Fornecedor: TFornecedor;
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
  FFornecedor: TFFornecedor;

implementation

uses udmdados, USearchfastEmpresa, Empresa, Telefone;

{$R *.dfm}

{ TFFornecedor }

procedure TFFornecedor.buscar;
var
  cWhere: String;
begin
  cWhere := '';
  if ECodEmpresa.Text <> '' then
    cWhere := ' and e.id = ' + ECodEmpresa.Text + ' ';
  if ENome.Text <> '' then
    cWhere := cWhere + ' and Upper(f.nome) like ' + QuotedStr('%'+UpperCase(Enome.Text)+'%');

  with consultaPrincipal do
  begin
    close;
    Sql.Text := 'select f.*, e.nomefantasia ' +
                '   from FORNECEDOR f join empresa e on f.idempresa = e.id ' +
                '  where 1=1 ' + cWhere;
    Open;
    TsConsultar.ActivePageIndex := 1;
  end;
end;

procedure TFFornecedor.excluir;
begin

end;

procedure TFFornecedor.fechar;
begin

end;

function TFFornecedor.getNextId: Integer;
begin

end;

procedure TFFornecedor.limparTela;
begin
  ECodEmpresa.Clear;
  EDescricaoEmpresa.Clear;
  ENome.Clear;
  rgTipo.ItemIndex := 0;
  ECnpj.Clear;
  ERg.Clear;
  meDataNascimento.Clear;
  TsConsultar.ActivePageIndex := 0;
end;

procedure TFFornecedor.novoRegistro;
begin
  Fornecedor.Free;
  Fornecedor := nil;
  Fornecedor := TFornecedor.Create();
  while not telefones.IsEmpty do
    telefones.Delete;

  limparTela();
end;

procedure TFFornecedor.salvar;
begin

end;

function TFFornecedor.validaCadastro(): Boolean;
begin
  result := true;
  if Trim(ECodEmpresa.Text) = '' then
  begin
    result := false;
    MessageDlg('Preencha o campo "Empresa".', mtWarning, [MbOK],0);
    ECodEmpresa.SetFocus;
    exit;
  end;

  if Trim(ENome.Text) = '' then
  begin
    result := false;
    MessageDlg('Preencha o campo "Nome".', mtWarning, [MbOK],0);
    ENome.SetFocus;
    exit;
  end;

  if rgTipo.ItemIndex = -1 then
  begin
    result := false;
    MessageDlg('Preencha o campo "Tipo".', mtWarning, [MbOK],0);
    rgTipo.SetFocus;
    exit;
  end;

  if Trim(ECnpj.Text) = '' then
  begin
    result := false;
    MessageDlg('Preencha o campo "Cpf/Cnpj".', mtWarning, [MbOK],0);
    ECnpj.SetFocus;
    exit;
  end;

  if (rgTipo.ItemIndex = 0) and (Trim(ERg.Text)='') then
  begin
    result := false;
    MessageDlg('Preencha o campo "Rg".', mtWarning, [MbOK],0);
    ERg.SetFocus;
    exit;
  end;

end;

procedure TFFornecedor.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  buscar();
end;

procedure TFFornecedor.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  novoRegistro();
end;

procedure TFFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  Fornecedor := TFornecedor.Create;
end;

procedure TFFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Fornecedor.Free;
  Fornecedor := nil;
end;

procedure TFFornecedor.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if validaCadastro() then
  begin
    Fornecedor.salvar(ENome.Text, ECnpj.Text, ERg.Text, meDataNascimento.Text, rgTipo.ItemIndex, telefones);
    ShowMessage('Registro Salvo com sucesso!');
  end;
end;

procedure TFFornecedor.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if (fornecedor.getId() <> 0) and (confirma('Tem certeza de que deseja excluir este fornecedor?')) then
  begin
    Fornecedor.apagar();
    while not telefones.IsEmpty do
      telefones.Delete;
    limparTela;
  end;
end;

procedure TFFornecedor.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  fechar;
end;

procedure TFFornecedor.SpeedButton7Click(Sender: TObject);
var
  Empresa: TEmpresa;
begin
  inherited;
  SearchfastEmpresa := TSearchfastEmpresa.Create(Self);
  SearchfastEmpresa.ShowModal();
  if (SearchfastEmpresa.ModalResult = mrOk) and
     (not SearchfastEmpresa.consultaEmpresa.IsEmpty) then
  begin
    Empresa := TEmpresa.Create;
    Empresa.setId( SearchfastEmpresa.consultaEmpresa.FieldByName('ID').AsInteger );
    Empresa.setUF( SearchfastEmpresa.consultaEmpresa.FieldByName('UF').AsString );
    Empresa.setNomeFantasia( SearchfastEmpresa.consultaEmpresa.FieldByName('NOMEFANTASIA').AsString );
    Empresa.setCnpj( SearchfastEmpresa.consultaEmpresa.FieldByName('CNPJ').AsString );
    Fornecedor.setEmpresa(Empresa);
    EDescricaoEmpresa.Text := Empresa.getNomeFantasia();
    ECodEmpresa.Text := IntToStr(Empresa.getId());

  end;
end;

procedure TFFornecedor.ECodEmpresaExit(Sender: TObject);
var
  Empresa: TEmpresa;
begin
  inherited;
  if ECodEmpresa.Text <> '' then
  begin
    SearchfastEmpresa := TSearchfastEmpresa.Create(Self);
    SearchfastEmpresa.consultaEmpresa.Close;
    SearchfastEmpresa.consultaEmpresa.Sql.Text :=
      'Select * from empresa where id = ' + ECodEmpresa.Text;
    SearchfastEmpresa.consultaEmpresa.Open;
    if (not SearchfastEmpresa.consultaEmpresa.IsEmpty) then
    begin
      Empresa := TEmpresa.Create;
      Empresa.setId( SearchfastEmpresa.consultaEmpresa.FieldByName('ID').AsInteger );
      Empresa.setUF( SearchfastEmpresa.consultaEmpresa.FieldByName('UF').AsString );
      Empresa.setNomeFantasia( SearchfastEmpresa.consultaEmpresa.FieldByName('NOMEFANTASIA').AsString );
      Empresa.setCnpj( SearchfastEmpresa.consultaEmpresa.FieldByName('CNPJ').AsString );
      Fornecedor.setEmpresa(Empresa);
      EDescricaoEmpresa.Text := Empresa.getNomeFantasia();
      ECodEmpresa.Text := IntToStr(Empresa.getId());

    end else
    begin
      ShowMessage('C�digo ' + ECodEmpresa.Text + ' n�o encontrado. Verifique!');
      ECodEmpresa.clear;
    end;
  end;

end;

procedure TFFornecedor.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  carregaTela();


end;

procedure TFFornecedor.carregaTela();
var
  listaTel: TList;
  x: Integer;
begin
  while not telefones.IsEmpty do
    telefones.Delete;
  ECodEmpresa.Text := consultaPrincipalIDEMPRESA.AsString;
  ECodEmpresaExit(nil);
  ENome.Text := consultaPrincipalNOME.AsString;
  rgTipo.ItemIndex := consultaPrincipalTIPO.AsInteger;
  ECnpj.Text := consultaPrincipalCNPJ.AsString;
  ERg.Text   := consultaPrincipalRG.AsString;
  if not consultaPrincipalDATANASC.IsNull then
    meDataNascimento.Text := Formatdatetime('dd/mm/yyyy', consultaPrincipalDATANASC.AsDateTime)
  else
    meDataNascimento.Clear;
  listaTel := fornecedor.carregaTelefones(consultaPrincipalID.AsInteger);
  for x := 0 to pred(listaTel.Count) do
  begin
    telefones.Append;

    telefonestelefone.AsString := TTelefone(listaTel.Items[x]).getTelefone();
  end;


  TsConsultar.ActivePageIndex := 0;

end;

procedure TFFornecedor.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pAddTelefone.Visible := true;
  meTelAdd.SetFocus();
  
end;

procedure TFFornecedor.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if (not telefones.IsEmpty) and
     (confirma('Tem certeza de que deseja apagar este telefone?')) then
    telefones.Delete;
end;

procedure TFFornecedor.bCancelaTelefoneClick(Sender: TObject);
begin
  inherited;
  pAddTelefone.Visible := false;
  meTelAdd.Clear;
end;

procedure TFFornecedor.BitBtn1Click(Sender: TObject);
begin
  inherited;
  telefones.Append;
  telefonestelefone.AsString := meTelAdd.Text;
  telefonesidfornecedor.AsInteger := Fornecedor.getId();
  telefones.Post;
  pAddTelefone.Visible := false;
end;

end.
