unit uMhsTambah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfoMhsTambah = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eNim: TEdit;
    eNama: TEdit;
    rbLaki_laki: TRadioButton;
    rbPerempuan: TRadioButton;
    cbJurusan: TComboBox;
    bSimpan: TButton;
    bBatal: TButton;
    procedure bSimpanClick(Sender: TObject);
    procedure bBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bersih;
  end;

var
  foMhsTambah: TfoMhsTambah;

implementation

{$R *.dfm}

uses uDm;

procedure TfoMhsTambah.bBatalClick(Sender: TObject);
begin
  bersih;
end;

procedure TfoMhsTambah.bersih;
begin
  eNim.Clear;
  eNama.Clear;
  rbLaki_laki.Checked:=False;
  rbPerempuan.Checked:=False;
  cbJurusan.Text;
end;

procedure TfoMhsTambah.bSimpanClick(Sender: TObject);
var
  jenkel : String;
begin
  if rbLaki_laki.Checked=True then
    jenkel:='Laki-laki'
  else
  if rbPerempuan.Checked=True then
    jenkel:='Perempuan';

  dm.quMhs.Close;
  dm.quMhs.SQL.Clear;
  dm.quMhs.SQL.Text:='SELECT * FROM tb_mhs WHERE nim="'+eNim.Text+'"';
  dm.quMhs.ExecSQL;
  dm.quMhs.Open;

  if (eNim.Text='') or (eNama.Text='') or (jenkel='') or (cbJurusan.Text='Pilih Jurusan') then
  begin
    MessageDlg('Data tidak boleh kosong',mtInformation,[mbOK],0);
    Exit;
  end
  else
  if dm.quMhs.RecordCount >= 1 then
  begin
      MessageDlg('Mahasiswa dengan NIM "'+eNim.Text+'" Sudah Ada!',mtWarning,[mbok],0);
    exit;
  end
  else
  begin
    dm.quMhs.Close;
    dm.quMhs.SQL.Clear;
    dm.quMhs.SQL.Text:='insert into tb_mhs (nim, nmMhs, jenkel, jurusan) value '+
                      '(:nim, :nmMhs, :jenkel, :jurusan)';
    dm.quMhs.ParamByName('nim').AsString:=eNim.Text;
    dm.quMhs.ParamByName('nmMhs').AsString:=eNama.Text;

    if rbLaki_laki.Checked=true then
      dm.quMhs.ParamByName('jenkel').Text:=rbLaki_laki.Caption
    else
      dm.quMhs.ParamByName('jenkel').Text:=rbPerempuan.Caption;

    dm.quMhs.ParamByName('jurusan').AsString:=cbJurusan.Text;
    dm.quMhs.ExecSQL;
    dm.quMhs.SQL.Text:='select *from tb_mhs';
    dm.quMhs.Open;
    MessageDlg('Data Berhasil Disimpan',mtInformation,[mbOK],0);

    bersih;
  end;
end;

end.
