inherited FEmpresa: TFEmpresa
  Left = 210
  Top = 181
  Height = 347
  Caption = 'Empresa'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited SpeedButton3: TSpeedButton
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      OnClick = SpeedButton4Click
    end
    inherited SpeedButton5: TSpeedButton
      OnClick = SpeedButton5Click
    end
  end
  inherited Panel2: TPanel
    Height = 259
    object Label1: TLabel [0]
      Left = 64
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Label1'
    end
    inherited TsConsultar: TPageControl
      Height = 257
      Font.Color = clBlue
      ParentFont = False
      inherited TabSheet1: TTabSheet
        inherited Panel3: TPanel
          Height = 231
          Color = 16514043
          object UF: TLabel
            Left = 84
            Top = 10
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 16
            Top = 58
            Width = 89
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome Fantasia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 75
            Top = 32
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cnpj:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CbUf: TComboBox
            Left = 111
            Top = 7
            Width = 73
            Height = 21
            ItemHeight = 13
            ItemIndex = 5
            TabOrder = 0
            Text = 'CE'
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PI'
              'PR'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC'
              'SE'
              'SP'
              'TO')
          end
          object ENomeFantasia: TEdit
            Left = 111
            Top = 58
            Width = 289
            Height = 21
            TabOrder = 2
          end
          object ECnpj: TEdit
            Left = 111
            Top = 32
            Width = 131
            Height = 21
            TabOrder = 1
          end
        end
      end
      inherited TabSheet2: TTabSheet
        inherited DBGrid1: TDBGrid
          Height = 231
          DataSource = dsDados
          TitleFont.Color = clBlue
          Columns = <
            item
              Expanded = False
              FieldName = 'UF'
              Title.Caption = 'Uf'
              Title.Color = 16774625
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJ'
              Title.Caption = 'Cnpj'
              Title.Color = 16774625
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMEFANTASIA'
              Title.Caption = 'Nome Fantasia'
              Title.Color = 16774625
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 212
              Visible = True
            end>
        end
      end
    end
  end
  inherited consultaPrincipal: TIBQuery
    Database = dmdados.banco
    Transaction = dmdados.transacao
    SQL.Strings = (
      'select * from EMPRESA')
  end
  object dsDados: TDataSource
    DataSet = consultaPrincipal
    Left = 152
    Top = 80
  end
end
