unit server;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DdeMan, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    DdeServerItem1: TDdeServerItem;
    Edit1: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    Timer1: TTimer;
    procedure DdeServerItem1PokeData(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.DdeServerItem1PokeData(Sender: TObject);
begin
  ListBox1.Items.Add('(ClientPoke:)'+DdeServerItem1.Text);
  DdeServerItem1.Text:='(ServerMessage:)pong';
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  DdeServerItem1.Text:=TimeToStr(Time);
end;

end.
