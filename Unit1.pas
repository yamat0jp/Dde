unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DdeMan, Vcl.Buttons;

type
  TForm3 = class(TForm)
    DdeClientConv1: TDdeClientConv;
    Button1: TButton;
    DdeClientItem1: TDdeClientItem;
    ListBox1: TListBox;
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    procedure DdeClientItem1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  pong: PAnsiChar;
begin
  pong := DdeClientConv1.RequestData('DdeServerItem1');
  ListBox1.Items.Add('(Request:)'+pong);
  StrDispose(pong);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  DdeClientConv1.PokeData('DdeServerItem1', 'Client!');
end;

procedure TForm3.DdeClientItem1Change(Sender: TObject);
begin
  ListBox1.Items.Add(DdeClientItem1.Text);
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  if SpeedButton1.Down then
    DdeClientConv1.OpenLink
  else
    DdeClientConv1.CloseLink;
end;

end.
