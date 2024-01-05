unit client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DdeMan, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DdeClientConv1: TDdeClientConv;
    DdeClientItem1: TDdeClientItem;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DdeClientItem1Change(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  DdeClientConv1.SetLink('Edge','WWW_GetWindowInfo');
  DdeClientItem1.Text:=Edit1.Text;
end;

procedure TForm1.DdeClientItem1Change(Sender: TObject);
begin
  Label1.Caption:=DdeClientItem1.Text;
end;

end.
