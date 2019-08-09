unit uMhsEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfoMhsEdit = class(TForm)
    bBatal: TButton;
    bEdit: TButton;
    cbJurusan: TComboBox;
    eNama: TEdit;
    eNim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rbLaki_laki: TRadioButton;
    rbPerempuan: TRadioButton;
    procedure bEditClick(Sender: TObject);
    procedure bBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bersih;
  end;

var
  foMhsEdit: TfoMhsEdit;

implementation

{$R *.dfm}

uses uDm;

procedure TfoMhsEdit.bBatalClick(Sender: TObject);
begin
  bersih;
end;

procedure TfoMhsEdit.bEditClick(Sender: TObject);
var
  jenkel : String;
begin
  if rbLaki_laki.Checked=True then
    jenkel:='Laki-laki'
  else
  if rbPerempuan.Checked=True then
    jenkel:='Perempuan';

  if (eNim.Text='') or (eNama.Text='') or (jenkel='') or (cbJurusan.Text='Pilih Jurusan') then
    MessageDlg('Data tidak boleh kosong',mtInformation,[mbOK],0)
  else
  begin
    dm.quMhs.Close;
    dm.quMhs.SQL.Clear;
    dm.quMhs.SQL.Text:='update tb_mhs set nim=:nim, nmMhs=:nmMhs, jenkel=:jenkel, '+
                        'jurusan=:jurusan where nim=:nim';
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
    MessageDlg('Data Berhasil Diedit',mtInformation,[mbOK],0);

    bersih;
  end;
end;

procedure TfoMhsEdit.bersih;
begin
  eNim.Clear;
  eNama.Clear;
  rbLaki_laki.Checked:=False;
  rbPerempuan.Checked:=False;
  cbJurusan.Text:='Pilih Jurusan';
end;

end.
