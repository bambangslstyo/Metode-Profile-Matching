object dm: Tdm
  OldCreateOrder = False
  Height = 301
  Width = 402
  object con: TMyConnection
    Database = 'spkbeasiswa_pm'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object quMhs: TMyQuery
    Connection = con
    SQL.Strings = (
      'select * from tb_mhs')
    ReadOnly = True
    Active = True
    Left = 104
    Top = 24
    object quMhsnim: TStringField
      DisplayLabel = 'NIM'
      FieldName = 'nim'
      Origin = 'tb_mhs.nim'
      FixedChar = True
      Size = 10
    end
    object quMhsnmMhs: TStringField
      DisplayLabel = 'Nama Mahasiswa'
      FieldName = 'nmMhs'
      Origin = 'tb_mhs.nmMhs'
      Size = 35
    end
    object quMhsjenkel: TStringField
      DisplayLabel = 'Jenis Kelamin'
      FieldName = 'jenkel'
      Origin = 'tb_mhs.jenkel'
      Size = 12
    end
    object quMhsjurusan: TStringField
      DisplayLabel = 'Jurusan'
      FieldName = 'jurusan'
      Origin = 'tb_mhs.jurusan'
      Size = 25
    end
  end
  object dsMhs: TMyDataSource
    DataSet = quMhs
    Left = 160
    Top = 24
  end
  object quKriteria: TMyQuery
    Connection = con
    SQL.Strings = (
      
        'select tb_kriteria.kdKriteria, tb_kriteria.nmKriteria, tb_detkri' +
        'teria.subKriteria, tb_detkriteria.nilai, tb_kriteria.jenis'
      'from tb_kriteria INNER JOIN tb_detkriteria'
      'WHERE tb_kriteria.kdKriteria=tb_detkriteria.kdKriteria')
    Active = True
    Left = 104
    Top = 80
    object quKriteriakdKriteria: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Kode Kriteria'
      FieldName = 'kdKriteria'
      Origin = 'tb_kriteria.kdKriteria'
      ReadOnly = True
    end
    object quKriterianmKriteria: TStringField
      DisplayLabel = 'Nama Kriteria'
      FieldName = 'nmKriteria'
      Origin = 'tb_kriteria.nmKriteria'
      ReadOnly = True
      Size = 25
    end
    object quKriteriasubKriteria: TStringField
      DisplayLabel = 'Sub Kriteria'
      FieldName = 'subKriteria'
      Origin = 'tb_detkriteria.subKriteria'
      ReadOnly = True
      Size = 35
    end
    object quKriterianilai: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Nilai'
      FieldName = 'nilai'
      Origin = 'tb_detkriteria.nilai'
      ReadOnly = True
    end
    object quKriteriajenis: TStringField
      DisplayLabel = 'Jenis'
      FieldName = 'jenis'
      Origin = 'tb_kriteria.jenis'
      ReadOnly = True
    end
  end
  object dsKriteria: TMyDataSource
    DataSet = quKriteria
    Left = 160
    Top = 80
  end
  object quHasil: TMyQuery
    Connection = con
    SQL.Strings = (
      'SELECT tb_hasil.nim, tb_mhs.nmMhs,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 1 then tb_dethas' +
        'il.bobotGap end) as K1,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 2 then tb_dethas' +
        'il.bobotGap end) as K2,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 3 then tb_dethas' +
        'il.bobotGap end) as K3,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 4 then tb_dethas' +
        'il.bobotGap end) as K4,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 5 then tb_dethas' +
        'il.bobotGap end) as K5,'
      'CONCAT(tb_hasil.cf) as CF,'
      'CONCAT(tb_hasil.sf) as SF,'
      'CONCAT(tb_hasil.totNilai) as Hasil_Akhir'
      'FROM tb_hasil, tb_dethasil, tb_mhs'
      'where tb_hasil.nim=tb_dethasil.nim'
      'and tb_dethasil.nim=tb_mhs.nim'
      'GROUP BY tb_dethasil.nim')
    Active = True
    Left = 96
    Top = 144
    object quHasilnim: TStringField
      DisplayLabel = 'NIM'
      DisplayWidth = 10
      FieldName = 'nim'
      Origin = 'tb_hasil.nim'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object quHasilnmMhs: TStringField
      DisplayLabel = 'Nama'
      DisplayWidth = 13
      FieldName = 'nmMhs'
      Origin = 'tb_mhs.nmMhs'
      ReadOnly = True
      Size = 35
    end
    object quHasilK1: TMemoField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'K1'
      Origin = 'K1'
      ReadOnly = True
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quHasilK2: TMemoField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'K2'
      Origin = 'K2'
      ReadOnly = True
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quHasilK3: TMemoField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'K3'
      Origin = 'K3'
      ReadOnly = True
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quHasilK4: TMemoField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'K4'
      Origin = 'K4'
      ReadOnly = True
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quHasilK5: TMemoField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'K5'
      Origin = 'K5'
      ReadOnly = True
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quHasilCF: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'CF'
      Origin = 'CF'
      ReadOnly = True
      Size = 5
    end
    object quHasilSF: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'SF'
      Origin = 'SF'
      ReadOnly = True
      Size = 5
    end
    object quHasilHasil_Akhir: TStringField
      Alignment = taCenter
      DisplayLabel = 'Hasil Akhir'
      DisplayWidth = 9
      FieldName = 'Hasil_Akhir'
      Origin = 'Hasil_Akhir'
      ReadOnly = True
      Size = 5
    end
  end
  object dsHasil: TMyDataSource
    DataSet = quHasil
    Left = 160
    Top = 144
  end
  object quDetHasil: TMyQuery
    Connection = con
    SQL.Strings = (
      'select *from tb_dethasil')
    Active = True
    Left = 224
    Top = 24
    object quDetHasilnim: TStringField
      FieldName = 'nim'
      Origin = 'tb_dethasil.nim'
      FixedChar = True
      Size = 10
    end
    object quDetHasilkdKriteria: TIntegerField
      FieldName = 'kdKriteria'
      Origin = 'tb_dethasil.kdKriteria'
    end
    object quDetHasilsubKriteria: TStringField
      FieldName = 'subKriteria'
      Origin = 'tb_dethasil.subKriteria'
      Size = 35
    end
    object quDetHasilnilaiMhs: TFloatField
      FieldName = 'nilaiMhs'
      Origin = 'tb_dethasil.nilaiMhs'
    end
    object quDetHasilnilaiProfil: TFloatField
      FieldName = 'nilaiProfil'
      Origin = 'tb_dethasil.nilaiProfil'
    end
    object quDetHasilgap: TFloatField
      FieldName = 'gap'
      Origin = 'tb_dethasil.gap'
    end
    object quDetHasilbobotGap: TFloatField
      FieldName = 'bobotGap'
      Origin = 'tb_dethasil.bobotGap'
    end
    object quDetHasiljenis: TStringField
      FieldName = 'jenis'
      Origin = 'tb_dethasil.jenis'
    end
    object quDetHasilnilaiJenis: TFloatField
      FieldName = 'nilaiJenis'
      Origin = 'tb_dethasil.nilaiJenis'
    end
  end
  object dsDetHasil: TMyDataSource
    DataSet = quDetHasil
    Left = 280
    Top = 24
  end
  object quNilai: TMyQuery
    Connection = con
    SQL.Strings = (
      'SELECT tb_dethasil.nim, tb_mhs.nmMhs,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 1 then tb_dethas' +
        'il.nilaiMhs end) as K1,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 2 then tb_dethas' +
        'il.nilaiMhs end) as K2,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 3 then tb_dethas' +
        'il.nilaiMhs end) as K3,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 4 then tb_dethas' +
        'il.nilaiMhs end) as K4,'
      
        'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 5 then tb_dethas' +
        'il.nilaiMhs end) as K5'
      'FROM tb_dethasil, tb_mhs'
      'WHERE tb_dethasil.nim=tb_mhs.nim'
      'GROUP BY tb_dethasil.nim')
    Active = True
    Left = 224
    Top = 80
    object quNilainim: TStringField
      DisplayLabel = 'NIM'
      DisplayWidth = 10
      FieldName = 'nim'
      Origin = 'tb_dethasil.nim'
      FixedChar = True
      Size = 10
    end
    object quNilainmMhs: TStringField
      DisplayLabel = 'Nama'
      DisplayWidth = 20
      FieldName = 'nmMhs'
      Origin = 'tb_mhs.nmMhs'
      ReadOnly = True
      Size = 35
    end
    object quNilaiK1: TMemoField
      DisplayWidth = 10
      FieldName = 'K1'
      Origin = 'K1'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quNilaiK2: TMemoField
      DisplayWidth = 10
      FieldName = 'K2'
      Origin = 'K2'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quNilaiK3: TMemoField
      DisplayWidth = 10
      FieldName = 'K3'
      Origin = 'K3'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quNilaiK4: TMemoField
      DisplayWidth = 10
      FieldName = 'K4'
      Origin = 'K4'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quNilaiK5: TMemoField
      DisplayWidth = 10
      FieldName = 'K5'
      Origin = 'K5'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
  end
  object dsNilai: TMyDataSource
    DataSet = quNilai
    Left = 288
    Top = 80
  end
  object quInputHasil: TMyQuery
    Connection = con
    SQL.Strings = (
      'select *from tb_hasil')
    Active = True
    Left = 96
    Top = 200
    object quInputHasilnim: TStringField
      FieldName = 'nim'
      Origin = 'tb_hasil.nim'
      FixedChar = True
      Size = 10
    end
    object quInputHasilcf: TFloatField
      FieldName = 'cf'
      Origin = 'tb_hasil.cf'
    end
    object quInputHasilsf: TFloatField
      FieldName = 'sf'
      Origin = 'tb_hasil.sf'
    end
    object quInputHasiltotNilai: TFloatField
      FieldName = 'totNilai'
      Origin = 'tb_hasil.totNilai'
    end
  end
  object dsInputHasil: TMyDataSource
    DataSet = quInputHasil
    Left = 160
    Top = 200
  end
  object quBobotGap: TMyQuery
    Connection = con
    SQL.Strings = (
      'SELECT tb_dethasil.nim, tb_mhs.nmMhs,'
      
        #9'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 1 then tb_detha' +
        'sil.gap end) as K1,'
      
        #9'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 2 then tb_detha' +
        'sil.gap end) as K2,'
      
        #9'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 3 then tb_detha' +
        'sil.gap end) as K3,'
      
        #9'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 4 then tb_detha' +
        'sil.gap end) as K4,'
      
        #9'GROUP_CONCAT(case WHEN tb_dethasil.kdKriteria = 5 then tb_detha' +
        'sil.gap end) as K5'
      'FROM tb_dethasil, tb_mhs'
      'WHERE tb_dethasil.nim=tb_mhs.nim'
      'GROUP BY tb_dethasil.nim;')
    Active = True
    Left = 224
    Top = 144
    object quBobotGapnim: TStringField
      DisplayLabel = 'NIM'
      FieldName = 'nim'
      Origin = 'tb_dethasil.nim'
      FixedChar = True
      Size = 10
    end
    object quBobotGapnmMhs: TStringField
      DisplayLabel = 'Nama'
      FieldName = 'nmMhs'
      Origin = 'tb_mhs.nmMhs'
      Size = 35
    end
    object quBobotGapK1: TMemoField
      FieldName = 'K1'
      Origin = 'K1'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quBobotGapK2: TMemoField
      FieldName = 'K2'
      Origin = 'K2'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quBobotGapK3: TMemoField
      FieldName = 'K3'
      Origin = 'K3'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quBobotGapK4: TMemoField
      FieldName = 'K4'
      Origin = 'K4'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object quBobotGapK5: TMemoField
      FieldName = 'K5'
      Origin = 'K5'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
  end
  object dsBobotGap: TMyDataSource
    DataSet = quBobotGap
    Left = 288
    Top = 144
  end
end
