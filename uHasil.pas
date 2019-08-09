unit uHasil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, Data.Bind.Grid, Vcl.Grids,
  Vcl.StdCtrls, Data.DB, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.DBGrids;

type
  TfoHasil = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    bTutup: TButton;
    bProses: TButton;
    gbHasil: TGroupBox;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    eHasil: TEdit;
    bCek: TButton;
    eCari: TEdit;
    DBGridEh2: TDBGridEh;
    procedure bTutupClick(Sender: TObject);
    procedure bProsesClick(Sender: TObject);
    procedure bCekClick(Sender: TObject);
    procedure eCariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foHasil: TfoHasil;
  hasil:string;

implementation

{$R *.dfm}

uses uDm;

procedure TfoHasil.bCekClick(Sender: TObject);
begin
  //UNTUK MELIHAT MAHASISWA YANG MEMILIKI HASIL NILAI KECOCOKAN TERTINGGI PENERIMA BEASISWA
  with dm.quHasil do
  begin
    Close;
    SQL.Clear;
    sql.Text:='SELECT tb_hasil.nim, tb_mhs.nmMhs, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 1 then tb_dethasil.bobotGap end) as K1, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 2 then tb_dethasil.bobotGap end) as K2, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 3 then tb_dethasil.bobotGap end) as K3, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 4 then tb_dethasil.bobotGap end) as K4, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 5 then tb_dethasil.bobotGap end) as K5, '+
                'CONCAT(tb_hasil.cf) as CF, CONCAT(tb_hasil.sf) as SF, '+
                'CONCAT(tb_hasil.totNilai) as Hasil_Akhir '+
                'FROM tb_hasil, tb_dethasil, tb_mhs where tb_hasil.nim=tb_dethasil.nim '+
                'and tb_dethasil.nim=tb_mhs.nim '+
                'GROUP BY tb_dethasil.nim '+
                'ORDER BY tb_hasil.totNilai DESC';
    ExecSQL;
  end;
  hasil:=dm.quHasil.Fields[0].Text;
  eHasil.Text:='Hasil perhitungan dengan nilai kecocokan terbesar di dapat oleh NIM "'+hasil+'"';

  dm.quInputHasil.SQL.Text:='select * from tb_hasil';
  dm.quInputHasil.Open;
  dm.quInputHasil.ExecSQL;
end;

procedure TfoHasil.bProsesClick(Sender: TObject);
begin
  with dm.quDetHasil do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='update tb_dethasil set '+
              //UNTUK MENENTUKAN NILAI PROFILE STANDAR SETIAP KRITERIA
              'nilaiProfil= '+
              'CASE '+
                'WHEN kdKriteria=1 then 3 '+
                'WHEN kdKriteria=2 then 3 '+
                'WHEN kdKriteria=3 then 3 '+
                'WHEN kdKriteria=4 then 2 '+
                'WHEN kdKriteria=5 then 4 '+
              'end, '+
              //UNTUK MENCARI NILAI GAP(SELISIH)
              'gap=nilaiMhs-nilaiProfil, '+
              //UNTUK MENENTUKAN NILAI BOBOT GAP
              'bobotGap= '+
              'case '+
                'WHEN gap=0 THEN 5 '+
                'WHEN gap=1 THEN 4.5 '+
                'WHEN gap="-1" THEN	4 '+
                'WHEN gap=2 THEN 3.5 '+
                'WHEN gap="-2" THEN 3 '+
                'WHEN gap=3 THEN 2.5 '+
                'WHEN gap="-3" THEN 2 '+
                'WHEN gap=4 THEN 1.5 '+
                'WHEN gap="-4" THEN 1 '+
              'end, '+
              //UNTUK MENENTUKAN JENIS KRITERIA
              'jenis= '+
              'case '+
                'WHEN kdKriteria=1 then "Core Factor" '+
                'WHEN kdKriteria=2 then "Core Factor" '+
                'WHEN kdKriteria=3 then "Secondary Factor" '+
                'WHEN kdKriteria=4 then "Secondary Factor" '+
                'WHEN kdKriteria=5 then "Secondary Factor" '+
              'end, '+
              //UNTUK MENENTUKAN NILAI DARI TIAP JENIS KRITERIA
              'nilaiJenis= '+
              'case '+
              'when jenis="Core Factor" then 0.6 '+
              'when jenis="Secondary Factor" then 0.4 '+
              'end';
    ExecSQL;
  end;
  dm.quBobotGap.ExecSQL;
  dm.quDetHasil.SQL.Text:='select * from tb_dethasil';
  dm.quDetHasil.Open;
  dm.quDetHasil.ExecSQL;

  with dm.quInputHasil do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='update tb_hasil set '+
              //UNTUK MENCARI NILAI RATA-RATA DARI KRITERIA CORE FACTOR DAN SECONDARY FACTOR
              'cf=(select AVG(bobotGap) from tb_dethasil where nilaiJenis=0.6 and tb_hasil.nim=tb_dethasil.nim), '+
              //UNTUK MENCARI NILAI RATA-RATA DARI KRITERIA SECONDARY FACTOR
              'sf=(select avg(bobotGap) from tb_dethasil where nilaiJenis=0.4 AND tb_hasil.nim=tb_dethasil.nim), '+
              //UNTUK MENGHITUNG NILAI TOTAL ATAU HASIL AKHIR DARI PENILAIAN MAHASISWA
              //DENGAN MENGALIKAN 60% RATA-RATA DARI KRITERIA CORE FACTOR DAN 40% RATA-RATA DARI KRITERIA SECONDARY FACTOR
              'totNilai=(0.6*cf)+(0.4*sf)';
    ExecSQL;
  end;
  dm.quHasil.ExecSQL;

  MessageDlg('Berhasil Proses',mtInformation,[mbOK],0);
