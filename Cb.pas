unit Cb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Clipbrd, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Image2: TImage;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if ClipBoard.HasFormat(CF_Text)
 then Memo1.Text:=ClipBoard.AsText
 else MessageDlg('В буфере обмена не текст!',mtError,[mbOK],0);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Memo2.SelectAll;
 Memo2.CopyToClipboard;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 ClipBoard.Open;
 ClipBoard.Assign(Image1.Picture);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 if ClipBoard.HasFormat(CF_Picture)
 then Image2.Picture.Assign(ClipBoard)
 else Image2.Picture.Assign(nil);
end;

end.
