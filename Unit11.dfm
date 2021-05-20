object FAcer: TFAcer
  Left = 292
  Top = 297
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Acerca de .....'
  ClientHeight = 115
  ClientWidth = 270
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 39
    Width = 257
    Height = 73
    Lines.Strings = (
      'TecladoZurdo'
      '   en el canal:   IRC  de  freenode  '
      '   canal #asle'
      '   o '
      '    #ubuntu-es'
      '     '
      ''
      '  ')
    ReadOnly = True
    TabOrder = 0
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 163
    Height = 28
    Alignment = taCenter
    Caption = 'INFORMATE CON'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 208
    Top = 8
    Width = 57
    Height = 25
    Caption = 'Cerrar '
    TabOrder = 2
    OnClick = Button1Click
  end
end
