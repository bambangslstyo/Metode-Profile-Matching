program spkbeasiswapm;

uses
  Vcl.Forms,
  uUtama in 'uUtama.pas' {foUtama},
  Vcl.Themes,
  Vcl.Styles,
  uMhs in 'uMhs.pas' {foMhs},
  uDm in 'uDm.pas' {dm: TDataModule},
  uMhsTambah in 'uMhsTambah.pas' {foMhsTambah},
  uMhsEdit in 'uMhsEdit.pas' {foMhsEdit},
  uKriteria in 'uKriteria.pas' {foKriteria},
  uNilai in 'uNilai.pas' {foNilai},
  uHasil in 'uHasil.pas' {foHasil},
  uCariMhs in 'uCariMhs.pas' {foCariMhs};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Metropolis UI Blue');
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfoUtama, foUtama);
  Application.CreateForm(TfoHasil, foHasil);
  Application.CreateForm(TfoCariMhs, foCariMhs);
  Application.CreateForm(TfoNilai, foNilai);
  Application.CreateForm(TfoKriteria, foKriteria);
  Application.CreateForm(TfoMhs, foMhs);
  Application.CreateForm(TfoMhsTambah, foMhsTambah);
  Application.CreateForm(TfoMhsEdit, foMhsEdit);
  Application.Run;
end.
