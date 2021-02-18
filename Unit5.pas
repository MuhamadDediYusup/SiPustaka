unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, XPMan, DB, ADODB, GridsEh, DBGridEh, StdCtrls,
  Mask, DBCtrls, acPNG, ExtCtrls, DBCtrlsEh, DBLookupEh;

type
  TForm5 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl9: TPanel;
    pnl11: TPanel;
    pnl2: TPanel;
    lbl9: TLabel;
    pnl3: TPanel;
    ADOConnection1: TADOConnection;
    ds1: TDataSource;
    xpmnfst1: TXPManifest;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    cbbNama1: TDBLookupComboboxEh;
    edtid_anggota: TDBEditEh;
    cbbNama: TDBLookupComboboxEh;
    edtTanggal_kembali: TDBDateTimeEditEh;
    ADOTable1: TADOTable;
    edtKode_buku: TDBEditEh;
    edtJumlah_pinjam: TDBEditEh;
    edtTgl_pinjam: TDBDateTimeEditEh;
    wdstrngfldADOTable1Id_Anggota: TWideStringField;
    wdstrngfldADOTable1Nama: TWideStringField;
    wdstrngfldADOTable1Judul_buku: TWideStringField;
    wdstrngfldADOTable1Kode_buku: TWideStringField;
    intgrfldADOTable1Jumlah_pinjam: TIntegerField;
    dtmfldADOTable1Tgl_pinjam: TDateTimeField;
    dtmfldADOTable1TglHrsKembali: TDateTimeField;
    dtmfldADOTable1TanggalKembali: TDateTimeField;
    wdstrngfldADOTable1Denda: TWideStringField;
    shp1: TShape;
    shp2: TShape;
    dbgrdh1: TDBGridEh;
    shp3: TShape;
    img10: TImage;
    img11: TImage;
    edt1: TEdit;
    procedure img4Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure edtTgl_pinjamButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure cbbNama1ButtonDown(Sender: TObject; TopButton: Boolean;
      var AutoRepeat, Handled: Boolean);
    procedure cbbNama1Exit(Sender: TObject);
    procedure cbbNama1Click(Sender: TObject);
    procedure edtid_anggotaClick(Sender: TObject);
    procedure edtid_anggotaExit(Sender: TObject);
    procedure cbbNamaButtonDown(Sender: TObject; TopButton: Boolean;
      var AutoRepeat, Handled: Boolean);
    procedure cbbNamaClick(Sender: TObject);
    procedure cbbNamaExit(Sender: TObject);
    procedure edtKode_bukuExit(Sender: TObject);
    procedure edtKode_bukuClick(Sender: TObject);
    procedure edtJumlah_pinjamClick(Sender: TObject);
    procedure edtJumlah_pinjamExit(Sender: TObject);
    procedure edtTgl_pinjamButtonDown(Sender: TObject; TopButton: Boolean;
      var AutoRepeat, Handled: Boolean);
    procedure edtTgl_pinjamClick(Sender: TObject);
    procedure edtTgl_pinjamExit(Sender: TObject);
    procedure edtTanggal_kembaliExit(Sender: TObject);
    procedure edtTanggal_kembaliClick(Sender: TObject);
    procedure edtTanggal_kembaliButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure img11Click(Sender: TObject);
    procedure img11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.img4Click(Sender: TObject);
begin
  with ADOTable1 do
begin
  cbbNama1.Enabled := True;
  edtid_anggota.Enabled := True;
  cbbNama.Enabled := True;
  edtKode_buku.Enabled := True;
  edtJumlah_pinjam.Enabled := True;
  edtTgl_pinjam.Enabled := True;
  edtTanggal_kembali.Enabled := True;
  cbbNama1.SetFocus;
  ADOTable1.Append;
  ShowMessage('Silahkan Tambahkan Data');
end;
end;

procedure TForm5.img2Click(Sender: TObject);
begin
  try
  with ADOTable1 do
begin
  cbbNama1.Enabled := False;
  edtid_anggota.Enabled := False;
  cbbNama.Enabled := False;
  edtKode_buku.Enabled := False;
  edtJumlah_pinjam.Enabled := False;
  edtTgl_pinjam.Enabled := False;
  edtTanggal_kembali.Enabled := False;
  ADOTable1.Post;
  ADOTable1.UpdateStatus;
  ShowMessage('Data Berhasil Disimpan');
end;
  except
  ShowMessage('Data Gagal Disimpan');
end;
end;

procedure TForm5.img3Click(Sender: TObject);
begin
  cbbNama1.Enabled := True;
  edtid_anggota.Enabled := True;
  cbbNama.Enabled := True;
  edtKode_buku.Enabled := True;
  edtJumlah_pinjam.Enabled := True;
  edtTgl_pinjam.Enabled := True;
  edtTanggal_kembali.Enabled := True;
  ADOTable1.Edit;
  cbbNama1.SetFocus;
end;

