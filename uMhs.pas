unit uMhs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfoMhs = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    eCari: TEdit;
    bTambah: TButton;
    bEdit: TButton;
    bHapus: TButton;
    bTutup: TButton;
    DBGrid1: TDBGrid;
    procedure bTambahClick(Sender: TObject);
    procedure eCariChange(Sender: TObject);
    procedure bHapusClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bEditClick(Sender: TObject);
    procedure bTutupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foMhs: TfoMhs;

implementation

{$R *.dfm}

uses uDm, uMhsTambah, uMhsEdit;

procedure TfoMhs.bEditClick(Sender: TObject);
begin
  foMhsEdit.Show;
end;

procedure TfoMhs.bHapusClick(Sender: TObject);
var
  nim, nama : string;
begin
  nim:=dm.quMhs['nim'];
  nama:=dm.quMhs['nmMhs'];

  if dm.quMhs.RecordCount < 1 then
    Abort
  else
  begin
    if MessageDlg('Apa Anda Yakin Ingin Menghapus Data "'+nama+'" ?', mtConfirmation, [mbYes]+[mbCancel],0) = mrYes
    then
    begin
      dm.quMhs.SQL.Text := 'delete from tb_mhs where nim = "'+nim+'"';
      dm.quMhs.ExecSQL;
      dm.quMhs.SQL.Text := 'select *from tb_mhs';
      dm.quMhs.Open;
      MessageDlg('Data Barang Berhasil Dihapus',mtInformation, [mbOK],0);
    end;
  end;

end;

procedure TfoMhs.bTambahClick(Sender: TObject);
begin
  foMhsTambah.Show;
end;

procedure TfoMhs.bTutupClick(Sender: TObject);
begin
  foMhs.Close;
  foMhsEdit.Close;
  foMhsTambah.Close;
end;

procedure TfoMhs.DBGrid1CellClick(Column: TColumn);
begin
    foMhsEdit.eNim.Text:=DBGrid1.Fields[0].Text;
    foMhsEdit.eNama.text:=DBGrid1.Fields[1].Text;
    if DBGrid1.Fields[2].Text='Laki-laki' then
      foMhsEdit.rbLaki_laki.Checked:=True
    else
      foMhsEdit.rbPerempuan.Checked:=True;
    foMhsEdit.cbJurusan.text:=DBGrid1.Fields[3].Text;
end;

procedure TfoMhs.eCariChange(Sender: TObject);
begin
  with dm.quMhs do
  begin
    Close;
    SQL.Clear;
    sql.Text:='select * from tb_mhs where nim like "%'+eCari.Text+'%" or nmMhs like "%'+eCari.Text+'%"';
    open;
  end;

  if dm.quMhs.RecordCount<=0 then
    MessageDlg('Maaf Mahasiswa yang Anda Cari Tidak Ada..',mtInformation,[mbOK],0);
end;

end.
