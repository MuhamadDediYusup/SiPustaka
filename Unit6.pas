unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, DBGridEhGrouping, DB, ADODB, XPMan, StdCtrls,
  DBCtrlsEh, GridsEh, ExtCtrls, Mask, DBLookupEh, acPNG;

type
  TForm6 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    img1: TImage;
    img2: TImage;
    lbl9: TLabel;
    pnl4: TPanel;
    cbbNama1: TDBLookupComboboxEh;
    pnl6: TPanel;
    cbbNama: TDBLookupComboboxEh;
    pnl7: TPanel;
    edtKode_buku: TDBEditEh;
    pnl8: TPanel;
    shp1: TShape;
    edtTgl_pinjam: TDBDateTimeEditEh;
    pnl9: TPanel;
    shp2: TShape;
    edtTanggal_kembali: TDBDateTimeEditEh;
    pnl11: TPanel;
    pnl3: TPanel;
    edtJumlah_pinjam: TDBEditEh;
    pnl2: TPanel;
    shp3: TShape;
    img10: TImage;
    img11: TImage;
    dbgrdh1: TDBGridEh;
    edt1: TEdit;
    ADOConnection1: TADOConnection;
    ds1: TDataSource;
    xpmnfst1: TXPManifest;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable1: TADOTable;
    wdstrngfldADOTable1Id_Anggota: TWideStringField;
    wdstrngfldADOTable1Nama: TWideStringField;
    wdstrngfldADOTable1Judul_buku: TWideStringField;
    wdstrngfldADOTable1Kode_buku: TWideStringField;
    intgrfldADOTable1Jumlah_pinjam: TIntegerField;
    dtmfldADOTable1Tgl_pinjam: TDateTimeField;
    dtmfldADOTable1TglHrsKembali: TDateTimeField;
    dtmfldADOTable1TanggalKembali: TDateTimeField;
    wdstrngfldADOTable1Denda: TWideStringField;
    pnl5: TPanel;
    shp5: TShape;
    edtTglHrsKembali: TDBDateTimeEditEh;
    lbl3: TLabel;
    pnl10: TPanel;
    edtKode_buku1: TDBEditEh;
    lbl8: TLabel;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img3: TImage;
    procedure img2Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure edtTglHrsKembaliButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure edtTglHrsKembaliClick(Sender: TObject);
    procedure edtTglHrsKembaliExit(Sender: TObject);
    procedure edtKode_buku1Click(Sender: TObject);
    procedure edtKode_buku1Exit(Sender: TObject);
    procedure img11Click(Sender: TObject);
    procedure edt1Click(Sender: TObject);
    procedure img10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.img2Click(Sender: TObject);
begin
  try
  with ADOTable1 do
begin
  edtTglHrsKembali.Enabled := False;
  edtKode_buku1.Enabled := False;
  ADOTable1.Post;
  ADOTable1.UpdateStatus;
  ShowMessage('Data Berhasil Disimpan');
end;
  except
end;
end;
procedure TForm6.img3Click(Sender: TObject);
begin
  edtTglHrsKembali.Enabled := True;
  edtKode_buku1.Enabled := True;
  ADOTable1.Edit;
end;

procedure TForm6.img4Click(Sender: TObject);
begin
  edtTglHrsKembali.Visible := True;
  edtKode_buku1.Visible := True;
  ADOTable1.Append;
  ShowMessage('Silahkan Tambahkan Data');
  edtTglHrsKembali.SetFocus;
end;

procedure TForm6.img5Click(Sender: TObject);
var hapus:string;
begin
hapus:='Apakah Data Tersebut Akan di Hapus ?';
if (application.MessageBox(Pchar(hapus),'Peringatan',MB_YESNO or MB_ICONQUESTION)=IDYES) then adotable1.Delete;
end;

procedure TForm6.img6Click(Sender: TObject);
begin
ADOTable1.Cancel;
end;

procedure TForm6.img7Click(Sender: TObject);
begin
form6.Close;
end;

procedure TForm6.edtTglHrsKembaliButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
shp5.Visible := True;
end;

procedure TForm6.edtTglHrsKembaliClick(Sender: TObject);
begin
shp5.Visible := True;
end;

procedure TForm6.edtTglHrsKembaliExit(Sender: TObject);
begin
shp5.Visible := False;
end;

procedure TForm6.edtKode_buku1Click(Sender: TObject);
begin
pnl10.Color := clWhite;
edtKode_buku1.Color := clWhite;
edtKode_buku1.Font.Color := clBlack;
end;

procedure TForm6.edtKode_buku1Exit(Sender: TObject);
begin
pnl10.Color := $46312F;
edtKode_buku1.Color := $46312F;
edtKode_buku1.Font.Color := clWhite;
end;

procedure TForm6.img11Click(Sender: TObject);
begin
 if not ADOTable1.Locate('id_anggota',edt1.Text,[])=true then
  ShowMessage ('Data Yang Anda Cari Tidak Ditemukan');
  edt1.Text:='Cari Data';
end;

procedure TForm6.edt1Click(Sender: TObject);
begin
edt1.Text :='';
edt1.Font.Color := clBlack;
end;

procedure TForm6.img10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
img10.Visible:=True;
end;

procedure TForm6.img10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
img10.Visible := False;
end;

procedure TForm6.img10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
img10.Visible := False;
end;

end.

