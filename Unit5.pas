unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Buttons, ComCtrls
  , QuickRpt, QRCtrls, DB, DBTables, ExtCtrls;

type
  TFORDPAGO = class(TForm)
    Panel1: TPanel;
    vigente: TDateTimePicker;
    DBText4: TDBText;
    DBText3: TDBText;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    DBText5: TDBText;
    DBText2: TDBText;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vigenteChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
   
    { Public declarations }
  end;

var
  FORDPAGO: TFORDPAGO;
implementation
  uses unit6,unit4,UNIT2,UNIT8;
{$R *.dfm}

procedure TFORDPAGO.FormCreate(Sender: TObject);
begin
 //-- actualizo la fecha del sistema
 vigente.Date:=date;
 //-- activo la tabla junta para poner el
 //-- nombre de la junta
 JUNTA.TVALE.Active:=TRUE;
end;

procedure TFORDPAGO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //-- desactivo la tabla junta por
 //-- que la active cuando entre
 junta.TJUNTA.Active:=FALSE;
end;

procedure TFORDPAGO.vigenteChange(Sender: TObject);
begin
if(not (junta.TVALE.State in [dsEdit, dsInsert])) then
junta.TVALE.Edit;
junta.TVALEOPresu.Value:=datetostr(vigente.Date);
end;

procedure TFORDPAGO.Button1Click(Sender: TObject);
begin
FORDPAGO.Close;
end;

procedure TFORDPAGO.Button2Click(Sender: TObject);
begin
//-- si el boton de eliminar est� activo
  //-- presento el mensaje y si la respuesta es si
  //-- activo la impresi�n de lo contrario doy paso
  //-- libre a imprimir
  if(FVALE.XiButton6.Enabled) then
    begin
    //-- doy un mensage de advertencia que
    //-- se guardar� el vale y la orden de pago
      if(messagebox(FORDPAGO.Handle,
      'Tanto el Vale como la Orden de pago se registrar� en el programa si imprime'+'�Desea imprimir?',
      'Informaci�n',mb_yesno+mb_iconinformation)=idyes) then
        begin
        JUNTA.TJUNTA.Active:=TRUE;
        //-------------------------
        QRORDPAG.QVALE.Active:=TRUE;
        QRORDPAG.QCONCEP.Active:=TRUE;
          //---------------------------------
        QRORDPAG.QR.Prepare;
        QRORDPAG.QR.Preview;
         //--------------------------------
        QRORDPAG.QVALE.Active:=FALSE;
        QRORDPAG.QCONCEP.Active:=FALSE;
        //--------------------------------
        JUNTA.TJUNTA.Active:=FALSE;
        end
    end
    ELSE
    messagebox(FORDPAGO.Handle,
      'GUARDE LOS CAMBIOS ANTES DE IMPRIMIR',
      'Informaci�n',mb_OK+mb_iconinformation)
end;

end.