end;

procedure TfoHasil.bTutupClick(Sender: TObject);
begin
  foHasil.Close;
end;

procedure TfoHasil.eCariChange(Sender: TObject);
begin
  //LISTING PENCARIAN BERDASARKAN NIM YANG DIINPUT
  with dm.quNilai do
  begin
    Close;
    SQL.Clear;
    sql.Text:='SELECT tb_dethasil.nim, tb_mhs.nmMhs, '+
              'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 1 then tb_dethasil.nilaiMhs end) as K1, '+
              'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 2 then tb_dethasil.nilaiMhs end) as K2, '+
              'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 3 then tb_dethasil.nilaiMhs end) as K3, '+
              'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 4 then tb_dethasil.nilaiMhs end) as K4, '+
              'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 5 then tb_dethasil.nilaiMhs end) as K5 '+
              'FROM tb_dethasil, tb_mhs '+
              'WHERE tb_dethasil.nim=tb_mhs.nim and tb_dethasil.nim like "%'+eCari.Text+'%" '+
              'GROUP BY tb_dethasil.nim';
    open;
  end;
  if dm.quNilai.RecordCount<=0 then
    MessageDlg('Maaf data yang Anda Cari Tidak Ada..',mtInformation,[mbOK],0)
  else
  if dm.quNilai.RecordCount>=1 then
  begin
    with dm.quBobotGap do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT tb_dethasil.nim, tb_mhs.nmMhs, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 1 then tb_dethasil.gap end) as K1, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 2 then tb_dethasil.gap end) as K2, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 3 then tb_dethasil.gap end) as K3, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 4 then tb_dethasil.gap end) as K4, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 5 then tb_dethasil.gap end) as K5 '+
                'FROM tb_dethasil, tb_mhs '+
                'WHERE tb_dethasil.nim=tb_mhs.nim and tb_dethasil.nim like "%'+eCari.Text+'%" '+
                'GROUP BY tb_dethasil.nim';
      Open;
    end;

    with dm.quHasil do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT tb_hasil.nim, tb_mhs.nmMhs, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 1 then tb_dethasil.bobotGap end) as K1, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 2 then tb_dethasil.bobotGap end) as K2, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 3 then tb_dethasil.bobotGap end) as K3, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 4 then tb_dethasil.bobotGap end) as K4, '+
                'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 5 then tb_dethasil.bobotGap end) as K5, '+
                'CONCAT(tb_hasil.cf) as CF, CONCAT(tb_hasil.sf) as SF, '+
                'CONCAT(tb_hasil.totNilai) as Hasil_Akhir '+
                'FROM tb_hasil, tb_dethasil, tb_mhs where tb_hasil.nim=tb_dethasil.nim '+
                'and tb_dethasil.nim=tb_mhs.nim and tb_dethasil.nim like "%'+eCari.Text+'%" '+
                'GROUP BY tb_dethasil.nim';
      Open;
    end;
  end;

end;

end.
