object FPresupuestaria: TFPresupuestaria
  Left = 437
  Top = 116
  BorderStyle = bsNone
  Caption = 'FPresupuestaria'
  ClientHeight = 554
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object XiPanel1: TXiPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 41
    ColorFace = clWhite
    ColorGrad = 10805759
    ColorLight = 36821
    ColorDark = 27035
    ColorScheme = csDesert
    FillDirection = fdVertical
    Align = alTop
    TabOrder = 0
    UseDockManager = True
    OnMouseDown = XiPanel1MouseDown
    object psvBasicLabel2: TpsvBasicLabel
      Left = 8
      Top = 4
      Width = 436
      Height = 29
      FocusColor = clNavy
      Caption = 'CERTIFICACI'#211'N PRESUPUESTARIA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnMouseDown = XiPanel1MouseDown
    end
    object dxToolButton1: TdxToolButton
      Left = 512
      Top = 8
      OnClick = dxToolButton1Click
      Style.Theme = OfficeXP
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 280
    Width = 686
    Height = 274
    Align = alBottom
    TabOrder = 1
    object DBText5: TDBText
      Left = 24
      Top = 6
      Width = 97
      Height = 17
      DataField = 'Ciudad'
      DataSource = JUNTA.DSJ
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 278
      Top = 67
      Width = 65
      Height = 17
      DataField = 'Junta'
      DataSource = JUNTA.DSJ
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 456
      Top = 16
      Width = 69
      Height = 13
      Caption = 'PRESIDENTE'
    end
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Sr. (a)'
    end
    object Label3: TLabel
      Left = 24
      Top = 64
      Width = 214
      Height = 13
      Caption = 'PRESIDENTE DE LA JUNTA PARROQUIAL'
    end
    object Label4: TLabel
      Left = 24
      Top = 80
      Width = 42
      Height = 13
      Caption = 'Presente'
    end
    object Label5: TLabel
      Left = 24
      Top = 104
      Width = 59
      Height = 13
      Caption = 'Certifico que'
    end
    object Label6: TLabel
      Left = 192
      Top = 104
      Width = 209
      Height = 13
      Caption = 'existe disponibilidad presupuestaria para el : '
    end
    object Label7: TLabel
      Left = 24
      Top = 152
      Width = 103
      Height = 13
      Caption = 'Por el valor de : USD '
    end
    object Label8: TLabel
      Left = 24
      Top = 172
      Width = 58
      Height = 13
      Caption = 'A favor de:  '
    end
    object Label9: TLabel
      Left = 192
      Top = 200
      Width = 157
      Height = 13
      Caption = 'En la partida presupuestaria Nro: '
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 90
      Top = 85
      Width = 89
      Height = 34
      Columns = 2
      DataField = 'certifico'
      DataSource = JUNTA.DSPRE
      Items.Strings = (
        'SI'
        'NO')
      TabOrder = 0
      Values.Strings = (
        'S'
        'N')
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 88
      Top = 171
      Width = 177
      Height = 21
      DataField = 'BeneficiarioPressi'
      DataSource = JUNTA.DSPRE
      DropDownWidth = 300
      KeyField = 'CI_RUC'
      ListField = 'NombApell;CI_RUC'
      ListSource = JUNTA.DSPROV
      TabOrder = 1
    end
    object DBEdit13: TDBEdit
      Left = 24
      Top = 41
      Width = 121
      Height = 21
      DataField = 'president'
      DataSource = JUNTA.DSPRE
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 32
      Top = 123
      Width = 489
      Height = 21
      DataField = 'concepto'
      DataSource = JUNTA.DSPRE
      TabOrder = 3
    end
    object DBEdit11: TDBEdit
      Left = 136
      Top = 146
      Width = 385
      Height = 21
      DataField = 'valorpresi'
      DataSource = JUNTA.DSPRE
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 365
      Top = 188
      Width = 76
      Height = 21
      DataField = 'PartidaNoPresi'
      DataSource = JUNTA.DSPRE
      TabOrder = 5
    end
    object Button1: TButton
      Left = 272
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Nuevo'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 448
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 686
    Height = 232
    Align = alTop
    TabOrder = 2
    object psvBasicLabel9: TpsvBasicLabel
      Left = 24
      Top = 183
      Width = 28
      Height = 13
      FocusColor = clBlack
      Caption = 'Para: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object psvBasicLabel8: TpsvBasicLabel
      Left = 336
      Top = 160
      Width = 124
      Height = 13
      FocusColor = clBlack
      Caption = 'Seg'#250'n por forma Nro: S/N'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object psvBasicLabel7: TpsvBasicLabel
      Left = 510
      Top = 135
      Width = 27
      Height = 13
      FocusColor = clBlack
      Caption = 'USD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object psvBasicLabel6: TpsvBasicLabel
      Left = 24
      Top = 160
      Width = 55
      Height = 13
      FocusColor = clBlack
      Caption = 'A favor de: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object psvBasicLabel5: TpsvBasicLabel
      Left = 24
      Top = 118
      Width = 385
      Height = 13
      FocusColor = clBlack
      Caption = 
        'Agradecer'#233' certificar la existencia de disponibilidad presupuest' +
        'aria por el valor de '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object psvBasicLabel4: TpsvBasicLabel
      Left = 24
      Top = 104
      Width = 51
      Height = 13
      FocusColor = clBlack
      Caption = 'Presente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object psvBasicLabel3: TpsvBasicLabel
      Left = 24
      Top = 88
      Width = 171
      Height = 13
      FocusColor = clBlack
      Caption = 'SECRETARIO TESORERO (a)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object psvBasicLabel10: TpsvBasicLabel
      Left = 23
      Top = 205
      Width = 56
      Height = 13
      FocusColor = clBlack
      Caption = 'Partida Nro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object psvBasicLabel1: TpsvBasicLabel
      Left = 24
      Top = 48
      Width = 28
      Height = 13
      FocusColor = clBackground
      Caption = 'Sr. (a)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 24
      Top = 32
      Width = 97
      Height = 17
      DataField = 'Ciudad'
      DataSource = JUNTA.DSJ
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object XiButton6: TXiButton
      Left = 367
      Top = 3
      Width = 88
      Height = 22
      ColorFace = 15987699
      ColorGrad = 12369084
      ColorDark = 10987431
      ColorLight = 16250871
      ColorBorder = 6447714
      ColorText = clBlack
      OverColorFace = 15790320
      OverColorGrad = 10921638
      OverColorDark = 10658466
      OverColorLight = 15658734
      OverColorBorder = 7697781
      OverColorText = clBlack
      DownColorFace = 13290186
      DownColorGrad = 14342874
      DownColorDark = 15329769
      DownColorLight = 8158332
      DownColorBorder = 5131854
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 11382189
      ColorScheme = csNeoSilver
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Action = DataSetDelete1
      TabOrder = 0
    end
    object XiButton5: TXiButton
      Left = 279
      Top = 3
      Width = 88
      Height = 22
      ColorFace = 15987699
      ColorGrad = 12369084
      ColorDark = 10987431
      ColorLight = 16250871
      ColorBorder = 6447714
      ColorText = clBlack
      OverColorFace = 15790320
      OverColorGrad = 10921638
      OverColorDark = 10658466
      OverColorLight = 15658734
      OverColorBorder = 7697781
      OverColorText = clBlack
      DownColorFace = 13290186
      DownColorGrad = 14342874
      DownColorDark = 15329769
      DownColorLight = 8158332
      DownColorBorder = 5131854
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 11382189
      ColorScheme = csNeoSilver
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Action = DataSetCancel1
      TabOrder = 1
    end
    object XiButton4: TXiButton
      Left = 194
      Top = 3
      Width = 85
      Height = 22
      ColorFace = 15987699
      ColorGrad = 12369084
      ColorDark = 10987431
      ColorLight = 16250871
      ColorBorder = 6447714
      ColorText = clBlack
      OverColorFace = 15790320
      OverColorGrad = 10921638
      OverColorDark = 10658466
      OverColorLight = 15658734
      OverColorBorder = 7697781
      OverColorText = clBlack
      DownColorFace = 13290186
      DownColorGrad = 14342874
      DownColorDark = 15329769
      DownColorLight = 8158332
      DownColorBorder = 5131854
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 11382189
      ColorScheme = csNeoSilver
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Action = DataSetPost1
      TabOrder = 2
    end
    object XiButton3: TXiButton
      Left = 97
      Top = 3
      Width = 97
      Height = 22
      ColorFace = 15987699
      ColorGrad = 12369084
      ColorDark = 10987431
      ColorLight = 16250871
      ColorBorder = 6447714
      ColorText = clBlack
      OverColorFace = 15790320
      OverColorGrad = 10921638
      OverColorDark = 10658466
      OverColorLight = 15658734
      OverColorBorder = 7697781
      OverColorText = clBlack
      DownColorFace = 13290186
      DownColorGrad = 14342874
      DownColorDark = 15329769
      DownColorLight = 8158332
      DownColorBorder = 5131854
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 11382189
      ColorScheme = csNeoSilver
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Action = DataSetEdit1
      TabOrder = 3
    end
    object XiButton2: TXiButton
      Left = 9
      Top = 3
      Width = 88
      Height = 22
      ColorFace = 15987699
      ColorGrad = 12369084
      ColorDark = 10987431
      ColorLight = 16250871
      ColorBorder = 6447714
      ColorText = clBlack
      OverColorFace = 15790320
      OverColorGrad = 10921638
      OverColorDark = 10658466
      OverColorLight = 15658734
      OverColorBorder = 7697781
      OverColorText = clBlack
      DownColorFace = 13290186
      DownColorGrad = 14342874
      DownColorDark = 15329769
      DownColorLight = 8158332
      DownColorBorder = 5131854
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 11382189
      ColorScheme = csNeoSilver
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Action = DataSetInsert1
      TabOrder = 4
    end
    object XiButton1: TXiButton
      Left = 260
      Top = 154
      Width = 71
      Height = 21
      Hint = 'NUEVO PROVEEDOR'
      ColorFace = 13036799
      ColorGrad = 3653375
      ColorDark = 40168
      ColorLight = 12183551
      ColorBorder = 22144
      ColorText = clBlack
      OverColorFace = 11790335
      OverColorGrad = 41968
      OverColorDark = 36562
      OverColorLight = 9820927
      OverColorBorder = 22144
      OverColorText = clBlack
      DownColorFace = 2865919
      DownColorGrad = 7852799
      DownColorDark = 9099775
      DownColorLight = 30647
      DownColorBorder = 28838
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 4227327
      ColorScheme = csNeoDesert
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Caption = 'NUEVO ...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object Siguiente: TXiButton
      Left = 495
      Top = 33
      Width = 32
      Height = 17
      ColorFace = 15987699
      ColorGrad = 12369084
      ColorDark = 10987431
      ColorLight = 16250871
      ColorBorder = 6447714
      ColorText = clBlack
      OverColorFace = 15790320
      OverColorGrad = 10921638
      OverColorDark = 10658466
      OverColorLight = 15658734
      OverColorBorder = 7697781
      OverColorText = clBlack
      DownColorFace = 13290186
      DownColorGrad = 14342874
      DownColorDark = 15329769
      DownColorLight = 8158332
      DownColorBorder = 5131854
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 11382189
      ColorScheme = csNeoSilver
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Action = DataSetNext1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object dia: TDateTimePicker
      Left = 308
      Top = 64
      Width = 209
      Height = 21
      Date = 36890.957121504600000000
      Time = 36890.957121504600000000
      Checked = False
      DateFormat = dfLong
      MaxDate = 44196.000000000000000000
      ParseInput = True
      TabOrder = 7
      OnChange = diaChange
    end
    object DBNAME: TDBLookupComboBox
      Left = 80
      Top = 155
      Width = 177
      Height = 21
      DataField = 'BeneficiarioSecre'
      DataSource = JUNTA.DSPRE
      DropDownWidth = 300
      KeyField = 'CI_RUC'
      ListField = 'NombApell;CI_RUC'
      ListSource = JUNTA.DSPROV
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 80
      Top = 200
      Width = 249
      Height = 21
      DataField = 'PartidaNoSecre'
      DataSource = JUNTA.DSPRE
      TabOrder = 9
    end
    object DBEdit4: TDBEdit
      Left = 80
      Top = 178
      Width = 249
      Height = 21
      DataField = 'para'
      DataSource = JUNTA.DSPRE
      TabOrder = 10
    end
    object DBEdit3: TDBEdit
      Left = 472
      Top = 160
      Width = 65
      Height = 21
      DataField = 'proforma'
      DataSource = JUNTA.DSPRE
      TabOrder = 11
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 132
      Width = 481
      Height = 21
      DataField = 'valorsecre'
      DataSource = JUNTA.DSPRE
      TabOrder = 12
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 64
      Width = 121
      Height = 21
      DataField = 'Secre'
      DataSource = JUNTA.DSPRE
      TabOrder = 13
    end
    object Anterior: TXiButton
      Left = 463
      Top = 33
      Width = 32
      Height = 17
      ColorFace = 15987699
      ColorGrad = 12369084
      ColorDark = 10987431
      ColorLight = 16250871
      ColorBorder = 6447714
      ColorText = clBlack
      OverColorFace = 15790320
      OverColorGrad = 10921638
      OverColorDark = 10658466
      OverColorLight = 15658734
      OverColorBorder = 7697781
      OverColorText = clBlack
      DownColorFace = 13290186
      DownColorGrad = 14342874
      DownColorDark = 15329769
      DownColorLight = 8158332
      DownColorBorder = 5131854
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 11382189
      ColorScheme = csNeoSilver
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Action = DataSetPrior1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
  end
  object ActionList1: TActionList
    Left = 464
    Top = 33
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '<<'
      DataSource = JUNTA.DSPRE
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '>>'
      DataSource = JUNTA.DSPRE
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'NUEVO'
      DataSource = JUNTA.DSPRE
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'ELIMINAR'
      DataSource = JUNTA.DSPRE
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = 'MODIFICAR'
      DataSource = JUNTA.DSPRE
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'GUARDAR'
      DataSource = JUNTA.DSPRE
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'CANCELAR'
      DataSource = JUNTA.DSPRE
    end
  end
end
