unit uNilai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, DBCtrlsEh, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfoNilai = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    eNama: TEdit;
    eNim: TEdit;
    gbKriteria: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    cbPenghasilan: TComboBox;
    eK1_Nilai: TEdit;
    cbIPK: TComboBox;
    eK2_Nilai: TEdit;
    eK3_Nilai: TEdit;
    eK4_Nilai: TEdit;
    eK5_Nilai: TEdit;
    cbTanggungan: TComboBox;
    cbSemester: TComboBox;
    cbOrganisasi: TComboBox;
    GroupBox1: TGroupBox;
    bTutup: TButton;
    bSimpan: TButton;
    bBatal: TButton;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    bHapus: TButton;
    eNamaH: TEdit;
    eCari: TEdit;
    procedure Image1Click(Sender: TObject);
    procedure cbIPKChange(Sender: TObject);
    procedure cbPenghasilanChange(Sender: TObject);
    procedure cbTanggunganChange(Sender: TObject);
    procedure cbSemesterChange(Sender: TObject);
    procedure cbOrganisasiChange(Sender: TObject);
    procedure bBatalClick(Sender: TObject);
    procedure eNimKeyPress(Sender: TObject; var Key: Char);
    procedure bSimpanClick(Sender: TObject);
    procedure bTutupClick(Sender: TObject);
    procedure bHapusClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure eCariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bersih;
  end;

var
  foNilai: TfoNilai;

implementation

{$R *.dfm}

uses uDm, uMhs, uCariMhs;

procedure TfoNilai.bBatalClick(Sender: TObject);
begin
  bersih;
end;

procedure TfoNilai.bersih;
begin
  eNim.Clear;
  eNama.Clear;
  cbIPK.Text:='';
  cbPenghasilan.Text:='';
  cbTanggungan.Text:='';
  cbSemester.Text:='';
  cbOrganisasi.Text:='';
  eK1_Nilai.Text:='Nilai K1';
  eK2_Nilai.Text:='Nilai K2';
  eK3_Nilai.Text:='Nilai K3';
  eK4_Nilai.Text:='Nilai K4';
  eK5_Nilai.Text:='Nilai K5';
end;

procedure TfoNilai.bHapusClick(Sender: TObject);
begin
  if MessageDlg('Apa Anda Yakin Ingin Menghapus Nilai "'+eNamaH.Text+'" ?', mtConfirmation, [mbYes]+[mbCancel],0) = mrYes
  then
    begin
      dm.quDetHasil.SQL.Text := 'delete from tb_dethasil where nim = :nim';
      dm.quDetHasil.ParamByName('nim').AsString := eNamaH.Text;
      dm.quDetHasil.ExecSQL;
      dm.quDetHasil.SQL.Text := 'select *from tb_dethasil';
      dm.quDetHasil.Open;

      dm.quInputHasil.SQL.Text := 'delete from tb_dethasil where nim = :nim';
      dm.quInputHasil.ParamByName('nim').AsString := eNamaH.Text;
      dm.quInputHasil.ExecSQL;
      dm.quInputHasil.SQL.Text := 'select *from tb_dethasil';
      dm.quInputHasil.Open;
      MessageDlg('Nilai "'+eNim.Text+'" Berhasil Dihapus',mtInformation, [mbOK],0);
    end;
  bersih;
  eNamaH.Clear;
  dm.quNilai.ExecSQL;
end;

procedure TfoNilai.bSimpanClick(Sender: TObject);
begin
  dm.quInputHasil.Close;
  dm.quInputHasil.SQL.Clear;
  dm.quInputHasil.SQL.Text:='SELECT * FROM tb_hasil WHERE nim="'+eNim.Text+'"';
  dm.quInputHasil.ExecSQL;
  dm.quInputHasil.Open;

  if (eNim.Text='') or (eNama.Text='') or (cbIPK.Text='') or (cbTanggungan.Text='')
     or (cbPenghasilan.Text='') or (cbSemester.Text='') or (cbOrganisasi.Text='') then
  begin
    MessageDlg('Data tidak boleh kosong',mtInformation,[mbOK],0);
    exit;
  end
  else
  if dm.quInputHasil.RecordCount >= 1 then
  begin
      MessageDlg('Mahasiswa dengan NIM "'+eNim.Text+'" Sudah Dinilai!',mtWarning,[mbok],0);
      exit;
  end
  else
  begin
    with dm.quInputHasil do
    begin
      SQL.Text:='insert into tb_hasil (nim) value (:nim)';
      ParamByName('nim').AsString:=eNim.Text;
      ExecSQL;
      SQL.Text:='select * from tb_hasil';
      Open;
    end;
  end;

  with dm.quDetHasil do
  begin
    SQL.Text:='insert into tb_dethasil (nim, kdKriteria, subKriteria, nilaiMhs) value '+
              '(:nim, :kdKriteria1, :subKriteria1, :nilaiMhs1), '+
              '(:nim, :kdKriteria2, :subKriteria2, :nilaiMhs2), '+
              '(:nim, :kdKriteria3, :subKriteria3, :nilaiMhs3), '+
              '(:nim, :kdKriteria4, :subKriteria4, :nilaiMhs4), '+
              '(:nim, :kdKriteria5, :subKriteria5, :nilaiMhs5);';
    ParamByName('nim').AsString:=eNim.Text;
    ParamByName('kdKriteria1').AsString:='1';
    ParamByName('subKriteria1').AsString:=cbIPK.Text;
    ParamByName('nilaiMhs1').AsString:=eK1_Nilai.Text;

    ParamByName('nim').AsString:=eNim.Text;
    ParamByName('kdKriteria2').AsString:='2';
    ParamByName('subKriteria2').AsString:=cbPenghasilan.Text;
    ParamByName('nilaiMhs2').AsString:=eK2_Nilai.Text;

    ParamByName('nim').AsString:=eNim.Text;
    ParamByName('kdKriteria3').AsString:='3';
    ParamByName('subKriteria3').AsString:=cbTanggungan.Text;
    ParamByName('nilaiMhs3').AsString:=eK3_Nilai.Text;

    ParamByName('nim').AsString:=eNim.Text;
    ParamByName('kdKriteria4').AsString:='4';
    ParamByName('subKriteria4').AsString:=cbSemester.Text;
    ParamByName('nilaiMhs4').AsString:=eK4_Nilai.Text;

    ParamByName('nim').AsString:=eNim.Text;
    ParamByName('kdKriteria5').AsString:='5';
    ParamByName('subKriteria5').AsString:=cbOrganisasi.Text;
    ParamByName('nilaiMhs5').AsString:=eK5_Nilai.Text;
    ExecSQL;
    sql.Text:='select * from tb_dethasil';
    Open;
  end;
  MessageDlg('Data Barang Berhasil Disimpan',mtInformation,[mbOK],0);

  bersih;
  DBGrid1.Refresh;
  dm.quNilai.ExecSQL;
