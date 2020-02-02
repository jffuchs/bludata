inherited FFornecedor: TFFornecedor
  Height = 404
  Caption = 'Cadastro de Fornecedor'
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
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
    Height = 316
    inherited TsConsultar: TPageControl
      Height = 314
      ActivePage = TabSheet1
      inherited TabSheet1: TTabSheet
        inherited Panel3: TPanel
          Height = 288
          Color = 16579836
          object Label1: TLabel
            Left = 59
            Top = 14
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Empresa:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 75
            Top = 40
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 57
            Top = 113
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cpf/Cnpj:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 91
            Top = 137
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'Rg:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 10
            Top = 163
            Width = 102
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Nascimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton7: TSpeedButton
            Left = 199
            Top = 11
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF004B00004B00FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B00004B0034CB
              5C17A72B004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF004B003ED76D3ED76D25BA430C9718004B00FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B00004B003ED7
              6D34CB5B004B00FF00FFFF00FFFF00FF535A62655F6EFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF004B00004B00FF00FFFF00FFFF00FFFF00FF
              3F8CD1196DC9846F7AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF319FFF186AC48A7079FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF2D9EFF166AC2786C77FF00FF925D5AC9A391C28F88FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4FB0FF767277BB
              9C82FEFCCFFEFCCEFFFFEAA0746FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF8B98B1E5B692FFF4BBFFFFD4FFFFDAFFFFF4F8F7DAB784
              7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB67F76F0CB92F7
              D79FFFFFD3FFFFEAFFFFFEF8F7DAB7847EFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFDCBA9EF3CA8EEEB678FEFAC6FFFFDDFFFFE0FFFFD4B697
              82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBB8980F3D9A7F4
              CB95F2CA90FBEBBAFFFFCCF6F2C4B88B80FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD1B4A0F6F3EEFAD397F6C583FAE1A6AC8676FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBB
              987ED3AD93D1A592BB987EFF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = SpeedButton7Click
          end
          object Label6: TLabel
            Left = 51
            Top = 191
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Telefones:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 350
            Top = 190
            Width = 23
            Height = 24
            Glyph.Data = {
              0E060000424D0E06000000000000360000002800000016000000160000000100
              180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
              FEFDFDFDFCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFB6845DA46534A46534B6845DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFCFCFCFFFFFFA46534EFE0D3E3C4AAA46534FFFFFFFFFFFFFEFEFEFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFA46534E7CBB5D29C6EA46534FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA46534E7CCB5D29D6FA46534FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA46534E2C1A5D29E71A465
              34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFB6845DA46534A46534A46534A46534A46534E2C1A4D2
              9E71A46534A46534A46534A46534A46534B6845DFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFA46534E5CCB4DBB795DBB694DAB492DAB390
              D9B18DD9AF8AD9AD86D8AA83D7A87FD7A67DE0BE9FA46534FFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFA46534E8D3C0E7D1BBE7D1BCE7D1
              BCE9D3BEE5CBB3E5CAB2E7D0BBE6CEB7E6CDB6E6CCB5E6CCB6A46534FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFB6845DA46534A46534A4
              6534A46534A46534E5CCB4E5CBB3A46534A46534A46534A46534A46534B6845D
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFA46534E5CCB5E5CCB3A46534FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFA46534E5CCB5E5CCB4A46534FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA46534E5CCB5E5CCB4A46534FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA46534E5CCB5E5CCB4A465
              34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6845DA46534A4
              6534B6845DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            OnClick = SpeedButton1Click
          end
          object SpeedButton8: TSpeedButton
            Left = 350
            Top = 217
            Width = 23
            Height = 24
            Glyph.Data = {
              0E060000424D0E06000000000000360000002800000016000000160000000100
              180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFB6845DA46534A46534A46534A46534A46534A46534A4
              6534A46534A46534A46534A46534A46534B6845DFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFA46534E5CCB4DBB795DBB694DAB492DAB390
              D9B18DD9AF8AD9AD86D8AA83D7A87FD7A67DE0BE9FA46534FFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFA46534E8D3C0E7D1BBE7D1BCE6CE
              B7E6CEB7E6CEB7E6CEB7E6CEB7E6CEB7E6CDB6E6CCB5E6CCB6A46534FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFB6845DA46534A46534A4
              6534A46534A46534A46534A46534A46534A46534A46534A46534A46534B6845D
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            OnClick = SpeedButton8Click
          end
          object rgTipo: TRadioGroup
            Left = 116
            Top = 62
            Width = 249
            Height = 41
            Caption = ' Tipo '
            Columns = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Items.Strings = (
              'Pessoa F'#237'sica'
              'Pessoa Jur'#237'dica')
            ParentFont = False
            TabOrder = 0
          end
          object ECodEmpresa: TEdit
            Left = 121
            Top = 12
            Width = 76
            Height = 21
            TabOrder = 1
            OnExit = ECodEmpresaExit
          end
          object EDescricaoEmpresa: TEdit
            Left = 226
            Top = 12
            Width = 347
            Height = 21
            Color = clBtnFace
            ReadOnly = True
            TabOrder = 2
          end
          object ENome: TEdit
            Left = 121
            Top = 38
            Width = 452
            Height = 21
            TabOrder = 3
          end
          object ECnpj: TEdit
            Left = 121
            Top = 110
            Width = 148
            Height = 21
            TabOrder = 4
          end
          object ERg: TEdit
            Left = 121
            Top = 135
            Width = 148
            Height = 21
            TabOrder = 5
          end
          object DBGrid2: TDBGrid
            Left = 120
            Top = 189
            Width = 225
            Height = 92
            DataSource = dsTelefones
            FixedColor = 15461355
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlue
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'telefone'
                Title.Caption = 'Telefone'
                Width = 176
                Visible = True
              end>
          end
          object pAddTelefone: TPanel
            Left = 377
            Top = 189
            Width = 227
            Height = 94
            BevelInner = bvRaised
            BevelOuter = bvLowered
            BevelWidth = 3
            Color = 16579836
            TabOrder = 8
            Visible = False
            object Label7: TLabel
              Left = 16
              Top = 8
              Width = 85
              Height = 13
              Caption = 'Novo Telefone'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object meTelAdd: TMaskEdit
              Left = 16
              Top = 24
              Width = 191
              Height = 21
              EditMask = '\(99\)0000-0000;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 13
              ParentFont = False
              TabOrder = 0
              Text = '(  )    -    '
            end
            object BitBtn1: TBitBtn
              Left = 16
              Top = 48
              Width = 30
              Height = 25
              Default = True
              TabOrder = 1
              OnClick = BitBtn1Click
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333330000333333333333333333333333F33333333333
                00003333344333333333333333388F3333333333000033334224333333333333
                338338F3333333330000333422224333333333333833338F3333333300003342
                222224333333333383333338F3333333000034222A22224333333338F338F333
                8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                0000333333333A222433333333333338F338F33300003333333333A222433333
                333333338F338F33000033333333333A222433333333333338F338F300003333
                33333333A222433333333333338F338F00003333333333333A22433333333333
                3338F38F000033333333333333A223333333333333338F830000333333333333
                333A333333333333333338330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object bCancelaTelefone: TBitBtn
              Left = 177
              Top = 48
              Width = 30
              Height = 25
              Cancel = True
              TabOrder = 2
              OnClick = bCancelaTelefoneClick
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333333333000033338833333333333333333F333333333333
                0000333911833333983333333388F333333F3333000033391118333911833333
                38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
                911118111118333338F3338F833338F3000033333911111111833333338F3338
                3333F8330000333333911111183333333338F333333F83330000333333311111
                8333333333338F3333383333000033333339111183333333333338F333833333
                00003333339111118333333333333833338F3333000033333911181118333333
                33338333338F333300003333911183911183333333383338F338F33300003333
                9118333911183333338F33838F338F33000033333913333391113333338FF833
                38F338F300003333333333333919333333388333338FFF830000333333333333
                3333333333333333333888330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
          end
          object meDataNascimento: TMaskEdit
            Left = 120
            Top = 160
            Width = 105
            Height = 21
            EditMask = '!99/99/0000;1;_'
            MaxLength = 10
            TabOrder = 6
            Text = '  /  /    '
          end
        end
      end
      inherited TabSheet2: TTabSheet
        inherited DBGrid1: TDBGrid
          Height = 288
          Hint = 'Duplo-clique para selecionar um dos '#237'tens'
          DataSource = dsBusca
          FixedColor = 16773087
          ParentFont = False
          TitleFont.Color = clBlue
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Fornecedor'
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMEFANTASIA'
              Title.Caption = 'Empresa'
              Width = 194
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
      'select f.*, e.nomefantasia'
      ' from FORNECEDOR f join empresa e on f.idempresa = e.id')
    object consultaPrincipalID: TIntegerField
      FieldName = 'ID'
      Origin = 'FORNECEDOR.ID'
      Required = True
    end
    object consultaPrincipalIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'FORNECEDOR.IDEMPRESA'
    end
    object consultaPrincipalNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'FORNECEDOR.NOME'
      Size = 150
    end
    object consultaPrincipalCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'FORNECEDOR.CNPJ'
    end
    object consultaPrincipalDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'FORNECEDOR.DATAHORA'
    end
    object consultaPrincipalRG: TIBStringField
      FieldName = 'RG'
      Origin = 'FORNECEDOR.RG'
    end
    object consultaPrincipalDATANASC: TDateField
      FieldName = 'DATANASC'
      Origin = 'FORNECEDOR.DATANASC'
    end
    object consultaPrincipalTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'FORNECEDOR.TIPO'
    end
    object consultaPrincipalNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'EMPRESA.NOMEFANTASIA'
      Size = 150
    end
  end
  object dsBusca: TDataSource
    DataSet = consultaPrincipal
    Left = 104
    Top = 24
  end
  object dsTelefones: TDataSource
    DataSet = telefones
    Left = 408
    Top = 192
  end
  object telefones: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 192
    Data = {
      4C0000009619E0BD0100000018000000020000000000030000004C000874656C
      65666F6E650100490000000100055749445448020002001E000C6964666F726E
      656365646F7204000100000000000000}
    object telefonestelefone: TStringField
      FieldName = 'telefone'
      Size = 30
    end
    object telefonesidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
  end
end
