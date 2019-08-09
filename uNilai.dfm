object foNilai: TfoNilai
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Nilai Mahasiswa'
  ClientHeight = 546
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultSizeOnly
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 4
    Width = 633
    Height = 24
    Margins.Top = 4
    Align = alTop
    Alignment = taCenter
    Caption = 'Penilaian Mahasiswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 184
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 488
    Width = 639
    Height = 58
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object bTutup: TButton
      Left = 535
      Top = 11
      Width = 82
      Height = 30
      Cursor = crHandPoint
      Caption = 'Tutup'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bTutupClick
    end
    object bSimpan: TButton
      Left = 19
      Top = 11
      Width = 82
      Height = 30
      Cursor = crHandPoint
      Caption = '&Simpan'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bSimpanClick
    end
    object bBatal: TButton
      Left = 128
      Top = 11
      Width = 82
      Height = 30
      Cursor = crHandPoint
      Caption = '&Batal'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bBatalClick
    end
    object bHapus: TButton
      Left = 230
      Top = 11
      Width = 82
      Height = 30
      Cursor = crHandPoint
      Caption = '&Hapus'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bHapusClick
    end
    object eCari: TEdit
      Left = 336
      Top = 16
      Width = 177
      Height = 24
      TabOrder = 4
      TextHint = 'Seacrh by NIM'
      OnChange = eCariChange
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 31
    Width = 639
    Height = 274
    Align = alTop
    TabOrder = 1
    object Image1: TImage
      AlignWithMargins = True
      Left = 265
      Top = 14
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        485973000000B6000000B6019469EFF20000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A0000040D4944415478DA95
        556D6C5355187ECFBDB71F2B5BE75C278A2CC29C884A81C84CFCE1161A834EA3
        527F5058BBB8C448A6A2CEFD233225D5C44CFFA8206A88BAA0DDDA2C01E39628
        1A440D097E0CC89C355BB41364561D5BF7D1EFADBD3D3E8756D741BB76277973
        DF7BDEF73ECF39CFFB9E7319E79C96336C369B2C49BA4D92A4DE45C4EA887898
        31764655D5018FC72321651A36FE5F3E5B0E81C3E1D84C241DE13CB53157DC68
        347ED3D8787FBBD56AFD09AF7C590476BB7D1FD29D92A265ABB66C978CAB6F23
        83E9264A25E7293A71812217CFD2D8E009624C9AA9ADAD79C1E9749EC067BEA2
        08006E05F827A5D7D7F29BB73DCDF4E52B17C52546643240973F8669B0FF502A
        190B261B1B1FD8DEDCDC74BC20414B4B4B6522991AD69494556EB4BF2E29FAD2
        AB720C1AA2521D51300EFBF3171A3CDAC92549F6BA5C4736152480EEAF20A563
        DD83ED5451539733E75AAC5EC62E262369DFFBC5FB3436F42DE4E28E8204767B
        F3E78ACE70DF96DD87A55C710D662B001A4B10C593F04B2095FF020DB85E24CE
        D9C1C2048EE689F2EA0DA6F58FECCD192F83342590682A9A964A2FFC08A7EFDE
        791CCD9638B524416B6BAB261C8EC44DEBEBA59A7B5BAF8AB34C71D5149A3FBE
        E04FC588CE7DB88727A2C1912224728C1A2AABD79A9B3AD99531BD82DED71385
        E6167623FC50284CE73E780A33A9A3C510F461A90FD5ED3ECC64AD61514CE82D
        6A3001792A4024C39F841FF00D90EFF801D480771441607F1862F45D778785D6
        5A9EF87F5E80551AD2858DCEA7BB278E42CFC69234D4B397C767C65508B6B9C8
        83E6F8128F6DD9AD5AAA45516133D05BA7A40B3D0DFFB7935D74C97B52C8F36A
        7777F7BE624FF21B38AFCFE352E355B76F656BEA1FA3AA720D894F45F7985660
        17C1293ADBFF1E05FDC3627E28999CBBB3B7B757CD4B0030F6D157BB5E1EF991
        569C1F92DBD1312398C65A59ADAC33F06B56AE6125A66A52E7E7281618A3E0A5
        8B3CA52684EE1E49A2275D2E57F0324E3E021CB043C0D9D9B02335F3C367B23F
        34C9AD894422A828BA364591DBD4947A23EE4B59E4E25A08719EF4AA2AEB74BB
        3FEE5BB4D05C04B81EDEC6F41E8449AB6721F356D51B3EFF77C3FEFD5FA3A404
        E5C91C0804221D1D4EA3CDF66895C56211BB1BCDA9C495044D4D8E8390E31901
        2E0E12C2BF73AED6BBDDEEBF322937C05665000D99771F6CB62001643900C867
        17C0D928B6DE90052E86597C07FB19B621CBE74B124096B7E03EB700CE47753A
        ED3D5D5D5DFF64E597C1D6C1C45C08764BC6F7E7EBC0CB04E8F337E1B71500A7
        CC6ACB61684E5A0DAB8079617379093CA777BE74EA986C9FF2B35B59FAB6F169
        B59AFA1CE0D943748FF82FE30F40BF2E9147ACF7CC0E737456EE3B7D4CD184A7
        7914776C7D4F4FCF38151EA29B94CC6EF2130889DEEDDF7577222ABFF6FDA7DC
        562478D1E35FDB4AD73249AF4D170000000049454E44AE426082}
      OnClick = Image1Click
    end
    object Label2: TLabel
      Left = 48
      Top = 17
      Width = 22
      Height = 16
      Caption = 'NIM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 47
      Width = 33
      Height = 16
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object eNama: TEdit
      Left = 117
      Top = 44
      Width = 142
      Height = 24
      Cursor = crIBeam
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Nama'
    end
    object eNim: TEdit
      Left = 117
      Top = 14
      Width = 142
      Height = 24
      Cursor = crIBeam
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'NIM'
      OnKeyPress = eNimKeyPress
    end
    object gbKriteria: TGroupBox
      Left = 40
      Top = 74
      Width = 473
      Height = 181
      Caption = 'Kriteria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label4: TLabel
        Left = 16
        Top = 29
        Width = 45
        Height = 16
        Caption = 'K1 : IPK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 59
        Width = 160
        Height = 16
        Caption = 'K2 : Penghasilan Orang Tua'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 89
        Width = 142
        Height = 16
        Caption = 'K3 : Jumlah Tanggungan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 118
        Width = 82
        Height = 16
        Caption = 'K4 : Semester'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 149
        Width = 87
        Height = 16
        Caption = 'K5 : Organisasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbPenghasilan: TComboBox
        Left = 190
        Top = 56
        Width = 195
        Height = 24
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'Pilih Penghasilan'
        OnChange = cbPenghasilanChange
        Items.Strings = (
          '< 1,500,000'
          '>= 1,500,000 dan < 3,000,000'
          '>= 3,000,000 dan < 5,000,000'
          '>= 5,000,000')
      end
      object eK1_Nilai: TEdit
        Left = 403
        Top = 26
        Width = 54
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 1
        Text = 'Nilai K1'
        TextHint = 'Nilai K1'
      end
      object cbIPK: TComboBox
        Left = 190
        Top = 26
        Width = 195
        Height = 24
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TextHint = 'Pilih IPK'
        OnChange = cbIPKChange
        Items.Strings = (
          '< 2.5'
          '>= 2.5 dan < 3'
          '>= 3 dan < 3.5'
          '>= 3.5')
      end
      object eK2_Nilai: TEdit
        Left = 403
        Top = 56
        Width = 54
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 3
        Text = 'Nilai K2'
        TextHint = 'Nilai K2'
      end
      object eK3_Nilai: TEdit
        Left = 403
        Top = 86
        Width = 54
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 4
        Text = 'Nilai K3'
        TextHint = 'Nilai K3'
      end
      object eK4_Nilai: TEdit
        Left = 403
        Top = 116
        Width = 54
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 5
        Text = 'Nilai K4'
        TextHint = 'Nilai K4'
      end
      object eK5_Nilai: TEdit
        Left = 403
        Top = 146
        Width = 54
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 6
        Text = 'Nilai K5'
        TextHint = 'Nilai K5'
      end
      object cbTanggungan: TComboBox
        Left = 190
        Top = 86
        Width = 195
        Height = 24
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        TextHint = 'Pilih Jumlah Tanggungan'
        OnChange = cbTanggunganChange
        Items.Strings = (
          'Jumlah 1'
          'Jumlah 2'
          'Jumlah 3'
          'Jumlah >3')
      end
      object cbSemester: TComboBox
        Left = 190
        Top = 116
        Width = 195
        Height = 24
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        TextHint = 'Pilih Semester'
        OnChange = cbSemesterChange
        Items.Strings = (
          'Semeter <= 2 atau > 8'
          'Semester 3'
          'Semester 4'
          'Semester 5 dan 6'
          'Semeter 7 dan 8')
      end
      object cbOrganisasi: TComboBox
        Left = 190
        Top = 146
        Width = 195
        Height = 24
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        TextHint = 'Pilih Organisasi'
        OnChange = cbOrganisasiChange
        Items.Strings = (
          'Tidak Berorganisasi'
          'Berorganisasi')
      end
    end
    object GroupBox2: TGroupBox
      Left = 519
      Top = 74
      Width = 77
      Height = 181
      Caption = 'Nilai Profile'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Edit1: TEdit
        Left = 22
        Top = 26
        Width = 35
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '3'
        TextHint = 'Profil K1'
      end
      object Edit2: TEdit
        Left = 22
        Top = 56
        Width = 35
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '3'
        TextHint = 'Profil K2'
      end
      object Edit3: TEdit
        Left = 22
        Top = 86
        Width = 35
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '3'
        TextHint = 'Profil K3'
      end
      object Edit4: TEdit
        Left = 22
        Top = 116
        Width = 35
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '2'
        TextHint = 'Profil K4'
      end
      object Edit5: TEdit
        Left = 22
        Top = 146
        Width = 35
        Height = 24
        Cursor = crIBeam
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '4'
        TextHint = 'Profil K5'
      end
    end
    object eNamaH: TEdit
      Left = 336
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'eNamaH'
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 308
    Width = 633
    Height = 177
    Cursor = crHandPoint
    Align = alClient
    DataSource = dm.dsNilai
    DragCursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
end