end;

procedure TfoNilai.bTutupClick(Sender: TObject);
begin
  foNilai.Close;
end;

procedure TfoNilai.cbIPKChange(Sender: TObject);
begin
  if cbIPK.Text=cbIPK.Items[0] then
    begin
      eK1_Nilai.Text:='1';
    end
  else
  if cbIPK.Text=cbIPK.Items[1] then
    begin
      eK1_Nilai.Text:='2';
    end
  else
  if cbIPK.Text=cbIPK.Items[2] then
    begin
      eK1_Nilai.Text:='3';
    end
  else
  if cbIPK.Text=cbIPK.Items[3] then
    begin
      eK1_Nilai.Text:='4';
    end
  else
  if cbIPK.Text='' then
    begin
      eK1_Nilai.Text:='Nilai K1';
    end;
end;

procedure TfoNilai.cbOrganisasiChange(Sender: TObject);
begin
  if cbOrganisasi.Text=cbOrganisasi.Items[0] then
    begin
      eK5_Nilai.Text:='3';
    end
  else
  if cbOrganisasi.Text=cbOrganisasi.Items[1] then
    begin
      eK5_Nilai.Text:='4';
    end
  else
    if cbOrganisasi.Text='' then
    begin
      eK5_Nilai.Text:='Nilai K5';
    end;
end;

procedure TfoNilai.cbPenghasilanChange(Sender: TObject);
begin
  if cbPenghasilan.Text=cbPenghasilan.Items[0] then
    begin
      eK2_Nilai.Text:='1';
    end
  else
  if cbPenghasilan.Text=cbPenghasilan.Items[1] then
    begin
      eK2_Nilai.Text:='2';
    end
  else
  if cbPenghasilan.Text=cbPenghasilan.Items[2] then
    begin
      eK2_Nilai.Text:='3';
    end
  else
  if cbPenghasilan.Text=cbPenghasilan.Items[3] then
    begin
      eK2_Nilai.Text:='4';
    end
  else
    if cbPenghasilan.Text='' then
    begin
      eK2_Nilai.Text:='Nilai K2';
    end;
end;

procedure TfoNilai.cbSemesterChange(Sender: TObject);
begin
 if cbSemester.Text=cbSemester.Items[0] then
    begin
      eK4_Nilai.Text:='0';
    end
  else
 if cbSemester.Text=cbSemester.Items[1] then
    begin
      eK4_Nilai.Text:='1';
    end
 else
 if cbSemester.Text=cbSemester.Items[2] then
    begin
      eK4_Nilai.Text:='2';
    end
 else
 if cbSemester.Text=cbSemester.Items[3] then
    begin
      eK4_Nilai.Text:='3';
    end
 else
 if cbSemester.Text=cbSemester.Items[4] then
    begin
      eK4_Nilai.Text:='4';
    end
  else
 if cbSemester.Text='' then
    begin
      eK4_Nilai.Text:='Nilai K4';
    end;
end;

procedure TfoNilai.cbTanggunganChange(Sender: TObject);
begin
  if cbTanggungan.Text=cbTanggungan.Items[0] then
    begin
      eK3_Nilai.Text:='1';
    end
  else
  if cbTanggungan.Text=cbTanggungan.Items[1] then
    begin
      eK3_Nilai.Text:='2';
    end
  else
  if cbTanggungan.Text=cbTanggungan.Items[2] then
    begin
      eK3_Nilai.Text:='3';
    end
  else
  if cbTanggungan.Text=cbTanggungan.Items[3] then
    begin
      eK3_Nilai.Text:='4';
    end
  else
    if cbTanggungan.Text='' then
    begin
      eK3_Nilai.Text:='Nilai K3';
    end;
end;

procedure TfoNilai.DBGrid1CellClick(Column: TColumn);
begin
  eNamaH.Text:=DBGrid1.Fields[0].Text;

  with dm.quDetHasil do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='select * from tb_dethasil where nim="%'+eNim.Text+'%"';
  end;
end;

procedure TfoNilai.eCariChange(Sender: TObject);
begin
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
    MessageDlg('Maaf data yang Anda Cari Tidak Ada..',mtInformation,[mbOK],0);
end;

procedure TfoNilai.eNimKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    if dm.quMhs.Locate('nim',eNim.Text,[]) then
    begin
      eNama.Text:=dm.quMhs['nmMhs'];
    end
    else
    begin
      ShowMessage('Data Mahasiswa belum ada!');
      exit;
    end;
  end;
end;

procedure TfoNilai.Image1Click(Sender: TObject);
begin
  foCariMhs.Show;
end;

end.
