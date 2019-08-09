object foKriteria: TfoKriteria
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Kriteria Penerima Beasiswa'
  ClientHeight = 507
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
    Caption = 'Data Kriteria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 114
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 34
    Width = 633
    Height = 412
    Cursor = crHandPoint
    Align = alClient
    DataSource = dm.dsKriteria
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 449
    Width = 639
    Height = 58
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 384
    object eCari: TEdit
      Left = 19
      Top = 14
      Width = 158
      Height = 24
      Cursor = crIBeam
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Pencarian Nama Kriteria'
      OnChange = eCariChange
    end
    object bTutup: TButton
      Left = 535
      Top = 14
      Width = 82
      Height = 30
      Cursor = crHandPoint
      Caption = 'Tutup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bTutupClick
    end
  end
end
