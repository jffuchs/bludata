unit URelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls, dateutils, DB,
  IBCustomDataSet, IBQuery, RpBase, RpSystem, RpDefine, RpRave, RpCon,
  RpConDS, Grids, DBGrids, Provider, DBClient;

type
  TFRelatorio = class(TForm)
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EData1: TDateTimePicker;
    Label4: TLabel;
    EData2: TDateTimePicker;
    ENome: TEdit;
    ECnpj: TEdit;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    consulta: TIBQuery;
    consultaID: TIntegerField;
    consultaIDEMPRESA: TIntegerField;
    consultaNOME: TIBStringField;
    consultaCNPJ: TIBStringField;
    consultaDATAHORA: TDateTimeField;
    consultaRG: TIBStringField;
    consultaDATANASC: TDateField;
    consultaTIPO: TIntegerField;
    consultaID1: TIntegerField;
    consultaUF: TIBStringField;
    consultaNOMEFANTASIA: TIBStringField;
    consultaCNPJ1: TIBStringField;
    RvDataSetConnection1: TRvDataSetConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SpeedButton3: TSpeedButton;
    cds: TClientDataSet;
    prvdrConsulta: TDataSetProvider;
    cdsID: TIntegerField;
    cdsIDEMPRESA: TIntegerField;
    cdsNOME: TIBStringField;
    cdsCNPJ: TIBStringField;
    cdsDATAHORA: TDateTimeField;
    cdsRG: TIBStringField;
    cdsDATANASC: TDateField;
    cdsTIPO: TIntegerField;
    cdsID1: TIntegerField;
    cdsUF: TIBStringField;
    cdsNOMEFANTASIA: TIBStringField;
    cdsCNPJ1: TIBStringField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure cdsBeforeClose(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    Ascendente: boolean;
    procedure consultar();
    
  public
    { Public declarations }
  end;

var
  FRelatorio: TFRelatorio;

implementation

uses udmdados;

{$R *.dfm}

procedure IndexaColuna(grade: TDBGrid; campo: string);
begin
  with TClientDataSet(grade.DataSource.DataSet) do
    //Ordem crescente
    if IndexFieldNames <> campo then
      IndexFieldNames := campo
    else
    //Se já havia clicado no campo, indexa em ordem decrescente
    //Acrescento o 'Dec' apenas p/ não correr o risco do nome já existir
    try
      IndexName := campo+'Dec';
    except
      AddIndex(campo+'Dec',campo,[ixDescending],campo,'',0);
      IndexName := campo+'Dec';
    end;
end;


procedure TFRelatorio.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure TFRelatorio.FormCreate(Sender: TObject);
begin
  EData1.DateTime := StartOfTheMonth(Date);
  EData2.DateTime := EndOfTheMonth(Date);
end;

procedure TFRelatorio.SpeedButton1Click(Sender: TObject);
begin
  consultar();
  RvProject1.Execute;
end;

procedure TFRelatorio.SpeedButton3Click(Sender: TObject);
begin
  consultar();
end;

procedure TFRelatorio.consultar;
var
  cWhere: String;
begin
  with cds do
  begin
    close;
    cWhere := '';
    if Trim(ENome.Text) <> '' then
      cWhere := ' and upper(f.nome) like ' + QuotedStr('%'+Enome.Text+'%');
    if Trim(ENome.Text) <> '' then
        cWhere := cWhere + ' and upper(f.cnpj) like ' + QuotedStr(ECnpj.Text);

    CommandText := 'select *  from  fornecedor f join EMPRESA e ' +
                ' on f.idempresa = e.id ' +
                ' where DATAHORA between :d1 and :d2 ' +
                cWhere +
                ' order by e.NOMEFANTASIA ';
    Params.ParamByName('d1').AsDateTime := EData1.DateTime;
    Params.ParamByName('d2').AsDateTime := EData2.DateTime;
    Open;
  end;
end;

procedure TFRelatorio.FormShow(Sender: TObject);
begin
  Ascendente := False;
end;

procedure TFRelatorio.DBGrid1TitleClick(Column: TColumn);
begin
  IndexaColuna(dbgrid1, Column.FieldName);
end;

procedure TFRelatorio.cdsBeforeClose(DataSet: TDataSet);
begin
  cds.IndexFieldNames := cds.Fields[0].FieldName;
end;

procedure TFRelatorio.DBGrid1DrawColumnCell(Sender: TObject;
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
