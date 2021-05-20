unit Unit6;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables, Grids,
  DBGrids;

type
  TQRVALE = class(TForm)
    QR: TQuickRep;
    DetailBand1: TQRBand;
    QRBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRBand3: TQRBand;
    QRLabel18: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape9: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRShape11: TQRShape;
    QRShape2: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape10: TQRShape;
    QRShape16: TQRShape;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape1: TQRShape;
    QRShape14: TQRShape;
    QRLabel24: TQRLabel;
    QRShape15: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText17: TQRDBText;
    QRExpr1: TQRExpr;
    QRShape4: TQRShape;
    QRShape12: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRDBText13: TQRDBText;
    QPROVEEDOR: TQuery;
    QPROVEEDORCI_RUC: TStringField;
    QPROVEEDORNombApell: TStringField;
    QPROVEEDORTelef: TStringField;
    QPROVEEDORDireccion: TStringField;
    QCONCEPTO: TQuery;
    QCONCEPTOID: TIntegerField;
    QCONCEPTOPARTIDA: TStringField;
    QCONCEPTOFUNDACION: TStringField;
    QCONCEPTOTOTAL: TFloatField;
    QVALE: TQuery;
    DSVALE: TDataSource;
    QCONCEPTOCONCEPTOS: TStringField;
  private
  end;

var
  QRVALE: TQRVALE;

implementation

uses Unit2;

{$R *.DFM}

end.
