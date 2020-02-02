unit USearchfastEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, Buttons,
  StdCtrls;

type
  TSearchfastEmpresa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ENome: TEdit;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    consultaEmpresa: TIBQuery;
    dsConsulta: TDataSource;
    consultaEmpresaID: TIntegerField;
    consultaEmpresaUF: TIBStringField;
    consultaEmpresaNOMEFANTASIA: TIBStringField;
    consultaEmpresaCNPJ: TIBStringField;
    procedure ENomeKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure buscar();
  public
    { Public declarations }
  end;

var
  SearchfastEmpresa: TSearchfastEmpresa;

implementation

uses udmdados;

{$R *.dfm}

procedure TSearchfastEmpresa.buscar();
begin
  with consultaEmpresa do
  begin
    close;
    sql.Text := 'Select * from empresa where upper(NOMEFANTASIA) like ' + QuotedStr('%' + ENome.Text + '%');
    open;
  end;
end;

procedure TSearchfastEmpresa.ENomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    buscar();
end;

procedure TSearchfastEmpresa.SpeedButton1Click(Sender: TObject);
begin
  buscar();
end;

procedure TSearchfastEmpresa.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
