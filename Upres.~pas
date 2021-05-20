unit Upres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, DB, DBTables, qrpctrls;

type
  TQRPRESUPUESTO = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRExprMemo1: TQRExprMemo;
    QRExprMemo2: TQRExprMemo;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QBeneficiario: TQuery;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Qbenefipresi: TQuery;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel10: TQRLabel;
    QRPCHBSI: TQRPCheckBox;
    SINO: TQRDBText;
    QRPCHBNO: TQRPCheckBox;
    procedure QuickRep1StartPage(Sender: TCustomQuickRep);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRPRESUPUESTO: TQRPRESUPUESTO;

implementation
    USES UNIT2;
{$R *.dfm}

procedure TQRPRESUPUESTO.QuickRep1StartPage(Sender: TCustomQuickRep);
begin
    IF (SINO.DataField='N') THEN
   BEGIN
     QRPCHBNO.Checked:=TRUE;
   END
   ELSE
   BEGIN
     QRPCHBSI.Checked:=TRUE;
   END;
end;

end.
