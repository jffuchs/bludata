unit UTelaPadraoSys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Tabs, UICadastro,
  DB, IBCustomDataSet, IBQuery, ComCtrls;

type
  TFTelaPadraoSys = class(TForm, ICadastro)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    consultaPrincipal: TIBQuery;
    TsConsultar: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
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
    function confirma(AMensagem: String): Boolean;
  end;

var
  FTelaPadraoSys: TFTelaPadraoSys;

implementation



{$R *.dfm}

procedure TFTelaPadraoSys.excluir;
begin

end;

procedure TFTelaPadraoSys.fechar;
begin
  close;
end;

function TFTelaPadraoSys.getNextId: Integer;
begin

end;

procedure TFTelaPadraoSys.limparTela;
begin

end;

procedure TFTelaPadraoSys.novoRegistro;
begin

end;

procedure TFTelaPadraoSys.salvar;
begin

end;

function TFTelaPadraoSys.validaCadastro(): Boolean;
begin

end;

procedure TFTelaPadraoSys.SpeedButton2Click(Sender: TObject);
begin
  fechar;
end;

procedure TFTelaPadraoSys.buscar;
begin

end;

procedure TFTelaPadraoSys.SpeedButton6Click(Sender: TObject);
begin
  buscar();
end;

function TFTelaPadraoSys.confirma(AMensagem: String): Boolean;
begin
  result := MessageDlg(AMensagem, mtConfirmation, [MbYes, Mbno],0) = MrYes;
end;

procedure TFTelaPadraoSys.carregaTela;
begin

end;

procedure TFTelaPadraoSys.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if gdSelected  in state then
  begin
      DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
      Dbgrid1.Canvas.Font.Color:= clWhite;
  end
  else
  begin
      DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style - [fsBold];
      Dbgrid1.Canvas.Font.Color:= clBlack;
  end;
  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

end.
