unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, acPNG, StdCtrls, DBGridEh, DBCtrlsEh, Mask, DBLookupEh,
  DBGridEhGrouping, Buttons, sBitBtn, XPMan, DB, ADODB, GridsEh, sMaskEdit,
  sCustomComboEdit, sToolEdit, sGroupBox, sPanel, DBCtrls, Grids, DBGrids,
  sMonthCalendar;

type
  TForm2 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    shp1: TShape;
    pnl3: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    img2: TImage;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    shp4: TShape;
    shp6: TShape;
    ADOConnection1: TADOConnection;
    ds1: TDataSource;
    xpmnfst1: TXPManifest;
    lbl12: TLabel;
    shp5: TShape;
    lbl5: TLabel;
    lbl6: TLabel;
    img1: TImage;
    sbtbtn1: TsBitBtn;
    sbtbtn2: TsBitBtn;
    sbtbtn3: TsBitBtn;
    sbtbtn4: TsBitBtn;
    lbl13: TLabel;
    spnl1: TsPanel;
    lbl1: TLabel;
    grp1: TsGroupBox;
    sbtbtn5: TsBitBtn;
    sbtbtn6: TsBitBtn;
    sbtbtn7: TsBitBtn;
    dbgrdh2: TDBGridEh;
    ADOTable3: TADOTable;
    ds2: TDataSource;
    edtTanggalKunjungan: TDBDateTimeEditEh;
    sbtbtn8: TsBitBtn;
    sbtbtn9: TsBitBtn;
    DBEditNama: TDBEdit;
    lbl9: TLabel;
    lbl14: TLabel;
    shp3: TShape;
    shp8: TShape;
    DBEditId_anggota: TDBEdit;
    cbbJurusan: TDBComboBoxEh;
    ADOTable1: TADOTable;
    dbgrd1: TDBGrid;
    sMonthCalendar1: TsMonthCalendar;
    sbtbtn10: TsBitBtn;
    img3: TImage;
    lbl15: TLabel;
    img4: TImage;
    img5: TImage;
    sbtbtn11: TsBitBtn;
    procedure sbtbtn1Click(Sender: TObject);
    procedure sbtbtn2Click(Sender: TObject);
    procedure sbtbtn3Click(Sender: TObject);
    procedure sbtbtn4Click(Sender: TObject);
    procedure sbtbtn5Click(Sender: TObject);
    procedure sbtbtn6Click(Sender: TObject);
    procedure sbtbtn7Click(Sender: TObject);
    procedure sbtbtn8Click(Sender: TObject);
    procedure sbtbtn9Click(Sender: TObject);
    procedure cbbJurusanButtonDown(Sender: TObject; TopButton: Boolean;
      var AutoRepeat, Handled: Boolean);
    procedure edtTanggalKunjunganButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure edtTanggalKunjunganExit(Sender: TObject);
    procedure cbbJurusanExit(Sender: TObject);
    procedure DBEditId_anggotaClick(Sender: TObject);
    procedure DBEditId_anggotaExit(Sender: TObject);
    procedure DBEditNamaClick(Sender: TObject);
    procedure DBEditNamaExit(Sender: TObject);
    procedure cbbJurusanClick(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure sbtbtn11Click(Sender: TObject);
    procedure sbtbtn10Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit4, Unit3, Unit5, Unit6, Unit9, Unit10, Unit8, Unit7;

{$R *.dfm}

procedure TForm2.sbtbtn1Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm2.sbtbtn2Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm2.sbtbtn3Click(Sender: TObject);
begin
form5.ShowModal;
end;

procedure TForm2.sbtbtn4Click(Sender: TObject);
begin
form6.ShowModal;
end;


procedure TForm2.sbtbtn5Click(Sender: TObject);
begin
form9.ShowModal;
end;

procedure TForm2.sbtbtn6Click(Sender: TObject);
begin
form10.ShowModal;
end;

procedure TForm2.sbtbtn7Click(Sender: TObject);
begin
form8.ShowModal;
end;

procedure TForm2.sbtbtn8Click(Sender: TObject);
begin
ADOTable1.Post;
ShowMessage('Data Berhasil Di Simpan');
end;

procedure TForm2.sbtbtn9Click(Sender: TObject);
begin
DBEditId_anggota.Visible := True;
DBEditNama.Visible := True;
cbbJurusan.Visible := True;
edtTanggalKunjungan.Visible := True;
ADOTable1.Append;
end;

procedure TForm2.cbbJurusanButtonDown(Sender: TObject; TopButton: Boolean;
  var AutoRepeat, Handled: Boolean);
begin
shp4.Brush.Color := $E6E5E5;
cbbJurusan.Color := $E6E5E5;
end;

procedure TForm2.edtTanggalKunjunganButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
shp6.Brush.Color := $E6E5E5;
edtTanggalKunjungan.Color := $E6E5E5;
end;

procedure TForm2.edtTanggalKunjunganExit(Sender: TObject);
begin
shp6.Brush.Color := clwhite;
edtTanggalKunjungan.Color := clWhite;
end;

procedure TForm2.cbbJurusanExit(Sender: TObject);
begin
shp4.Brush.Color := clwhite;
cbbJurusan.Color := clWhite;
end;

procedure TForm2.DBEditId_anggotaClick(Sender: TObject);
begin
DBEditId_anggota.Color := $E6E5E5;
shp8.Brush.Color := $E6E5E5;
end;

procedure TForm2.DBEditId_anggotaExit(Sender: TObject);
begin
DBEditId_anggota.Color := clWhite;
shp8.Brush.Color := clWhite;
end;

procedure TForm2.DBEditNamaClick(Sender: TObject);
begin
DBEditNama.Color := $E6E5E5;
shp3.Brush.Color := $E6E5E5;
end;

procedure TForm2.DBEditNamaExit(Sender: TObject);
begin
DBEditNama.Color := clWhite;
shp3.Brush.Color := clWhite;
end;

procedure TForm2.cbbJurusanClick(Sender: TObject);
begin
cbbJurusan.Color := $E6E5E5;
shp4.Brush.Color := $E6E5E5;
end;

procedure TForm2.img4Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.img5Click(Sender: TObject);
begin
Application.Minimize;
end;

procedure TForm2.sbtbtn11Click(Sender: TObject);
begin
form7.show;
end;

procedure TForm2.sbtbtn10Click(Sender: TObject);
begin
ADOTable1.Delete;
end;

procedure TForm2.FormHide(Sender: TObject);
begin
ADOTable1.Close;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
ADOTable1.Open;
end;

end.
