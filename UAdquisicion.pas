unit UAdquisicion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ExtCtrls,  StdCtrls,
  psvBasiclbl, DBCtrls,  ComCtrls,
  Mask,db, DBActns, ActnList, NxCellSource;

type
  TFAdquisicion = class(TForm)
    Panel1: TPanel;
    ScrollBox2: TScrollBox;
    XPREMU: TPanel;
    psvBasicLabel28: TpsvBasicLabel;
    psvBasicLabel27: TpsvBasicLabel;
    psvBasicLabel26: TpsvBasicLabel;
    psvBasicLabel25: TpsvBasicLabel;
    psvBasicLabel24: TpsvBasicLabel;
    psvBasicLabel23: TpsvBasicLabel;
    psvBasicLabel22: TpsvBasicLabel;
    psvBasicLabel21: TpsvBasicLabel;
    psvBasicLabel20: TpsvBasicLabel;
    psvBasicLabel19: TpsvBasicLabel;
    DBEdit27: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    XPRETEN: TPanel;
    psvBasicLabel35: TpsvBasicLabel;
    psvBasicLabel34: TpsvBasicLabel;
    psvBasicLabel33: TpsvBasicLabel;
    psvBasicLabel32: TpsvBasicLabel;
    psvBasicLabel31: TpsvBasicLabel;
    psvBasicLabel30: TpsvBasicLabel;
    psvBasicLabel29: TpsvBasicLabel;
    DBEdit25: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    XPVALFACT: TPanel;
    psvBasicLabel9: TpsvBasicLabel;
    psvBasicLabel7: TpsvBasicLabel;
    psvBasicLabel18: TpsvBasicLabel;
    psvBasicLabel17: TpsvBasicLabel;
    psvBasicLabel16: TpsvBasicLabel;
    psvBasicLabel15: TpsvBasicLabel;
    psvBasicLabel14: TpsvBasicLabel;
    psvBasicLabel13: TpsvBasicLabel;
    psvBasicLabel12: TpsvBasicLabel;
    psvBasicLabel11: TpsvBasicLabel;
    psvBasicLabel10: TpsvBasicLabel;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    ScrollBox1: TScrollBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel2: TPanel;
    DBMemo2: TDBMemo;
    Label3: TLabel;
    Button5: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Button1: TButton;
    dia: TDateTimePicker;
    DBNAME: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Label4: TLabel;
    Label5: TLabel;
    Button6: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure diaChange(Sender: TObject);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAdquisicion: TFAdquisicion;

implementation
  uses unit2,unit3,UQRADQUI;
{$R *.dfm}

procedure TFAdquisicion.FormCreate(Sender: TObject);
begin
// --- actualizo la fecha
dia.Date:=Date;
//----- activo la tabla porveedores
junta.TPROV.Active:=true;
//----- activo la tabla factura
junta.TFactura.Active:=true;
junta.TJUNTA.Active:=true;
end;

procedure TFAdquisicion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //-- permito que las tablas usadas se desactiven y
 //-- a la siguiente llamada se inician desde el
 //-- principio las desactivo en orden
 //-- regresivo para que se borren de lo contrario
 //-- se almacena la información
   junta.TPROV.Active:=false;
   junta.TFactura.Active:=false;
   junta.TJUNTA.Active:=false;
end;

procedure TFAdquisicion.diaChange(Sender: TObject);
begin
if(not (junta.TFactura.State in[dsEdit,dsInsert])) then
junta.TFactura.Edit;
JUNTA.TFacturafecha.Value:=dia.Date;
end;

procedure TFAdquisicion.Label1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
RELEASECAPTURE;
PERFORM(WM_SYSCOMMAND,$F012,0);
end;

procedure TFAdquisicion.Button1Click(Sender: TObject);
begin
FADQUISICION.Close;
end;

procedure TFAdquisicion.Button2Click(Sender: TObject);
begin
XPVALFACT.Visible:=TRUE;
XPREMU.Visible:=FALSE;
XPRETEN.Visible:=FALSE;
end;

procedure TFAdquisicion.Button3Click(Sender: TObject);
begin
XPVALFACT.Visible:=FALSE;
XPREMU.Visible:=TRUE;
XPRETEN.Visible:=FALSE;
end;

procedure TFAdquisicion.Button4Click(Sender: TObject);
begin
XPVALFACT.Visible:=FALSE;
XPREMU.Visible:=FALSE;
XPRETEN.Visible:=TRUE;
end;

procedure TFAdquisicion.Button5Click(Sender: TObject);
begin
QRADQUISICION.QPROVEE.Active:=TRUE;
QRADQUISICION.QuickRep1.Preview;
QRADQUISICION.QPROVEE.Active:=FALSE;
end;

procedure TFAdquisicion.Button6Click(Sender: TObject);
begin
if (messagebox(fadquisicion.Handle,'Desea ingresar un nuevo beneficiario','Información',
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

end.
