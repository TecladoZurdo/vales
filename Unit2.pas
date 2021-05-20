unit Unit2;

interface

uses
  SysUtils, Classes, DB, DBTables, ADODB;

type
  TJUNTA = class(TDataModule)
    DSCON: TDataSource;
    DSPROV: TDataSource;
    DBJUNTA: TDatabase;
    TCON: TTable;
    TCONSTotal: TFloatField;
    TCONFundacion: TStringField;
    TCONPartida: TStringField;
    TCONTotal: TFloatField;
    TJUNTA: TTable;
    DSJ: TDataSource;
    TCONNumV: TIntegerField;
    DSS: TDataSource;
    TJUNTAJunta: TStringField;
    TJUNTAAcuerMin: TStringField;
    TJUNTARuc: TStringField;
    TJUNTANumV: TIntegerField;
    TJUNTANumP: TIntegerField;
    TPROV: TTable;
    TCONID: TIntegerField;
    TVALE: TTable;
    TVALENumV: TIntegerField;
    TVALENumOP: TIntegerField;
    TVALEPagCheq: TStringField;
    TVALEBanco: TStringField;
    TVALECta_Cte_N: TStringField;
    TVALEfecha: TDateTimeField;
    TVALEPor: TFloatField;
    TVALEOPresu: TStringField;
    TVALESon: TStringField;
    TVALEJornalizacion: TMemoField;
    DSVALE: TDataSource;
    TVALECIRUC: TStringField;
    TPROVCI_RUC: TStringField;
    TPROVNombApell: TStringField;
    TPROVTelef: TStringField;
    TPROVDireccion: TStringField;
    QNUMEROS: TQuery;
    QN: TQuery;
    QSS: TQuery;
    TCONConceptos: TStringField;
    TVALEOPConcep: TMemoField;
    TFactura: TTable;
    TPresup: TTable;
    DSFACT: TDataSource;
    DSPRE: TDataSource;
    TJUNTAPresiJunta: TStringField;
    TJUNTASecre: TStringField;
    TJUNTACiudad: TStringField;
    TPresupvalorsecre: TStringField;
    TPresupid: TIntegerField;
    TPresupSecre: TStringField;
    TPresupBeneficiarioSecre: TStringField;
    TPresupproforma: TSmallintField;
    TPresuppara: TStringField;
    TPresupPartidaNoSecre: TStringField;
    TPresuppresident: TStringField;
    TPresupconcepto: TStringField;
    TPresupvalorpresi: TStringField;
    TPresupBeneficiarioPressi: TStringField;
    TPresupPartidaNoPresi: TStringField;
    TPresupcertifico: TStringField;
    TFacturaFacNro: TSmallintField;
    TFacturaRUC: TStringField;
    TFacturafecha: TDateTimeField;
    TFacturaConcepto: TMemoField;
    TFacturaObservacion: TMemoField;
    TFacturaResponsable: TStringField;
    TFacturaValfact: TFloatField;
    TFacturaRetenIva: TFloatField;
    TFacturaRetenfuente: TFloatField;
    TFacturaRetenFuenteLeyAQ: TFloatField;
    TFacturaRetenFuente0: TFloatField;
    TFacturaAntProvee: TFloatField;
    TFacturaMultas: TFloatField;
    TFacturaIva: TFloatField;
    TFacturaGasto: TFloatField;
    TFacturaVLPF: TFloatField;
    TFacturaRemuneraciones: TFloatField;
    TFacturaAportePatronal: TFloatField;
    TFacturaAporteIndividual: TFloatField;
    TFacturaImpuestoRenta: TFloatField;
    TFacturaPrestamoQuirografario: TFloatField;
    TFacturaAntSueldos: TFloatField;
    TFacturaMultasRemuneraciones: TFloatField;
    TFacturaVLPR: TFloatField;
    TFacturaRetenFuenteIva: TFloatField;
    TFacturaRetenMinistroFinansas: TFloatField;
    TFacturaRetenImpuestoRenta: TFloatField;
    TFacturaServiciosBancarios: TFloatField;
    TFacturaMultasRetenciones: TFloatField;
    TFacturaVPR: TFloatField;
    TFacturaPORC1: TFloatField;
    TFacturaPORC2: TFloatField;
    TPresupFECHA: TDateTimeField;
    procedure TCONAfterPost(DataSet: TDataSet);
    procedure TVALEAfterInsert(DataSet: TDataSet);
    procedure TCONAfterInsert(DataSet: TDataSet);
    procedure TPresupAfterInsert(DataSet: TDataSet);
    procedure TFacturaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JUNTA: TJUNTA;

implementation

{$R *.dfm}

procedure TJUNTA.TCONAfterPost(DataSet: TDataSet);
begin
QSS.Active:=false;
QSS.Prepare;
QSS.ExecSQL;
QSS.Active:=true;
end;

procedure TJUNTA.TVALEAfterInsert(DataSet: TDataSet);
begin
//-- ANTES DE INSERTAR UN NUEVO VALE
//-- LE DAMOS UN # TANTO DE VALE COMO DE ORDEN
 //-- ACTIVO LA CONSULTA Y COMPRUEVO UE EL #
 //- SEA MAYOR QUE EL # INGRESADO AL INICIO
  QNUMEROS.Active:=FALSE;
  QNUMEROS.Prepare;
  QNUMEROS.ExecSQL;
  QNUMEROS.Active:=TRUE;
  TJUNTA.Active:=TRUE;
  IF((QNUMEROS.Fields[0].AsInteger=0)OR(QNUMEROS.Fields[1].AsInteger=0)) THEN
  BEGIN
  TVALE.FieldByName('NUMV').AsInteger:=TJUNTA.FieldByName('NUMV').AsInteger;
  TVALE.FieldByName('NUMOP').AsInteger:=TJUNTA.FieldByName('NUMP').AsInteger;
  END
  ELSE
  BEGIN
  TVALE.FieldByName('NUMV').AsInteger:=QNUMEROS.Fields[0].AsInteger+1;
  TVALE.FieldByName('NUMOP').AsInteger:=QNUMEROS.Fields[1].AsInteger+1;
  END;
  TJUNTA.Active:=FALSE;
  QNUMEROS.Active:=FALSE;
end;

procedure TJUNTA.TCONAfterInsert(DataSet: TDataSet);
begin
  QN.Active:=FALSE;
  QN.Prepare;
  QN.Active:=TRUE;
  TCON.FieldByName('ID').AsInteger:=QN.Fields[0].AsInteger+1;
end;

procedure TJUNTA.TPresupAfterInsert(DataSet: TDataSet);
begin
junta.TPresupSecre.Value:=junta.TJUNTASecre.Value;
junta.TPresuppresident.Value:=junta.TJUNTAPresiJunta.Value;
TPRESUP.FieldByName('FECHA').AsDateTime:=date;
end;

procedure TJUNTA.TFacturaAfterInsert(DataSet: TDataSet);
begin
TFactura.FieldByName('fecha').AsDateTime:=date;
end;

end.