procedure TForm5.img5Click(Sender: TObject);
var hapus:string;
begin
hapus:='Apakah Data Tersebut Akan di Hapus ?';
if (application.MessageBox(Pchar(hapus),'Peringatan',MB_YESNO or MB_ICONQUESTION)=IDYES) then adotable1.Delete;
end;

procedure TForm5.img6Click(Sender: TObject);
begin
  ADOTable1.Cancel;
  cbbNama1.Enabled := False;
  edtid_anggota.Enabled := False;
  cbbNama.Enabled := False;
  edtKode_buku.Enabled := False;
  edtJumlah_pinjam.Enabled := False;
  edtTgl_pinjam.Enabled := False;
  edtTanggal_kembali.Enabled := False;
end;

procedure TForm5.img7Click(Sender: TObject);
begin
Form5.Close;
end;

procedure TForm5.edtTgl_pinjamButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
edtTgl_pinjam.Font.Color := clwhite;
end;

procedure TForm5.cbbNama1ButtonDown(Sender: TObject; TopButton: Boolean;
  var AutoRepeat, Handled: Boolean);
begin
pnl4.Color := clWhite;
cbbNama1.Color := clWhite;
cbbNama1.Font.Color := clBlack;
end;

procedure TForm5.cbbNama1Exit(Sender: TObject);
begin
pnl4.Color := $46312F;
cbbNama1.Color := $46312F;
cbbNama1.Font.Color := clWhite;
end;

procedure TForm5.cbbNama1Click(Sender: TObject);
begin
pnl4.Color := clWhite;
cbbNama1.Color := clWhite;
cbbNama1.Font.Color := clBlack;
end;

procedure TForm5.edtid_anggotaClick(Sender: TObject);
begin
pnl5.Color := clwhite;
edtid_anggota.Color := clWhite;
edtid_anggota.Font.Color := clBlack;
end;

procedure TForm5.edtid_anggotaExit(Sender: TObject);
begin
pnl5.Color := $46312F;
edtid_anggota.Color := $46312F;
edtid_anggota.Font.Color := clWhite;
end;

procedure TForm5.cbbNamaButtonDown(Sender: TObject; TopButton: Boolean;
  var AutoRepeat, Handled: Boolean);
begin
pnl6.Color := clWhite;
cbbNama.Color := clwhite;
cbbNama.Font.Color := clBlack;
end;

procedure TForm5.cbbNamaClick(Sender: TObject);
begin
pnl6.Color := clWhite;
cbbNama.Color := clwhite;
cbbNama.Font.Color := clBlack;
end;

procedure TForm5.cbbNamaExit(Sender: TObject);
begin
pnl6.Color := $46312F;
cbbNama.Color := $46312F;
cbbNama.Font.Color := clWhite;
end;

procedure TForm5.edtKode_bukuExit(Sender: TObject);
begin
pnl7.Color := $46312F;
edtKode_buku.Color := $46312F;
edtKode_buku.Font.Color := clWhite;
end;

procedure TForm5.edtKode_bukuClick(Sender: TObject);
begin
pnl7.Color := clWhite;
edtKode_buku.Color := clWhite;
edtKode_buku.Font.Color := clBlack;
end;

procedure TForm5.edtJumlah_pinjamClick(Sender: TObject);
begin
pnl3.Color := clWhite;
edtJumlah_pinjam.Color := clWhite;
edtJumlah_pinjam.Font.Color := clBlack;
end;

procedure TForm5.edtJumlah_pinjamExit(Sender: TObject);
begin
pnl3.Color := $46312F;
edtJumlah_pinjam.Color := $46312F;
edtJumlah_pinjam.Font.Color := clWhite;
end;

procedure TForm5.edtTgl_pinjamButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
shp1.Visible := True;
end;

procedure TForm5.edtTgl_pinjamClick(Sender: TObject);
begin
shp1.Visible := True;
end;

procedure TForm5.edtTgl_pinjamExit(Sender: TObject);
begin
shp1.Visible := False;
end;

procedure TForm5.edtTanggal_kembaliExit(Sender: TObject);
begin
shp2.Visible := False;
end;

procedure TForm5.edtTanggal_kembaliClick(Sender: TObject);
begin
shp2.Visible := True;
end;

procedure TForm5.edtTanggal_kembaliButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
shp2.Visible := True;
end;

procedure TForm5.img11Click(Sender: TObject);
begin
 if not ADOTable1.Locate('id_anggota',edt1.Text,[])=true then
  ShowMessage ('Data Yang Anda Cari Tidak Ditemukan');
  edt1.Text:='Cari Data';
end;

procedure TForm5.img11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
img10.Visible := True;
end;

procedure TForm5.img11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
img10.Visible := False;
end;

procedure TForm5.img11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
img10.Visible := False;
end;

procedure TForm5.edt1Click(Sender: TObject);
begin
edt1.Text :='';
edt1.Font.Color := clBlack;
end;

end.

