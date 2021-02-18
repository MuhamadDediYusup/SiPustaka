unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, XPMan, DB, ADODB, GridsEh, DBGridEh, acPNG,
  ExtCtrls, StdCtrls, sButton, DBCtrls, IWControl, IWExtCtrls, IWDBExtCtrls,
  ExtDlgs, DBCtrlsEh, Mask, acAlphaHints, sDialogs, ActnMan, ActnColorMaps,
  QRCtrls, QuickRpt;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
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
    pnl10: TPanel;
    xpmnfst1: TXPManifest;
    lbl9: TLabel;
    pnl3: TPanel;
    lbl5: TLabel;
    pnl2: TPanel;
    lbl1: TLabel;
    dbgrdh1: TDBGridEh;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ds1: TDataSource;
    dlgOpenPic1: TOpenPictureDialog;
    edtTanggal_lahir: TDBDateTimeEditEh;
    cbbJenis_kelamin: TDBComboBoxEh;
    shp1: TShape;
    cbbJenis_kelamin1: TDBComboBoxEh;
    cbbJenis_kelamin2: TDBComboBoxEh;
    img8: TImage;
    DBEditAngkatan: TDBEdit;
    DBEditid_anggota: TDBEdit;
    DBEditAngkatan1: TDBEdit;
    btn1: TsButton;
    img9: TImage;
    edt2: TEdit;
    wdstrngfldADOTable1id_anggota: TWideStringField;
    wdstrngfldADOTable1Nama: TWideStringField;
    dtmfldADOTable1Tanggal_lahir: TDateTimeField;
    wdstrngfldADOTable1Jenis_kelamin: TWideStringField;
    wdstrngfldADOTable1Prodi: TWideStringField;
    wdstrngfldADOTable1Jenjang: TWideStringField;
    wdstrngfldADOTable1Angkatan: TWideStringField;
    mfldADOTable1Foto: TMemoField;
    img10: TImage;
    img11: TImage;
    btn2: TButton;
    slphnts1: TsAlphaHints;
    shp2: TShape;
    qrshp1: TQRShape;
    qckrp1: TQuickRep;
    qrbndTitleBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    qrshp2: TQRShape;
    imgFoto: TQRDBImage;
    qrlbl3: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl10: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl4: TQRLabel;
    qrsysdt1: TQRSysData;
    qrshp3: TQRShape;
    qrlbl2: TQRLabel;
    qrlbl1: TQRLabel;
    img12: TQRImage;
    qrdbtxtid_anggota: TQRDBText;
    qrdbtxtNama: TQRDBText;
    qrdbtxtProdi: TQRDBText;
    qrdbtxtJenjang: TQRDBText;
    qrdbtxtAngkatan: TQRDBText;
    procedure img2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrdh1CellClick(Column: TColumnEh);
    procedure img4Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure edt2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DBEditAngkatanClick(Sender: TObject);
    procedure DBEditAngkatanExit(Sender: TObject);
    procedure DBEditid_anggotaClick(Sender: TObject);
    procedure DBEditid_anggotaExit(Sender: TObject);
    procedure DBEditAngkatanKeyPress(Sender: TObject; var Key: Char);
    procedure img10Click(Sender: TObject);
    procedure img11Click(Sender: TObject);
    procedure img11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure edtTanggal_lahirButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure edtTanggal_lahirExit(Sender: TObject);
    procedure edtTanggal_lahirClick(Sender: TObject);
    procedure cbbJenis_kelamin1ButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure cbbJenis_kelamin1Exit(Sender: TObject);
    procedure cbbJenis_kelamin1Click(Sender: TObject);
    procedure edtTanggal_lahirButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure cbbJenis_kelaminButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure cbbJenis_kelaminExit(Sender: TObject);
    procedure DBEditAngkatan1Click(Sender: TObject);
    procedure DBEditAngkatan1Exit(Sender: TObject);
    procedure cbbJenis_kelaminClick(Sender: TObject);
    procedure cbbJenis_kelamin2ButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure cbbJenis_kelamin2ButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure cbbJenis_kelamin2Exit(Sender: TObject);
    procedure img6Click(Sender: TObject);
  private
    lokasi : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.img2Click(Sender: TObject);
