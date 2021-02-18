unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, Buttons, acPNG, ExtCtrls, jpeg, DB, ADODB;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    img3: TImage;
    img4: TImage;
    img2: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    shp1: TShape;
    shp2: TShape;
    pnl2: TPanel;
    edt1: TEdit;
    edt2: TEdit;
    img1: TImage;
    shp3: TShape;
    img5: TImage;
    shp4: TShape;
    img6: TImage;
    shp5: TShape;
    ADOConnection1: TADOConnection;
    qry1: TADOQuery;
    img7: TImage;
    img8: TImage;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure edt1Click(Sender: TObject);
    procedure edt1Exit(Sender: TObject);
    procedure edt2Click(Sender: TObject);
    procedure edt2Exit(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure img8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit9, Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Form9.Show;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
form5.Show;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
Form6.show;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.edt1Click(Sender: TObject);
begin
shp1.Brush.Color := clwhite;
edt1.Color := clWhite;
edt1.Text := '';
end;

procedure TForm1.edt1Exit(Sender: TObject);
begin
shp1.Brush.Color := $E9E7E6;
edt1.Color := $E9E7E6;
end;

procedure TForm1.edt2Click(Sender: TObject);
begin
shp2.Brush.Color := clWhite;
edt2.Color := clWhite;
edt2.Text := '';
end;

procedure TForm1.edt2Exit(Sender: TObject);
begin
shp2.Brush.Color := $E9E7E6;
edt2.Color := $E9E7E6;
end;

procedure TForm1.img2Click(Sender: TObject);
begin
with qry1 do begin
  Close;
  SQL.Clear;
  SQL.Add('select * from login where username='+QuotedStr(edt1.Text));
  Open;
end;
if qry1.RecordCount=0 then
  Application.MessageBox('Kok Kosong Sih Username dan Passwordnya','PERINGATAN')
else
begin
  if qry1.FieldByName('Password').AsString<>edt2.text then
  Application.MessageBox('Pastikan Password atau Usename benar ya','PERINGATAN')
else
begin
  form1.Hide;
  Form2.Show;
  Application.MessageBox ('Selamat Datang Silahkan SIPUSTAKA UJB !!', 'Yeay')
  end
end;
end;

procedure TForm1.img7Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.img8Click(Sender: TObject);
begin
Application.Minimize;
end;

end.
