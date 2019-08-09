unit uCariMhs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TfoCariMhs = class(TForm)
    DBGrid1: TDBGrid;
    eCari: TEdit;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure eCariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foCariMhs: TfoCariMhs;

implementation

{$R *.dfm}

uses uDm, uNilai;

procedure TfoCariMhs.DBGrid1CellClick(Column: TColumn);
begin
    foNilai.eNim.Text:=DBGrid1.Fields[0].Text;
    foNilai.eNama.text:=DBGrid1.Fields[1].Text;

    foCariMhs.Close;
end;

procedure TfoCariMhs.eCariChange(Sender: TObject);
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
