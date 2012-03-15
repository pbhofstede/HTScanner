object frmNTScouting: TfrmNTScouting
  Left = 399
  Top = 192
  Width = 1277
  Height = 639
  Caption = 'NT Scouting'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgctrlNTScouting: TPageControl
    Left = 0
    Top = 0
    Width = 1261
    Height = 601
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object tbNTPlayers: TTabSheet
      Caption = 'NT Spelers'
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 0
        Width = 1253
        Height = 573
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ID'
        ShowGroupPanel = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = DataSource1
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        RegistryPath = '\Software\HTScanner\NTScouting'
        object dxDBGrid1ID: TdxDBGridMaskColumn
          Visible = False
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID'
        end
        object dxDBGrid1PLAYER_ID: TdxDBGridMaskColumn
          Caption = 'PlayerID'
          DisableEditor = True
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_ID'
        end
        object dxDBGrid1PLAYER_NAME: TdxDBGridMaskColumn
          Caption = 'Naam'
          DisableEditor = True
          Width = 185
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_NAME'
        end
        object dxDBGrid1LEEFTIJD: TdxDBGridMaskColumn
          Caption = 'Leeftijd'
          DisableEditor = True
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEEFTIJD'
        end
        object dxDBGrid1TEAM_ID: TdxDBGridMaskColumn
          Caption = 'TeamID'
          DisableEditor = True
          Width = 87
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TEAM_ID'
        end
        object dxDBGrid1SPECIALITEIT: TdxDBGridMaskColumn
          Caption = 'Specialiteit'
          DisableEditor = True
          Width = 96
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPECIALITEIT'
        end
        object dxDBGrid1LAST_UPDATE: TdxDBGridDateColumn
          Caption = 'Laatste update'
          DisableEditor = True
          Width = 65
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LAST_UPDATE'
        end
        object dxDBGrid1GEBOORTE_DATUM: TdxDBGridDateColumn
          DisableEditor = True
          Visible = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GEBOORTE_DATUM'
        end
        object dxDBGrid1CONDITIE: TdxDBGridMaskColumn
          Caption = 'STAM'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONDITIE'
        end
        object dxDBGrid1KEEPEN: TdxDBGridMaskColumn
          Caption = 'KEEP'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KEEPEN'
        end
        object dxDBGrid1POSITIESPEL: TdxDBGridMaskColumn
          Caption = 'PM'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'POSITIESPEL'
        end
        object dxDBGrid1PASSEN: TdxDBGridMaskColumn
          Caption = 'PAS'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PASSEN'
        end
        object dxDBGrid1VLEUGELSPEL: TdxDBGridMaskColumn
          Caption = 'WNG'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VLEUGELSPEL'
        end
        object dxDBGrid1VERDEDIGEN: TdxDBGridMaskColumn
          Caption = 'DEF'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VERDEDIGEN'
        end
        object dxDBGrid1SCOREN: TdxDBGridMaskColumn
          Caption = 'SCO'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SCOREN'
        end
        object dxDBGrid1SPELHERVATTEN: TdxDBGridMaskColumn
          Caption = 'SH'
          DisableEditor = True
          Width = 30
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPELHERVATTEN'
        end
        object dxDBGrid1ERVARING: TdxDBGridMaskColumn
          Caption = 'XP'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ERVARING'
        end
        object dxDBGrid1LEIDERSCHAP: TdxDBGridMaskColumn
          Caption = 'LS'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEIDERSCHAP'
        end
        object dxDBGrid1TABSHEET: TdxDBGridMaskColumn
          Caption = 'Tab'
          DisableEditor = True
          Sorted = csUp
          Visible = False
          Width = 42
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TABSHEET'
          GroupIndex = 0
        end
        object dxDBGrid1TAB_INDEX: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAB_INDEX'
        end
        object dxDBGrid1LAST_SKILLUP: TdxDBGridDateColumn
          Caption = 'Laatste pop'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LAST_SKILLUP'
        end
        object dxDBGrid1GK_INDEX: TdxDBGridCurrencyColumn
          Caption = 'GK'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GK_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid1CD_INDEX: TdxDBGridCurrencyColumn
          Caption = 'CD'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CD_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid1OCD_INDEX: TdxDBGridCurrencyColumn
          Caption = 'OCD'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OCD_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid1OWB_INDEX: TdxDBGridCurrencyColumn
          Caption = 'OWB'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OWB_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid1IM_INDEX: TdxDBGridCurrencyColumn
          Caption = 'IM'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IM_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid1WING_INDEX: TdxDBGridCurrencyColumn
          Caption = 'WING'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WING_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid1FW_INDEX: TdxDBGridCurrencyColumn
          Caption = 'FW'
          DisableEditor = True
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FW_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid1DFW_INDEX: TdxDBGridCurrencyColumn
          Caption = 'DFW'
          DisableEditor = True
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DFW_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid1IS_U20: TdxDBGridCheckColumn
          Caption = 'U20'
          DisableEditor = True
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_U20'
          ValueChecked = '-1'
          ValueUnchecked = '0'
        end
        object dxDBGrid1EXTRA_TRAINING: TdxDBGridColumn
          Caption = 'Subskill'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EXTRA_TRAINING'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'DutchScouts'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1253
        Height = 217
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 0
        object edBigScout: TRichEdit
          Left = 1
          Top = 42
          Width = 1251
          Height = 174
          Align = alClient
          TabOrder = 0
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 1251
          Height = 41
          Align = alTop
          TabOrder = 1
          object Button1: TButton
            Left = 8
            Top = 8
            Width = 105
            Height = 25
            Caption = 'Check Players'
            TabOrder = 0
            OnClick = Button1Click
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 217
        Width = 1253
        Height = 356
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        object edResult: TMemo
          Left = 1
          Top = 1
          Width = 1251
          Height = 354
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ibdtstNTScouting
    Left = 536
    Top = 120
  end
  object ibdtstNTScouting: TIBDataSet
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NT_SCOUTING'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into NT_SCOUTING'
      
        '  (ID, PLAYER_ID, PLAYER_NAME, TEAM_ID, LAST_UPDATE, GEBOORTE_DA' +
        'TUM, SPECIALITEIT, '
      
        '   CONDITIE, KEEPEN, POSITIESPEL, PASSEN, VLEUGELSPEL, VERDEDIGE' +
        'N, SCOREN, '
      
        '   SPELHERVATTEN, ERVARING, LEIDERSCHAP, TABSHEET, TAB_INDEX, LA' +
        'ST_SKILLUP)'
      'values'
      
        '  (:ID, :PLAYER_ID, :PLAYER_NAME, :TEAM_ID, :LAST_UPDATE, :GEBOO' +
        'RTE_DATUM, '
      
        '   :SPECIALITEIT, :CONDITIE, :KEEPEN, :POSITIESPEL, :PASSEN, :VL' +
        'EUGELSPEL, '
      
        '   :VERDEDIGEN, :SCOREN, :SPELHERVATTEN, :ERVARING, :LEIDERSCHAP' +
        ', :TABSHEET, '
      '   :TAB_INDEX, :LAST_SKILLUP)')
    RefreshSQL.Strings = (
      'SELECT'
      'N.*,'
      'L.LEEFTIJD,'
      'P.GK_INDEX,'
      'P.CD_INDEX,'
      'P.OCD_INDEX,'
      'P.OWB_INDEX,'
      'P.IM_INDEX,'
      'P.WING_INDEX,'
      'P.FW_INDEX,'
      'P.DFW_INDEX,'
      'P.EXTRA_TRAINING,'
      'P.IS_U20'
      'FROM NT_SCOUTING N'
      'LEFT JOIN GET_LEEFTIJD(N.GEBOORTE_DATUM,CURRENT_DATE) L ON (0=0)'
      'LEFT JOIN CALC_NT_POTENTIAL(N.PLAYER_ID) P ON (0=0)'
      'WHERE N.ID = :ID')
    SelectSQL.Strings = (
      'SELECT'
      'N.*,'
      'L.LEEFTIJD,'
      'P.GK_INDEX,'
      'P.CD_INDEX,'
      'P.OCD_INDEX,'
      'P.OWB_INDEX,'
      'P.IM_INDEX,'
      'P.WING_INDEX,'
      'P.FW_INDEX,'
      'P.DFW_INDEX,'
      'P.EXTRA_TRAINING,'
      'P.IS_U20'
      'FROM NT_SCOUTING N'
      'LEFT JOIN GET_LEEFTIJD(N.GEBOORTE_DATUM,CURRENT_DATE) L ON (0=0)'
      'LEFT JOIN CALC_NT_POTENTIAL(N.PLAYER_ID) P ON (0=0)'
      'WHERE COALESCE(N.U20,0) = :U20'
      'ORDER BY N.TAB_INDEX,N.PLAYER_NAME')
    ModifySQL.Strings = (
      'update NT_SCOUTING'
      'set'
      '  ID = :ID,'
      '  PLAYER_ID = :PLAYER_ID,'
      '  PLAYER_NAME = :PLAYER_NAME,'
      '  TEAM_ID = :TEAM_ID,'
      '  LAST_UPDATE = :LAST_UPDATE,'
      '  GEBOORTE_DATUM = :GEBOORTE_DATUM,'
      '  SPECIALITEIT = :SPECIALITEIT,'
      '  CONDITIE = :CONDITIE,'
      '  KEEPEN = :KEEPEN,'
      '  POSITIESPEL = :POSITIESPEL,'
      '  PASSEN = :PASSEN,'
      '  VLEUGELSPEL = :VLEUGELSPEL,'
      '  VERDEDIGEN = :VERDEDIGEN,'
      '  SCOREN = :SCOREN,'
      '  SPELHERVATTEN = :SPELHERVATTEN,'
      '  ERVARING = :ERVARING,'
      '  LEIDERSCHAP = :LEIDERSCHAP,'
      '  TABSHEET = :TABSHEET,'
      '  TAB_INDEX = :TAB_INDEX,'
      '  LAST_SKILLUP = :LAST_SKILLUP'
      'where'
      '  ID = :OLD_ID')
    Left = 520
    Top = 240
  end
  object IBTransaction1: TIBTransaction
    Active = False
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 584
    Top = 176
  end
end
