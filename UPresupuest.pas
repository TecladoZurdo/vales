unit UPresupuest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, XiPanel, dxCore, dxButtons, StdCtrls, psvBasiclbl,
  DBActns, ActnList, XiButton, Mask, DBCtrls, ComCtrls,db;

type
  TFPresupuestaria = class(TForm)
    XiPanel1: TXiPanel;
    dxToolButton1: TdxToolButton;
    psvBasicLabel2: TpsvBasicLabel;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Panel1: TPanel;
    DBText5: TDBText;
    DBText4: TDBText;
    DBRadioGroup2: TDBRadioGroup;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    XiButton6: TXiButton;
    XiButton5: TXiButton;
    XiButton4: TXiButton;
    XiButton3: TXiButton;
    XiButton2: TXiButton;
    XiButton1: TXiButton;
    Siguiente: TXiButton;
    psvBasicLabel9: TpsvBasicLabel;
    psvBasicLabel8: TpsvBasicLabel;
    psvBasicLabel7: TpsvBasicLabel;
    psvBasicLabel6: TpsvBasicLabel;
    psvBasicLabel5: TpsvBasicLabel;
    psvBasicLabel4: TpsvBasicLabel;
    psvBasicLabel3: TpsvBasicLabel;
    psvBasicLabel10: TpsvBasicLabel;
    psvBasicLabel1: TpsvBasicLabel;
    dia: TDateTimePicker;
    DBText1: TDBText;
    DBNAME: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Anterior: TXiButton;
    procedure dxToolButton1Click(Sender: TObject);
    procedure XiPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure diaChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPresupuestaria: TFPresupuestaria;

implementation
 USES UNIT2,UNIT3,UPRES;
{$R *.dfm}

procedure TFPresupuestaria.dxToolButton1Click(Sender: TObject);
begin
fpresupuestaria.Close;
end;

procedure TFPresupuestaria.XiPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
RELEASECAPTURE;
PERFORM(WM_SYSCOMMAND,$F012,0);
end;

procedure TFPresupuestaria.FormCreate(Sender: TObject);
begin
 ///-- activo las tablas
 junta.TJUNTA.Active:=true;
 junta.TPresup.Active:=true;
 JUNTA.TPROV.Active:=TRUE;
 dia.Date:=date;
end;

procedure TFPresupuestaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 ///-- desactivo las tablas
 junta.TJUNTA.Active:=false;
 junta.TPresup.Active:=false;
 JUNTA.TPROV.Active:=FALSE;
end;

procedure TFPresupuestaria.diaChange(Sender: TObject);
begin
if(not (junta.TPresup.State in[dsEdit,dsInsert])) then
junta.TPresup.Edit;
JUNTA.TPresupFECHA.Value:=dia.Date;
end;

procedure TFPresupuestaria.Button1Click(Sender: TObject);
begin
if (messagebox(FPresupuestaria.Handle,'Desea ingresar un nuevo beneficiario','Información',
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

procedure TFPresupuestaria.Button2Click(Sender: TObject);
begin
QRPRESUPUESTO.QuickRep1.Preview;
end;

end.
