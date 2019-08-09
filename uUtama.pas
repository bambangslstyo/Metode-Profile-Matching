unit uUtama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ButtonGroup, Vcl.CategoryButtons, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Menus, Vcl.Buttons;

type
  TfoUtama = class(TForm)
    GroupBox1: TGroupBox;
    bMhs: TButton;
    bKeluar: TButton;
    bProfile: TButton;
    bNilai: TButton;
    bKriteria: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    procedure bMhsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bKeluarClick(Sender: TObject);
    procedure bKriteriaClick(Sender: TObject);
    procedure bNilaiClick(Sender: TObject);
    procedure bProfileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foUtama: TfoUtama;

implementation

{$R *.dfm}

uses uMhs, uDm, uKriteria, uNilai, uHasil;

procedure TfoUtama.bKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfoUtama.bKriteriaClick(Sender: TObject);
begin
  foKriteria.Parent:=foUtama.GroupBox2;
  foKriteria.Align:=alClient;
  foKriteria.Show;

  foMhs.Close;
  foNilai.Close;
  foHasil.Close;
end;

procedure TfoUtama.bMhsClick(Sender: TObject);
begin
  foMhs.Parent:=foUtama.GroupBox2;
  foMhs.Align:=alClient;
  foMhs.Show;

  foKriteria.Close;
  foNilai.Close;
  foHasil.Close;
end;

procedure TfoUtama.bNilaiClick(Sender: TObject);
begin
  foNilai.Parent:=foUtama.GroupBox2;
  foNilai.Align:=alClient;
  foNilai.Show;

  foMhs.Close;
  foKriteria.Close;
  foHasil.Close;
end;

procedure TfoUtama.bProfileClick(Sender: TObject);
begin
  foHasil.Parent:=foUtama.GroupBox2;
  foHasil.Align:=alClient;
  foHasil.Show;
  foNilai.Close;
  foMhs.Close;
  foKriteria.Close;
end;

procedure TfoUtama.FormActivate(Sender: TObject);
begin
  dm.con.Server:='localhost';
  dm.con.Username:='root';
  dm.con.Database:='spkbeasiswa_pm';
  dm.con.Connected:=True;

  dm.quMhs.Active:=True;
  dm.quKriteria.Active:=True;
  dm.quHasil.Active:=True;
  dm.quDetHasil.Active:=True;
  dm.quNilai.Active:=True;
  dm.quInputHasil.Active:=True;
  dm.quBobotGap.Active:=True;

end;

end.
