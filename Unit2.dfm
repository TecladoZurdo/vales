object JUNTA: TJUNTA
  OldCreateOrder = False
  Left = 463
  Top = 142
  Height = 366
  Width = 370
  object DSCON: TDataSource
    DataSet = TCON
    Left = 304
    Top = 144
  end
  object DSPROV: TDataSource
    DataSet = TPROV
    Left = 96
    Top = 88
  end
  object DBJUNTA: TDatabase
    AliasName = 'JParroquial'
    Connected = True
    DatabaseName = 'JP'
    LoginPrompt = False
    Params.Strings = (
      'PASSWORD=200178')
    SessionName = 'Default'
    Left = 112
    Top = 8
  end
  object TCON: TTable
    AfterInsert = TCONAfterInsert
    AfterPost = TCONAfterPost
    DatabaseName = 'JP'
    IndexFieldNames = 'NumV'
    MasterFields = 'NumV'
    MasterSource = DSVALE
    TableName = 'Conceptos'
    Left = 272
    Top = 120
    object TCONNumV: TIntegerField
      FieldName = 'NumV'
    end
    object TCONID: TIntegerField
      FieldName = 'ID'
    end
    object TCONSTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'STotal'
      Calculated = True
    end
    object TCONFundacion: TStringField
      FieldName = 'Fundacion'
    end
    object TCONPartida: TStringField
      FieldName = 'Partida'
    end
    object TCONConceptos: TStringField
      FieldName = 'Conceptos'
      Size = 50
    end
    object TCONTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object TJUNTA: TTable
    DatabaseName = 'JP'
    TableName = 'Junta'
    Left = 224
    Top = 8
    object TJUNTAJunta: TStringField
      FieldName = 'Junta'
      Size = 50
    end
    object TJUNTAAcuerMin: TStringField
      FieldName = 'AcuerMin'
      Size = 50
    end
    object TJUNTARuc: TStringField
      FieldName = 'Ruc'
      Size = 13
    end
    object TJUNTANumV: TIntegerField
      FieldName = 'NumV'
    end
    object TJUNTANumP: TIntegerField
      FieldName = 'NumP'
    end
    object TJUNTAPresiJunta: TStringField
      FieldName = 'PresiJunta'
      Size = 50
    end
    object TJUNTASecre: TStringField
      FieldName = 'Secre'
      Size = 50
    end
    object TJUNTACiudad: TStringField
      FieldName = 'Ciudad'
      Size = 15
    end
  end
  object DSJ: TDataSource
    DataSet = TJUNTA
    Left = 256
    Top = 8
  end
  object DSS: TDataSource
    DataSet = QSS
    Left = 216
    Top = 192
  end
  object TPROV: TTable
    DatabaseName = 'JP'
    TableName = 'Proveedor'
    Left = 56
    Top = 72
    object TPROVCI_RUC: TStringField
      Alignment = taCenter
      DisplayWidth = 14
      FieldName = 'CI_RUC'
      Size = 15
    end
    object TPROVNombApell: TStringField
      Alignment = taCenter
      DisplayWidth = 30
      FieldName = 'NombApell'
      Size = 60
    end
    object TPROVTelef: TStringField
      FieldName = 'Telef'
      Size = 10
    end
    object TPROVDireccion: TStringField
      FieldName = 'Direccion'
      Size = 70
    end
  end
  object TVALE: TTable
    AfterInsert = TVALEAfterInsert
    DatabaseName = 'JP'
    TableName = 'VALE'
    Left = 160
    Top = 72
    object TVALENumV: TIntegerField
      FieldName = 'NumV'
    end
    object TVALENumOP: TIntegerField
      FieldName = 'NumOP'
    end
    object TVALECIRUC: TStringField
      FieldName = 'CIRUC'
      Size = 15
    end
    object TVALEPagCheq: TStringField
      FieldName = 'PagCheq'
      Size = 12
    end
    object TVALEBanco: TStringField
      FieldName = 'Banco'
    end
    object TVALECta_Cte_N: TStringField
      FieldName = 'Cta_Cte_N'
      Size = 12
    end
    object TVALEfecha: TDateTimeField
      FieldName = 'fecha'
      DisplayFormat = 'DD '#39'de'#39' MMMM '#39'del'#39' yyyy '
    end
    object TVALEPor: TFloatField
      FieldName = 'Por'
    end
    object TVALEOPConcep: TMemoField
      FieldName = 'OPConcep'
      BlobType = ftMemo
      Size = 1
    end
    object TVALEOPresu: TStringField
      FieldName = 'OPresu'
      Size = 50
    end
    object TVALESon: TStringField
      FieldName = 'Son'
      Size = 100
    end
    object TVALEJornalizacion: TMemoField
      FieldName = 'Jornalizacion'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DSVALE: TDataSource
    DataSet = TVALE
    Left = 200
    Top = 88
  end
  object QNUMEROS: TQuery
    DatabaseName = 'JP'
    SQL.Strings = (
      'SELECT MAX(NUMV),MAX (NUMOP)'
      'FROM VALE;')
    Left = 160
    Top = 144
  end
  object QN: TQuery
    DatabaseName = 'JP'
    DataSource = DSVALE
    SQL.Strings = (
      'SELECT MAX(ID)'
      'FROM CONCEPTOS'
      'WHERE (NUMV=:NUMV)')
    Left = 312
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NumV'
        ParamType = ptInput
        Size = 4
      end>
  end
  object QSS: TQuery
    DatabaseName = 'JP'
    DataSource = DSCON
    SQL.Strings = (
      'select sum(Total)'
      'from conceptos C'
      'where C.NUMV=:NUMV')
    Left = 256
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NumV'
        ParamType = ptInput
        Size = 4
      end>
  end
  object TFactura: TTable
    AfterInsert = TFacturaAfterInsert
    DatabaseName = 'JP'
    TableName = 'Factura'
    Left = 48
    Top = 216
    object TFacturaFacNro: TSmallintField
      FieldName = 'FacNro'
    end
    object TFacturaRUC: TStringField
      FieldName = 'RUC'
      Size = 15
    end
    object TFacturafecha: TDateTimeField
      FieldName = 'fecha'
      DisplayFormat = 'dddd, dd '#39'de'#39' MMMM '#39'del'#39' yyyy'
    end
    object TFacturaConcepto: TMemoField
      FieldName = 'Concepto'
      BlobType = ftMemo
      Size = 1
    end
    object TFacturaObservacion: TMemoField
      FieldName = 'Observacion'
      BlobType = ftMemo
      Size = 1
    end
    object TFacturaResponsable: TStringField
      FieldName = 'Responsable'
      Size = 50
    end
    object TFacturaValfact: TFloatField
      FieldName = 'Valfact'
    end
    object TFacturaRetenIva: TFloatField
      FieldName = 'RetenIva'
    end
    object TFacturaRetenfuente: TFloatField
      FieldName = 'Retenfuente'
    end
    object TFacturaRetenFuenteLeyAQ: TFloatField
      FieldName = 'RetenFuenteLeyAQ'
    end
    object TFacturaRetenFuente0: TFloatField
      FieldName = 'RetenFuente0'
    end
    object TFacturaAntProvee: TFloatField
      FieldName = 'AntProvee'
    end
    object TFacturaMultas: TFloatField
      FieldName = 'Multas'
    end
    object TFacturaIva: TFloatField
      FieldName = 'Iva'
    end
    object TFacturaGasto: TFloatField
      FieldName = 'Gasto'
    end
    object TFacturaVLPF: TFloatField
      FieldName = 'VLPF'
    end
    object TFacturaRemuneraciones: TFloatField
      FieldName = 'Remuneraciones'
    end
    object TFacturaAportePatronal: TFloatField
      FieldName = 'AportePatronal'
    end
    object TFacturaAporteIndividual: TFloatField
      FieldName = 'AporteIndividual'
    end
    object TFacturaImpuestoRenta: TFloatField
      FieldName = 'ImpuestoRenta'
    end
    object TFacturaPrestamoQuirografario: TFloatField
      FieldName = 'PrestamoQuirografario'
    end
    object TFacturaAntSueldos: TFloatField
      FieldName = 'AntSueldos'
    end
    object TFacturaMultasRemuneraciones: TFloatField
      FieldName = 'MultasRemuneraciones'
    end
    object TFacturaVLPR: TFloatField
      FieldName = 'VLPR'
    end
    object TFacturaRetenFuenteIva: TFloatField
      FieldName = 'RetenFuenteIva'
    end
    object TFacturaRetenMinistroFinansas: TFloatField
      FieldName = 'RetenMinistroFinansas'
    end
    object TFacturaRetenImpuestoRenta: TFloatField
      FieldName = 'RetenImpuestoRenta'
    end
    object TFacturaServiciosBancarios: TFloatField
      FieldName = 'ServiciosBancarios'
    end
    object TFacturaMultasRetenciones: TFloatField
      FieldName = 'MultasRetenciones'
    end
    object TFacturaVPR: TFloatField
      FieldName = 'VPR'
    end
    object TFacturaPORC1: TFloatField
      FieldName = 'PORC1'
    end
    object TFacturaPORC2: TFloatField
      FieldName = 'PORC2'
    end
  end
  object TPresup: TTable
    AfterInsert = TPresupAfterInsert
    DatabaseName = 'JP'
    TableName = 'Presupuestaria'
    Left = 112
    Top = 216
    object TPresupvalorsecre: TStringField
      FieldName = 'valorsecre'
      Size = 50
    end
    object TPresupid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object TPresupSecre: TStringField
      FieldName = 'Secre'
      Size = 50
    end
    object TPresupBeneficiarioSecre: TStringField
      FieldName = 'BeneficiarioSecre'
      Size = 50
    end
    object TPresupproforma: TSmallintField
      FieldName = 'proforma'
    end
    object TPresuppara: TStringField
      FieldName = 'para'
      Size = 50
    end
    object TPresupPartidaNoSecre: TStringField
      FieldName = 'PartidaNoSecre'
      Size = 50
    end
    object TPresuppresident: TStringField
      FieldName = 'president'
      Size = 50
    end
    object TPresupconcepto: TStringField
      FieldName = 'concepto'
      Size = 50
    end
    object TPresupvalorpresi: TStringField
      FieldName = 'valorpresi'
      Size = 50
    end
    object TPresupBeneficiarioPressi: TStringField
      FieldName = 'BeneficiarioPressi'
      Size = 50
    end
    object TPresupPartidaNoPresi: TStringField
      FieldName = 'PartidaNoPresi'
      Size = 50
    end
    object TPresupcertifico: TStringField
      FieldName = 'certifico'
      Size = 2
    end
    object TPresupFECHA: TDateTimeField
      FieldName = 'FECHA'
      DisplayFormat = 'dddd, dd '#39'de'#39' MMMM '#39'del'#39' yyyy'
    end
  end
  object DSFACT: TDataSource
    DataSet = TFactura
    Left = 8
    Top = 240
  end
  object DSPRE: TDataSource
    DataSet = TPresup
    Left = 152
    Top = 232
  end
end
