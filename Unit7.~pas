unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,unit2, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFREGJP = class(TForm)
    DBEdit1: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBEdit2: TDBEdit;
    StaticText3: TStaticText;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit4: TDBEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    DBEdit8: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FREGJP: TFREGJP;
  bandera:boolean;
  bander:boolean;
implementation

uses Unit1;

{$R *.dfm}

procedure TFREGJP.FormCreate(Sender: TObject);
begin
 //--- inicio las banderas de paso
 //---- bandera permite escribir en
 //---- toda la tabla
bandera:=false;
 //-- ???????
bander:=false;
 //---- activo la tabla junta
junta.TJUNTA.Active:=true;
 //---- hago a los dbedit 4 y 5
 //---- solo de lectura para evitar que
 //---- modifiquen el numero que ya está
 //---- ingresado
fREGJP.DBEdit4.ReadOnly:=true;
fREGJP.DBEdit5.ReadOnly:=true;
 //--- pregunto si junta está basia
 //--- si es así abilito para el ingreso
 //--- y doy  permiso de escribir en
 //--- toda la tabla
if(fprincipal.basioexpor) then
begin
junta.TJUNTA.Edit;
fREGJP.DBEdit4.ReadOnly:=false;
fREGJP.DBEdit5.ReadOnly:=false;
fREGJP.BitBtn2.Enabled:=false;
bandera:=true;
end;
end;

procedure TFREGJP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if(junta.TJUNTA.FieldByName('junta').AsString='') then
begin
 messagebox(fREGJP.Handle,'Ingrese por lo menos un nombre a la junta y el numero de inicio de los vales',
 'Información',mb_ok+mb_iconquestion);
end
else junta.TJUNTA.Active:=false;
end;

procedure TFREGJP.BitBtn2Click(Sender: TObject);
begin
bandera:=true;
junta.TJUNTA.Edit;
fREGJP.DBEdit1.SetFocus;
end;

procedure TFREGJP.BitBtn1Click(Sender: TObject);
begin
if(bandera) then
 begin
    if((fREGJP.DBEdit4.EditText='')or
        (fREGJP.DBEdit1.EditText='')or
        (fREGJP.DBEdit5.EditText=''))then
      begin
      Messagebox(fREGJP.Handle,'Ingrese un número de inicio para los vales las ordenes de pago y el nombre de la Junta Parroquial',
       'Error de ingreso de datos',MB_ok+MB_iconerror);
      end
  else
    begin
      if((fREGJP.DBEdit4.EditText='0')or (fREGJP.DBEdit5.EditText='0')) then
        begin
          Messagebox(fREGJP.Handle,'El número de inicio debe ser diferente de Cero',
          'Error de ingreso de datos',MB_ok+MB_iconerror);
        end
       else
         begin
          if(fPrincipal.basioexpor)then
            begin
              if(Messagebox(fREGJP.Handle,'Con el número ingresado se iniciarán los registros de los vales y las ordenes de pago',
              'Advertencia de ingreso de datos',MB_YESNO+MB_iconinformation)=IDYES)then
                begin
                  junta.TJUNTA.Post;
                  fREGJP.Close;
                  fPrincipal.basioexpor:=false;
                end
            end
          else
            begin
             junta.TJUNTA.Post;
             fREGJP.Close;
            end
        end;
    end;
 end
else fREGJP.Close;
end;

procedure TFREGJP.DBEdit4Change(Sender: TObject);
begin
bander:=true;
end;

end.
