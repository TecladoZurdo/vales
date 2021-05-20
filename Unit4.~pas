unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons,UNIT3, Grids, DBGrids,
   ExtCtrls, DB, DBTables, ComCtrls, psvBasiclbl, XiPanel,
  XiButton, ActnList, ImgList, DBActns, dxCore, dxButtons;

type
  TFVALE = class(TForm)
    QDelConcep: TQuery;
    XiPanel1: TXiPanel;
    psvBasicLabel1: TpsvBasicLabel;
    XiButton1: TXiButton;
    DBNAME: TDBLookupComboBox;
    Action: TActionList;
    XiPanel2: TXiPanel;
    psvBasicLabel2: TpsvBasicLabel;
    DBText3: TDBText;
    DBText2: TDBText;
    DBEdit9: TDBEdit;
    psvBasicLabel3: TpsvBasicLabel;
    psvBasicLabel4: TpsvBasicLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    psvBasicLabel5: TpsvBasicLabel;
    psvBasicLabel6: TpsvBasicLabel;
    DBComboBox1: TDBComboBox;
    psvBasicLabel7: TpsvBasicLabel;
    psvBasicLabel8: TpsvBasicLabel;
    dia: TDateTimePicker;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    XiButton2: TXiButton;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    XiButton5: TXiButton;
    XiButton6: TXiButton;
    XiPanel3: TXiPanel;
    DBGrid1: TDBGrid;
    psvBasicLabel9: TpsvBasicLabel;
    DBMemo1: TDBMemo;
    psvBasicLabel10: TpsvBasicLabel;
    DBEdit7: TDBEdit;
    psvBasicLabel11: TpsvBasicLabel;
    psvBasicLabel12: TpsvBasicLabel;
    DBEdit8: TDBEdit;
    DBText1: TDBText;
    psvBasicLabel13: TpsvBasicLabel;
    XiButton7: TXiButton;
    BORRARCONCEP: TDataSetDelete;
    GUARDARCONCEP: TDataSetPost;
    dxToolButton1: TdxToolButton;
    XiButton8: TXiButton;
    XiButton9: TXiButton;
    CONBORRAR: TXiButton;
    XiButton11: TXiButton;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    Anterior: TXiButton;
    Siguiente: TXiButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure diaChange(Sender: TObject);
    procedure XiButton1Click(Sender: TObject);
    procedure XiButton7Click(Sender: TObject);
    procedure XiButton8Click(Sender: TObject);
    procedure XiButton9Click(Sender: TObject);
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure DataSetDelete1Update(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    NUMVALEXPOR:INTEGER;
  end;

var
  FVALE: TFVALE;
implementation
   USES unit2,UNIT5,unit6;
{$R *.dfm}
procedure TFVALE.FormCreate(Sender: TObject);
begin
// --- actualizo la fecha
dia.Date:=Date;
//----- activo la tabla porveedores
Junta.TPROV.Active:=true;
//----- activo la tabla VALE
JUNTA.TVALE.Active:=TRUE;
//--------------------------------

//----------------------------------
JUNTA.TCON.Active:=TRUE;
end;
procedure TFVALE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //-- permito que las tablas usadas se desactiven y
 //-- a la siguiente llamada se inician desde el
 //-- principio las desactivo en orden
 //-- regresivo para que se borren de lo contrario
 //-- se almacena la información
    Junta.TPROV.Active:=false;
    junta.TCON.Active:=false;
    Junta.TVALE.Active:=false;
 //--------------------------
end;


procedure TFVALE.DBGrid1Enter(Sender: TObject);
begin
 //--- propongo que los datos anteriores se
 //--- ingresen antes de activarla (puedo desactivar el
 //--- mensaje si lo deseo)
  if ((dbedit1.Text='')or(dbedit3.Text=''))then
   begin
   Messagebox(fVALE.Handle,'Ingrese todos los datos anteriores','Informaciòn',
    MB_OK+mb_iconquestion);
   end
end;
procedure TFVALE.FormShow(Sender: TObject);
begin
DBNAME.SetFocus;
end;

procedure TFVALE.diaChange(Sender: TObject);
begin
if(not (junta.TVALE.State in [dsEdit, dsInsert])) then
junta.TVALE.Edit;
JUNTA.TVALEfecha.Value:=dia.Date;
end;

procedure TFVALE.XiButton1Click(Sender: TObject);
begin
  if (messagebox(fVALE.Handle,'Desea ingresar un nuevo beneficiario','Información',
    mb_yesno+mb_iconquestion)=idyes)then
    begin
  //--- desabilito la tabla proveedor y ejecuto
  //--- el formulario de ingreso de proveedores
    junta.TPROV.Active:=false;
    Application.CreateForm(TFprove, FProve);
      Fprove.ShowModal;
      Fprove.Destroy;
  //---- nuevo proveedor
    JUNTA.TPROV.Active:=TRUE;
   END;
end;

procedure TFVALE.XiButton7Click(Sender: TObject);
begin
FVALE.Close;
end;

procedure TFVALE.XiButton8Click(Sender: TObject);
begin
 //-- permito la creación si por lo menos tiene
 //-- la cantidad solicitada
 if ((dbedit7.Text=''))then
    begin
     Messagebox(fVALE.Handle,'Ingrese los datos necesarios que se pide la jornalización NO es necesaria',
    'Informaciòn',MB_OK+mb_iconquestion);
     dbedit1.SetFocus;
    end
 else
    begin
      //-- crea la orden de pago y la muestra en
      //-- forma normal
      Application.CreateForm(TFORDPAGO, FORDPAGO);
      FORDPAGO.ShowModal;
      FORDPAGO.Destroy;
     end;
end;

procedure TFVALE.XiButton9Click(Sender: TObject);
begin
 //-- controlo que todos lo datos esten llenos
 //-- de lo contrario no imprime
   if ((dbedit9.Text='')or(dbedit1.Text='')or(dbedit3.Text='')
   or(junta.TCON.IsEmpty)or (dbedit7.Text=''))then
        begin
          Messagebox(fVALE.Handle,'Ingrese los datos necesarios que se pide la jornalización no es necesaria',
          'Informaciòn',MB_OK+mb_iconquestion);
          dbedit1.SetFocus;
        end
   else
       begin
       //-- ACTIVO LA TABLA JUNTA
        JUNTA.TJUNTA.Active:=TRUE;
        //- PREGUNTO SI DESEA IMPRIMIR Y SER REGISTRADO
          if(messagebox(fVALE.Handle,'Si imprime el vale se quedará registrado en el programa',
            'Información',mb_yesno+mb_iconinformation)=idyes) then
            begin
            //-- DESAPARESCO el boton de eliminar
            //-- E IMPRIMO
              XiButton6.Visible:=false;
            //-- preparo el reporte
            if(JUNTA.TVALE.FieldByName('JORNALIZACION').AsString<>'')then QRVALE.QRLabel27.Caption:='Jornalización'
                  else QRVALE.QRLabel27.Caption:='';
            QRVALE.QVALE.Active:=TRUE;
            QRVALE.QPROVEEDOR.Active:=TRUE;
            QRVALE.QCONCEPTO.Active:=TRUE;
            QRVALE.QR.Prepare;
            QRVALE.QR.Preview;
            QRVALE.QPROVEEDOR.Active:=FALSE;
            QRVALE.QCONCEPTO.Active:=FALSE;
            QRVALE.QVALE.Active:=FALSE;
            JUNTA.TJUNTA.Active:=FALSE;
            end;
       END;
end;

procedure TFVALE.DataSetDelete1Execute(Sender: TObject);
begin
//-- pregunto si no está en modo edit o insert
if(not (junta.TVALE.State in[dsedit,dsinsert])and
not (junta.TCON.State in [dsedit,dsinsert]))then
begin
//-- elimino los conceptos
//-- elimino el vale
qdelconcep.Prepare;
qdelconcep.ExecSQL;
junta.TVALE.Delete;
xibutton6.Visible:=false;
end;
end;

procedure TFVALE.DataSetDelete1Update(Sender: TObject);
begin
if((junta.TVALE.State in[dsedit,dsinsert])or
(junta.TCON.State in [dsedit,dsinsert]))then
Xibutton6.Enabled:=false
else
Xibutton6.Enabled:=true;
end;

END.





