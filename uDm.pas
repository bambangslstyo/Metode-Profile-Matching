unit uDm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS;

type
  Tdm = class(TDataModule)
    con: TMyConnection;
    quMhs: TMyQuery;
    dsMhs: TMyDataSource;
    quKriteria: TMyQuery;
    dsKriteria: TMyDataSource;
    quKriteriakdKriteria: TIntegerField;
    quKriterianmKriteria: TStringField;
    quKriteriasubKriteria: TStringField;
    quKriterianilai: TFloatField;
    quKriteriajenis: TStringField;
    quMhsnim: TStringField;
    quMhsnmMhs: TStringField;
    quMhsjenkel: TStringField;
    quMhsjurusan: TStringField;
    quHasil: TMyQuery;
    dsHasil: TMyDataSource;
    quDetHasil: TMyQuery;
    dsDetHasil: TMyDataSource;
    quHasilnim: TStringField;
    quHasilnmMhs: TStringField;
    quHasilK1: TMemoField;
    quHasilK2: TMemoField;
    quHasilK3: TMemoField;
    quHasilK4: TMemoField;
    quHasilK5: TMemoField;
    quHasilCF: TStringField;
    quHasilSF: TStringField;
    quHasilHasil_Akhir: TStringField;
    quNilai: TMyQuery;
    dsNilai: TMyDataSource;
    quNilainim: TStringField;
    quNilainmMhs: TStringField;
    quNilaiK1: TMemoField;
    quNilaiK2: TMemoField;
    quNilaiK3: TMemoField;
    quNilaiK4: TMemoField;
    quNilaiK5: TMemoField;
    quInputHasil: TMyQuery;
    dsInputHasil: TMyDataSource;
    quDetHasilnim: TStringField;
    quDetHasilkdKriteria: TIntegerField;
    quDetHasilsubKriteria: TStringField;
    quDetHasilnilaiMhs: TFloatField;
    quDetHasilnilaiProfil: TFloatField;
    quDetHasilgap: TFloatField;
    quDetHasilbobotGap: TFloatField;
    quDetHasiljenis: TStringField;
    quDetHasilnilaiJenis: TFloatField;
    quBobotGap: TMyQuery;
    dsBobotGap: TMyDataSource;
    quBobotGapnim: TStringField;
    quBobotGapnmMhs: TStringField;
    quBobotGapK1: TMemoField;
    quBobotGapK2: TMemoField;
    quBobotGapK3: TMemoField;
    quBobotGapK4: TMemoField;
    quBobotGapK5: TMemoField;
    quInputHasilnim: TStringField;
    quInputHasilcf: TFloatField;
    quInputHasilsf: TFloatField;
    quInputHasiltotNilai: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