begin
    try
  with ADOTable1 do
begin
  ADOTable1['Foto'] := lokasi;
  lokasi:=dbgrdh1.DataSource.DataSet['Foto'];
  DBEditAngkatan.Enabled := False;
  DBEditid_anggota.Enabled := False;
  edtTanggal_lahir.Enabled := False;
  cbbJenis_kelamin1.Enabled := False;
  DBEditAngkatan1.Enabled := False;
  cbbJenis_kelamin2.Enabled := False;
  cbbJenis_kelamin.Enabled := False;
  btn1.Enabled := False;
  ADOTable1.Post;
  ShowMessage('Data Berhasil Disimpan');
end;
  except
  ShowMessage('Data Gagal Disimpan');
end;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
 if dlgOpenPic1.Execute then
 lokasi := dlgOpenPic1.FileName;
 img8.Picture.LoadFromFile(lokasi);
end;

procedure TForm4.dbgrdh1CellClick(Column: TColumnEh);
begin
lokasi:=dbgrdh1.DataSource.DataSet['foto'];
 img8.Picture.LoadFromFile(lokasi);
end;

procedure TForm4.img4Click(Sender: TObject);
begin
  with ADOTable1 do
begin
  DBEditAngkatan.Enabled := True;
  DBEditid_anggota.Enabled := True;
  edtTanggal_lahir.Enabled := True;
  cbbJenis_kelamin1.Enabled := True;
  cbbJenis_kelamin2.Enabled := True;
  DBEditAngkatan1.Enabled := True;
  cbbJenis_kelamin2.Enabled := True;
  cbbJenis_kelamin.Enabled := True;
  btn1.Enabled := True;
  DBEditAngkatan.SetFocus;
  ADOTable1.Append;
  ShowMessage('Silahkan Masukan Data');
end;
end;

procedure TForm4.img3Click(Sender: TObject);
begin
  ADOTable1.Edit;
  DBEditAngkatan.Enabled := True;
  DBEditid_anggota.Enabled := True;
  edtTanggal_lahir.Enabled := True;
  cbbJenis_kelamin1.Enabled := True;
  cbbJenis_kelamin2.Enabled := True;
  DBEditAngkatan1.Enabled := True;
  cbbJenis_kelamin2.Enabled := True;
  cbbJenis_kelamin.Enabled := True;
  btn1.Enabled := True;
  DBEditAngkatan.SetFocus;
end;

procedure TForm4.img5Click(Sender: TObject);
var
  hapus : string;
begin
hapus:='Apakah Data Tersebut Akan di Hapus ?';
if (application.MessageBox(Pchar(hapus),'Peringatan',MB_YESNO or MB_ICONQUESTION)=IDYES) then adotable1.Delete;
end;

procedure TForm4.img7Click(Sender: TObject);
begin
Form4.Close;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if not ADOTable1.Locate('id_anggota',edt2.Text,[])=true then
  ShowMessage ('Data Yang Anda Cari Tidak Ditemukan');
  edt2.Text:='Cari Data';
end;
procedure TForm4.edt2Click(Sender: TObject);
begin
edt2.Text := '';
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
ADOTable1.Refresh;
end;

procedure TForm4.DBEditAngkatanClick(Sender: TObject);
begin
pnl4.Color := clWhite;
DBEditAngkatan.Color := clWhite;
DBEditAngkatan.Font.Color := clBlack;
end;

procedure TForm4.DBEditAngkatanExit(Sender: TObject);
begin
pnl4.Color := $422D2B;
DBEditAngkatan.Color := $422D2B;
DBEditAngkatan.Font.Color := clWhite;
end;

procedure TForm4.DBEditid_anggotaClick(Sender: TObject);
begin
pnl5.Color := clWhite;
DBEditid_anggota.Color := clWhite;
DBEditid_anggota.Font.Color := clBlack;
end;

procedure TForm4.DBEditid_anggotaExit(Sender: TObject);
begin
pnl5.Color := $422D2B;
DBEditid_anggota.Color := $422D2B;
DBEditid_anggota.Font.Color := clWhite;
end;

