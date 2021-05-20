unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DBCtrls, Grids, DBGrids, DB,
  ADODB, StdCtrls, RTFLabel, AVLockGold;

type
  TFPrincipal = class(TForm)
    Imagen: TImage;
    SEGURO: TAVLockGold;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    MainMenu1: TMainMenu;
    Inicio1: TMenuItem;
    NuevoVale1: TMenuItem;
    NuevoProveedor1: TMenuItem;
    BienesyoSer1: TMenuItem;
    CertificacinPresupuestaria1: TMenuItem;
    Consultas1: TMenuItem;
    Valesexistentes1: TMenuItem;
    Configuraciones1: TMenuItem;
    RegistrarJunta1: TMenuItem;
    AcercaDe1: TMenuItem;
    Salir1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ImagenMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure NuevoVale1Click(Sender: TObject);
    procedure NuevoProveedor1Click(Sender: TObject);
    procedure BienesyoSer1Click(Sender: TObject);
    procedure CertificacinPresupuestaria1Click(Sender: TObject);
    procedure Valesexistentes1Click(Sender: TObject);
    procedure RegistrarJunta1Click(Sender: TObject);
    procedure AcercaDe1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
  private
    { Private declarations }
  public
   basioexpor:boolean;
   basioexpor2:boolean;
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;
  basio:boolean;
implementation
  USES unit7,UNIT11,UNIT3,unit4,unit2, UAdquisicion, UPresupuest;
{$R *.dfm}

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
IF(NOT SEGURO.execute)THEN APPLICATION.Terminate;
basio:=false;
junta.TJUNTA.Active:=true;
if(junta.TJUNTA.IsEmpty) then
BEGIN
junta.TJUNTA.Active:=false;
basio:=true;
fPrincipal.basioexpor:=basio;
fPrincipal.basioexpor2:=basio;

end;
end;

procedure TFPrincipal.ImagenMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
RELEASECAPTURE;
PERFORM(WM_SYSCOMMAND,$F012,0);
end;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
application.Minimize;
end;

procedure TFPrincipal.Button2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TFPrincipal.NuevoVale1Click(Sender: TObject);
begin
Application.CreateForm(TFVALE, FVALE);
//-- pongo en insert y la fechaactual
JUNTA.TVALE.Insert;
//-- PONGO LA FECHA ACTUAL
JUNTA.TVALEfecha.Value:=fvale.dia.Date;
FVALE.ShowModal;
FVALE.Destroy;
end;

procedure TFPrincipal.NuevoProveedor1Click(Sender: TObject);
begin
Application.CreateForm(Tfprove, Fprove);
Fprove.ShowModal;
Fprove.Destroy;
end;

procedure TFPrincipal.BienesyoSer1Click(Sender: TObject);
begin
Application.CreateForm(TFAdquisicion, FAdquisicion);
Fadquisicion.showmodal;
fadquisicion.Destroy;
end;

procedure TFPrincipal.CertificacinPresupuestaria1Click(Sender: TObject);
begin
Application.CreateForm(TFPresupuestaria, FPresupuestaria);
fpresupuestaria.ShowModal;
fpresupuestaria.Destroy;
end;

procedure TFPrincipal.Valesexistentes1Click(Sender: TObject);
begin
Application.CreateForm(TFVALE, FVALE);
//---- oculto borrar y muestro el navegador y un buscador
//-- por medio de numero de vale
fvale.XiButton6.Visible:=false;
FVALE.CONBORRAR.Visible:=FALSE;
//----
fvale.Anterior.Visible:=true;
fvale.Siguiente.Visible:=true;
//------------------------
FVALE.ShowModal;
FVALE.Destroy;
end;

procedure TFPrincipal.RegistrarJunta1Click(Sender: TObject);
begin
Application.CreateForm(TFREGJP, FREGJP);
fREGJP.ShowModal;
fREGJP.Destroy;
end;

procedure TFPrincipal.AcercaDe1Click(Sender: TObject);
begin
Facer.ShowModal;
Facer.Close;
end;

procedure TFPrincipal.Salir1Click(Sender: TObject);
begin
application.Terminate;
end;

end.
