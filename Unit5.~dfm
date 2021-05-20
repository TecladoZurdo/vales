object FORDPAGO: TFORDPAGO
  Left = 461
  Top = 172
  Width = 558
  Height = 355
  BorderIcons = []
  Caption = 'Orden de Pago'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 155
    Width = 550
    Height = 166
    Align = alBottom
    TabOrder = 0
    object DBText4: TDBText
      Left = 212
      Top = 119
      Width = 65
      Height = 17
      DataField = 'Partida'
      DataSource = JUNTA.DSCON
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 128
      Top = 8
      Width = 369
      Height = 17
      DataField = 'Son'
      DataSource = JUNTA.DSVALE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 8
      Top = 8
      Width = 92
      Height = 13
      Caption = 'LA CANTIDAD DE:'
    end
    object Label6: TLabel
      Left = 16
      Top = 24
      Width = 109
      Height = 13
      Caption = 'POR CONCEPTO DE :'
    end
    object Label7: TLabel
      Left = 16
      Top = 120
      Width = 155
      Height = 13
      Caption = 'CON CARGO A LA PARTIDA N'#186
    end
    object Label8: TLabel
      Left = 16
      Top = 144
      Width = 155
      Height = 13
      Caption = 'DEL PRESUPUESTO VIGENTE'
    end
    object vigente: TDateTimePicker
      Left = 214
      Top = 139
      Width = 57
      Height = 21
      Date = 38320.981416840300000000
      Format = 'yyyy'
      Time = 38320.981416840300000000
      TabOrder = 0
      OnChange = vigenteChange
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 49
      Width = 457
      Height = 65
      DataField = 'OPConcep'
      DataSource = JUNTA.DSVALE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 288
      Top = 136
      Width = 49
      Height = 25
      Caption = '<<'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 336
      Top = 136
      Width = 75
      Height = 25
      Caption = 'IMPRIMIR'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 416
      Top = 136
      Width = 75
      Height = 25
      Action = FVALE.DataSetPost1
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 145
    Align = alTop
    TabOrder = 1
    object DBText5: TDBText
      Left = 32
      Top = 56
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'fecha'
      DataSource = JUNTA.DSVALE
      Transparent = True
    end
    object DBText2: TDBText
      Left = 390
      Top = 61
      Width = 75
      Height = 17
      DataField = 'NumV'
      DataSource = JUNTA.DSVALE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 408
      Top = 13
      Width = 65
      Height = 17
      DataField = 'NumOP'
      DataSource = JUNTA.DSVALE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 72
      Height = 13
      Caption = 'Orden de Pago'
    end
    object Label2: TLabel
      Left = 288
      Top = 16
      Width = 63
      Height = 13
      Caption = 'Ord. Pago N'#186
    end
    object Label3: TLabel
      Left = 24
      Top = 96
      Width = 197
      Height = 13
      Caption = 'Sr. Tesorero (a). Sirvase entregar de caja,'
    end
    object Label4: TLabel
      Left = 312
      Top = 64
      Width = 36
      Height = 13
      Caption = 'Vale N'#186
    end
  end
end