procedure TForm4.DBEditAngkatanKeyPress(Sender: TObject; var Key: Char);
begin
pnl4.Color := clWhite;
DBEditAngkatan.Color := clWhite;
DBEditAngkatan.Font.Color := clBlack;
end;

procedure TForm4.img10Click(Sender: TObject);
begin
if not ADOTable1.Locate('id_anggota',edt2.Text,[])=true then
  ShowMessage ('Data Yang Anda Cari Tidak Ditemukan');
  edt2.Text:='Cari Data';
end;

procedure TForm4.img11Click(Sender: TObject);
begin
 if not ADOTable1.Locate('id_anggota',edt2.Text,[])=true then
  ShowMessage ('Data Yang Anda Cari Tidak Ditemukan');
  edt2.Text:='Cari Data';
end;

procedure TForm4.img11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  img10.Visible := True;
end;

procedure TForm4.img11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  img10.Visible := False;
end;

procedure TForm4.edt2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
   btn2.Click;
  end;
end;

procedure TForm4.edtTanggal_lahirButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
shp2.Visible := True;
end;

procedure TForm4.edtTanggal_lahirExit(Sender: TObject);
begin
shp2.Visible := False;
end;

procedure TForm4.edtTanggal_lahirClick(Sender: TObject);
begin
shp2.Visible := True;
end;

procedure TForm4.cbbJenis_kelamin1ButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
pnl8.Color := clWhite;
cbbJenis_kelamin1.Color := clWhite;
cbbJenis_kelamin1.Font.Color := clBlack;
end;

procedure TForm4.cbbJenis_kelamin1Exit(Sender: TObject);
begin
pnl8.Color := $422D2B;
cbbJenis_kelamin1.Color := $422D2B;
cbbJenis_kelamin1.Font.Color := clWhite;
end;

procedure TForm4.cbbJenis_kelamin1Click(Sender: TObject);
begin
pnl8.Color := clWhite;
cbbJenis_kelamin1.Color := clWhite;
cbbJenis_kelamin1.Font.Color := clBlack;
end;

procedure TForm4.edtTanggal_lahirButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
edtTanggal_lahir.Font.Color := clWhite;
edtTanggal_lahir.Font.Color := clBlack;
edtTanggal_lahir.Color := clWhite;
pnl6.Color:= clWhite;
end;

procedure TForm4.cbbJenis_kelaminButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
pnl7.Color := clWhite;
cbbJenis_kelamin.Color:= clWhite;
cbbJenis_kelamin.Font.Color := clBlack;
end;

procedure TForm4.cbbJenis_kelaminExit(Sender: TObject);
begin
pnl7.Color := $422D2B;
cbbJenis_kelamin.Color := $422D2B;
cbbJenis_kelamin.Font.Color := clWhite;
end;

procedure TForm4.DBEditAngkatan1Click(Sender: TObject);
begin
 pnl9.Color := clWhite;
  DBEditAngkatan1.Color := clWhite;
  DBEditAngkatan1.Font.Color := clBlack;
end;

procedure TForm4.DBEditAngkatan1Exit(Sender: TObject);
begin
pnl9.Color := $422D2B;
DBEditAngkatan1.Color := $422D2B;
DBEditAngkatan1.Font.Color := clWhite;
end;

procedure TForm4.cbbJenis_kelaminClick(Sender: TObject);
begin
pnl7.Color := clWhite;
cbbJenis_kelamin.Color:= clWhite;
cbbJenis_kelamin.Font.Color := clBlack;
end;

procedure TForm4.cbbJenis_kelamin2ButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
 pnl3.Color := clWhite;
 cbbJenis_kelamin2.Color := clWhite;
 cbbJenis_kelamin2.Font.Color := clBlack;
end;

procedure TForm4.cbbJenis_kelamin2ButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  pnl3.Color := clWhite;
 cbbJenis_kelamin2.Color := clWhite;
 cbbJenis_kelamin2.Font.Color := clBlack;
end;

procedure TForm4.cbbJenis_kelamin2Exit(Sender: TObject);
begin
 pnl3.Color := $422D2B;
 cbbJenis_kelamin2.Color := $422D2B;
 cbbJenis_kelamin2.Font.Color := clWhite;
end;

procedure TForm4.img6Click(Sender: TObject);
begin
qckrp1.Preview;
end;

end.
