object foHasil: TfoHasil
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Ranking Nilai Penerima Beasiswa'
  ClientHeight = 540
  ClientWidth = 645
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
    Width = 639
    Height = 24
    Margins.Top = 4
    Align = alTop
    Alignment = taCenter
    Caption = 'Perhitungan Profile Matching'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 255
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 490
    Width = 645
    Height = 50
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object bTutup: TButton
      Left = 519
      Top = 9
      Width = 82
      Height = 30
      Cursor = crHandPoint
      Caption = '&Tutup'
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
    object bProses: TButton
      Left = 24
      Top = 9
      Width = 82
      Height = 30
      Cursor = crHandPoint
      Caption = '&Proses'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bProsesClick
    end
    object bCek: TButton
      Left = 128
      Top = 9
      Width = 129
      Height = 30
      Cursor = crHandPoint
      Caption = '&Cek Hasil Terbesar'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bCekClick
    end
    object eCari: TEdit
      Left = 288
      Top = 13
      Width = 185
      Height = 24
      TabOrder = 3
      TextHint = 'Search'
      OnChange = eCariChange
    end
  end
  object gbHasil: TGroupBox
    Left = 0
    Top = 299
    Width = 645
    Height = 191
    Align = alClient
    Caption = 'Tabel Hasil Perhitungan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 21
      Width = 635
      Height = 116
      Cursor = crHandPoint
      Align = alTop
      DataSource = dm.dsHasil
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
    end
    object eHasil: TEdit
      AlignWithMargins = True
      Left = 5
      Top = 143
      Width = 635
      Height = 43
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ExplicitHeight = 24
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 31
    Width = 645
    Height = 268
    Align = alTop
    Caption = 'Tabel Perhitungan GAP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      AlignWithMargins = True
      Left = 5
      Top = 21
      Width = 635
      Height = 120
      Cursor = crHandPoint
      Align = alTop
      DataSource = dm.dsNilai
      DynProps = <>
      FooterRowCount = 1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowHeight = 4
      RowLines = 1
      SumList.Active = True
      TabOrder = 0
      TitleParams.Font.Charset = DEFAULT_CHARSET
      TitleParams.Font.Color = clWindowText
      TitleParams.Font.Height = -13
      TitleParams.Font.Name = 'Tahoma'
      TitleParams.Font.Style = [fsBold]
      TitleParams.ParentFont = False
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nim'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'Tahoma'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Width = 85
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nmMhs'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'Tahoma'
          Footer.Font.Style = [fsBold]
          Footer.Value = 'Profile'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Width = 120
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'K1'
          Footer.Value = '3'
          Footer.ValueType = fvtStaticText
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'K2'
          Footer.Value = '3'
          Footer.ValueType = fvtStaticText
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'K3'
          Footer.Value = '3'
          Footer.ValueType = fvtStaticText
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'K4'
          Footer.Value = '2'
          Footer.ValueType = fvtStaticText
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'K5'
          Footer.Value = '4'
          Footer.ValueType = fvtStaticText
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGridEh2: TDBGridEh
      Left = 2
      Top = 144
      Width = 641
      Height = 120
      Align = alTop
      DataSource = dm.dsBobotGap
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
