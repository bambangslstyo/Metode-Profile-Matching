object foUtama: TfoUtama
  Left = 342
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SPK Penentuan Beasiswa dengan Profile Matching'
  ClientHeight = 546
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 153
    Height = 546
    Align = alLeft
    TabOrder = 0
    object bMhs: TButton
      AlignWithMargins = True
      Left = 7
      Top = 20
      Width = 139
      Height = 40
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Align = alTop
      Caption = 'Data Mahasiswa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bMhsClick
    end
    object bKeluar: TButton
      AlignWithMargins = True
      Left = 7
      Top = 232
      Width = 139
      Height = 40
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Align = alTop
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bKeluarClick
    end
    object bProfile: TButton
      AlignWithMargins = True
      Left = 7
      Top = 179
      Width = 139
      Height = 40
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Align = alTop
      Caption = 'Profile Matching'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bProfileClick
    end
    object bNilai: TButton
      AlignWithMargins = True
      Left = 7
      Top = 126
      Width = 139
      Height = 40
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Align = alTop
      Caption = 'Nilai Mahasiswa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bNilaiClick
    end
    object bKriteria: TButton
      AlignWithMargins = True
      Left = 7
      Top = 73
      Width = 139
      Height = 40
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Align = alTop
      Caption = 'Data Kriteria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bKriteriaClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 153
    Top = 0
    Width = 639
    Height = 546
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 154
    object Label1: TLabel
      Left = 64
      Top = 193
      Width = 521
      Height = 112
      Alignment = taCenter
      Caption = 
        'SISTEM PENDUKUNG KEPUTUSAN (SPK)  PENENTUAN BEASISWA MENGGUNAKAN' +
        ' METODE PROFILE MATCHING'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
end
