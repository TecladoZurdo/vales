unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFAcer = class(TForm)
    Memo1: TMemo;
    StaticText1: TStaticText;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcer: TFAcer;

implementation

{$R *.dfm}

procedure TFAcer.Button1Click(Sender: TObject);
begin
    FACER.Close;
end;

end.
