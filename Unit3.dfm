object FProve: TFProve
  Left = 521
  Top = 203
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PROVEEDORES'
  ClientHeight = 157
  ClientWidth = 550
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 157
    Align = alClient
    TabOrder = 0
    object Label4: TLabel
      Left = 320
      Top = 72
      Width = 70
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Tel'#233'fono / Fax'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 320
      Top = 24
      Width = 44
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'RUC / CI'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 32
      Top = 72
      Width = 45
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Direcci'#243'n'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 85
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Nombre y Apellido'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object DBNavigator1: TDBNavigator
      Left = 385
      Top = 3
      Width = 64
      Height = 18
      DataSource = JUNTA.DSPROV
      VisibleButtons = [nbPrior, nbNext]
      Flat = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 320
      Top = 88
      Width = 137
      Height = 21
      DataField = 'Telef'
      DataSource = JUNTA.DSPROV
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 88
      Width = 265
      Height = 21
      DataField = 'Direccion'
      DataSource = JUNTA.DSPROV
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 32
      Top = 40
      Width = 265
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NombApell'
      DataSource = JUNTA.DSPROV
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 320
      Top = 40
      Width = 137
      Height = 21
      DataField = 'CI_RUC'
      DataSource = JUNTA.DSPROV
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 40
      Top = 112
      Width = 123
      Height = 25
      Action = DataSetInsert1
      Caption = 'Ingresar'
      Default = True
      TabOrder = 5
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
    object BitBtn3: TBitBtn
      Left = 392
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 6
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 112
      Width = 99
      Height = 25
      Action = DataSetCancel1
      Caption = 'Cancelar'
      TabOrder = 7
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
    object BitBtn1: TBitBtn
      Left = 296
      Top = 112
      Width = 75
      Height = 25
      Action = DataSetPost1
      Caption = 'Guardar'
      TabOrder = 8
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
  end
  object ActionList1: TActionList
    Left = 488
    Top = 48
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'Guardar'
      DataSource = JUNTA.DSPROV
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      DataSource = JUNTA.DSPROV
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Ingresar'
      DataSource = JUNTA.DSPROV
    end
  end
end
