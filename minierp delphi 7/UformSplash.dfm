object FormSplash: TFormSplash
  Left = 403
  Top = 275
  BorderStyle = bsNone
  ClientHeight = 82
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 16
    Top = 35
    Width = 313
    Height = 17
    ForeColor = clBlue
    Progress = 0
  end
  object Label1: TLabel
    Left = 16
    Top = 15
    Width = 102
    Height = 13
    Caption = 'Carregando o sistema'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 340
    Height = 82
    Align = alClient
  end
end
