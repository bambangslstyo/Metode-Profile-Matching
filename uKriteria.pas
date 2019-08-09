unit uKriteria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfoKriteria = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    eCari: TEdit;
    bTutup: TButton;
    procedure eCariChange(Sender: TObject);
    procedure bTutupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foKriteria: TfoKriteria;

implementation

{$R *.dfm}

uses uDm;

procedure TfoKriteria.bTutupClick(Sender: TObject);
begin
  foKriteria.Close;
end;

procedure TfoKriteria.eCariChange(Sender: TObject);
begin
  with dm.quKriteria do
  begin
    Close;
    SQL.Clear;
    sql.Text:='select tb_kriteria.kdKriteria, tb_kriteria.nmKriteria, tb_detkriteria.subKriteria, tb_detkriteria.nilai, tb_kriteria.jenis '+
              'from tb_kriteria INNER JOIN tb_detkriteria '+
              'where tb_kriteria.kdKriteria=tb_detkriteria.kdKriteria '+
              'and tb_kriteria.nmKriteria like "%'+eCari.Text+'%"';
    open;
  end;

  if dm.quMhs.RecordCount<=0 then
    MessageDlg('Maaf Kriteria yang Anda Cari Tidak Ada..',mtInformation,[mbOK],0);
end;

end.
