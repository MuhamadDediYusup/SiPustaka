unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, DB, ADODB, StdCtrls, GridsEh,
  DBGridEh, Mask, DBCtrls, IdBaseComponent, IdCoder, IdCoder3to4,
  IdCoderMIME, XPMan, Grids, DBGrids, acPNG, DBCtrlsEh;

type
  TForm3 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl9: TPanel;
    pnl10: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ds1: TDataSource;
    dbedtkode_buku: TDBEdit;
    dbedtkode_buku1: TDBEdit;
    dbedtkode_buku2: TDBEdit;
    dbedtkode_buku4: TDBEdit;
    dbedtkode_buku5: TDBEdit;
    dbedtkode_buku6: TDBEdit;
    pnl11: TPanel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    dbgrdh1: TDBGridEh;
    xpmnfst1: TXPManifest;
    DBEditJumlah: TDBEdit;
    edt1: TEdit;
    shp3: TShape;
    img10: TImage;
    img11: TImage;
    procedure lbl9Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure dbedtkode_bukuClick(Sender: TObject);
    procedure dbedtkode_bukuExit(Sender: TObject);
    procedure dbedtkode_buku1Click(Sender: TObject);
    procedure dbedtkode_buku1Exit(Sender: TObject);
    procedure dbedtkode_buku2Exit(Sender: TObject);
    procedure dbedtkode_buku2Click(Sender: TObject);
    procedure DBEditJumlahExit(Sender: TObject);
    procedure DBEditJumlahClick(Sender: TObject);
    procedure dbedtkode_buku4Exit(Sender: TObject);
    procedure dbedtkode_buku4Click(Sender: TObject);
    procedure dbedtkode_buku5Exit(Sender: TObject);
    procedure dbedtkode_buku5Click(Sender: TObject);
    procedure dbedtkode_buku6Exit(Sender: TObject);
    procedure dbedtkode_buku6Click(Sender: TObject);
    procedure img11Click(Sender: TObject);
    procedure img11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.lbl9Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.img2Click(Sender: TObject);
begin
  try
  with ADOTable1 do
begin
  dbedtkode_buku.Enabled := False;
  dbedtkode_buku1.Enabled := False;
  dbedtkode_buku2.Enabled := False;
  DBEditJumlah.Enabled := False;
  dbedtkode_buku4.Enabled := False;
  dbedtkode_buku5.Enabled := False;
  dbedtkode_buku6.Enabled := False;
  ADOTable1.Post;
  ShowMessage('Data Berhasil Disimpan');
  ADOTable1.Close;
  ADOTable1.Open;
  ADOTable1.Refresh;
end;
  except
  ShowMessage('Data Gagal Disimpan');
end;
end;

procedure TForm3.img3Click(Sender: TObject);
begin
  ADOTable1.Edit;
  dbedtkode_buku.Enabled := True;
  dbedtkode_buku1.Enabled := True;
  dbedtkode_buku2.Enabled := True;
  DBEditJumlah.Enabled := True;
  dbedtkode_buku4.Enabled := True;
  dbedtkode_buku5.Enabled := True;
  dbedtkode_buku6.Enabled := True;
  dbedtkode_buku.SetFocus;
end;

procedure TForm3.img7Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.img5Click(Sender: TObject);
var hapus:string;
begin
hapus:='Apakah Data Tersebut Akan di Hapus ?';
if (application.MessageBox(Pchar(hapus),'Peringatan',MB_YESNO or MB_ICONQUESTION)=IDYES) then adotable1.Delete;
end;

procedure TForm3.img4Click(Sender: TObject);
begin
  dbedtkode_buku.Enabled := True;
  dbedtkode_buku1.Enabled := True;
  dbedtkode_buku2.Enabled := True;
  DBEditJumlah.Enabled := True;
  dbedtkode_buku4.Enabled := True;
  dbedtkode_buku5.Enabled := True;
  dbedtkode_buku6.Enabled := True;
  dbedtkode_buku.SetFocus;
  ADOTable1.Append;
  ShowMessage('Silahkan Masukan Data');

end;

