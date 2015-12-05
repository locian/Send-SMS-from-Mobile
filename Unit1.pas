unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Helpers.Android,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Net,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Telephony, Androidapi.Helpers, FMX.Controls.Presentation;
type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  smsManager: JSmsManager;
  smsTo: JString;
  target,messagestr:string;
begin
  messagestr:='MESSAGE goes here';
  target:='mobile number goes here';
  smsManager:= TJSmsManager.JavaClass.getDefault;
  smsTo:= StringToJString(target);
  smsManager.sendTextMessage(smsTo, nil, StringToJString(messagestr), nil, nil);
end;

end.
