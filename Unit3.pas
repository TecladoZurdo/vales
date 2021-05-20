unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UNIT2, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, ActnList,
  DBActns;

type
  TFProve = class(TForm)
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetInsert1: TDataSetInsert;
    Panel1: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProve: TFProve;

implementation

{$R *.dfm}

procedure TFProve.FormCreate(Sender: TObject);
begin
Junta.TPROV.Active:=true;
end;

procedure TFProve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
junta.TPROV.Close;
Junta.TPROV.Active:=false;
end;

procedure TFProve.BitBtn3Click(Sender: TObject);
begin
fProve.Close;
end;

end.