procedure TForm3.img6Click(Sender: TObject);
begin
  dbedtkode_buku.Enabled := False;
  dbedtkode_buku1.Enabled := False;
  dbedtkode_buku2.Enabled := False;
  DBEditJumlah.Enabled := False;
  dbedtkode_buku4.Enabled := False;
  dbedtkode_buku5.Enabled := False;
  dbedtkode_buku6.Enabled := False;
  ADOTable1.Cancel;
end;


procedure TForm3.dbedtkode_bukuClick(Sender: TObject);
begin
pnl4.Color := clWhite;
dbedtkode_buku.Color := clwhite;
dbedtkode_buku.Font.Color := clBlack;
end;

procedure TForm3.dbedtkode_bukuExit(Sender: TObject);
begin
pnl4.Color := $46312F;
dbedtkode_buku.Color := $46312F;
dbedtkode_buku.Font.Color := clWhite;
end;

procedure TForm3.dbedtkode_buku1Click(Sender: TObject);
begin
pnl5.Color := clWhite;
dbedtkode_buku1.Color := clWhite;
dbedtkode_buku1.Font.Color := clBlack;
end;

procedure TForm3.dbedtkode_buku1Exit(Sender: TObject);
begin
pnl5.Color := $46312F;
dbedtkode_buku1.Color := $46312F;
dbedtkode_buku1.Font.Color := clWhite;
end;

procedure TForm3.dbedtkode_buku2Exit(Sender: TObject);
begin
pnl6.Color := $46312F;
dbedtkode_buku2.Color := $46312F;
dbedtkode_buku2.Font.Color := clWhite;
end;

procedure TForm3.dbedtkode_buku2Click(Sender: TObject);
begin
pnl6.Color := clWhite;
dbedtkode_buku2.Color := clWhite;
dbedtkode_buku2.Font.Color := clBlack;
end;

procedure TForm3.DBEditJumlahExit(Sender: TObject);
begin
pnl7.Color := $46312F;
DBEditJumlah.Color := $46312F;
DBEditJumlah.Font.Color := clWhite;
end;

procedure TForm3.DBEditJumlahClick(Sender: TObject);
begin
pnl7.Color := clWhite;
DBEditJumlah.Color := clWhite;
DBEditJumlah.Font.Color := clBlack;
end;

procedure TForm3.dbedtkode_buku4Exit(Sender: TObject);
begin
pnl8.Color := $46312F;
dbedtkode_buku4.Color := $46312F;
dbedtkode_buku4.Font.Color := clWhite;
end;

procedure TForm3.dbedtkode_buku4Click(Sender: TObject);
begin
pnl8.Color := clWhite;
dbedtkode_buku4.Color := clWhite;
dbedtkode_buku4.Font.Color := clBlack;
end;

procedure TForm3.dbedtkode_buku5Exit(Sender: TObject);
begin
pnl9.Color := $46312F;
dbedtkode_buku5.Color := $46312F;
dbedtkode_buku5.Font.Color := clWhite;
end;

procedure TForm3.dbedtkode_buku5Click(Sender: TObject);
begin
pnl9.Color := clWhite;
dbedtkode_buku5.Color := clWhite;
dbedtkode_buku5.Font.Color := clBlack;
end;

procedure TForm3.dbedtkode_buku6Exit(Sender: TObject);
begin
pnl10.Color := $46312F;
dbedtkode_buku6.Color := $46312F;
dbedtkode_buku6.Font.Color := clWhite;
end;

procedure TForm3.dbedtkode_buku6Click(Sender: TObject);
begin
pnl10.Color := clWhite;
dbedtkode_buku6.Color := clWhite;
dbedtkode_buku6.Font.Color := clBlack;
end;

procedure TForm3.img11Click(Sender: TObject);
begin
 if not ADOTable1.Locate('kode_buku',edt1.Text,[])=true then
  ShowMessage ('Data Yang Anda Cari Tidak Ditemukan');
  edt1.Text:='Cari Data';
end;

procedure TForm3.img11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
img10.Visible:=True;
end;

procedure TForm3.img10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
img10.Visible:=False;
end;

procedure TForm3.img10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
img10.Visible:=False;
end;

end.
