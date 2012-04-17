object frmHTScanner: TfrmHTScanner
  Left = 82
  Top = 33
  Width = 1440
  Height = 860
  Caption = 'Hattrick scanner'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object vMemo: TTntMemo
    Left = 472
    Top = 400
    Width = 185
    Height = 89
    Lines.WideStrings = (
      'vMemo')
    TabOrder = 0
    Visible = False
  end
  object pgctrlLijst: TdxPageControl
    Left = 0
    Top = 22
    Width = 1424
    Height = 781
    ActivePage = tsBidwar
    Align = alClient
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 1
    TabPosition = dxtpTop
    TabStop = True
    TabWidth = 0
    object tbBrowser: TdxTabSheet
      Caption = 'Browser'
      object HTBrowser: TEmbeddedWB
        Left = 0
        Top = 0
        Width = 1424
        Height = 758
        Align = alClient
        TabOrder = 0
        Silent = False
        OnDownloadBegin = HTBrowserDownloadBegin
        OnBeforeNavigate2 = HTBrowserBeforeNavigate2
        OnDocumentComplete = HTBrowserDocumentComplete
        DisableCtrlShortcuts = 'N'
        UserInterfaceOptions = [EnablesFormsAutoComplete, EnableThemes]
        About = ' EmbeddedWB http://bsalsa.com/'
        PrintOptions.Margins.Left = 19.05
        PrintOptions.Margins.Right = 19.05
        PrintOptions.Margins.Top = 19.05
        PrintOptions.Margins.Bottom = 19.05
        PrintOptions.Header = '&w&bpagina &p van &P'
        PrintOptions.HTMLHeader.Strings = (
          '<HTML></HTML>')
        PrintOptions.Footer = '&u&b&d'
        PrintOptions.Orientation = poPortrait
        ControlData = {
          4C0000001B4A0000A43500000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tbWaardes: TdxTabSheet
      Caption = 'Waardes'
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 22
        Width = 1424
        Height = 736
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = dsWaardes
        Filter.Active = True
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        OnCustomDrawCell = dxDBGrid1CustomDrawCell
        OnContextPopup = dxDBGrid1ContextPopup
        object dxDBGrid1ID: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID'
        end
        object dxDBGrid1SPELER_TYPE: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPELER_TYPE'
        end
        object dxDBGrid1SCAN_DATE: TdxDBGridDateColumn
          Caption = 'Datum'
          Sorted = csUp
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SCAN_DATE'
        end
        object dxDBGrid1LEEFTIJD: TdxDBGridMaskColumn
          Caption = 'Leeftijd'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEEFTIJD'
        end
        object dxDBGrid1AANTAL_TRANSFERS: TdxDBGridMaskColumn
          Caption = 'Aantal transfers'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AANTAL_TRANSFERS'
        end
        object dxDBGrid1CUR_LEVEL: TdxDBGridMaskColumn
          Caption = 'Nivo'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CUR_LEVEL'
        end
        object dxDBGrid1SKILL1: TdxDBGridMaskColumn
          Caption = 'Hoofdskill'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKILL1'
        end
        object dxDBGrid1SKILL2: TdxDBGridMaskColumn
          Caption = 'Subskill 1'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKILL2'
        end
        object dxDBGrid1SKILL2_LEVEL: TdxDBGridMaskColumn
          Caption = 'Nivo Subskill 1'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKILL2_LEVEL'
        end
        object dxDBGrid1SKILL3: TdxDBGridColumn
          Caption = 'Subskill 2'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKILL3'
        end
        object dxDBGrid1SKILL3_LEVEL: TdxDBGridColumn
          Caption = 'Nivo subskill 2'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKILL3_LEVEL'
        end
        object dxDBGrid1SKILL4: TdxDBGridColumn
          Caption = 'Subskill 3'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKILL4'
        end
        object dxDBGrid1SKILL4_LEVEL: TdxDBGridColumn
          Caption = 'Nivo subskill 3'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKILL4_LEVEL'
        end
        object dxDBGrid1CUR_WAARDE: TdxDBGridCurrencyColumn
          Caption = 'Transferwaarde'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CUR_WAARDE'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGrid1WINST_AGE_UP: TdxDBGridCurrencyColumn
          Caption = 'Winst (age)'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WINST_AGE_UP'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGrid1COUNT_AGE_UP: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COUNT_AGE_UP'
        end
        object dxDBGrid1WINST_SKILL1_UP: TdxDBGridCurrencyColumn
          Caption = 'Winst (Skill up)'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WINST_SKILL1_UP'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGrid1WINST_SKILL2_UP: TdxDBGridCurrencyColumn
          Caption = 'Winst (subskill)'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WINST_SKILL2_UP'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGrid1WINST_SKILL1_AGE_UP: TdxDBGridCurrencyColumn
          Caption = 'Winst (skill & age)'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WINST_SKILL1_AGE_UP'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGrid1WINST_SKILL2_AGE_UP: TdxDBGridCurrencyColumn
          Caption = 'Winst (subskill & age)'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WINST_SKILL2_AGE_UP'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGrid1COUNT_SKILL_UP: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COUNT_SKILL_UP'
        end
        object dxDBGrid1COUNT_SKILL1_AGE_UP: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COUNT_SKILL1_AGE_UP'
        end
        object dxDBGrid1COUNT_SKILL2_AGE_UP: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COUNT_SKILL2_AGE_UP'
        end
        object dxDBGrid1COUNT_SKILL2_UP: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COUNT_SKILL2_UP'
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1424
        Height = 22
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object tbScouting: TdxTabSheet
      Caption = 'Scouting'
      object dxDBGrid2: TdxDBGrid
        Left = 0
        Top = 22
        Width = 1424
        Height = 573
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        OnDblClick = dxDBGrid2DblClick
        DataSource = dsScouting
        Filter.Active = True
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        OnCustomDrawCell = dxDBGrid2CustomDrawCell
        OnContextPopup = dxDBGrid1ContextPopup
        object dxDBGrid2ID: TdxDBGridMaskColumn
          Visible = False
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID'
        end
        object dxDBGrid2PLAYER_ID: TdxDBGridMaskColumn
          Caption = 'ID'
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_ID'
        end
        object dxDBGrid2PLAYER_NAAM: TdxDBGridMaskColumn
          Caption = 'Naam'
          Width = 147
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_NAAM'
        end
        object dxDBGrid2LEEFTIJD: TdxDBGridMaskColumn
          Caption = 'Leeftijd'
          Width = 193
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEEFTIJD'
        end
        object dxDBGrid2TSI: TdxDBGridMaskColumn
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TSI'
        end
        object dxDBGrid2DEADLINE: TdxDBGridDateColumn
          Caption = 'Deadline'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DEADLINE'
        end
        object dxDBGrid2VRAAGPRIJS: TdxDBGridCurrencyColumn
          Caption = 'Vraagprijs'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VRAAGPRIJS'
          DisplayFormat = ' ,0.00;- ,0.00'
          Nullable = False
        end
        object dxDBGrid2HOOGSTE_BOD: TdxDBGridCurrencyColumn
          Caption = 'Hoogste bod'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HOOGSTE_BOD'
          DisplayFormat = ' ,0.00;- ,0.00'
          Nullable = False
        end
        object dxDBGrid2SUBSKILL: TdxDBGridCurrencyColumn
          Caption = 'Subskill'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SUBSKILL'
          DisplayFormat = ' ,0.00;- ,0.00'
          Nullable = False
        end
        object dxDBGrid2VORM: TdxDBGridMaskColumn
          Caption = 'Vorm'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VORM'
        end
        object dxDBGrid2CONDITIE: TdxDBGridMaskColumn
          Caption = 'Conditie'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONDITIE'
        end
        object dxDBGrid2POSITIESPEL: TdxDBGridCurrencyColumn
          Caption = 'Positiespel'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'POSITIESPEL'
          DisplayFormat = ' 0;- 0'
          Nullable = False
        end
        object dxDBGrid2VERDEDIGEN: TdxDBGridCurrencyColumn
          Caption = 'Verdedigen'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VERDEDIGEN'
          DisplayFormat = ' 0;- 0'
          Nullable = False
        end
        object dxDBGrid2VLEUGELSPEL: TdxDBGridCurrencyColumn
          Caption = 'Vleugelspel'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VLEUGELSPEL'
          DisplayFormat = ' 0;- 0'
          Nullable = False
        end
        object dxDBGrid2KEEPEN: TdxDBGridCurrencyColumn
          Caption = 'Keepen'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KEEPEN'
          DisplayFormat = ' 0;- 0'
          Nullable = False
        end
        object dxDBGrid2PASSEN: TdxDBGridCurrencyColumn
          Caption = 'Passen'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PASSEN'
          DisplayFormat = ' 0;- 0'
          Nullable = False
        end
        object dxDBGrid2SCOREN: TdxDBGridCurrencyColumn
          Caption = 'Scoren'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SCOREN'
          DisplayFormat = ' 0;- 0'
          Nullable = False
        end
        object dxDBGrid2SPELHERVATTING: TdxDBGridMaskColumn
          Caption = 'Spelhervatting'
          Width = 38
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPELHERVATTING'
        end
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1424
        Height = 22
        Align = dalTop
        BarManager = dxBarManager1
      end
      object dbgrdScouting: TdxDBGrid
        Left = 0
        Top = 22
        Width = 1424
        Height = 573
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        OnDblClick = dxDBGrid2DblClick
        DataSource = dsScouting
        Filter.Active = True
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        OnCustomDrawCell = dxDBGrid2CustomDrawCell
        OnContextPopup = dxDBGrid1ContextPopup
        object dxDBGridMaskColumn1: TdxDBGridMaskColumn
          Visible = False
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID'
        end
        object dxDBGridMaskColumn2: TdxDBGridMaskColumn
          Caption = 'ID'
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_ID'
        end
        object dxDBGridMaskColumn3: TdxDBGridMaskColumn
          Caption = 'Naam'
          Width = 147
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_NAAM'
        end
        object dbgrdScoutingAANTAL_KOOPJES: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AANTAL_KOOPJES'
        end
        object dbgrdScoutingHERKOMST: TdxDBGridColumn
          Caption = 'Herkomst'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HERKOMST'
        end
        object dbgrdScoutingSPECIALITEIT: TdxDBGridColumn
          Caption = 'Specialiteit'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPECIALITEIT'
        end
        object dxDBGridMaskLEEFTIJD: TdxDBGridMaskColumn
          Caption = 'Leeftijd'
          Width = 193
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEEFTIJD'
        end
        object dbgrdScoutingERVARING: TdxDBGridColumn
          Caption = 'Ervaring'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ERVARING'
        end
        object dbgrdScoutingLEIDERSCHAP: TdxDBGridColumn
          Caption = 'Leiderschap'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEIDERSCHAP'
        end
        object dbgrdScoutingKARAKTER: TdxDBGridColumn
          Caption = 'Karakter'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KARAKTER'
        end
        object dbgrdScoutingAGRESSIVITEIT: TdxDBGridColumn
          Caption = 'Agressiviteit'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AGRESSIVITEIT'
        end
        object dbgrdScoutingEERLIJKHEID: TdxDBGridColumn
          Caption = 'Eerlijkheid'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EERLIJKHEID'
        end
        object dxDBGridMaskTSI: TdxDBGridMaskColumn
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TSI'
        end
        object dxDBGridDateDEADLINE: TdxDBGridDateColumn
          Caption = 'Deadline'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DEADLINE'
        end
        object dxDBGridCurrencyVRAAGPRIJS: TdxDBGridCurrencyColumn
          Caption = 'Vraagprijs'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VRAAGPRIJS'
          DisplayFormat = ',0'
          Nullable = False
        end
        object dxDBGridCurrencyHOOGSTE_BOD: TdxDBGridCurrencyColumn
          Caption = 'Hoogste bod'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HOOGSTE_BOD'
          DisplayFormat = ',0'
          Nullable = False
        end
        object dxDBGridCurrencySUBSKILL: TdxDBGridCurrencyColumn
          Caption = 'Subskill'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SUBSKILL'
          DisplayFormat = ' ,0.00;- ,0.00'
          Nullable = False
        end
        object dxDBGridMaskVORM: TdxDBGridMaskColumn
          Caption = 'Vorm'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VORM'
        end
        object dxDBGridMaskColumn7: TdxDBGridMaskColumn
          Caption = 'Conditie'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONDITIE'
        end
        object dxDBGridCurrencyColumn4: TdxDBGridCurrencyColumn
          Caption = 'Positiespel'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'POSITIESPEL'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGridCurrencyColumn5: TdxDBGridCurrencyColumn
          Caption = 'Verdedigen'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VERDEDIGEN'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGridCurrencyColumn6: TdxDBGridCurrencyColumn
          Caption = 'Vleugelspel'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VLEUGELSPEL'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGridCurrencyColumn7: TdxDBGridCurrencyColumn
          Caption = 'Keepen'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KEEPEN'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGridCurrencyColumn8: TdxDBGridCurrencyColumn
          Caption = 'Passen'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PASSEN'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGridCurrencyColumn9: TdxDBGridCurrencyColumn
          Caption = 'Scoren'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SCOREN'
          DisplayFormat = ',0;- ,0'
          Nullable = False
        end
        object dxDBGridMaskColumn8: TdxDBGridMaskColumn
          Caption = 'Spelhervatting'
          Width = 38
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPELHERVATTING'
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 595
        Width = 1424
        Height = 163
        Align = alBottom
        Caption = 'Panel1'
        TabOrder = 3
        object dbgrdTransferprijzen: TdxDBGrid
          Left = 1
          Top = 1
          Width = 1422
          Height = 161
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          OnDblClick = dxDBGrid2DblClick
          DataSource = dsTransferprijzen
          Filter.Active = True
          Filter.Criteria = {00000000}
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          object dbgrdTransferprijzenID: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dbgrdTransferprijzenDATUM: TdxDBGridDateColumn
            Caption = 'Datum'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATUM'
          end
          object dbgrdTransferprijzenTRANSFER_PRIZE: TdxDBGridCurrencyColumn
            Caption = 'Transferprijs (mediaan)'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TRANSFER_PRIZE'
            DisplayFormat = ',0'
            Nullable = False
          end
          object dbgrdTransferprijzenTRANSFER_COUNT: TdxDBGridMaskColumn
            Caption = 'Aantal transfers'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TRANSFER_COUNT'
          end
          object dbgrdTransferprijzenTRANSFER_PRIZE_AGEUP_SKILLUP: TdxDBGridCurrencyColumn
            Caption = 'Transferprijs Age + Skill +'
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TRANSFER_PRIZE_AGEUP_SKILLUP'
            DisplayFormat = ',0'
            Nullable = False
          end
          object dbgrdTransferprijzenTRANSFER_COUNT_AGEUP_SKILLUP: TdxDBGridColumn
            Caption = 'Aantal transfers Age + Skill +'
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TRANSFER_COUNT_AGEUP_SKILLUP'
          end
          object dbgrdTransferprijzenTRANSFER_COUNT_SKILLUP: TdxDBGridColumn
            Caption = 'Aantal transfers skill +'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TRANSFER_COUNT_SKILLUP'
          end
          object dbgrdTransferprijzenTRANSFER_PRIZE_SKILLUP: TdxDBGridCurrencyColumn
            Caption = 'Transferprijs Skill +'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TRANSFER_PRIZE_SKILLUP'
            DisplayFormat = ',0'
            Nullable = False
          end
        end
      end
    end
    object dxTabSheet1: TdxTabSheet
      Caption = 'Talents (U20/NT)'
      object dbgrdTalents: TsynDBGrid
        Left = 0
        Top = 24
        Width = 1424
        Height = 734
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'PLAYER_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        OnDblClick = dbgrdTalentsDblClick
        Datasource = dsTalents
        Filter.Active = True
        Filter.Criteria = {00000000}
        HideFocusRect = True
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        RegistryPath = '\Software\HTScanner\Talents'
        OnCustomDrawCell = dbgrdTalentsCustomDrawCell
        Active = False
        DoNotCopyList.Strings = (
          'ID')
        CursorIndicator = 1
        NewSelectBehaviour = True
        SDBG_Barmanager = dxBarManager1
        SDBG_UseStandardPopup = True
        SDBG_SequenceIncrement = 10
        SDBG_SisObjectType = sobjGeenObject
        SDBG_CreateSisObjectDynamicly = False
        SDBG_Hint = False
        SDBG_HintSleep = 0
        ShowCustomPopupWhenEmpty = False
        object dxDBGridMaskColumn5: TdxDBGridMaskColumn
          Caption = 'ID'
          Sizing = False
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_ID'
        end
        object dxDBGridMaskColumn6: TdxDBGridMaskColumn
          Caption = 'Naam'
          Width = 147
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_NAME'
        end
        object dxDBGridColumn1: TdxDBGridColumn
          Caption = 'Herkomst'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LAND'
        end
        object dxDBGridColumn2: TdxDBGridColumn
          Caption = 'Specialiteit'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPECIALITEIT'
        end
        object dxDBGridMaskColumn9: TdxDBGridMaskColumn
          Caption = 'Leeftijd'
          Width = 193
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEEFTIJD'
        end
        object dxDBGridColumn4: TdxDBGridColumn
          Caption = 'Leiderschap'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEIDERSCHAP'
        end
        object dxDBGridMaskColumn10: TdxDBGridMaskColumn
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TSI'
        end
        object dxDBGridDateColumn1: TdxDBGridDateColumn
          Caption = 'Deadline'
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATUM'
        end
        object dxDBGridMaskColumn11: TdxDBGridMaskColumn
          Caption = 'Vorm'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VORM'
        end
        object dxDBGridMaskColumn12: TdxDBGridMaskColumn
          Caption = 'Conditie'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COND'
        end
        object dxDBGridCurrencyColumn10: TdxDBGridColumn
          Caption = 'Positiespel'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'POSITIESPEL'
        end
        object dxDBGridCurrencyColumn11: TdxDBGridColumn
          Caption = 'Verdedigen'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VERDEDIGEN'
        end
        object dxDBGridCurrencyColumn12: TdxDBGridColumn
          Caption = 'Vleugelspel'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VLEUGELSPEL'
        end
        object dxDBGridCurrencyColumn13: TdxDBGridColumn
          Caption = 'Keepen'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KEEPEN'
        end
        object dxDBGridCurrencyColumn14: TdxDBGridColumn
          Caption = 'Passen'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PASSEN'
        end
        object dxDBGridCurrencyColumn15: TdxDBGridColumn
          Caption = 'Scoren'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SCOREN'
        end
        object dxDBGridMaskColumn13: TdxDBGridMaskColumn
          Caption = 'Spelhervatting'
          Width = 38
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPELHERVATTEN'
        end
        object dbgrdTalentsColumn18: TdxDBGridDateColumn
          Caption = 'Gescout'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATUM_GESCOUT'
        end
        object dbgrdTalentsColumn19: TdxDBGridCheckColumn
          MinWidth = 20
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'U20'
          ValueChecked = '-1'
          ValueUnchecked = '0'
        end
        object dbgrdTalentsColumn20: TdxDBGridCheckColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NT'
          ValueChecked = '-1'
          ValueUnchecked = '0'
        end
        object dbgrdTalentsVRAAGPRIJS: TdxDBGridCurrencyColumn
          Caption = 'Vraagprijs'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VRAAGPRIJS'
          DisplayFormat = ',0'
          Nullable = False
        end
        object dbgrdTalentsHOOGSTE_BOD: TdxDBGridCurrencyColumn
          Caption = 'Hoogste bod'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HOOGSTE_BOD'
          DisplayFormat = ',0'
          Nullable = False
        end
        object dbgrdTalentsLOON: TdxDBGridCurrencyColumn
          Caption = 'Loon'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LOON'
          DisplayFormat = ',0'
          Nullable = False
        end
      end
      object dxBarDockControl4: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1424
        Height = 24
        Align = dalTop
        BarManager = dxBarManager1
        SunkenBorder = True
        UseOwnSunkenBorder = True
      end
    end
    object tbTSI: TdxTabSheet
      Caption = 'TSI'
      object TSIBrowser: TEmbeddedWB
        Left = 0
        Top = 0
        Width = 1424
        Height = 758
        Align = alClient
        TabOrder = 0
        OnDownloadBegin = TSIBrowserDownloadBegin
        OnBeforeNavigate2 = TSIBrowserBeforeNavigate2
        OnDocumentComplete = TSIBrowserDocumentComplete
        DisableCtrlShortcuts = 'N'
        UserInterfaceOptions = [EnablesFormsAutoComplete, EnableThemes]
        About = ' EmbeddedWB http://bsalsa.com/'
        PrintOptions.Margins.Left = 19.05
        PrintOptions.Margins.Right = 19.05
        PrintOptions.Margins.Top = 19.05
        PrintOptions.Margins.Bottom = 19.05
        PrintOptions.Header = '&w&bpagina &p van &P'
        PrintOptions.HTMLHeader.Strings = (
          '<HTML></HTML>')
        PrintOptions.Footer = '&u&b&d'
        PrintOptions.Orientation = poPortrait
        ControlData = {
          4C0000001B4A0000A43500000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tbFriendly: TdxTabSheet
      Caption = 'Friendly'
      object trlFriendly: TdxTreeList
        Left = 0
        Top = 0
        Width = 1424
        Height = 768
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        TabOrder = 0
        LookAndFeel = lfUltraFlat
        Options = [aoColumnSizing, aoColumnMoving, aoEditing, aoTabThrough, aoRowSelect, aoAutoWidth, aoAutoSort]
        OptionsEx = [aoUseBitmap, aoBandHeaderWidth, aoAutoCalcPreviewLines, aoBandSizing, aoBandMoving, aoDragScroll, aoDragExpand, aoAutoSortRefresh, aoAnsiSort]
        TreeLineColor = clGrayText
        OnCompare = trlFriendlyCompare
        object dxTreeList1Column1: TdxTreeListColumn
          Caption = 'Land'
          BandIndex = 0
          RowIndex = 0
        end
        object dxTreeList1Column2: TdxTreeListColumn
          Caption = 'Team'
          BandIndex = 0
          RowIndex = 0
        end
        object dxTreeList1Column3: TdxTreeListColumn
          Caption = 'Divisie'
          BandIndex = 0
          RowIndex = 0
        end
        object dxTreeList1Column4: TdxTreeListColumn
          Caption = 'Stand'
          BandIndex = 0
          RowIndex = 0
        end
        object trlFriendlyColumn5: TdxTreeListColumn
          Caption = 'Supportersclub'
          Sorted = csDown
          BandIndex = 0
          RowIndex = 0
        end
        object trlFriendlyColumn6: TdxTreeListColumn
          Caption = 'Stadion'
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsBidwar: TdxTabSheet
      Caption = 'Bidwar'
      object lblSpelerID: TLabel
        Left = 16
        Top = 16
        Width = 41
        Height = 13
        Caption = 'SpelerID'
      end
      object lblMaxPrijs: TLabel
        Left = 16
        Top = 39
        Width = 67
        Height = 13
        Caption = 'Maximum prijs'
      end
      object lblTeamID: TLabel
        Left = 331
        Top = 13
        Width = 66
        Height = 13
        Caption = 'Jouw teamID '
      end
      object edSpelerID: TdxMaskEdit
        Left = 88
        Top = 10
        Width = 121
        TabOrder = 0
        IgnoreMaskBlank = False
      end
      object btnStartBidWar: TButton
        Left = 232
        Top = 8
        Width = 89
        Height = 25
        Caption = 'Start bidwar!'
        TabOrder = 1
        OnClick = btnStartBidWarClick
      end
      object edMaxPrize: TdxCurrencyEdit
        Left = 88
        Top = 32
        Width = 121
        TabOrder = 2
        DecimalPlaces = 0
        DisplayFormat = ',0'
        StoredValues = 0
      end
      object btnStopBidwar: TButton
        Left = 232
        Top = 40
        Width = 89
        Height = 25
        Caption = 'Stop bidwar'
        Enabled = False
        TabOrder = 3
        OnClick = btnStopBidwarClick
      end
      object Button1: TButton
        Left = 200
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 4
        OnClick = Button1Click
      end
      object mLogging: TdxMemo
        Left = 16
        Top = 80
        Width = 577
        TabOrder = 5
        ScrollBars = ssVertical
        Height = 393
      end
    end
    object tsJeugdScout: TdxTabSheet
      Caption = 'Jeugdscout'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1424
        Height = 425
        Align = alTop
        Caption = 'Panel2'
        TabOrder = 0
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 806
          Height = 423
          Align = alLeft
          TabOrder = 0
          object btnJeugdScoutLogin: TButton
            Left = 24
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Log in'
            TabOrder = 0
            OnClick = btnJeugdScoutLoginClick
          end
          object btnJeugdScoutScout: TButton
            Left = 24
            Top = 64
            Width = 75
            Height = 25
            Caption = 'Scout!'
            TabOrder = 1
            OnClick = btnJeugdScoutScoutClick
          end
        end
        object wbJeugdscout1: TEmbeddedWB
          Left = 807
          Top = 1
          Width = 616
          Height = 423
          Align = alClient
          TabOrder = 1
          Silent = False
          OnDocumentComplete = HTBrowserDocumentComplete
          DisableCtrlShortcuts = 'N'
          UserInterfaceOptions = [EnablesFormsAutoComplete, EnableThemes]
          About = ' EmbeddedWB http://bsalsa.com/'
          PrintOptions.Margins.Left = 19.05
          PrintOptions.Margins.Right = 19.05
          PrintOptions.Margins.Top = 19.05
          PrintOptions.Margins.Bottom = 19.05
          PrintOptions.Header = '&w&bpagina &p van &P'
          PrintOptions.HTMLHeader.Strings = (
            '<HTML></HTML>')
          PrintOptions.Footer = '&u&b&d'
          PrintOptions.Orientation = poPortrait
          ControlData = {
            4C0000001B4A0000A43500000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 425
        Width = 807
        Height = 343
        Align = alLeft
        Caption = 'Panel3'
        TabOrder = 1
        object wbJeugdscout2: TEmbeddedWB
          Left = 1
          Top = 1
          Width = 805
          Height = 341
          Align = alClient
          TabOrder = 0
          Silent = False
          OnDocumentComplete = HTBrowserDocumentComplete
          DisableCtrlShortcuts = 'N'
          UserInterfaceOptions = [EnablesFormsAutoComplete, EnableThemes]
          About = ' EmbeddedWB http://bsalsa.com/'
          PrintOptions.Margins.Left = 19.05
          PrintOptions.Margins.Right = 19.05
          PrintOptions.Margins.Top = 19.05
          PrintOptions.Margins.Bottom = 19.05
          PrintOptions.Header = '&w&bpagina &p van &P'
          PrintOptions.HTMLHeader.Strings = (
            '<HTML></HTML>')
          PrintOptions.Footer = '&u&b&d'
          PrintOptions.Orientation = poPortrait
          ControlData = {
            4C0000001B4A0000A43500000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object wbJeugdscout3: TEmbeddedWB
        Left = 807
        Top = 425
        Width = 617
        Height = 343
        Align = alClient
        TabOrder = 2
        Silent = False
        OnDocumentComplete = HTBrowserDocumentComplete
        DisableCtrlShortcuts = 'N'
        UserInterfaceOptions = [EnablesFormsAutoComplete, EnableThemes]
        About = ' EmbeddedWB http://bsalsa.com/'
        PrintOptions.Margins.Left = 19.05
        PrintOptions.Margins.Right = 19.05
        PrintOptions.Margins.Top = 19.05
        PrintOptions.Margins.Bottom = 19.05
        PrintOptions.Header = '&w&bpagina &p van &P'
        PrintOptions.HTMLHeader.Strings = (
          '<HTML></HTML>')
        PrintOptions.Footer = '&u&b&d'
        PrintOptions.Orientation = poPortrait
        ControlData = {
          4C0000001B4A0000A43500000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object dxBarDockControl3: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1424
    Height = 22
    Align = dalTop
    BarManager = dxBarManager1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 803
    Width = 1424
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 70
      end
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 1000
      end
      item
        Width = 50
      end>
    PopupMenu = pmStatusbar
    SimplePanel = False
  end
  object ibdbHTInfo: TIBDatabase
    DatabaseName = 'D:\Projecten\Harry\Hattrick Scanner\DATA\HT_INFO.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=jrmkk95'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    AllowStreamedConnected = False
    Left = 88
    Top = 96
  end
  object dsWaardes: TDataSource
    DataSet = ibqrWaardes
    Left = 312
    Top = 128
  end
  object ibqrWaardes: TIBQuery
    Database = ibdbHTInfo
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TRAINING_WINST(:ID)')
    Left = 312
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Waardes'
      'Scouting'
      'Main'
      'Talents')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True)
    ImageOptions.Images = ImageList1
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 464
    Top = 112
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Waardes'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 484
      FloatTop = 282
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnVerversen'
        end
        item
          Visible = True
          ItemName = 'btnAgeTest'
        end>
      OldName = 'Waardes'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Scouting'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 484
      FloatTop = 282
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnVerwijderScouting'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnRefreshScouting'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnTransferprijsEvaluatie'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnScoutingExportXLS'
        end>
      OldName = 'Scouting'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Main'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 484
      FloatTop = 282
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnLogin'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnPlayerInfo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnScout'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnStopScouting'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lblStatus'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnTest'
        end>
      OldName = 'Main'
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Talents'
      CaptionButtons = <>
      DockControl = dxBarDockControl4
      DockedDockControl = dxBarDockControl4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 506
      FloatTop = 376
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnRefreshTalents'
        end>
      OldName = 'Talents'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnExportdata: TdxBarButton
      Caption = 'Export data'
      Category = 0
      Hint = 'Export data'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = btnExportdataClick
    end
    object btnImportData: TdxBarButton
      Caption = 'Import data'
      Category = 0
      Hint = 'Import data'
      Visible = ivAlways
      ImageIndex = 68
      OnClick = btnImportDataClick
    end
    object btnExportExcel: TdxBarButton
      Caption = 'Export naar Excel'
      Category = 0
      Hint = 'Export naar Excel'
      Visible = ivAlways
      ImageIndex = 75
      OnClick = btnExportExcelClick
    end
    object btnCopyPlayerLinkClipboard: TdxBarButton
      Caption = 'Copy playerlink'
      Category = 0
      Hint = 'Copy playerlink'
      Visible = ivAlways
      ImageIndex = 33
      OnClick = btnCopyPlayerLinkClipboardClick
    end
    object btnVerversen: TdxBarButton
      Caption = 'Refresh'
      Category = 1
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 142
      OnClick = btnVerversenClick
    end
    object btnVerwijderScouting: TdxBarButton
      Caption = 'Delete'
      Category = 2
      Hint = 'Delete'
      Visible = ivAlways
      ImageIndex = 56
      OnClick = btnVerwijderScoutingClick
    end
    object btnLogin: TdxBarButton
      Caption = 'Login'
      Category = 3
      Hint = 'Login'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = Button1Click
    end
    object pckedPlayerType: TdxBarListItem
      Caption = 'Spelertype'
      Category = 3
      Visible = ivNever
      ItemIndex = 0
      Items.Strings = (
        'Keepers'
        'Vleugelverdedigers'
        'Centrale verdedigers'
        'Centrale middenvelders'
        'Vleugelspelers'
        'Aanvallers'
        'Trainers')
      ShowCheck = True
    end
    object btnScanLijst: TdxBarButton
      Caption = 'Scan transferlijst'
      Category = 3
      Enabled = False
      Hint = 'Scan transferlijst'
      Visible = ivNever
      ImageIndex = 27
      OnClick = btnStartScanClick
    end
    object btnStartScouting: TdxBarButton
      Caption = 'Scout!'
      Category = 3
      Enabled = False
      Hint = 'Scout!'
      Visible = ivNever
      ImageIndex = 24
    end
    object edMinAge: TdxBarEdit
      Align = iaRight
      Caption = 'Min. age'
      Category = 3
      Hint = 'Min. age'
      Visible = ivNever
      Text = '17'
      ShowCaption = True
      Width = 30
    end
    object edMaxAge: TdxBarEdit
      Caption = 'Max. age'
      Category = 3
      Hint = 'Max. age'
      Visible = ivNever
      Text = '32'
      ShowCaption = True
      Width = 30
    end
    object btnEdPaginas: TdxBarEdit
      Caption = '/'
      Category = 3
      Hint = '/'
      Visible = ivNever
      Text = '10'
      ShowCaption = True
      Width = 30
    end
    object btnScoutingExportXLS: TdxBarButton
      Caption = 'Export naar Excel'
      Category = 2
      Hint = 'Export naar Excel'
      Visible = ivAlways
      ImageIndex = 151
      OnClick = btnScoutingExportXLSClick
    end
    object btnVanPagins: TdxBarEdit
      Caption = 'Pagina'#39's'
      Category = 3
      Hint = 'Pagina'#39's'
      Visible = ivNever
      Text = '1'
      ShowCaption = True
      Width = 100
    end
    object btnTransferprijsEvaluatie: TdxBarButton
      Caption = 'Evalueer transferprijzen'
      Category = 0
      Hint = 'Evalueer transferprijzen'
      Visible = ivAlways
      ImageIndex = 73
      OnClick = btnTransferprijsEvaluatieClick
    end
    object btnRefreshScouting: TdxBarButton
      Caption = 'Refresh'
      Category = 2
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 142
      OnClick = btnRefreshScoutingClick
    end
    object btnUitdaging: TdxBarButton
      Caption = 'Regel uitdaging'
      Category = 3
      Hint = 'Regel uitdaging'
      Visible = ivNever
      ImageIndex = 97
      OnClick = btnUitdagingClick
    end
    object btnScout: TdxBarListItem
      Caption = 'Scout'
      Category = 3
      Enabled = False
      Visible = ivAlways
      ImageIndex = 24
      OnClick = btnScoutClick
      Items.Strings = (
        'Versterkingen'
        'Talenten (U20/NT potentie)'
        'Bekende talenten'
        'Internationals (NT)'
        'Internationals (U20)'
        'Koopjes'
        'Jeugdcompetities'
        'Auto scout'
        'Blacklist'
        'Alle 17+ jeugdspelers'
        'Test'
        'Mini-TBS'
        'U20-lijstjes'
        'NT-lijstjes')
    end
    object btnRefreshTalents: TdxBarButton
      Caption = 'Refresh'
      Category = 4
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 142
      OnClick = btnRefreshTalentsClick
    end
    object btnAddScoutingToBot: TdxBarButton
      Caption = 'Voeg speler toe aan biedbot'
      Category = 2
      Hint = 'Voeg speler toe aan biedbot'
      Visible = ivAlways
      ImageIndex = 172
      OnClick = btnAddScoutingToBotClick
    end
    object btnStopScouting: TdxBarButton
      Caption = 'Stop scouting!'
      Category = 2
      Hint = 'Stop scouting!'
      Visible = ivNever
      ButtonStyle = bsChecked
      ImageIndex = 99
      UnclickAfterDoing = False
    end
    object btnGetKarakter: TdxBarButton
      Caption = 'Karakter'
      Category = 3
      Hint = 'Karakter'
      Visible = ivNever
      ImageIndex = 70
      OnClick = btnGetKarakterClick
    end
    object btnParseU17Docs: TdxBarButton
      Caption = 'Parse U17 docs'
      Category = 3
      Hint = 'Parse U17 docs'
      Visible = ivAlways
      ImageIndex = 75
      OnClick = btnParseU17DocsClick
    end
    object btnTest: TdxBarButton
      Caption = 'Test'
      Category = 0
      Hint = 'Test'
      Visible = ivAlways
      OnClick = btnTestClick
    end
    object btnBigScout: TdxBarButton
      Caption = 'BigScout!'
      Category = 3
      Hint = 'BigScout!'
      Visible = ivAlways
      ImageIndex = 75
      OnClick = btnBigScoutClick
    end
    object btnPlayerInfo: TdxBarButton
      Caption = 'Playerinfo'
      Category = 3
      Hint = 'Playerinfo'
      Visible = ivAlways
      ImageIndex = 31
      OnClick = btnPlayerInfoClick
    end
    object btnAddToKoopBot: TdxBarButton
      Caption = 'Toevoegen aan koopbot'
      Category = 3
      Hint = 'Toevoegen aan koopbot'
      Visible = ivNever
      ImageIndex = 12
      OnClick = btnAddToKoopBotClick
    end
    object btnAgeTest: TdxBarButton
      Caption = 'Test'
      Category = 1
      Hint = 'Test'
      Visible = ivAlways
      OnClick = btnAgeTestClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Google Docs'
      Category = 3
      Visible = ivAlways
      ImageIndex = 75
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnParseU17Docs'
        end
        item
          Visible = True
          ItemName = 'btnBigScout'
        end
        item
          Visible = True
          ItemName = 'btnNTDoc'
        end
        item
          Visible = True
          ItemName = 'btnHTCY'
        end>
    end
    object btnNTDoc: TdxBarButton
      Caption = 'NT/U20 Docs'
      Category = 3
      Hint = 'NT/U20 Docs'
      Visible = ivAlways
      ImageIndex = 75
      OnClick = btnNTDocClick
    end
    object lblStatus: TdxBarStatic
      Caption = 'Status'
      Category = 3
      Hint = 'Status'
      Visible = ivAlways
    end
    object btnHTCY: TdxBarButton
      Caption = 'HTYC Files'
      Category = 3
      Hint = 'HTYC Files'
      Visible = ivAlways
      ImageIndex = 75
      OnClick = btnHTCYClick
    end
  end
  object pmScouting: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnExportdata'
      end
      item
        Visible = True
        ItemName = 'btnImportData'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnCopyPlayerLinkClipboard'
      end
      item
        Visible = True
        ItemName = 'btnAddScoutingToBot'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnExportExcel'
      end>
    UseOwnFont = False
    Left = 464
    Top = 192
  end
  object ImageList1: TImageList
    Left = 88
    Top = 280
    Bitmap = {
      494C0101C500C700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002003000001002000000000000020
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000167010001670100016701000167
      0100016701000000000034CC670034CC670034CC670034CC670034CC670034CC
      670034CC670034CC670034CC6700D7EBD5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDE2D100116F1000016701000167
      0100016701000000000034CC670034CC670034CC670034CC670034CC670034CC
      670041CE6F007FDB9A00D7EBD500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007EAD7800016701000167
      0100016701000000000034CC670034CC670034CC670034CC670059D48000B1E5
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECEAE000116F10000167
      0100016701000000000034CC670041CE6F007FDB9A00D7EBD500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008EB686000167
      01000167010000000000B1E5BB0000000000BF5A01000000000000000000BE7C
      5B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002078
      1F00016701000000000000000000AF4A0100AF4A010000000000B2581F00A944
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009EBE
      95000167010000000000B9704C00BF5A0100AF4A0100C25D0100B8530100E3C3
      B300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000408A3D000000000000000000B5622E00BC570100BE7C5B00E3C3B3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2643D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000085695E008F6F5B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000966B4B00CE9F6F00AB784D0085695E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F0F0F000EFEFEF00FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D0CD00B0583000CEC5BF0000000000000000000000
      0000000000000000000000000000000000009375570090786000907060008060
      5000806050007050400070483000604030006040300060403000705030007050
      4000805840009060500090685000000000000000000000000000000000000000
      00000000000000000000966B4B00CAAA8700FFF7C4009463410085695E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F000CCCCCC009898980094949400CBCBCB00EDEDED00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000D9D2CF00B0583000C0704000A0583000D0C6C000000000000000
      0000000000000000000000000000000000009070500000000000FFF0E000F0D0
      C000E0C8B000C0A09000A08870006048300080686000A0908000C0B0A000D0C0
      B000E0D8D000D0B0A00090685000000000000000000000000000000000000000
      0000937565008A644C00E7CAA800FFDCB300FFDCB300AF87640055280E006844
      360085695E0000000000000000000000000000000000FCFCFC00F3F3F300EDED
      ED00E0E0E00091919100838383006E6C6C00444444005E5E5E0091919100CCCC
      CC00EDEDED00FEFEFE0000000000000000000000000000000000000000000000
      0000DAD4D000B0583000E0805000E0785000C0704000A0503000D1C8C2000000
      000000000000000000000000000000000000967B6E00FFF0F000A08060008068
      50007050300080584000A0706000805840009070600080685000806040007050
      300070504000B0A0400060584000000000000000000000000000BAA79D00BAA7
      9D00D2B69900E7CAA800FDE4BF00FFE9C700FFF8D100F5D6B300D8B89300AD89
      64005E2F150085695E000000000000000000FCFCFC00D5D5D500A2A2A2008080
      800070707000CACACA00AFDEBF00B5B0B0009D8C8C006A5D5D00464646005E5E
      5E0092929200D4D4D400F2F2F200FEFEFE00000000000000000000000000E1DA
      D800C0785000F0987000FFA07000E0885000D0785000C0684000A0503000D4C9
      C30000000000000000000000000000000000A4826E00FFF8F00090705000FFE0
      D000F0D0C000F0C8C000D0B0A00080605000C0A09000D0C0B000D0B8A000D0A8
      900090685000E0E02000807040000000000000000000C9B6A700E8DBC700EDD5
      B800FFEBCC00F8D6B700C0704F00E9956300DD8D5C00DFA67B00FFE7C300F4D6
      B100D7B6940073472900896F650000000000D5D5D5008A8A8A005E5E5E005959
      5900A9A9A900E5E5E500CCCCCC00C2C0C000B2A3A300BC999900B68C8C006051
      510047474700686868009F9F9F00DADADA00000000000000000000000000F0A0
      7000E0987000E0907000FFA88000F0906000E0805000B0583000A05020009048
      200000000000000000000000000000000000B2907C00FFF8F000A0786000FFFF
      F000FFF0F000FFE0D000E0C0B00080605000D0988000F0D8D000F0E8E000FFF0
      F0009070600070B0A0005048400000000000CBB8A200E8DBC700EED8C100FFEF
      D100FFEECF00FFFFE200B4816200790000008F2E0600F7E5C400FFEDCB00FFE7
      C300F5D7B700DABD9B005B2D140000000000BEBEBE00DADADA00DCDCDC00E2E2
      E200E0E0E000E1DED800F0D9C200F8EFE800DBC8B400B8ACA500BA9B9B00D899
      9900BA81810069525200505050007A7A7A000000000000000000000000000000
      000000000000D0886000FFB08000F0906000F0885000A0502000000000000000
      000000000000000000000000000000000000C0907C00F0E8E000A07860000000
      000000000000FFE8E000F0D8D00090685000F0D8C000E0A08000FFD8C000FFF8
      F000A078600000FFFF004080700000000000C5B2A000E8DBC700FFF0D700FFEC
      D200FFE7CE00FFFFED00CFB295006F000000A4583700FFFFF000FFE7C900FFE5
      C600FFEAC900FCE3C500AD8A6B0090766D00E6E6E600E9E9E900F3E6D900EDD9
      BE00F4EBDE00F5EBDB00FFDCB900FFF5EC00FED4A900F5B87C00CC9F7200AB8D
      7900BA8E8E00EE979700916565006A6A6A000000000000000000000000000000
      000000000000D0886000FFB09000F0986000F0885000A0502000000000000000
      000000000000000000000000000000000000C19B8200F0E8E000B08060000000
      000000000000F0E8E000D0988000A0705000D0A89000FFF0F00000000000FFF0
      F000B0806000807870005040400000000000CFBFAE00F8E7D500FFF4DF00FFEC
      D600FFECD600FFFFF300CDAF940074000000A5573600FFFFF100FFE8CF00FFE5
      CA00FFEACF00FFEBD100E4CAAF00886A5C00F1F1F100D0D0D000C6BCB200CCBB
      A500E1DACE00F5EBDB00FFDCB900FFF5EC00FED4A900F5B87C00E9A15800DD87
      3200BB722A007A6E6700846363007C7C7C000000000000000000000000000000
      000000000000D0886000FFB89000FFA07000F0885000A0502000000000000000
      000000000000000000000000000000000000C19F8800F0D8D000C08860000000
      0000F0C0A000E0B09000F0E0D000A0786000F0E0D000E0B09000FFF8F000FFF0
      E000C0887000D0C8C0005048400000000000CFC2B700FDEFE000FFF4E300FFEF
      DE00FFF0DC0000000000D6C1AA0077000000A6583600FFFFF800FFEDD500FFE9
      D000FFECD200FFF2D900ECD7C000866A5C00000000000000000000000000E5E5
      E500C7C7C700AFAFAC00B2A79B00DAD4CE00F4CCA300E4AF7A00B28A61009672
      5700B2828200EB969600BF8B8B00E4E4E4000000000000000000000000000000
      000000000000D0886000FFB8A000FFA07000F0885000A0502000000000000000
      000000000000000000000000000000000000C19F8800E0D8C000C09070000000
      0000FFF8F000F0E8E000D0A89000B0786000FFF0E0000000000000000000FFF0
      E000D09070008070C0005040400000000000D0C7BD00FDF5E900FFF8EB00FFF2
      E600FFFDEF00EFE6DA008C3D1E00650000008C3C2300FFFFFE00FFF0DD00FFEB
      D600FFEED900FFFAE500F2DEC900977E72000000000000000000F9F9F900E9E9
      E900D1D1D100A7A7A7006E6E6E0049494900565656007E6C6C00A8808000D299
      9900A9828200BFB2B200F6F6F600000000000000000000000000000000000000
      000000000000E0907000FFC0A000FFA88000F0906000A0482000000000000000
      000000000000000000000000000000000000CDA38E00E0D0C000D09870000000
      0000F0C0B000E0C0B000F0E0D000C0907000E0C8B000FFF8F000FFF0E000FFE0
      D000C08870006060FF004038800000000000DFD4C800F7F4EF00FFFFF900FFF6
      EC00FFFFF900E6D9C900B3938200BAA59A00C2AEA300FFFFF800FFF4E300FFEE
      DC00FFFAEB00FFFFFC00E2CAB400977E720000000000F9F9F900CBCBCB007272
      7200484848004B4B4B007070700097979700ADA2A200B099990093828200B0AC
      AC00F6F6F6000000000000000000000000000000000000000000000000000000
      000000000000E0987000FFC0A000FFB89000FFB0900090482000000000000000
      000000000000000000000000000000000000CEA58800D0987000E0A080000000
      0000FFF8F000F0C8B000DEB19400C5C3C200CEB1A000FFD8C000FFE8E000F0D0
      C000C0988000A0908000907060000000000000000000E4E5E50000000000FFFF
      FA00FFFBF30000000000FFFFFA00F9C8A600FFFEEE0000000000FFF5E800FFFA
      EF000000000000000000AF9787000000000000000000D0D0D0009F9F9F00B2B2
      B200DDDDDD00E8E8E800E8E8E800E8E8E800A3A3A300ADADAD00F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0A07000E0987000E0907000D0886000D0806000000000000000
      0000000000000000000000000000000000000000000000000000E0A08000E0B0
      9000DBAF9C00CCC8C400000000000000000000000000CEC5C200DDAC9800D0A8
      9000D090700000000000000000000000000000000000ECE7E200EDEDEF000000
      000000000000000000008E574E005D0000009A45280000000000000000000000
      000000000000D1BDAD00000000000000000000000000D8D8D800CACACA00D0C4
      C400C56C6C00C58B8B00C2C2C200C1C1C100F8F8F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1EBE600F2F4
      F5000000000000000000D7CEC90062414400C5B5AF000000000000000000FFFF
      FE00E8DED5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAE3DC00F6F3EF00000000000000000000000000FBF8F400D8CBC3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F2F100A79B8F005A432D0050382000E9E6E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9B2AB005038200065503B00C0907000E0A89000805840000000
      000000000000000000000000000000000000E7E1DB0080685000806860008070
      6000806850008068500080685000705840007058400070504000604830006952
      3C00B9AEA4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B3
      AF0050382000705C4900D0A89000FFD0B000FFD0B000FFD0B00070585000DED9
      D50000000000000000000000000000000000A0887000FFF0E000E0D8D000E0C8
      C000D0B0A000C0A8A000C0A89000C0A09000B0A09000B0A09000A08880009070
      600060483000A5978A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E94C900102890008293C60000000000000000000000
      00000000000000000000000000000000000000000000B7A9A500503820005038
      2000E0D0C000FFE8D000FFE0D000FFD8C000FFD8C000FFD0B000F0C0B000B090
      800000000000000000000000000000000000A0887000FFF8FF00FFF0F000FFE8
      E000FFF0E000FFE8E000F0E0D000F0D0C000F0C8B000F0C0A000F0B89000B098
      80007058400069523C00B9AEA400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007088E0001048FF001028900000000000000000000000
      0000000000000000000000000000000000000000000050382000F0F0F000FFF8
      FF00FFF8F000FFF0E000FFE8E000FFE8D000FFE8D000FFE0D000FFE0D000D0B0
      A000E1DBD500000000000000000000000000A088700000000000000000000000
      00000000000000000000FFF8F000FFF0F000F0E8E000F0E8E000F0D8C000C0A8
      9000806850007050400069523C00C3BAB100000000000000000000000000C0A8
      A000604830006048300060483000604830006048300060483000604830006048
      3000604830006048300060483000604830000000000000000000000000000000
      00000000000000000000A8B6DB007088E000A4B1D60000000000000000000000
      000000000000000000000000000000000000000000008A767000000000000000
      0000FFF8FF00FFF8F000FFF0E000708890007088900070889000708890007088
      900070889000708890003040500000000000AB968100A0908000A0908000A088
      8000A0888000A0887000A0807000A08070009080700080808000907870009078
      70009078600070605000785A4B0069523C00B99C8900A477590000000000C0A8
      A00000000000F0D8D000F0D8D000E0D8D000E0D0C000E0C8C000E0C0B000E0B8
      B000D0B0A000D0A89000D0A89000604830000000000000000000000000000000
      00000000000000000000000000008D9EC9000000000000000000000000000000
      00000000000000000000000000000000000000000000A5969600E3E3E300F0F0
      F000F0F0F000FFF8F000FFF8F0008090A000FFF0F000D0C0B0000090D0005068
      7000D0B0A000D0B0A0004058600000000000D5CAC7009098A000C0F8FF00B0F0
      FF00A0E8FF0080E0FF0070D0F00060C8F00050C0F00040B0E0002098C0005068
      700090888000907860007058400060504000000000000000000000000000C0B0
      A0000000000000000000FFF8FF00FFF8F000FFF0F000F0E8E000F0E0E000F0D8
      D000F0D0C000E0D0C000D0A89000604830000000000000000000000000000000
      00000000000000000000000000004050B0000000000000000000000000000000
      00000000000000000000000000000000000000000000B9B5B200504840002028
      200040384000B0B8B000FFF8F00090A0A000FFF8F000F0F0F00010B0F0004048
      5000F0D8C000D0B0A0005070800000000000F9F7F70090A0B000C0F8FF00B0F0
      FF00B0F0FF0090E8FF0080E0FF0070D8FF0060C8F00050B8F00020A0D0005070
      80004088B000908070008070600070584000B99D8900A477590000000000C0B0
      A00000000000C0B0A000C0A8A000C0A89000B0A09000B0989000F0E8E000F0E0
      E000F0D8D000F0D0C000D0B0A000604830000000000000000000000000000000
      000000000000000000008E9BC3000038F000808DAD0000000000000000000000
      000000000000000000000000000000000000BFBBBF0060606000E0D0C000F0C8
      B000D0B0A00080808000D0C8D00090A8B00000000000F0F8F0001090C0002068
      9000FFE0D000D0B0A00060809000000000000000000090A0B000C0F8FF00C0F0
      FF00C0F0FF00B0F0FF00A0E8FF0090E8FF0080E0FF0070D0FF0050C8FF006080
      90002090C000506870008070600080706000000000000000000000000000C0B0
      A00000000000C0B0A000C0B0A000C0A8A000C0A89000B0A09000B0A09000F0E8
      E000F0E0E000F0D8D000E0B8B000604830000000000000000000000000000000
      000000000000000000002040C0000038F0000D33950000000000000000000000
      00000000000000000000000000000000000080808000D2CBC300FFF0F000FFE8
      D000FFD0C000D0C0B0000090D0000090D00080C0D00000000000FFF8F000FFF0
      F000FFE8E000C0C0C00040506000207090000000000090A0B00090A0B00090A0
      B00090A0B00090A0B00090A0B0008098A0008098A0008098A00080A8B00080D0
      F0002098D000507080003088B00080706000BA9D8A00A477590000000000C0B0
      A0000000000000000000000000000000000000000000FFF8FF00FFF8F000FFF0
      F0002048D0002040A000E0C0B000604830000000000000000000000000000000
      000000000000A5B1D9005070E0000040FF000030D000BCC3CF00000000000000
      000000000000000000000000000000000000A0A0A000FFF8F000FFF8F0002028
      200020202000F0D8C00010B0F000A0E8F0000090D00080C0D00000000000FFF8
      F000C0C8D00040506000A0E8F00000A8E0000000000090A0B000B0E8F000C0F0
      FF0090E0F00090A8B000B0D8E000B0F0FF00A0E8FF0090E0FF0080E0FF0080D8
      FF0050C8FF00607890002090C00040607000000000000000000000000000C0B0
      A000000000000000000000000000000000000000000000000000FFF8FF00FFF8
      F0004060F0002048D000E0C8C000604830000000000000000000000000000000
      0000000000007588CB005078E0001048FF000040F0007481A600000000000000
      000000000000000000000000000000000000A0989000F0F0F000000000004038
      4000FFF8F000D0C0C0006080900030C0F000A0E8F0000090D00080C0D000C0D8
      E00040506000A0E8F00000A8E000AFDCF000000000000000000090A0B00090A0
      B00090B0C000A0C0D00090A0B00090A0B00090A0B0008098A0008098A0008098
      A00080A8B00080D0F00020A0D00050708000BB9E8B00A477590000000000C0B0
      A00000000000000000000000000000000000000000000000000000000000FFF8
      FF00FFF8F000FFF0F000F0E8E000604830000000000000000000000000000000
      0000000000005068D0007090FF001050FF001040F0000D33A400000000000000
      000000000000000000000000000000000000F6F6F60090909000F0F0F000FFF8
      F000E1D2D20040484000D0C8C000C7DCE30030C0F000A0E8F0000090D0004050
      6000A0E8F0000080D000102890000000000000000000000000000000000090A0
      B000B0E8F000B0F0FF0090E8F00090A8B000B0D0E000B0F0FF00A0E8FF0090E8
      FF0080E0FF0080D8FF0050C8FF0060789000000000000000000000000000C0B0
      A000C0B0A000C0B0A000C0B0A000C0A8A000C0A8A000C0A89000B0A09000B0A0
      9000B0A09000B0989000B0989000B09890000000000000000000000000000000
      0000000000006078D0008098FF003060FF001050FF001C42C200000000000000
      00000000000000000000000000000000000000000000EDEDED00909890009088
      900080808000C9C6C300F1EEED0000000000D2F1FC0030C0F000A0F0FF00A0E8
      F00000A8E0001038C0001038B000000000000000000000000000000000000000
      000090A0B00090A0B00090B0C000A0C0D00090A0B00090A0B00090A0B0008098
      A0008098A0008098A0008098A000D2D9DC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007088E00090A8F00080A0FF006080F0003855A900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2F1FC0020C0F00000A8
      E000BFE3F3001050FF001048F000000000000000000000000000000000000000
      00000000000090A0B000B0E8F000B0F0FF0090E0F00090A0B000D5DBE1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6DDE8007088E0006078D0005068D000D8DFED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090A0B00090A8B00090A0B00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007698DA003757BB001530
      A400344FAC007490C70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B09880006048300060483000604830006048300060483000604830006048
      300060483000604830006048300060483000000000000000000000000000DCD1
      CE0073655700403020004030200040302000503830005038300065574900AFA3
      97000000000000000000000000000000000000000000000000000000000080A8
      C000507890005088A0006090B00070A0C0004070D0002040D0001038C0001038
      D0001028A0001028A0004060A000698FA6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEC8D20020304000B9C0C80000000000C1B3A900B4988500A37658000000
      0000C0A89000F0F8F000E0E0E000E0D0D000E0C8C000E0C0B000E0C0B000E0B8
      A000E0B0A000E0B09000E0B0900060483000000000000000000000000000B19D
      9700E1CBB400FFF0D000FFFFE000FFF0D000FFE8C000FFD8A000F0D0B000735E
      4900EBE8E50000000000000000000000000000000000000000000000000080A8
      C000E0FFFF00B0E8FF00A0E8FF0070A8F0002050F0002048E0001038C000B0E8
      FF004070F0002050E0001028A0005A78A6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEC8
      D200305060004078C00030486000C2CBD0000000000000000000000000000000
      0000C0A8A0000000000000000000D0C0B000D0C0B000D0B8A000D0B0A000D0A8
      9000C0A09000F0D0C000E0B09000604830000000000000000000E3DFDB00A088
      800000000000FFF8FF00FFF8F000FFF0E000FFF0D000FFE8C000FFE0C0008068
      5000B9AEA40000000000000000000000000000000000000000000000000080B0
      C000C0E8F000C0F8FF00B0F8FF003070FF001048FF000048FF002048E0001038
      C000D0F8FF005080F0001030B0003C5AB5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BEC8D2003050
      70003080D0004098E00050B0F0005A717800C4B5AB00B5998600A37658000000
      0000C0A8A000000000000000000000000000FFF8FF00FFF8F000FFF0E000FFE8
      E000FFE0D000F0D8C000E0B0A000604830000000000000000000D5CAC700B4AD
      A500F0F8E00070B8600000600000004800000048000030904000F0D8B000B090
      7000917B7000000000000000000000000000788F9700707880006070700080B0
      C00080C0D000A0E8F000B0F8FF001048FF001048E000C0F0FF001048FF002048
      E0001040C000C0E8FF001038E0001E3CB500788F970070788000607070005060
      6000405050003038400030384000404850005050500050505000505860004070
      900040A0E00060C8FF007090A000D5DBDE000000000000000000000000000000
      0000C0B0A0000000000000000000D0C0B000D0C0B000D0B8A000D0B0A000D0A8
      9000C0A09000FFE0D000E0B8A000604830000000000000000000BDACA700E1DA
      D200D0F0D00020982000E0D0D00000000000B0C0900010702000C0C89000E0B8
      A00065574900000000000000000000000000788F9700A0E0F00070D0F00090B8
      C000B0E8F00080C8E000A0F0FF002060FF002048E00070B0F000A0E0F0001048
      FF002048E0001038C0002040D0003C62C400788F9700A0E0F00070D0F00050B8
      E00030B0E00030A0C00070808000B0A8A000D0C0B000D0B0A000807870005058
      50006090B0007098B0004050600000000000C7B8AD00B79B8700A37658000000
      0000C0B0A0000000000000000000000000000000000000000000FFF8FF00FFF8
      F000FFF0E0005068FF002030F0006048300000000000F9F8F700A58F8700F0F0
      F000F0F8F00080D8800020982000000000003080300010701000FFE0C000F0D0
      B00060483000F5F3F3000000000000000000878F9700B0E8F00090E8FF0090B8
      D000D0FFFF00B0F0FF0090E0F00060A0F0001048FF003058D00090B8FF00A0E0
      F0001048FF002048E0002048E0006987C400878F9700B0E8F00090E8FF0080E0
      FF0070D8FF0080A0B000C0B8B000FFF0E000FFE8E000F0D8C000F0D0B0008078
      7000407090005080A00020283000000000000000000000000000000000000000
      0000D0B0A000000000000000000000000000000000000000000000000000FFF8
      FF00FFF8F0007080FF005068F0006048300000000000E1DCD700B09890000000
      0000000000000000000020C020000068000000601000C0E0A000FFF0D000FFE0
      B00070605000D7D1CB0000000000000000008797A600B0E8F000A0E8FF0090C0
      D000D0FFFF00A0E8F00080C8E000A0E0FF006090FF001048FF002048E0002048
      E0001048FF001050F0005088F00078A6B5008797A600B0E8F000A0E8FF0090E8
      FF0080E0FF0090909000F0E8E000FFF8F000FFF0F000FFE8E000F0D8D000D0B0
      A000506060001080B0003038400000000000B098800070584000806860009080
      7000D0B8A0000000000000000000000000000000000000000000000000000000
      0000FFF8FF00D0C8E000C0C0E0007050400000000000BDACA700C0B0B0000000
      00000000000000000000E0FFD00010B0100090D89000FFFFF000FFF0D000FFE8
      C000A088700091877D0000000000000000008797A600B0F0FF00B0F0FF0090C0
      D000C0F8FF0070C8E000A0E8F000B0F8FF00A0E8FF006098FF003068FF002050
      FF004078FF006098F00090C8F000789EA6008797A600B0F0FF00B0F0FF00A0E8
      FF0090E0FF0090989000F0E8E00000000000FFF8F000FFF0F000FFE8E000E0C0
      B000506870001080B0004040500000000000C0A89000F0F8F000E0E0E000E0D0
      D000D0B8A000D0B8A000D0B8A000D0B0A000C0B0A000C0B0A000C0B0A000C0A8
      A000C0A8A000C0A89000C0A09000B098800000000000A58F8700E0D0D0000000
      00000000000000000000000000000000000000000000FFF8E000FFF0E000FFF0
      D000D0B09000706356000000000000000000879EA600C0F0FF00B0F0F00090C8
      D000A0E0F000E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FF
      FF00E0FFFF00C0F8FF0070B8D000788F9700879EA600C0F0FF00B0F0F000A0F0
      FF00A0E8FF0090B8C000C0C0C0000000000000000000FFF8F000FFF0E000B0A0
      90005080A0001088C0005050600000000000C0A8A0000000000000000000D0C0
      B000B0A8A000A0A0A000A098A0009098900090909000F0D0C000E0B090009070
      60000000000000000000000000000000000000000000A0888000F0F0F000FFF8
      FF000000000000000000000000000000000000000000FFF8F000FFF0E000FFF0
      E000F0D0B0005A4B3C000000000000000000879EA600C0F0FF00B0F0FF0090C8
      D00090C8D00090C8E00090C8D000A0C8D000A0C8D000A0C8D000A0C8D000A0C8
      D000A0C0D00090B8D00090B8C00097B5C400879EA600C0F0FF00B0F0FF00B0F0
      FF00A0E8FF0090E0F000A0B0B000C0C0C000F0E8E000F0E8E000B0B0A0007080
      900040A8E0001090C0005060700000000000C0A8A00000000000000000000000
      0000FFF8FF00FFF8F000FFF0E000FFE8E000FFE0D000F0D8C000E0B0A0008060
      500000000000A4775900BA9D8A00CBBCB10000000000A58F8700A0888000A090
      800090888000A0908000A0908000A0908000A0908000A0908000A0888000A088
      80007060500050403000000000000000000097A6A600C0F0FF00B0F0FF00B0F0
      FF00B0F0F000A0F0FF0090E8FF0090E0FF0080E0FF0080D8FF0070D0FF0060C8
      F00060C0F00030A0D00070788000FBFFFF0097A6A600C0F0FF00B0F0FF00B0F0
      FF00B0F0F000A0F0FF0090E0F00090B8C000909890009090900070A0B00050B8
      E00050B8F0002098D0006070800000000000C0B0A0000000000000000000D0C0
      B000D0C0B000D0B8A000D0B0A000D0A89000C0A09000FFE0D000E0B8A0007058
      40000000000000000000000000000000000000000000C0B2A5008F7A73008070
      6000B0A09000E0D8D000F0F0F000FFF8F0000000000000000000F0F0F000D0C8
      C000E0D0D0007B6F6300000000000000000097A6B500C0F0FF00C0F0FF00C0F0
      FF00C0F0FF00B0F0FF00B0F0FF00A0E8FF0090E8FF0090E0FF0080D8FF0080D8
      FF0070D0F00060C0F000607080000000000097A6B500C0F0FF00C0F0FF00C0F0
      FF00C0F0FF00B0F0FF00B0F0FF00A0E8FF0090E8FF0090E0FF0080D8FF0070D0
      FF0070C8F00060C0F0006070800000000000C0B0A00000000000000000000000
      00000000000000000000FFF8FF00FFF8F000FFF0E0005068FF002030F0006048
      300000000000A4775900BB9E8A00CDBDB20000000000F8F6F5009F938700A490
      7D00C0C0C000F0F0F000FFF8FF00000000000000000000000000E0E0E000D0C0
      C00093816F00F4F2F200000000000000000097A6B50090A0B00090A0B00090A0
      B00090A0B00090A0B00090A0A0009098A0008098A0008098A0008098A0008098
      A0008098A0008090A000000000000000000097A6B50090A0B00090A0B00090A0
      B00090A0B00090A0B00090A0A0009098A0008098A0008098A0008098A0008098
      A0008098A0008098A000C9D2D50000000000D0B0A00000000000000000000000
      0000000000000000000000000000FFF8FF00FFF8F0007080FF005068F0006048
      3000000000000000000000000000000000000000000000000000F8F6F600A7A1
      9100968778009078700090807000907870009078700080706000705840007063
      5600F4F2F20000000000000000000000000097ADB500B0E8F000B0F0FF00B0F0
      FF00B0F0F00090E0F00090A0B000000000000000000000000000000000000000
      00000000000000000000000000000000000097ADB500B0E8F000B0F0FF00B0F0
      FF00B0F0F00090E0F00090A0B000BFD3D7000000000000000000000000000000
      000000000000000000000000000000000000D0B8A00000000000000000000000
      000000000000000000000000000000000000FFF8FF00D0C8E000C0C0E0006048
      300000000000A4775900BC9E8B00CFBEB3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090A8B00090A8B00090A8
      B00090A8B00090A8B00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5F2F60090A8B00090A8B00090A8
      B00090A8B00090A8B000E3E9EB00000000000000000000000000000000000000
      000000000000000000000000000000000000D0B8A000D0B8A000D0B8A000D0B0
      A000C0B0A000C0B0A000C0B0A000C0A8A000C0A8A000C0A89000C0A09000B090
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000080A8
      C000507080004070900030688000306880003060800030587000305870003058
      700030587000305060003050600034495E000000000000000000000000000000
      0000707070004038300000000000907060008060500060483000604830006048
      300060483000604830006048300069533C00000000000000000000000000C0A8
      9000705840007050400060483000604830006048300060483000604830006048
      300060483000604830006048300061493100788F970070788000607070005060
      6000405050003038400020283000102020001010200010102000101020001010
      20001010200010102000101020000000000000000000000000000000000080A8
      C000D0FFFF00A0E8FF0080E0F00080D8F00070D0F00070D0F00070C8F00070C8
      F00070C8F00060C8F00060C0F00034515E000000000000000000000000000000
      0000A09090000000000040B0D00000000000F0D8D000E0D0C000E0C8B000E0C0
      B000E0B8A000E0B8A000E0B8A00069533C00000000000000000000000000C0A8
      9000FFF8F000F0E0E000F0D8C000E0D0C000E0C8B000E0C0B000E0B8A000E0B0
      A000D0A89000D0A09000D0A0800061493100788F9700A0E0F00070D0F00050B8
      E00030B0E00030A8E00020A0D0002098C0002090C0002080B0002080B0001080
      B0002078A00020709000102020000000000000000000000000000000000080A8
      C000C0E8F000B0F8FF0090F0FF0090F0FF0090F0FF0090F0FF0090F0FF0090F0
      FF0090F0FF0080E0FF0060B8E00034515E000000000000000000000000000000
      0000B098800080B0C00080E8FF0050C8F00000000000FFE8E000FFE8E000FFE0
      D000F0D8C000F0D8C000E0B8A00069533C00000000000000000000000000C0A8
      A000FFF8FF00FFF8F000FFF8F000F0F0E000F0E8E000F0E0D000F0D8D000F0D8
      C000F0D0C000F0D0C000D0A8900061493100878F9700B0E8F00090E8FF0080E0
      FF0070D8FF0070D0F00060C8F00050C0F00040B8F00030A8F00030A8E0002098
      E0001090D0002078A000202830000000000071889000707880006070700080B0
      C00080B8D00090E0F00090F8FF0090F0FF0080E8FF0070E0FF0080E8FF0080E8
      FF0090F0FF0070D8F0004088B00043585E00788F970070788000607070005060
      6000606870002080A000C0FFFF0060C0E00060D0F00000000000FFE8E000FFE0
      D000FFE0D000F0D8C000E0B8A00069533C00718890007078800060707000C0A8
      A00000000000C0B0A000B0A09000B0989000B0988000A0908000F0E0D000F0D8
      D000F0D8C000F0D0C000E0B0A000614931008797A600B0E8F000A0E8FF0090E8
      FF0080E0FF0070D8FF0070D0F00060C8F00050C0F00040B8F00030A8F00030A0
      E0002098E0001080B000303840000000000071889000A0E0F00070D0F00090B0
      C000B0E8F00060B8D00080E8FF0070E0F00050B0E00030A0D0003090C00070D0
      F00070D8F0004098C00060C0E00043586D00788F9700A0E0F00070D0F00050B8
      E00040B0E00050B8E0003080A000C0FFFF0060C0E00060D0F00000000000FFE8
      E000FFE0D000FFE0D000E0C0B00069533C0071889000A0E0F00070D0F000C0B0
      A00000000000D0C0B000C0B0A000C0A8A000C0A89000B0A09000B0A09000F0E0
      D000F0D8D000F0D8C000E0B0A000614931008797A600B0F0FF00B0F0FF00A0E8
      FF0090E0FF0080E0FF0070D8FF0070D0F00060C8F00050C0F00040B0F00030A8
      F00020A0E0001080B000404050000000000080889000B0E8F00090E8FF0090B8
      D000D0FFFF00A0E8F00070C8F00050B0E00080D8F00080E8FF0080E8F00040A0
      C00050C0E00080E0F00070C8F00043606D00878F9700B0E8F00090E8FF0080E0
      FF0070D8FF0070D0F000D0C8C0005090A000B0FFFF0060C0E00060C8F0000000
      0000FFE8E000FFE8E000E0C0B00069533C0080889000B0E8F00090E8FF00C0B0
      A0000000000000000000FFF8FF00FFF8F000FFF8F000FFF0F000F0E8E000F0E8
      E000F0E0D000F0D8D000E0B8A00061493100879EA600C0F0FF00B0F0F000A0F0
      FF00A0E8FF0090E0FF0080E0FF0070D8FF0060D0F00060C8F00050B8F00040B0
      F00030A8E0001088C00050506000000000008090A000B0E8F000A0E8FF0090C0
      D000D0FFFF0090E8F00060B8E00080E0F000A0F8FF0090F0FF0090F0FF0090E8
      FF0050A8D00080E0F00070D0F00043606D008797A600B0E8F000A0E8FF0090E8
      FF0080E0FF0070D8FF00D0C0B000000000006098A000B0FFFF0050D8FF00B0A8
      80002008A000E0D8E000E0C8C00069533C008090A000B0E8F000A0E8FF00D0B0
      A000000000000000000000000000FFF8FF00FFF8FF00FFF8F000FFF0F000FFE8
      E0002048D0002040A000E0C0B00061493100879EA600C0F0FF00B0F0FF00B0F0
      FF00A0E8FF0090E8FF0090E0FF0080E0FF0070D8FF0060D0F00060C8F00050B8
      F00030A8E0001090C00050607000000000008090A000B0F0FF00B0F0FF0090C0
      D000C0F8FF0060C0E00090E0F000A0F8FF00A0F8FF00A0F8FF00A0F8FF0090F0
      FF0090E8FF0050A0C00060C0E00052676D008797A600B0F0FF00B0F0FF00A0E8
      FF0090E0FF0080E0FF00D0C0B000000000000000000070A8C000FFD890006080
      F0007080B00020188000E0D0C00069533C008090A000B0F0FF00B0F0FF00D0B8
      A00000000000000000000000000000000000FFF8FF00FFF8FF00FFF8F000FFF0
      F0004060F0002048D000F0D0D0007051400097A6A600C0F0FF00B0F0FF00B0F0
      FF00B0F0F000A0F0FF0090E8FF0090E0FF0080E0FF0070D0FF0060D0F00050C0
      F00050B8F0002098D00060708000000000008098A000C0F0FF00B0F0F00090C8
      D000A0E0F000E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00D0FF
      FF00D0FFFF00B0F8FF004098C000526F7D00879EA600C0F0FF00B0F0F000A0F0
      FF00A0E8FF0090E0FF00D0B8B0000000000000000000000000003040A00080A8
      FF006078E0006078B000E0E0D00069533C008098A000C0F0FF00B0F0F000D0B8
      A000000000000000000000000000000000000000000000000000FFF8FF00FFF8
      F000FFF8F000FFF0F000F0E8E0007059410097A6B500C0F0FF00C0F0FF00C0F0
      FF00C0F0FF00B0F0FF00B0F0FF00A0E8FF0090E8FF0090E0FF0080D8FF0070D0
      FF0070C8F00060C0F00060708000000000008098A000C0F0FF00B0F0FF0090C8
      D00090C8D00090C8D00090C8D00090C0D00090C0D00090B8D00090B8C00080B0
      C00080B0C00080A8C00080A8C0007FA3B800879EA600C0F0FF00B0F0FF00B0F0
      FF00A0E8FF0090E8FF00D0B8A000000000000000000000000000F0F8FF005060
      A0006068A000FFF8F000FFF0F00069533C008098A000C0F0FF00B0F0FF00D0B8
      A000D0B8A000D0B8A000C0B0A000C0B0A000C0B0A000C0A8A000C0A8A000C0A8
      A000C0A89000C0A89000C0A89000C0A8900097A6B50090A0B00090A0B00090A0
      B00090A0B00090A0B00090A0A0009098A0008098A0008098A0008098A0008098
      A0008098A0008098A000C9D2D5000000000090A0A000C0F0FF00B0F0FF00B0F0
      FF00B0F0F000A0F0FF0090E8FF0090E0FF0080E0FF0070D0FF0060D0F00050C0
      F00050B8F0002098D00060708000FCFAFA0097A6A600C0F0FF00B0F0FF00B0F0
      FF00B0F0F000A0F0FF00D0B8A000D0B8A000D0B8A000D0B8B000D0C0B000E0D0
      C000D0C0B000D0B8B000C0B0A000C4ADA60090A0A000C0F0FF00B0F0FF00B0F0
      FF00B0F0F000A0F0FF0090E8FF0090E0FF0080E0FF0070D0FF0060D0F00050C0
      F00050B8F0002098D000607080000000000097ADB500B0E8F000B0F0FF00B0F0
      FF00B0F0F00090E0F00090A0B000BFD3D7000000000000000000000000000000
      00000000000000000000000000000000000090A0B000C0F0FF00C0F0FF00C0F0
      FF00C0F0FF00B0F0FF00B0F0FF00A0E8FF0090E8FF0090E0FF0080D8FF0070D0
      FF0070C8F00060B8F000607080000000000097A6B500C0F0FF00C0F0FF00C0F0
      FF00C0F0FF00B0F0FF00B0F0FF00A0E8FF0090E8FF0090E0FF0080D8FF0070D0
      FF0070C8F00060C0F000607080000000000090A0B000C0F0FF00C0F0FF00C0F0
      FF00C0F0FF00B0F0FF00B0F0FF00A0E8FF0090E8FF0090E0FF0080D8FF0070D0
      FF0070C8F00060B8F0006070800000000000E6F2F70090A8B00090A8B00090A8
      B00090A8B00090A8B000E3E9EB00000000000000000000000000000000000000
      00000000000000000000000000000000000090A0B00090A0B00090A0B00090A0
      B00090A0B00090A0B00090A0A0009098A0008098A0008098A0008098A0008098
      A0008098A0008090A000EDEFF1000000000097A6B50090A0B00090A0B00090A0
      B00090A0B00090A0B00090A0A0009098A0008098A0008098A0008098A0008098
      A0008098A0008098A000C9D2D5000000000090A0B00090A0B00090A0B00090A0
      B00090A0B00090A0B00090A0A0009098A0008098A0008098A0008098A0008098
      A0008098A0008090A000EDEFF100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090A8B000B0E8F000B0F0FF00B0F0
      FF00B0F0F00090E0F00090A0B000BFD3D7000000000000000000000000000000
      00000000000000000000000000000000000097ADB500B0E8F000B0F0FF00B0F0
      FF00B0F0F00090E0F00090A0B000BFD3D7000000000000000000000000000000
      00000000000000000000000000000000000090A8B000B0E8F000B0F0FF00B0F0
      FF00B0F0F00090E0F00090A0B000BFD3D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4F1F60090A8B00090A8B00090A8
      B00090A8B00090A8B000E3E9EB00000000000000000000000000000000000000
      000000000000000000000000000000000000E5F2F60090A8B00090A8B00090A8
      B00090A8B00090A8B000E3E9EB00000000000000000000000000000000000000
      000000000000000000000000000000000000E5F2F60090A8B00090A8B00090A8
      B00090A8B00090A8B000E3E9EB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEC9C6009C908A007B6C
      6300726158007160570071605700716057007160570071605700716057007261
      58007B6C63009C908A00CEC9C6000000000000000000CEC9C6009C908A007B6C
      6300726158007160570071605700716057007160570071605700716057007261
      58007B6C63009C908A00CEC9C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009048
      2000EADCD5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDE2ED006020
      60000000000000000000000000000000000000000000AE7C6F00D9AD9D00D6A8
      9A00D3A69800D2A49700CCA19900C99E9700C69C9600C4999500C1969300B691
      8B00B88E8B007C6D6400C0B8B4000000000000000000AE7C6F00D9AD9D00D6A8
      9A00D3A69800D2A49700CCA19900C99E9700C69C9600C4999500C1969300B691
      8B00B88E8B007C6D6400C0B8B400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A050
      2000A0503000EADCD50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDE2ED00602060006020
      60000000000000000000000000000000000000000000B5827300E6DBD100FFE7
      CE00FFE4C800FFE1C200FFDEBD00FFDBB800FFD8B200FFD6AD00FFD3A700FFCF
      A800EEBDA50072615800BCB4B0000000000000000000B5827300E6DBD100FFE8
      D100FFE6CC00FFE2C500FFE0C100FFDDBB00FFDAB600FFD8B100FFD4AA00FFD2
      A500EEBDA50072615800BCB4B000000000000000000000000000000000000000
      0000000000000000000000000000D080600090482000A0482000A0502000B058
      3000C0684000A0503000EADCD500000000000000000000000000000000000000
      000000000000000000000000000000000000E4D5E40070206000A04090006020
      60006020600060206000602060006020600000000000BB887600E8DFD500FFE9
      D300FFE7CE00FDDDBD00FCD9B700FCD7B300FDD5AF00FED5AC00FFD4A900FFD2
      AE00EFBFA80071605700BBB3AF000000000000000000BB887600E8DFD500FDE8
      D100F6D2AE00F6D0A900F6CDA400F6CBA000F6C99C00F6C79700F6C49300FDD1
      A500EFBFA80071605700BBB3AF0000000000C0908000C0908000C0908000C088
      8000C0888000B0888000C0A0A000D0886000FFB09000F0906000F0885000E080
      5000D0785000C0704000A0583000EADCD500C0908000C0908000C0908000C088
      8000C0888000B0888000C0909000C098A00090488000A050A000C058B000B050
      A000B048A00090409000803880006020600000000000C28F7A00EAE2DB00FFEC
      D900C6E3DD002ACCF00027C6E70028C6E70029C8E90081C3BF00FFD6AE00FFD4
      B200F0C1AB0071605700BBB3AF000000000000000000C28F7A00EAE2DB00C292
      9800B6818A00AF819000AC8293009B90AA0086BAD9007EC0E400A88C9D00E6A8
      7400F0C1AB0071605700BBB3AF0000000000C0909000F0D8C000FFF8D000FFF0
      C000FFE8B000FFD8A000FFE0B000E0907000FFB89000FFA88000FF906000F090
      6000E0885000E0785000C0704000B0583000C0909000F0D8C000FFF0D000FFE8
      C000FFE0B000FFE0B000FFE0C000B068A000D0A0D000D080C000C068C000C058
      B000B050B000B050A000A04090007020600000000000C8957D00ECE6DF00FFEF
      DF00FFECD90064D7EE0002CDFA0009D4E50024C9DC00F5C69C00FFDBB800FFD6
      B600F0C3AF0071605700BBB3AF000000000000000000C8957D00ECE6DF00AC97
      AC00A57D8F00B8696C009486A60082C4E30086E7FA0080E6FF009397B500DEA5
      7500F0C3AF0071605700BBB3AF0000000000C0989000D0908000FFF0E000FFF8
      F000FFF8E000FFF8D000FFF0D000E0987000FFC0A000FFC0A000FFB08000FFA8
      8000FFA07000E0805000B0583000F5EAE500C0989000D0908000FFF0E000FFF8
      F000FFF8E000FFF8E000FFF8E000F0E8E000C078B000D0A8D000D098D000D088
      C000D080C000C080C000C078B0007028700000000000CF9C8100EEE9E400FFF2
      E400FFEFDF00F9CF870050F0580036F96C00F99B0300F6AB5300FDD8B300FFD9
      BB00F1C5B10071605700BBB3AF000000000000000000CF9C8100EEE9E400959C
      C2007A88BA00444158007083B700749FD30082C6E5007CCAED007D90C100DAA7
      7C00F1C5B10071605700BBB3AF0000000000D0989000FFE8B000D0908000F0F0
      E000FFFFF000FFF8E000FFF8E000F0A07000E0987000E0907000D0886000E090
      7000F0987000B0583000F5EAE50000000000D0989000FFE8B000D0989000F0F0
      E000FFFFF000FFF8E000FFF8E000FFF8E000FFE8E000C078B000D0A0D000A048
      9000B068B000B060B000B058A000B048A00000000000D5A28300F0ECE900D4C7
      D300D9CCD600F18B0C00F2940900E2A70F00FF990100FF990100FCCB9900FFDB
      C000F2C8B50071605700BBB3AF000000000000000000D5A28300F0ECE9007FA1
      D700537DB7002E4363005790DB005499E6007AD4F6007FDBF7006093D900D4A9
      8300F2C8B50071605700BBB3AF0000000000D0A09000FFFFE000F0D8B000C0A0
      A000F0F0E000FFF0E000FFF0E000F0F0E000F0E8E000F0E0E000FFF0E000E098
      7000C0785000000000000000000000000000D0A09000FFFFE000F0D8B000D0A0
      A000F0F0E000FFF8E000FFF8F000FFF0F000F0E8E000E0C0C000C070B000A040
      9000D0B8B00000000000000000000000000000000000DCA98700F2F0EE000134
      FF000F35EF00AC474700D5702400FF990100FF990100FF990100FEC68600FFDD
      C400F2C9B70071605700BBB3AF000000000000000000DCA98700F2F0EE005E91
      E000325B9A002C62A0003583EC00378CF30065BEF700378BF5003F87EA00CEA9
      8800F2C9B70071605700BBB3AF0000000000D0A8A000F0E8C000D0989000A0F8
      FF00C0A09000C0909000C0888000B0909000B0989000C0A8B000E0C0C000F0A0
      7000D0B0A000000000000000000000000000D0A8A000F0E8C000D0989000A0F0
      F000D0A09000D0A8A000D0B0A000D0B8B000D0B8B000C0D0E000D0C0C000B068
      B000D0B8B00000000000000000000000000000000000DCA98700F4F3F3000134
      FF000134FF0094446000D5702400FF990100FF990100FF990100FEDCB900FFE0
      C900F3CCBA0071605700BBB3AF000000000000000000DCA98700F4F3F300323A
      B70028346F001335B2001C3BC8001F42D5002A59EA002C5DEE002249DB00C79D
      8700F3CCBA0071605700BBB3AF0000000000D0A8A000D0B0A000C0FFFF00C0FF
      FF00B0F8FF00B0F8FF00A0F0FF0090E8FF0080E0FF0080D8FF00A0E0FF00D0C0
      B000C0A8B000000000000000000000000000D0A8A000D0B0A000C0FFFF00C0FF
      FF00B0F8FF00B0F8FF00B0F0FF00B0E8FF00A0E8FF00A0E8FF00B0E8FF00D0C0
      C000C0A8A00000000000000000000000000000000000DCA98700F6F6F6000134
      FF000134FF000534F900BD6D3D00FF990100FF990100FFCE8A00FFE9D300FFE1
      CD00F3CDBD0076655D00BEB6B2000000000000000000DCA98700F6F6F6005687
      FF003160B9003977FF004996FF005AB5FF0099DDFF0076CFFF0054AAFD00CEAD
      9100F3CDBD0076655D00BEB6B20000000000D0A8A000A0E8FF00A0E8FF00A0E8
      FF00A0E8FF0090E0FF0080D8FF0080D8F00070D0F00070C8F00060C8F00070C8
      F000B47F8700000000000000000000000000D0A8A000A0E8FF00A0E8FF00A0E8
      FF00A0E8FF0090E0FF0090E0FF0080D8F00080D0F00080D0F00080D0F00090D0
      F000C396960000000000000000000000000000000000DCA98700F8F8F8000134
      FF000134FF000134FF007B7BC600FFE6C300FFEFDE00FFF1E200FFEEDC00FFEB
      D600F4C9BA0087776E00C7C0BC000000000000000000DCA98700F8F8F800789F
      FF00356DF7003775FF00468FFF0055ACFF0061C1FF00FFF1E200FFEEDC00FFEB
      D600F4C9BA0087776E00C7C0BC0000000000F6EEED00C7A49D00E0FFFF00E0FF
      FF00F0FFFF00F0FFFF00E0FFFF00C0F8FF00A0F0FF0080E8FF0080E0FF00B48F
      8700F3EBEA00000000000000000000000000F6EEED00C7A49D00E0FFFF00E0FF
      FF00F0FFFF00F0FFFF00E0FFFF00C0F8FF00A0F0FF0080E8FF0080E0FF00B48F
      9600F6F0F00000000000000000000000000000000000DCA98700FAFAFA000000
      0000FFFEFE00FFFDFA00FFFBF600FFF8F000FFF5EA00FFD5CC00FFD5CC00F5B3
      AA00B3887E00A69A9300D9D3D1000000000000000000DCA98700FAFAFA000000
      000000000000FFFEFE00FFFCF900FFFAF400FFF6ED00FFD5CC00FFD5CC00F5B3
      AA00B3887E00A69A9300D9D3D1000000000000000000F6EEED00CBA4A400F0FF
      FF00F0FFFF0000000000F0FFFF00D0FFFF00B0F8FF0090E8FF00B47F8700F5F1
      F1000000000000000000000000000000000000000000F6EEED00CBA4A400F0FF
      FF00F0FFFF0000000000F0FFFF00D0FFFF00B0F8FF0090E8FF00B47F8700F0EA
      EA000000000000000000000000000000000000000000DCA98700000000000000
      000000000000FFFEFE00FFFDFA00FFFBF600FFF8F000F7A64400F7A64400E596
      430094847B00C8BFBB00EAE7E5000000000000000000DCA98700000000000000
      00000000000000000000FFFEFE00FFFCF900FFFAF400F7A64400F7A64400E093
      420094847B00C8BFBB00EAE7E500000000000000000000000000F6EEED00CBA4
      A400F0FFFF00F0FFFF00F0FFFF00E0FFFF00B0F8FF00B47F8700F3EBEA000000
      0000000000000000000000000000000000000000000000000000F6EEED00CBA4
      A400F0FFFF00F0FFFF00F0FFFF00E0FFFF00B0F8FF00B47F8700F3EBEA000000
      00000000000000000000000000000000000000000000DCA98700000000000000
      00000000000000000000FFFEFE00FFFDFA00FFFBF600DCA98700F2BB7D008B73
      6200B6ABA500E1DDD900F3F2F1000000000000000000DCA98700000000000000
      0000000000000000000000000000FFFEFE00FFFCF900DCA98700EAB477008B73
      6200B6ABA500E1DDD900F3F2F10000000000000000000000000000000000F6EE
      ED00C7A49D00C3A5A500C3A5A500C0989000C0989000EFE5E300000000000000
      000000000000000000000000000000000000000000000000000000000000F6EE
      ED00C7A49D00C3A5A500C3A5A500C0989000C0989000EFE5E300000000000000
      00000000000000000000000000000000000000000000DCA98700DCA98700DCA9
      8700DCA98700DCA98700DCA98700DEAB8800D6A38400DCA98700F3EBE5000000
      00000000000000000000000000000000000000000000DCA98700DCA98700DCA9
      8700DCA98700DCA98700DCA98700DEAB8800D6A38400DCA98700F3EBE5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002078B0002078B0003068900030485000B4C0
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0D8F000C0F0F00040D0FF0030C0FF0030A8F0003048
      500020709000304850000000000000000000000000000000000000000000FEFD
      FD00FBF2F500F2D4E000E7A3B900E2849E00E28CA700ECB8CB00F8E6EC00FDF8
      F900FEFEFE00000000000000000000000000000000000000000000000000FCFC
      FC00F0F1F000D1D2D2009D9FA0008889890087898A00B3B5B500E3E4E300F7F7
      F700FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002078B0002078
      B000306890003040500000000000A0C8D000A0C0C00090A0A0008080800070D0
      F00040D0FF0040B8F00040587000000000000000000000000000FDFAFB00F3D1
      DC00DF739100CE184800CB003300CC003300CC003300CC053800D3376300E8A0
      B500F9EBEF00FEFEFE0000000000000000000000000000000000F9F9F900CDCD
      CD006A6C6A00151615001B1C1B005A5E5A00060706000304030030323100999B
      9900E9E9E900FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090B0C000C0F0F00040D0
      FF0030C0FF0030B0F000103850000000000000000000000000001078B0001070
      A0002058700020384000000000000000000000000000FEFCFD00F2CEDA00D74A
      7100CC043600CC003300CC003300CC003300CC003300CC003300CC003300CE17
      4700E286A000FAEDF100000000000000000000000000FCFCFC00C9CBC9004345
      440007080700333433009FA19F00F1F2F1004244420000000000000000001314
      14007E7F7E00EBECEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090B0C000A0C0
      C00090A0A0008088900000000000000000000000000090B0C000D0FFFF0060D8
      FF0040D0FF0040B8F000305860000000000000000000FAEFF200DC658700CC03
      3600CC003300CC003300CC003300D6355D00CF114100CC003300CC003300CC00
      3300CF1D4B00ECB0C200FDFAFB000000000000000000EDEDED005C5F5D000D0E
      0D004F504F00BBBDBB00F7F7F70000000000AFB1AF000A0A0A00000000000000
      000018191800A8AAA900F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001068A0001070
      A0002058700020384000000000000000000000000000EFC5D300CC104100CC00
      3300CC003300CC003300D6365E00F1BBC900E6859D00CD0C3C00CC003300CC00
      3300CB003300D9577B00FAEDF1000000000000000000BEC0C0001E201F006D6F
      6D00D3D4D300F9FAF900C4C7C400F2F3F200E8E8E800474A4700000000000000
      0000000000004E504F00EBEBEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080C0D000D0FFFF0060D8
      FF0040D0FF0040B8F000204860000000000000000000E185A100CB003300CC00
      3300CC003300D42B5500EFB4C300FDF9FA00FAEBEE00E47F9800CC073900CC00
      3300CC003300CB124500F6E0E70000000000000000007F81810037393700D7D8
      D700F5F5F5009FA19F0034363400A3A7A300F9F9F900A3A6A300070807000000
      0000000000000F0F1000DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D078500090482000904820009048
      20008040200080402000804020008038200080382000C0B8C0000068A0001070
      A00020587000203040008098A0008020200000000000D95B8000CC003300CC00
      3300D21F4C00ECA7B800FDF7F800FEFEFE00FEFEFE00FAE7EC00E2738E00CC04
      3600CC003300CA003400EFC9D800000000000000000059595C00121312007679
      76007E827E001A1A1A000202020032353200FCFDFC00D9DAD900454745000000
      00000000000000000000C7C8CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0785000C0887000C0805000B090
      7000D0A89000E0C8B000C0806000B0683000C050500080B8E000C0F0F00040D0
      FF0030C0FF0030A8F000205070008020200000000000D95E8200CC013400D11F
      4C00EBA1B300FDFAFB0000000000000000000000000000000000F9E7EB00E16E
      8A00CD0A3B00CA013400EFCBD90000000000000000005A5B5D00000000000000
      000000000000000000000000000000000000ABADAB00F8F9F800999B99000B0B
      0B000000000000000000C9C9CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0805000B0908000D0C0B000E0D0
      C000D0B0A000E0C8C000B0887000B0704000C0705000D0B8A00080B0E000A0C0
      D0008098B0007080A000D0B890008020200000000000E28AA500CC073900DC55
      7700F0B9C600F2BFCC00F2BFCC00F2BFCC00F2BFCC00F2BFCC00F2BFCC00EB9F
      B100D5305900CC184800F7E1E800000000000000000083858600000000000000
      00000000000000000000000000000000000044474400F1F2F100D2D4D2004547
      45000000000012131300DFDFDF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0886000E0D0C000E0B8A000C088
      6000C0805000D0B8A000E0B09000B0785000B0705000E0A88000C09890009058
      3000A0604000B0A09000C09880008028200000000000F1CBD800CE154500CC00
      3300CC003300CC003300CC003300CC003300CC003300CC003300CC003300CC00
      3300CB003300DA608200FBEEF2000000000000000000C6C7C700111211000000
      00000000000000000000000000000000000011121100ACAFAC00EFF1EF007376
      730005060500575A5800EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E090700000000000D0988000D088
      6000C0886000E0D8D000C0988000C0805000B0705000C0907000C0B8B000A058
      300090583000A0603000C0C0C0008028200000000000FBF1F400DF729100CC05
      3800CC003300CC003300CC003300CC003300CC003300CC003300CC003300CC00
      3300D0235100EEB9C900FEFBFC000000000000000000F0F0F000696B69000404
      0400000000000000000000000000000000000404040042444200898B89003B3D
      3B0025272500B2B4B200FAFBFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0987000E0D0D000F0C8B000D098
      7000D0886000F0D8D000C0988000C0886000B0805000C0907000D0C0B000A060
      3000A0603000B0887000C09080008030200000000000FEFDFD00F5D7E000DA57
      7C00CC083A00CC003300CC003300CC003300CC003300CC003300CB003300D020
      4E00E594AC00FBF0F400000000000000000000000000FDFDFD00D2D3D2005153
      51000606060000000000000000000000000000000000060606000E0F0E001C1D
      1C008C8F8D00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0A08000B0A09000E0C8C000F0E0
      E000F0C8B000E0B0A000F0C8B000D0A89000C0988000E0B8A000C0908000C0A0
      9000D0B8B000B0988000A0603000803020000000000000000000FEFBFC00F5DA
      E400E286A100D0275500CC033600CC003300CB003300CC0A3C00D74D7500ECAF
      C200FBF0F300FEFEFE0000000000000000000000000000000000FAFBFA00D7D8
      D7007E807F00212322000102020000000000000000000909090045484600A9AB
      AA00EEEEEE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0A08000A0888000B0908000B0A0
      9000D0C0B000FFF0E000FFF0F000F0F0F000F0F0F000F0E0E000F0D8C000C0A8
      9000A078600090583000A058200080382000000000000000000000000000FEFE
      FE00FCF5F700F5E1E800ECBBCD00E89FB400E8A7BD00F0CEDA00FAECF000FDFA
      FB0000000000000000000000000000000000000000000000000000000000FDFD
      FD00F3F4F400DEDEDF00B6B8B9009E9E9F00A2A3A500C9CACB00EAEBEA00F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0A08000E0A08000E0A08000E0A0
      8000E0988000E0987000D0907000D0887000C0806000C0786000B0785000B070
      5000B0684000A0604000A0584000905030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B09880006048300060483000604830006048300060483000604830006048
      3000604830006048300060483000604830000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0A38300BD8E6E00A47454000000
      0000C0A89000F0F8F000E0E0E000E0D0D000E0C8C000E0C0B000E0C0B000E0B8
      A000E0B0A000E0B09000E0B09000604830000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0908000C0909000C090
      8000C0808000B0808000B0787000B0787000B0787000B0707000B0707000A070
      6000A0686000A060600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0A8A000FFFFFF00FFFFFF00D0C0B000D0C0B000D0B8A000D0B0A000D0A8
      9000C0A09000F0D0C000E0B09000604830000000000000000000000000000000
      000000000000489CDF000000000000000000000000009C480000FFFFDF000000
      00000000000000000000000000000000000000000000C0909000F0D8C000FFF8
      D000FFF0C000FFE8B000FFD8A000FFD0A000FFC09000F0B08000F0A87000E090
      6000C0806000A068600000000000000000000000000000000000000000000000
      000000000000DBD5CF00604830006048300060504000C9C0B700000000000000
      000000000000000000000000000000000000D3A98B00BE927300A47555000000
      0000C0A8A000FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF8F000FFF0E000FFE8
      E000FFE0D000F0D8C000E0B0A000604830000000000000000000000000000000
      00000074BF0074000000FFFFBF0000000000000000009CDFFF009C484800FFFF
      DF000000000000000000000000000000000000000000C0989000D0908000FFF0
      E000FFF8F000FFF8E000FFF8D000FFF0C000FFE8B000FFD8A000FFD09000F0B0
      8000C0706000A068600000000000000000000000000000000000000000000000
      0000D2CAC30070504000DBD5CF0000000000EDEAE70070504000D2C8C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0B0A000FFFFFF00FFFFFF00D0C0B000D0C0B000D0B8A000D0B0A000D0A8
      9000C0A09000FFE0D000E0B8A000604830000000000000000000000000009CDF
      FF0074004800FFFFBF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0989000FFE8B000D090
      8000F0F0E000FFFFF000FFF8E000FFF8E000FFF0D000FFE8B000F0D0A000C080
      6000F0B89000A070700000000000000000000000000000000000000000000000
      000070584000E4DFDB00D2C8C30060504000E1DEDB00E4DEDB00604830000000
      000000000000000000000000000000000000D6AF9300C0967800A57656000000
      0000C0B0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF8
      F000FFF0E0005068FF002030F0006048300000000000000000000000000074BF
      FF00DF9C48000000000000000000000000000000000000000000000000009CDF
      FF00BF74480000000000000000000000000000000000D0A09000FFFFE000F0D8
      B000C0A0A000F0F0E000FFF0E000FFF0E000F0E8D000F0D0B000C0787000F0D0
      B000F0D0A000A078700000000000000000000000000000000000000000000000
      0000705840000000000070504000C0B2AB006048400000000000604830000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0B0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      FF00FFF8F0007080FF005068F0006048300000000000BFBFBF0000000000489C
      DF00FFBF7400DFFFFF00DFBFBF000000000000000000000000009CDFFF000000
      480000000000DF9C4800000000000000000000000000D0A8A000F0E8C000D098
      9000A0F8FF00C0A09000C0989000C0888000C0888000B090900070D8FF00B098
      9000F0D0B000B080800000000000000000000000000000000000000000000000
      0000806850000000000070605000000000007050400000000000605040000000
      000000000000000000000000000000000000B098800070584000806860009080
      7000D0B8A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF8FF00D0C8E000C0C0E000705040000000000074BFFF00000000000000
      00000000000048000000FFDF9C00000000000000000074BFFF00000000000000
      00000000000000000000BF7400000000000000000000D0A8A000D0B0A000C0FF
      FF00C0FFFF00B0F8FF00B0F8FF00A0F0FF0090E8FF0080E0FF0070D8FF0070D8
      FF00B0908000A078700000000000000000000000000000000000000000000000
      0000907860000000000080706000000000008060500000000000705840000000
      000000000000000000000000000000000000C0A89000F0F8F000E0E0E000E0D0
      D000D0B8A000D0B8A000D0B8A000D0B0A000C0B0A000C0B0A000C0B0A000C0A8
      A000C0A8A000C0A89000C0A09000B09880000000000000000000489CDF000000
      000048000000FFDF9C00000000000000000000000000000000000000000074BF
      FF00DF9C480000000000000000000000000000000000D0A8A000A0E8FF00A0E8
      FF00A0E8FF00A0E8FF0090E0FF0080D8FF0080D8F00070D0F00070C8F00060C8
      F00060C8F000B47F870000000000000000000000000000000000000000000000
      0000A08070000000000090787000000000009070600000000000806850000000
      000000000000000000000000000000000000C0A8A000FFFFFF00FFFFFF00D0C0
      B000B0A8A000A0A0A000A098A0009098900090909000F0D0C000E0B090009070
      6000000000000000000000000000000000000000000000000000000000000074
      BF00FFBF7400000000000000000000000000000000000000000000000000489C
      DF00FFBF74000000000000000000000000000000000000000000C7A49D00E0FF
      FF00E0FFFF00F0FFFF00F0FFFF00E0FFFF00C0F8FF00A0F0FF0080E8FF0080E0
      FF00B48F87000000000000000000000000000000000000000000000000000000
      0000A08070000000000090807000000000009070600000000000807060000000
      000000000000000000000000000000000000C0A8A000FFFFFF00FFFFFF00FFFF
      FF00FFF8FF00FFF8F000FFF0E000FFE8E000FFE0D000F0D8C000E0B0A0008060
      500000000000A5765700C29A7E00D9B79E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CDFFF007400
      4800FFFFBF00000000000000000000000000000000000000000000000000CBA4
      A400F0FFFF00F0FFFF00FFFFFF00F0FFFF00D0FFFF00B0F8FF0090E8FF00B47F
      8700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A0887000DBD2C90000000000D5CFC900908070000000
      000000000000000000000000000000000000C0B0A000FFFFFF00FFFFFF00D0C0
      B000D0C0B000D0B8A000D0B0A000D0A89000C0A09000FFE0D000E0B8A0007058
      4000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000489CDF0048000000FFDF
      9C00000000000000000000000000000000000000000000000000000000000000
      0000CBA4A400F0FFFF00F0FFFF00F0FFFF00E0FFFF00B0F8FF00B47F87000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DBD2C900A0887000A088700090807000D5CFC9000000
      000000000000000000000000000000000000C0B0A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF8FF00FFF8F000FFF0E0005068FF002030F0006048
      300000000000A5765700C29B8000D9B8A0000000000000000000000000000000
      0000000000009CDFFF000000480000000000000000009C480000FFFFDF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7A49D00C3A5A500C3A5A500C0989000C0989000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0B0A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF8F0007080FF005068F0006048
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0B8A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8FF00D0C8E000C0C0E0006048
      300000000000A5775700C29C8100D9BAA2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0B8A000D0B8A000D0B8A000D0B0
      A000C0B0A000C0B0A000C0B0A000C0A8A000C0A8A000C0A89000C0A09000B090
      800000000000000000000000000000000000000000000000000000000000C3C3
      C300414141002626260026262600262626002626260026262600262626002626
      2600262626001F1F1F0041414100BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAE00737F8B00CDD2D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5C5
      C500FFFFFF00F7F7F700EDEDED00EAEAEA00E6E6E600E2E2E200DCDCDC00D8D8
      D800D2D2D200C6C6C600D3D3D300B0B0B0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C9A9B0010B8F0002080B000C2C9D000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C7007170E1007171E500F1F1F100E4E4E400E1E1E100DCDCDC00D8D8D800D1D1
      D100D0D0D000C0C0C000D3D3D300B2B2B2000000000000000000000000000000
      000000000000ADADAE00737F8B00CDD2D7000000000000000000000000000000
      0000000000000000000000000000000000005090500060706000607060005060
      5000304030002028200099ACB200A0F0FF0090E8FF002078A000BFC8CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C700E5E2EF00605EE2008F8DE500F3F3F300EBEBEB00E7E7E700E5E5E500E0E0
      E000DADADA00CDCDCD00DDDDDD00B2B2B2000000000000000000000000000000
      0000000000008C9A9B0010B8F0002080B000C2C9D00000000000000000000000
      0000000000000000000000000000000000005090500070C0800060A8600060A0
      600050986000509050005088500094B1B700E0FFFF0080E8FF0020709000C1C8
      CC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000489CDF000000000000000000FFBF7400000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C700F2F2F200F3F3F3005B5BE300BEBCEA00DCDAEF00F2F0EF00FFFFF000F0ED
      E400B9B6D8006965D300EAEAEA00B2B2B2000000000000000000000000000000
      00000000000099ACB200A0F0FF0090E8FF002078A000BFC8CE00000000000000
      0000000000000000000000000000000000006098600080C0800070C0800070B8
      700060B0700060A8600060A06000509850007EA8B600E0FFFF0060E0FF002068
      9000B5BDC6000000000000000000000000000000000074BFFF00000000000000
      000000000000000000009C480000FFFFDF00BFFFFF0000007400000000000000
      00000000000048000000FFDF9C0000000000000000000000000000000000C7C7
      C700ECECEC00EAEAEA00D6D3EB004D4CE900AAAAE900AAAAE9004A49E7004848
      E7005353ED008684DB00F1F1F100B2B2B2000000000000000000000000000000
      0000000000000000000094B1B700E0FFFF0080E8FF0020709000C1C8CC000000
      0000000000000000000000000000000000006098600080C8900080C0800070C0
      800070B8700060B070007893A00074879A005E6B790078868600D0FFFF0050D8
      FF0030507000BDC6CD00000000000000000074489C00FFFFBF0074BFFF00BF74
      000000000000000000000000000000000000000000000000000000000000DFFF
      FF009C749C00FFFFDF00BFFFFF009C487400000000000000000000000000C7C7
      C700E7E7E700E1E1E100F5F5F5007C7DEA00F1EDE900908FE600ABAAEA00F6F6
      F600E8E8E800DADADA00E9E9E900B2B2B2000000000000000000000000000000
      00000000000000000000000000007EA8B600E0FFFF0060E0FF0020689000B5BD
      C600000000000000000000000000000000006098700090D0900080C8900080C0
      800070C0800070B8700085B4BB00C0F8FF00D0FFFF00C0FFFF00B0F8FF0080E8
      FF0070E0FF0030486000BCC4CB0000000000BFFFFF0074007400FFFFBF0074BF
      FF00DF9C4800000000000000000000000000000000000000000000000000749C
      DF00FFDF9C00BFFFFF0074007400FFFFBF00000000000000000000000000C7C7
      C700E4E4E400DADADA00ECECEC00DBDBE8003B3CDD009D9AE800F4F4F400EEEE
      EE00E5E5E500D4D4D400E7E7E700B2B2B2000000000000000000000000000000
      0000000000007893A00074879A005E6B790078868600D0FFFF0050D8FF003050
      7000BDC6CD0000000000000000000000000070A07000A0D0A00090D0900080C8
      900080C0800070C08000C6DFE80080B0C000E0FFFF00C0FFFF0040D0FF00588D
      A400B9BDBE0010181000000000000000000000000000BFFFFF009C487400BFFF
      DF00BF7474000000000000000000000000000000000000000000000000007474
      BF00DFFFBF0074489C00FFFFBF0000000000000000000000000000000000C7C7
      C700E0E0E000D5D5D500DDDDDD00F4F4F4004E4FDF00E3E2E300ECECEC00E5E5
      E500DBDBDB00CECECE00E1E1E100B7B7B7000000000000000000000000000000
      00000000000085B4BB00C0F8FF00D0FFFF00C0FFFF00B0F8FF0080E8FF0070E0
      FF0030486000BCC4CB00000000000000000070A88000B0D8B000A0D0A00090D0
      900080C8900080C0800070C0800085B3C700C0F8FF00D0FFFF00B0F8FF0020C8
      FF0050788000C9CDD0000000000000000000000000000000000000000000BFFF
      FF00BF7474000000000000000000000000000000000000000000DFFFFF009C74
      9C00FFFFDF00000000000000000000000000000000000000000000000000C7C7
      C700D4D4D400CCCCCC00D0D0D000DEDEDE005352D300DBDBDC00E0E0E000D8D8
      D800D2D2D200C7C7C700D9D9D900BCBCBC000000000000000000000000000000
      000000000000C6DFE80080B0C000E0FFFF00C0FFFF0040D0FF00588DA400B9BD
      BE000000000000000000000000000000000080B08000B0E0C000B0D8B000A0D0
      A00090D0900080C8900080C0800070C0800080A8B000E0FFFF00C0FFFF0080E8
      FF0020C8FF0058677600C7CCCE000000000000489C000000000074000000DFFF
      BF0074489C00FFFFBF00000000000000000000000000000000009CDFFF00BF74
      4800DFFFFF0000489C00000000009C4800001D1AD70003018B0003018B000301
      8B0003018B0003018B0003018B0003018B0003018B0007058100E6E6E600CBCB
      CB00C5C5C500BBBBBB00C8C8C800C2C2C2000000000000000000000000000000
      0000000000000000000085B3C700C0F8FF00D0FFFF00B0F8FF0020C8FF005078
      8000C9CDD00000000000000000000000000080B89000C0E0C000B0E0C000B0D8
      B000A0D0A00090D0900080C8900080C0800090B8C00080B0C00070B0C00070B0
      C00070A8C0006098B0006090A000B5BCC3000000000000000000000000000000
      0000489CDF009C480000FFFFDF000000000000000000BFFFFF0000007400FFBF
      7400000000000000000000000000000000006462FF002B28FF001F1BFF001813
      FF00100CFF000905FF000401FA000401EE000401DB0003018B008D8A8A007875
      750075737300817F7F008E8C8C00D9D9D90000000000F0A07000F0A07000E098
      7000E0907000D0886000B090800080A8B000E0FFFF00C0FFFF0080E8FF0020C8
      FF0058677600C7CCCE00000000000000000080C09000C0E0C000C0E0C000B0E0
      C000B0D8B000A0D0A00090D0900080C8900080C0800070C080006070600080A8
      800080A0800030403000000000000000000000000000000000009CDFFF009C48
      4800FFFFDF00489CDF0000000000000000000000000000000000FFBF74000000
      0000489CDF00DF9C480000000000000000007775FF003A37FF002522FF001A16
      FF00120DFF000B07FF000501FF000401F5000501E9000502AB0074727200FBFB
      FB00FBFBFB00DFDFDF00AFAFAF00ECECEC0000000000F0A07000FFFFFF00FFFF
      FF00FFF8FF00FFF8F000FFF0F00090B8C00080B0C00070B0C00070B0C00070A8
      C0006098B0006090A000B5BCC3000000000090C8A00080C0900080B8900080B0
      800070A8800070A07000609870006098600060986000509050005090500080A0
      800080A88000506050000000000000000000000000009CDFFF009C484800FFFF
      DF000000000000000000BFFFFF000000740074000000FFFFBF00000000000000
      000000000000489CDF00DF9C480000000000807DFE006D6BFF005754FF004D49
      FF004542FF00403EFF003B38FF003532FF00332FFB001E1ADB0085818100FBFB
      FB00DFDFDF00ACACAC00E2E2E2000000000000000000F0A07000FFFFFF00FFFF
      FF00FFF8FF00FFF8F000FFF0F000FFF0E000FFE8E000FFE0D000F0D8D000A058
      30000000000000000000000000000000000000000000A0C0A000D0E0D000D0E8
      E000D0E8E000D0E0D000D0E0D000C0D8D000C0D8C000C0D0C000A0C0A0006088
      600080A08000607060000000000000000000BFFFFF009C487400FFFFDF000000
      00000000000000000000BFFFFF000000740074000000FFFFBF00000000000000
      00000000000000000000489CDF00FFBF7400000000000000000000000000C4C4
      C400CBC3C300C6BEBE00C2BCBC00C0BABA00B8B2B200ACA8A8008D888800DFDF
      DF00B0B0B000E2E2E200000000000000000000000000F0A07000F0A07000F0A0
      7000F0A07000E0987000E0987000E0906000D0806000C0785000C0705000B060
      4000000000000000000000000000000000000000000000000000A0C0A000D0E0
      D000D0E8E000E0E8E000D0E0D000D0E0D000D0D8D000C0D8C000C0D8C000A0C0
      A000608860006070600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBDB
      DB00B5B5B500B1B1B100B0B0B000B1B1B100B0B0B000B0B0B000B0B0B000B3B3
      B300E8E8E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000090C8
      A00080C0900080B8900080B0800070A8800070A0700060987000609860006098
      6000509050005090500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C8B5B40098696A0000000000BCAEAC000000
      000000000000000000000000000000000000000000000000000000000000644A
      3600644A3600644A3600644A3600644A3600644A3600644A3600644A3600644A
      3600644A3600644A3600644A3600644A36000000000050905000607060006070
      6000506050003040300020282000101810001018100010181000101810001018
      100000000000000000000000000000000000B0A0900060483000604830006048
      3000604830006048300060483000604830006048300060483000604830000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0605000F0909000C0606000000000000000
      000000000000000000000000000000000000000000000000000000000000B7A2
      9300FAE2D200DFB89E00E0B69900E2B49500E2B19100E4AF8C00E5AD8800E6AB
      8400E7A78000E8A57B00EBA37800644A3600000000005090500070C0800060A8
      600060A060005098600050905000508850005080500050785000407040001018
      100020282000000000000000000000000000B0A09000FFFFFF00F0E8E000D0C8
      C000D0B8B000C0B0A000C0B8B000C0B0A000C0A8A000B0A09000604830000000
      000000000000000000000000000000000000000000000000000000000000DCDA
      D900805840008058400000000000E0707000FFC0C000F0909000976869000000
      000080685000805840008058400000000000000000000000000000000000B9A4
      9500FBE6DA00FBE7DA00FBE6D900FAE5D800FBE4D600FBE2D300F9E0D000F8DD
      CC00F9DBC900F8DAC700E9A47C00644A3600000000006098600080C0800070C0
      800070B8700060B0700060A8600060A060005098500050904000507850001018
      100060885000202820000000000000000000B0A09000FFFFFF00FFFFFF00FFFF
      FF00FFF0F000F0E8E000F0E0D000F0D8D000E0D0C000B0A09000604830000000
      0000796658000E0B0A0000000000000000000000000000000000000000008668
      5900AD988B000000000000000000D3BAB900E0707000C0605000C6B3B1000000
      00008068500080605000AB9D970000000000000000000000000000000000BBA6
      9600FBECE200D6AE9000D6AE9000D6AE9000D6AE9000FAE7DA00D6AE9000D6AE
      9000D6AE9000F8DBCA00E7A78100644A3600000000006098600080C8900080C0
      800070C0800070B8700060B0700060A8600060A0600050985000508050001018
      100060906000608050001018100000000000B0A09000FFFFFF00FFFFFF00FFFF
      FF00FFF8F000F0F0F000F0E0E000F0D8D000E0D0C000B0A09000604830000000
      00000000000068574A000000000000000000000000006A7C8D00000000008060
      5000DBD9D8000000000000000000000000000000000000000000000000000000
      000080685000C2BEBC008060500000000000000000000000000000000000BEA8
      9900FDF0E800FDF0E900FDF0E800FCEFE700FCEDE500FBEBE100D6AE9000FAE5
      D700D6AE9000F9DECE00E6AC8500644A3600000000006098700090D0900080C8
      900080C0800070C0800070B8700060B0700060A8600060A06000508850001018
      100070906000609060001018100000000000B0A09000FFFFFF00B0A090007050
      400060504000604830006048300060483000F0D8D000C0A09000605040000000
      000000000000000000000000000057473B000000000010B8F0002080B0007060
      500086604A000000000000000000000000000000000000000000000000000000
      00000000000000000000806050000000000019773A000D7033000E6D34000F69
      330012643400135E34001558340017533400194D34001A493500FCECE200FBE8
      DD00D6AE9000FAE1D200E4AE8A00644A36000000000070A07000A0D0A00090D0
      900080C8900080C0800070C0800070B8700060B0700060A86000509050002028
      200070987000709060001018100000000000C0A89000FFFFFF00C0A89000F0E8
      F000D0B8B000C0A89000B0A0900060483000F0E0E000C0A8A000806860000000
      00000000000000000000000000009C897B0000000000A0F0FF0090E8FF002078
      A000B9BBC1000000000000000000000000000000000000000000000000000000
      000000000000000000008068500000000000217D3F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00184D3500FCEFE800FCEC
      E200FBE8DC00FAE4D600E3B18F00644A36000000000070A88000B0D8B000A0D0
      A00090D0900080C8900080C0800070C0800070B8700060B07000509860003040
      300070987000709870001018100000000000C0A8A000FFFFFF00C0A8A000FFFF
      FF00F0F0F000E0D8D000B0A0900060483000F0E8E000C0B0A000C0B0A0000000
      00000000000000000000000000000000000000000000A2C3CF00E0FFFF0080E8
      FF0020709000C7CDD10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C844600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0085A987001E7039001A5E35005C7E600017523400D6AE9000D6AE
      9000D6AE9000FBE6DA00E2B39500644A36000000000080B08000B0E0C000B0D8
      B000A0D0A00090D0900080C8900080C0800070C0800070B8700060A060005060
      500080A08000709870001018100000000000C0B0A000FFFFFF00C0B0A000FFFF
      FF00FFFFFF00F0E8E000C0A8900060504000F0F0F000D0C8C000B0A090007050
      400060504000604830006048300060483000000000000000000086BBC200E0FF
      FF0060E0FF0020689000BBC2CC00000000000000000000000000000000000000
      0000A5ABCD004249840010101000818DA600398E4F008BBD90001F773C001E6F
      3A001B6336008BBD90003F9248001E683B009FB3A10015583400FDF4EF00FDF1
      EA00D6AE9000FBE9DD00E0B69900644A36000000000080B89000C0E0C000B0E0
      C000B0D8B000A0D0A00090D0900080C8900080C0800070C0800060A860006070
      600080A0800080A080002028200000000000D0B0A000FFFFFF00D0B8A000FFFF
      FF00FFFFFF00F0F0F000C0A8900060504000FFF8F000E0D8D000C0A89000F0E8
      F000D0B8B000C0A89000B0A09000604830007A95A20077899C004A6068006080
      8000D0FFFF0050D8FF0030507000C4CCD3000000000000000000000000000000
      00005A67BC005068E0004050A0002A2B3A0047985800FFFFFF008BBD9000529E
      580091C4960058A25B0022713B006D9B7000DFE9DF00145E3400D6AE9000D6AE
      9000D6AE9000FBEADF00DEB89D00644A36000000000080C09000C0E0C000C0E0
      C000B0E0C000B0D8B000A0D0A00090D0900080C8900080C0800070C080006070
      600080A8800080A080003040300000000000D0B8A000FFFFFF00D0B8B000FFFF
      FF00FFFFFF00C0A8A000D0B8B00070584000FFF8F000F0E8E000C0A8A000FFFF
      FF00F0F0F000E0D8D000B0A090006048300094CFE300C0F8FF00D0FFFF00C0FF
      FF00B0F8FF0080E8FF0070E0FF0030486000C5CCD30000000000000000000000
      00005A67BC007098F0005068E000414F840054A26100FFFFFF00CFDDCF0096C6
      9A0058A25B00277D3A0028683200C0D1C000FFFFFF0011633400FEF8F300FDF4
      EF00D6AE9000FCECE100DDBAA100644A36000000000090C8A00080C0900080B8
      900080B0800070A8800070A07000609870006098600060986000509050005090
      500080A0800080A880005060500000000000D0B8B000FFFFFF00D0C0B000FFFF
      FF00FFFFFF00E0D0D00060483000E0D8D000A0888000E0D8D000C0B0A000FFFF
      FF00FFFFFF00F0E8E000C0A890006048300000000000A0D8E000E0FFFF00C0FF
      FF0040D0FF00588DA400BFC2C400000000000000000000000000000000000000
      0000A5ADD3005967BC005966BB00A0A7CA005FAA6700E5ECE5008DC4930065AC
      6A003589420070A5740058A061003B884700D6E2D6000F693300D6AE9000D6AE
      9000D6AE9000DCBCA500DDBBA400654B37000000000000000000A0C0A000D0E0
      D000D0E8E000D0E8E000D0E0D000D0E0D000C0D8D000C0D8C000C0D0C000A0C0
      A0006088600080A080006070600000000000D0C0B000FFFFFF00E0C0B000E0C0
      B000E0C0B000D0B0A000E0D8D000B0A09000D0D0C000E1DFDE00D0B8A000FFFF
      FF00FFFFFF00F0F0F000C0A890006048300000000000A1CFE300C0F8FF00D0FF
      FF00B0F8FF0020C8FF0050788000D0D4D6000000000080686000806050008058
      40000000000000000000000000000000000067B06D008EC2930060A864004897
      5200FFFFFF00CBDACC0055985E0055985E009BB09C000E6D3300FDF8F400FDF5
      EF00B7A29300654B3700654B3700654B3700000000000000000000000000A0C0
      A000D0E0D000D0E8E000E0E8E000D0E0D000D0E0D000D0D8D000C0D8C000C0D8
      C000A0C0A000608860006070600000000000E0C0B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B0A09000B0988D0000000000D0B8B000FFFF
      FF00FFFFFF00C0A8A000D0B8B00070504000000000000000000095D1E000E0FF
      FF00C0FFFF0080E8FF0020C8FF005060700000000000C8C8C500806860008060
      50000000000000000000000000000000000067B06D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D703300FEF7F400FDF4
      EF00B9A49500D4C5BA00654B3700000000000000000000000000000000000000
      000090C8A00080C0900080B8900080B0800070A8800070A07000609870006098
      600060986000509050005090500000000000E0C0B000E0C0B000E0C0B000E0C0
      B000E0C0B000D0C0B000D0B8B000D0B8A0000000000000000000D0C0B000FFFF
      FF00FFFFFF00E0D0D0006048300000000000000000000000000000000000C2EF
      EF00D0FFFF00C0FFFF0060E0FF0040B8E0005050500080706000CBC8C8008070
      60000000000000000000000000000000000067B06D0062AD69005BA7650053A1
      5F00499A5A0040935300368C4D002D854700258042001E7B3E00FEF7F300FDF4
      ED00C0AB9C00654B370000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0C0B000E0C0
      B000E0C0B000D0B0A00000000000000000000000000000000000000000000000
      000090D0E00090D0E00080C8E00080B0D0007098B000A1ABB300000000000000
      000000000000000000000000000000000000000000000000000000000000D8C2
      B200D7C1B100D6C0B000D4BEAE00D2BDAD00D1BAAB00CFB9AA00CDB6A800CBB6
      A600CAB4A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B005A5A5A006A6A
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F8F8F0073758900A48289004643
      4300636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007474740074747400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C84AB0075CBEC0030A3
      C9000988B4000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769CB6004088DF007376A800A681
      8700454242006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003FBA5A00355B35005E5E5E000000
      0000000000000000000000000000000000000000000000000000C7C0BB002028
      3000CCBCB0000000000000000000000000000000000000000000DDBFA6007058
      4000DAB79C0000000000000000000000000063B1CA00117FA200D1F1FF0072D8
      FF0077DDFF0070D9FC0052C8EF002AABD700128BB30019738F00000000000000
      00000000000000000000000000000000000093BAD60052B8FF004385D9007979
      A700A68187004542420064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000044CD670053E27C002F5832006161
      61000000000000000000000000000000000000000000000000007080900030B8
      F00010182000CCBCAF00000000000000000000000000DFC3AB0070584000F0E8
      E000B0A0900000000000000000000000000063B1CA0030A3C900AFDFEF0086E6
      FF0080E6FF0080E6FF0080E6FF0080E6FF0080E6FF0080E6FF005ED0F20030A3
      C900000000000000000000000000000000000000000083B6DD0053B9FF004385
      D9007979A700A68187004A474700737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000034B7510062FB950046CF6900344D
      34005E5E5E000000000000000000000000000000000000000000D0C6BF007080
      900030B8F00020284000CCBBAD0000000000E1C7B00070584000F0F0F000B0A0
      9000000000000000000000000000000000006794A20063B1CA0063B1CA00ABF2
      FF008AF0FF008AF0FF008AF0FF008AF0FF008AF0FF008AF0FF008AF0FF0081EA
      FC0000000000000000000000000000000000000000000000000072B2E40053B8
      FE004483D6007979A7008E74790052525200656565005C5C5C00525252005050
      50005B5B5B000000000000000000000000000000000000000000118721003B64
      3E0059595900000000000000000082A8820047D670005CF58F0062FB95002479
      2C005E5E5E00000000000000000000000000000000000000000000000000D0C6
      BD007080900030B8F00030385000C0A99C0070584000FFF8F000B0A090000000
      00000000000000000000000000000000000063B1CA0063B1CA003599BB00D3F9
      FF0094FAFF0094FAFF0094FAFF0094FAFF0094FAFF0094FAFF0094FAFF009BEF
      FF0041AACF0000000000000000000000000000000000000000000000000074B3
      E40053B8FE00588CCF007D7D8000816B6B00B8958100CEB09600E0C7AE00CFB2
      A1007963600046464600000000000000000000000000000000001A9933002BBA
      5400205C230000000000787E78002B963D0052EB850057F08A005CF58F0030B0
      4A00595959000000000000000000000000000000000000000000000000000000
      0000D0C4BC007080900040A8D00070584000FFFFFF00B0A09000000000000000
      00000000000000000000000000000000000063B1CA006794A20044B7E200CFEC
      F500B9FDFF00A6F9FC00A3FEFF00A3FEFF00A4FFFF00A4FFFF00A4FFFF00ABF2
      FF00B5F2FF000000000000000000000000000000000000000000000000000000
      000084B7DD00ACB2B700AB8B8800F1CFA900FFF5C500FFFDD100FFFFDB00FFFF
      DC00F5EFE000937974004646460000000000000000000000000017972E0033CC
      65002BBA54001C5F1F001A77240042D872004CE57F0051EA840057F08A002DAC
      4600676767000000000000000000000000000000000000000000000000000000
      000000000000BEB0A50070584000FFFFFF00B0A09000CAB6A600000000000000
      00000000000000000000000000000000000063B1CA0084CFE90077DDFF0049A8
      C8006CBBD600AFDFEF00CFECF500E0FFFF00C0FFFF00C0FFFF00C0FFFF00B5F2
      FF00D1F1FF004DA4C00000000000000000000000000000000000000000000000
      0000BFBFBF00B09D9D00EFC9A600FFF2C000FFF7C400FFFFD800FFFFE800FFFF
      F800FFFFFF00F3EDDA006A5151005E5E5E000000000000000000159429002DC6
      5A0033CC65002BBA540033C6600041DA740046DF79004CE57F0051EA84002AA1
      4100000000000000000000000000000000000000000000000000000000000000
      0000E1C9B50070584000FFFFFF00B0A0900030B8F00060607000B6A597000000
      00000000000080685000000000000000000063B1CA00B5F2FF0086ECFF0086EC
      FF0086ECFF0065CBE60059BFDF0063B1CA00F3FFFF00EDFFFF00D6F6FF00B6CC
      FF001040FF00AFDFEF0000000000000000000000000000000000000000000000
      0000BFBFBF00C7A49B00FFF1C200FFE4B100FFF9C600FFFFDB00FFFFEC00FFFF
      FB00FFFFF700FFFFDA00B29986005252520000000000000000001291240027C0
      4E002DC65A0033CC650035CE68003AD36D0041DA740046DF790047DD77002F72
      320000000000000000000000000000000000000000000000000000000000E2CB
      B70070584000FFFFFF00B0A09000CFC1B7007080900070A0A000908070009070
      600080605000957C6400B09080000000000063B1CA00C4F2FF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0072DEF90052B2D50053B1D3000A39FA005080
      F9000050FF00B1E6F2000A39FA00000000000000000000000000000000000000
      0000BFBFBF00E5BDA300FFF5C900FFDDAA00FFF5C200FFFFD600FFFFE500FFFF
      EC00FFFFE700FFFFD900CCB299005252520000000000000000000F8E1D0021BA
      430027C04E002DC65A0033CC650035CE68003AD36D0040D9730023993A000000
      000000000000000000000000000000000000D4BEB200A0807000806850009070
      6000FFFFFF00B0A090000000000000000000C2B3A500A0908000F0F0F000E0E0
      D000D0C8C0009B816900000000000000000063B1CA00CFECF50099FFFF0099FF
      FF0099FFFF00C4F2FF00CFECF500C4FDFF00C4FDFF00C0FFFF00BAFFFF001040
      FF000A39FA000A39FA0000000000000000000000000000000000000000000000
      0000BFBFBF00E5BFA600FFF5C900FFE6B900FFEFBC00FFFFCD00FFFFD700FFFF
      DB00FFFFD800FFFCD100CCAC93005E5E5E0000000000000000000B8B17001BB4
      370021BA420027C04D002CC5580032CB630035CE680028B14B003B4E3B000000
      000000000000000000000000000000000000B0A09000C0B0A000C0B0A000C0B0
      A0009080700000000000000000000000000000000000C0A09000FFFFFF00FDF9
      F600F0E0E000C09E8A000000000000000000000000004DA4C000AFDFEF00E4F5
      FC00E4F5FC006CBBD60080CCE6006794A2004DA4C0001040FF001040FF000A39
      FA0039DFFF001040FF00173BD600173BD6000000000000000000000000000000
      000000000000CCADA300FFF6CD00FFF2D700FFE3B900FFF1BF00FFF5C200FFF9
      C700FFF7C400FFF6C600B5927F007B7B7B00000000000000000008870F0015AE
      29001AB3350020B9400026BF4C002CC5570032CB630031C76100236B2C005252
      520000000000000000000000000000000000B0A090000000000000000000C0B0
      A000A080700000000000000000000000000000000000A0887000FEF6FB00F0DF
      DD00C3A29200000000000000000000000000000000000000000063B1CA0063B1
      CA0063B1CA000000000000000000000000000000000000000000000000001040
      FF000A39FA001040FF0000000000000000000000000000000000000000000000
      000000000000C0ACAC00EFDAC200FFFFFF00FFF7EA00FFECBF00FFDFAC00FFE3
      B000FFF0BD00F3D2A800856B6B0000000000000000000000000005850A000FA8
      1D0015AE29001AB3350020B9400026BF4C002CC5570032CB630031C660002870
      30005E5E5E00000000000000000000000000000000000000000000000000D0B8
      B000C0A8A00000000000000000009D846C0090706000B4ABA200C6ADA300D0AF
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001040FF000000
      00001040FF00000000001040FF00000000000000000000000000000000000000
      00000000000000000000BEA19F00F1E5DD00FFFBE800FFF8CD00FFEEBC00FFF3
      C600F5CFA400AC867C00000000000000000000000000000000000282050009A2
      12000FA81D0015AE29001AB3350020B9400026BF4C002CC5570032CB630031C6
      6000478F50000000000000000000000000000000000000000000B0A09000B0A0
      9000E4CEBC0000000000C0A8A000C0A09000D0B0A000C0B0A000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001040FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6A0A000C7A79400CEA88E00E0B89E00D5AC
      9900B2999600000000000000000000000000000000000000000008870F007AAD
      7A0079AC790079AC790079AC790079AC790079AC790079AC790079AC790079AC
      790079AC79000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000085B6D8000F6DAE001672
      B1001A74B1001A74B0001876B3001777B300137AB6000D7CBA000A7CBA00077A
      B8000279BA00006EAF007FAFCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B7612900B24A0800B24A
      0800B24A08009B4105009B4105009B410500883B07008235040077310000E6AB
      8400E7A77F00E8A57A00EBA3770000000000000000001180CB00D4E8F600FFFF
      FF00FFFFFF0085BFE50048A2DA00389FD800249DD7001CA1DA0015A2DA000DA1
      D900059BD900018ED000006CAE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A67B7600A3787500A378
      7500A3787500A3787500A3787500A3787500A3787500A3787500A3787500AF7D
      73000000000000000000000000000000000000000000B8683900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0077310000F8DD
      CC00F9DBC900F8DAC700E9A47B000000000000000000198AD500FFFFFF006BB3
      E40091C8EB00FFFFFF00FFFFFF00DFF1FA004CB5E40024ADE2001CB0E30013B0
      E3000AACE200049BD9000276B800000000000000000081A9B800487182003971
      8A002D6987002C6483002D617C00305B7300305B71003159720031566B003352
      6400324E5F0032495900000000000000000000000000A97E7800FFD4C200FFD8
      CB00FFD7C900FFD4C200FFD4C100FFD4C100FFD4C200FFCFB900FFCCB300AF7D
      73000000000000000000000000000000000000000000CC734800FFFFFF008B2E
      0700AE603700FAF2F00082350400B4653F00FFFFFF00FFFFFF0082350400D6AE
      9000D6AE9000F8DBCA00E7A780000000000000000000228ED700FFFFFF00A3D0
      EE0048A2DE008EC6EB00B8DDF300FFFFFF00C5E7F7002BB1E40021B3E40018B4
      E5000EB0E30008A0DA00057BBA00000000000000000081A9B800D6FEFF0099E4
      F90086DCF5007CD8F40077D2F30073CFF2006FCAF0006FCAF10068C7EF0061C4
      EE0064C2EC00334E6000000000000000000000000000AD817900FFD4C200FFD4
      C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFC2BA00AF7D
      73000000000000000000000000000000000000000000CE7A5400FFFFFF00A46C
      540098593900F4C8B7008235040082350400D0BAAD00FFFFFF00883B0700FAE5
      D700FAE2D300F9DECE00E6AC850000000000000000002C94D90074B8E600FFFF
      FF00B4D9F1004CA5DF0046A5DF00FFFFFF00CEEAF80064C5EA0052C2EA001BB1
      E40014ADE2000FA1DA000B7DBB00000000000000000081A9B800B8E8ED00ABF7
      FF008DEFFF008DEEFF008CEEFF0088EDFE0089EDFE0089EDFE0089EDFE007DE0
      F90064BADF0036526100000000000000000000000000B2857B00FFD4C200FFD4
      C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFC2BA00AF7D
      73000000000000000000000000000000000000000000D58A6600FFFFFF00B37D
      6600B9694300AB745C0082350400B65A31006C3D2700FFFFFF009B410500D6AE
      9000D6AE9000FAE1D200E4AE8A0000000000000000003598DA004BA3DE0083BF
      E900FFFFFF00B0D7F10049A5DF008BC9EB00F8FCFE00FFFFFF00FFFFFF00CAEC
      F80043BAE70018A0D900127FBB0000000000000000007FADBE007AB8CF008AE3
      F30090F5FF0089EFFF007EE7FD0077E2FA0078E7FF0085EBFF008AEEFE0076D7
      EF004687A8003A556600000000000000000000000000B78A7E00FFE5CA00FFD4
      C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFC2BA00AF7D
      730000000000000000000000000000000000C4AF9F00D5917600FFFFFF00D591
      7600B9694300DFBCAF009A4B2000DDA48B0098593900E2D2C9009B410500FCEC
      E200FBE8DC00FAE4D600E3B18F0000000000000000003F9DDC0053A7E00056A9
      E00086C1E900FFFFFF00AAD4F00041A3DE005BB4E50041AEE20055B9E600FFFF
      FF00E3F3FB0039A8DD00187EB900000000000000000088B3C200B0E6F10065B5
      D50079E6FB0071DCF5004BADD900359CCE00348FBB006DCEE90070DBF6003E99
      BD0063BFE6003F586800000000000000000000000000C2948100FFE8D100FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      730000000000000000000000000000000000C4AF9F00E69E7F00F4E2DC00DA9C
      8300C37C5E00F4E2DC00B9694300F4E2DC00A7694C009C8A7600B24A0800D6AE
      9000D6AE9000FBE6DA00E2B39500000000000000000045A0DE005AAAE1005CAA
      E10057A8E10094C8EB00FFFFFF005EAFE200369FDD002C9EDD00249DDD002EA3
      DE00FFFFFF008CC9E9001D7DB80000000000000000008CB9C800D2FDFF00A1EA
      F6006DCAEA0056B3DD0079D9F20087E9FB0084E4F700429EC40054BDE0007CDF
      F4006CCBF300425C6D00000000000000000000000000C2948100FFECD900FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      730000000000000000000000000000000000C4AF9F00E9A58900F1BEAA00DA9C
      8300CD805F00EADCD600CD805F00F4E2DC00A46C5400DDA48B00B24A0800FDF1
      EA00FCEDE400FBE9DD00E0B6990000000000000000004FA5DF0063AFE30061AD
      E20059A9E1007AB9E700FFFFFF004EA4DF00369ADB0046A5E00062B3E4002496
      DA00A1D2EF00BFDFF200217CB70000000000000000008FBECE00CFFEFF0094E5
      F60059B5DE0086E2F4009AF6FF0094F0FE0092EFFD0089E9FA004FAACD007DE0
      F2006DCEF30047637200000000000000000000000000C2948100FFE8D100FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      730000000000000000000000000000000000C4AF9F00E6AB9300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B24A0800FDF4
      EF00B7A293000000000000000000000000000000000053A7E0006CB4E50068B2
      E4005EABE10080BDE800FFFFFF005AAAE1003A9ADB009ECEEE00F8FCFE003B9E
      DC00B2D9F200B7DAF000237CB700000000000000000091C2D200C0F6FC0067BE
      E2008BE3F4009CF7FF009CF7FF009CF7FF0099F5FF0096F2FD008CE9F90049A0
      C60064BEE3004A667700000000000000000000000000C2948100FFECD900FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      730000000000000000000000000000000000C4AF9F00E6AB9300E6AB9300E9A5
      8900E69E7F00D8977B00D58A6600D17D5700CA765100C46D4100B7612900FEF8
      F300B9A49500D4C5BA000000000000000000000000005EACE2007ABCE70070B6
      E50063AEE30066AFE300E4F1FA00C1DFF300459EDD003E9BDC0051A6DF0067B2
      E400FDFEFF0075B7E300237BB600000000000000000093C5D60098DEF200B8EE
      F800C3FCFF00BCFBFF00B6FBFF00ADFAFF00AAF9FF009BF7FF0096F3FD0088E7
      F800429AC0004C697700000000000000000000000000C99A8300FFF1E200FFF1
      E200FFF1E200FFF1E200FFF1E200FFF1E200FFF1E200FFF1E200FFC2BA00AF7D
      730000000000000000000000000000000000C8B2A200FEFBF900D6AE9000D6AE
      9000D6AE9000D6AE9000D4BEAE00D2BDAD00D1BAAB00CDB6A800CBB6A600C8B0
      9F0000000000000000000000000000000000000000006BB4E5008DC5EA0080BF
      E8006FB6E50067B1E30091C6EB00F9FCFE00DDEDF90096C9EC00AED5F000FFFF
      FF00B1D7F1003596D5001E78B500000000000000000093C6D700CBF7FD00DBFF
      FF00D9FFFF00D9FFFF00D8FFFF00D8FFFF00D8FFFF00D7FFFF00C8FCFF00B0F9
      FF0094E3F400516D7C00000000000000000000000000CE9E8500FFF5EB00FFF3
      E700FFFCF900FFF8F000FFF3E700FFF3E700FFF0E100FFE1D200FFC2BA00AF7D
      730000000000000000000000000000000000CBB5A600FFFDFC00FEFCFA00FEF8
      F400FDF4EF00FDF1EA00FCEDE400FBE9DD00E0B6990000000000000000000000
      0000B96943000000000000000000000000000000000077BAE7009DCDEE008CC5
      EA0079BBE70070B6E5006AB2E40087C1E900C3E0F400EBF5FB00D4E9F70093C8
      EC0045A0DE002F92D3001975B300000000000000000093C6D70093C6D70093C6
      D70092C5D50090C2D2008EBECE008BBACA0089B5C50086B1C10084ADBD0082AA
      BA0081A9B80081A9B800000000000000000000000000D4A48700FFF9F400FFF3
      E700FFF3E700FFFCF900FFF8F000FFF8F000FFF3E700B2807400B2807400B280
      740000000000000000000000000000000000CEB9A900FFFEFD00D6AE9000D6AE
      9000D6AE9000FDF4EF00B7A2930000000000000000000000000000000000B969
      4300B9694300B9694300B96943000000000000000000B2D7F10076B9E60067B1
      E4005BAAE10054A7E0004FA5DF004AA2DE004BA3DE0046A1DE003F9DDC003B9B
      DC003196D900238ACF008ABADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9A98A00FFFDFA00FFF3
      E700FFF3E700FFF3E700FFFCF900FFFCF900FFF8F000B2807400DDA98100F6ED
      E80000000000000000000000000000000000D1BCAC00FFFEFE00FFFEFD00FEFA
      F700FEF8F300FEF8F300B9A49500D4C5BA000000000000000000000000000000
      0000B96943000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFAE8C00DCA98700DCA9
      8700DCA98700DCA98700DCA98700DCA98700DCA98700B2807400F8EFE9000000
      000000000000000000000000000000000000D4BEAE00D2BDAD00D1BAAB00CDB6
      A800CBB6A600CAB4A500C0AB9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD603200AA5E3000A85B
      2C00A4582800A05524009C502000984D1D0093491900904515008B421000873F
      0C00843B0900813806007F3503007D340100000000000000000000000000336D
      4700336D4700336D47002C6642002C6642002C664200265D3800265D3800265D
      38001E5331001E5331001E5331001A4D2A000000000060483000604830006048
      3000604830006050400070584000705840007050400060483000604830006048
      3000604830006048300060483000604830000000000000000000006600000066
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8694200EBAE9400EBAD9200E9AB
      9000E6A98F00E4A78B00E0A48800DDA28500D89E8100D59B7F00D1997B00CE96
      7700CB947500C8917300C79071007F360300000000006CA67C0066A0770066A0
      77005F9B72005F9B720058966B0058966B0049935F0049935F0049935F003D8C
      57003D8C5700358C4F00358C4F001A4D2A0000000000FFF8F000FFF8F000D0C0
      B000FFF0E000FFE8E000D0C8C000FFE8E000FFE8E000C0B0A000F0D8C000F0D8
      C000C0A89000F0D0C000F0D0B000604830000000000000000000006600000D90
      1A00026F0400165D0E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB6C4500ECB09600FCF6F500FBF4
      F200FAF3F100FAF1F000F9F0ED00F9EEEC00F8EEEA00F8ECE900F8EAE700F7EA
      E600F6E8E500F6E7E300C891720081380600417B57006CA67C00EBF3EB00E8F1
      E800E6F0E600E4EFE400E2EEE300DFECDF00DEEBDE00DCEADD00DCEADB00D9E8
      D900D8E7D800D8E7D800358C4F001A4D2A0000000000FFF8FF00FFF8F000D0C0
      B000FFF0F000FFF0F000B0A8A00050505000F0E8E000D0C0B000F0E0D000F0D8
      C000C0A8A000F0D0C000F0D0C0006048300000000000000000000066000014A0
      270016AB2B0007840F0005630300000000000000000000000000000000000000
      000000000000000000000000000000000000BE6F4900EDB29A00FCF7F500FCF6
      F400FBF5F300FBF2F100FAF1F000F9F0EE00F9EFED00F9EDEB00F8ECE900F7EA
      E800F7E9E600F7E8E500CA937400843B0900417B570071AA8100EDF5ED00EBF3
      EB00EAF1E900E6F0E600E4EFE400E2EEE300DFECDF00DEEBDE00DCEADB00DCEA
      DB00DAE9DA00D8E7D8003D8C57001E53310000000000E0C8C000D0C8C000D0C8
      C000D0C0C000E0C8C000E0D8D0004040400070707000E0D0C000D0B8B000C0B0
      A000C0A8A000C0A8A000C0A890006048300000000000000000000066000019A5
      32001CB5360017B02D000C951700016A02001A5C110000000000000000000000
      000000000000000000000000000000000000C3724C00EEB59D00FDF8F700A951
      26008D4F2900C0B8AB00FAF3F100FAF1F000A9512600583B1400B5AB9C00F8EC
      E900F8EAE800F7E9E700CD967700883F0C0047815D0076AF8500EFF6EF00EDF5
      ED00EBF3EB00E9F2E900E8F1E800E4EFE40081AA8D002C5230002C5230002C52
      30002C523000DAE9DA003D8C57001E533100C0A89000FFFFFF00FFFFFF00D0C8
      C000FFF8F000FFF8F000F0E0E0006058500040404000E0D8D000FFE8E000FFE0
      D000C0B0A000F0D8C000F0D8C000604830000000000000000000006600001FAB
      3D0022BB44001CB5360017B02D000FA51E000379060009610500000000000000
      000000000000000000000000000000000000C7765000EFB8A100FDFAF900C47B
      5E00DE7644008D4F2900ECE9E600F5F2EF00CD683F008D4F2900583B1400E9DF
      D900F8ECE900F7EBE800D1987A008B4210004D8762007CB58A00F3F8F30055A4
      5A002C5230002C5230002C5230002C5230001D781E006DB6750049935F004B96
      4D00265D3800DCEADB0049935F00265D3800C0A89000FFFFFF00FFFFFF00E0C8
      C000FFF8FF00FFF8F000E0E0D0008080800030303000A0A0A000FFF0E000FFE8
      D000C0B0A000F0E0D000F0D8C0006048300000000000000000000066000023B0
      460029C2520022BB44001CB5360017B02D000FA91F0005880B00016A01000000
      000000000000000000000000000000000000CC7B5500F0BBA500FDFAFA00C983
      6900E2957800DE7644008D4F2900E3D6CD00DB7D5800DE7644008D4F2900998B
      7700F9EDEA00F8ECE900D39B7D008F451400558E670081BC9000F4F9F400F1F7
      F10055A45A0063B2760055A45A001D781E007CC1850049935F004B964D00265D
      380081AA8D00DCEADD0049935F00265D3800C0A8A000E0D0C000E0D0C000E0D0
      C000E0D0C000E0D0C000E0D8D000D0D0D0003038300060586000E0D0D000D0C0
      B000C0B0A000C0B0A000C0B0A0006048300000000000000000000066000026B3
      4D0030C9600029C2520022BB44001CB5360017B02D000FA91F00089B10000271
      030011610B00000000000000000000000000D17F5A00F0BEA900FEFBFB00D38E
      7200B77F6500D19B8300DE7644008D4F2900C56E4A00C9836900B6623A00583B
      1400E9DFD900F8EEEB00D79D80009349180058966B008AB79500F6FAF600F5F9
      F500F3F8F30055A45A003287350081BC900049935F004B964D00265D38006199
      640061996400DFECDF0049935F00265D3800C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFF8FF00E0E0E000F0F0F0005050500030283000F0E8E000FFF0
      E000D0B8B000FFE0D000FFE0D0006048300000000000000000000066000027B3
      4D0033CC660030C9600029C2520022BB44001CB5360017B02D000EA41D00037D
      060006640400000000000000000000000000D6825E00F2C1AD00FEFCFC00D897
      7E00B77F6500E6BBAC00C9836900DE76440085462400E0AA9600D17547008D4F
      2900A08F7C00F9EFEC00DAA08300984D1C005F9B720094C79C00F9FBFA00F6FA
      F600F5F9F5003287350094C79C005CAA650055A45A00336D470004690400E6F0
      E600E2EEE300E1EDE10058966B002C664200C0B0A000FFFFFF00FFFFFF00E0D0
      D000FFFFFF0060586000E0E0E000FFF8F000A0A0A0003028300090909000FFF0
      F000D0C0B000FFE8E000FFE0D000604830000000000000000000006600002DB9
      530035CE680033CC660030C9600029C2520022BB440015A12800036F0500165D
      0E0000000000000000000000000000000000DB866300F2C4B100FEFEFD00DCA0
      8800B77F6500F5E4E000DCA08800E1AC980088492700E2CBC200DDB9AB00B662
      3A00583B1400F5F0ED00DEA286009C51210066A0770094C79C00FCFDFB00F9FB
      FA00409347009DD0A7006DB675005CAA65004287490055A45A00328735000469
      0400E6F0E600E4EFE40058966B002C664200D0B0A000E0D0C000E0D0C000E0D8
      D000F0E0E000707070005058500040484000303830002028200040404000E0D8
      D000D0C0C000D0B8B000C0B8B0006048300000000000000000000066000032BE
      58003CD56F0035CE680033CC660030C960001494280005630300000000000000
      000000000000000000000000000000000000DF8A6800F4C7B500DF967C00E4A8
      9100E4A89100AD7A6500FFFFFF00D186690091503000E2CBC200E1AC9800C781
      6900B6623A00D49A8100E1A58900A05425006CA67C009DD0A700FCFDFC004B96
      4D00AAD6B20073BB7C0073BB7C0049935F0057825A0068B06F0055A45A003287
      350004690400E6F0E6005F9B7200336D4700D0B8A000FFFFFF00FFFFFF00E0D0
      D000FFFFFF00A0A0A0007078700060606000504850003028300030303000FFF8
      F000D0C8C000FFF0E000FFE8E0006048300000000000000000000066000036C2
      5C0043DC76003CD56F002BBB55000A7913000F5F090000000000000000000000
      000000000000000000000000000000000000E48E6B00F4CAB800D8957F00D28C
      7300D28D7500C8755600DFBBAE00FEFBFA0099573900FCF8F700CA755400CB7B
      5D00CE7A5B00C66C4A00E4A78C00A458280071AA81009DD0A700FEFEFE0068B0
      6F0064AC690064AC6900579A5E00F6F9F600F3F8F30057825A0057825A005782
      5A0057825A00E9F2E9005F9B7200336D4700D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00F0E8E000FFF8FF00FFF8FF00F0E8E000FFF8F000FFF8
      F000D0C8C000FFF0F000FFF0E000604830000000000000000000006600003DC9
      630049E27C0025A84200046D07002D581E000000000000000000000000000000
      000000000000000000000000000000000000E7916E00F5CCBB00FFFFFF00FFFF
      FF00FFFEFE00FEFEFE00FEFDFC00FEFCFB00FEFBFA00FDF9F900FCF8F700FCF7
      F600FCF5F400FBF4F300E6AA8E00A75B2D0076AF8500AAD6B200FEFEFE00FDFE
      FD00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6F9F600F4F9F400F1F7F100EFF6
      EF00EDF5ED00EBF3EB0066A0770000000000F0A89000F0A89000F0A89000F0A8
      8000F0A08000F0A08000F0A08000F0A08000E0987000E0906000E0885000E078
      4000E0784000E0704000E0704000D06030000000000000000000006600003CC5
      5F00158721000961050000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EB937200F6CEBE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FFFEFD00FEFDFC00FDFCFB00FEFAFA00FDFAF900FCF8
      F800FCF7F600FBF5F400E9AB9100AA5D2F007CB58A00AAD6B200FFFFFF00FFFF
      FF00FEFFFE00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6FAF600F4F9F400F1F7
      F100EFF6EF00EDF5ED0066A0770000000000F0A89000FFC0A000FFC0A000FFC0
      A000FFB89000FFB89000FFB09000FFB08000FFA88000F0A88000F0A07000F098
      7000F0986000F0986000F0986000D06830000000000000000000006600000066
      0000245E19000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ED967400F7CFC000F6CEBE00F5CC
      BC00F4CAB800F4C7B500F2C4B100F2C1AD00F0BEA900F0BBA500EFB8A100EDB5
      9D00ECB39A00ECB09600EBAE9400AD6032007CB58A00AAD6B200AAD6B2009DD0
      A7009DD0A70094C79C0094C79C0094C79C008AB7950081BC90007CB58A0076AF
      850071AA810071AA81006CA67C0000000000F0A89000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0784000E0784000E07040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ED967400ED967400EB947200E891
      6F00E48F6D00E18C6800DD886500D8846100D4815C00CF7D5800CA795300C575
      5000C1714C00BD6F4800BA6C45000000000081BC90007CB58A0076AF850071AA
      81006CA67C0066A077005F9B720058966B00558E67004D8762004D8762004781
      5D00417B5700417B570000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060483000604830006048
      3000604830006050400070584000705840007058400060504000604830006048
      3000604830006048300060483000604830000000000070504000705840007060
      5000706050007060500070584000705040007058400070605000806050008060
      5000705850007050400060504000604830000000000060483000604830006048
      3000605040007050400070585000806050008060500070605000705040006050
      4000604830006048300060483000604830000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFF8F000FFF8F000D0C0
      B000FFF0E000FFF0E000D0C8C000FFE8E000FFE8E000D0B8B000F0D8D000F0D8
      C000C0A89000F0D0C000F0D0B00060483000C0A89000FFF8F000FFF8F000E0D8
      D000FFF8F000FFF0F000D0C8C000FFE8E000FFE8E000D0C8C000FFE8E000FFE8
      E000D0C8C000F0D8C000F0D0C0006048300000000000FFF8F000FFF8F000D0C0
      B000FFF0E000FFF0E000E0D0D000FFF0F000FFF0E000D0C8C000FFE0D000F0D8
      C000C0A8A000F0D0C000F0D0B000604830000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFF8FF00FFF8F000D0C0
      C000FFF0F000FFF0F00090808000404040005050500080707000FFE8D000F0E0
      D000C0A8A000F0D0C000F0D0C00060483000C0A8A000FFF8FF00808880003030
      3000303030006060600080808000FFF0F000D0C0C00020282000202820002020
      200020202000E0C8C000F0D8C0006050400000000000FFF8FF00FFF8F000D0C0
      B000FFF0F000F0F0E00030283000202020001018100010101000E0D0C000FFE0
      D000C0A8A000F0D0C000F0D0C000604830000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF000000000000000000000000000000000000000000E0C8C000D0C8C000D0C8
      C000E0D0C000B0A8A00020202000D0C0C0009090900010081000A0909000D0C0
      B000C0B0A000C0A8A000C0A8900060483000C0A8A000E0D8D000606060004048
      4000B0B0B000F0E8E0003038300070787000E0E0E000F0E8E000302830002028
      2000E0E0E000D0C0B000C0A8A0006048300000000000E0C8C000D0C8C000D0C8
      C000D0C8C000E0E0E000E0D0D0003028300020202000C0B8B000E0D8D000C0B0
      B000C0A8A000C0A8A000C0A89000604830000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000C0A89000FFFFFF00FFFFFF00E0C8
      C000FFF8F000A0A0A000D0C0C000FFF8F000FFF8F0001010100040404000FFE8
      E000C0B8A000F0D8C000F0D8C00060483000C0A8A000FFFFFF00D0D8D000C0C0
      C000FFF8FF00FFF8FF004040400030303000FFF8F000F0E8E000302830002028
      2000E0D8D000FFE0D000F0D8C00060483000C0A89000FFFFFF00FFFFFF00D0C8
      C000FFF8F000FFF8F000F0E8E0004038400020202000F0E0E000FFE8E000FFE0
      D000C0B0A000F0D8C000F0D8C000604830000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000C0A89000FFFFFF00FFFFFF00E0C8
      C000FFF8FF00FFF8F000E0E0D000FFF8F000FFF8F0000008000010101000FFF0
      E000D0B8B000F0E0D000F0D8C00060483000C0A8A000FFFFFF00FFFFFF00E0D8
      D000FFFFFF00C0B8C0003038300030303000FFF8F000F0E0E000303030002028
      2000E0D8D000FFE0D000F0D8C00060483000C0A89000FFFFFF00FFFFFF00E0C8
      C000FFF8FF00FFF8F000F0E0E0004048400020202000E0E0E000FFE8E000FFE8
      D000C0B0A000F0E0D000F0D8C000604830000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000000000000000000000000000C0A8A000E0D0C000E0D0C000E0C8
      C000E0D0C000E0D8D0003030300040404000101010000000000040384000E0D0
      D000D0B8B000C0B0A000C0B0A00060483000C0A8A000E0D0C000E0D0D000E0D8
      D00090909000504850004040400040404000F0E0E000F0E8E000303030003028
      3000E0D8D000D0B8B000C0B0A00060483000C0A8A000E0D0C000E0D0C000E0C8
      C000E0C8C000E0D0C000F0E0E0005058500020202000E0E0E000D0C0C000D0B8
      B000C0B0A000C0B0A000C0B0A000604830000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000000000000000000000000000C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF0050585000505050002018200040404000E0D8D000FFF0
      E000D0B8B000FFE0D000FFE0D00060483000C0B0A000FFFFFF00FFFFFF00F0E0
      D000C0C8C0006060600050585000E0E8E000FFF8FF00F0E8E000303830003030
      3000E0D8D000FFE8E000FFE0D00060483000C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00F0E8E0006060600020282000E0E0E000FFF0F000FFE8
      E000C0B8B000FFE0D000FFE0D000604830000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000000000000000000000000000C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF0060686000FFFFFF00FFFFFF00F0E8E000FFF8F000FFF0
      F000D0B8B000FFE8E000FFE0D00060483000C0B0A000FFFFFF00F0E8F000E0E0
      E000FFFFFF00B0B8B00050505000A0A0A000FFF8FF00F0E8E000403840003030
      3000E0E0D000FFE8E000FFE0D00060483000C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00F0E8E0006060600020282000F0E0E000FFF0F000FFF0
      E000D0B8B000FFE8E000FFE0D000604830000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000000000000000000000000000D0B0A000E0D0C000E0D0C000E0D0
      C000E0D8D000F0E0E0006068600070707000505050004038400080808000E0D0
      C000D0C0B000D0B8B000C0B8B00060483000D0B8A000E0D8D000A0A0A0006068
      6000B0B0B000606860006058600080808000C0C0C00070707000404840003038
      3000E0D0D000D0C0C000D0B8B00060483000D0B0A000E0D0C000E0D0C000E0D0
      C000E0D0D000E0D8D000908890006068600030283000F0E0E000E0C8C000D0C0
      B000D0B8B000D0B8B000C0B8B000604830000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF008078800060606000404040001018100060606000FFF8
      F000D0C0B000FFF0E000FFE8E00060483000D0B8A000FFFFFF00FFFFFF00C0B8
      B000808080007070700080888000FFFFFF00FFFFFF00F0E0E000B0B0B0006060
      6000E0D0D000FFF0F000FFE8E00060483000D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00E0E0E000A098A00040384000E0D8D000FFF8F000FFF8
      F000D0C0B000FFF0E000FFE8E000604830000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00F0E0E000FFFFFF00FFFFFF00F0E0E000FFF8FF00FFF8
      F000D0C0C000FFF0F000FFF0E00060483000D0B8B000FFFFFF00FFFFFF00E0D8
      D000FFFFFF00FFFFFF00F0E0E000FFFFFF00FFFFFF00E0D0D000FFF8FF00FFF8
      F000E0C8C000FFF0F000FFF0E00060483000D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00E0D8D000FFFFFF00F0F8F000E0D0D000FFF8FF00FFF8
      F000D0C0B000FFF0F000FFF0E000604830000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000F0A89000F0A89000F0A89000F0A8
      8000F0A08000F0987000F0987000F0987000E0906000E0885000E0805000E078
      4000E0784000E0704000E0704000D0603000F0A89000F0A89000F0B09000F0A8
      9000F0A89000F0A08000F0987000E0906000E0805000E0784000E0784000E080
      4000E0784000E0704000E0704000D0603000F0A89000F0A89000F0A89000F0A8
      8000F0A08000E0987000E0907000E0906000E0886000E0805000E0784000E070
      4000E0704000E0704000E0704000D06030000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000F0A89000FFC0A000FFC0A000FFC0
      A000FFB89000FFB89000FFB09000FFB08000FFA88000F0A88000F0A07000F098
      7000F0986000F0986000F0986000D0683000F0A89000FFC0A000FFC0A000FFC0
      A000FFB89000FFB89000FFB09000FFB08000FFA88000F0A07000F0A07000F098
      7000F0986000F0986000F0986000D0683000F0A89000FFC0A000FFC0A000FFC0
      A000FFB89000FFB89000FFB09000FFB08000FFA88000F0A08000F0A07000F098
      7000F0986000F0986000F0986000D06830000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0A89000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0784000E0784000E0704000F0A89000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0784000E0784000E0704000F0A89000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0784000E0784000E07040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAF3
      F000C3846100AF4A0100BC570100AF4A010099340100B3674100F3E6E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAF3F000B664
      3100C6610100B9540100C3846100E6CDC00000000000F3E6E000E6CDC0000000
      00000000000000000000000000000000000000000000A67B7600A3787500A378
      7500A3787500A3787500A3787500A3787500A3787500A3787500A3787500AF7D
      7300000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD714100D16C
      0100C6610100CD9A800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A97E7800FFD4C200FFD8
      CB00FFD7C900FFD4C200FFD4C100FFD4C100FFD0BB00FFCFB900FFCCB300AF7D
      7300000000000000000000000000000000000000000084848400000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000EDDAD000CA660100DC77
      0100B6510100F3E6E00000000000000000000000000000000000FAF3F000CD9A
      80000000000000000000000000000000000000000000AD817900FFE2C500FFD3
      A700FFD2A400FFD1A200FFD0A000FFD0A000FFCF9F00FFCE9D00FFC2BA00AF7D
      7300000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000CD9A8000E9830100E07B
      0100B75201000000000000000000000000000000000000000000B66A4100A33E
      0100C68D710000000000000000000000000000000000B2857B00FFE2C500FFE2
      C500FFE2C500FFE2C500FFE2C500FFE2C500FFE2C500FFE2C500FFC2BA00AF7D
      7300000000000000000000000000000000008484840000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000848484000000000000000000000000008484840000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400000000000000000000000000B6643100B6643100F6900100E47F
      0100B7520100A33E0100A33E01000000000000000000C68D7100A33E0100CC67
      0100A33E0100D9B3A000000000000000000000000000B78A7E00FFE5CA00FFD5
      AB00FFD4A900FFD3A800FFD2A600FFD2A600FFD2A400FFD0A100FFC2BA00AF7D
      73000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000A33E0100F29B2C00F9930100E984
      0100D9740100A33E0100D3A6900000000000D9B3A000A33E0100CC670100CC67
      0100CC670100A33E0100EDDAD0000000000000000000C2948100FFE8D100FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      73000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000FAF3F000A33E0100F7910100ED88
      0100D26D0100C384610000000000EDDAD000A33E0100BF5A0100CC670100CC67
      0100C9640100BF5A0100A33E01000000000000000000C2948100FFECD900FFD2
      A600FFD2A600FFD2A600FFD2A600FFD2A600FFD2A600FFD2A600FFC2BA00AF7D
      73000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000EDDAD000A33E0100EC87
      0100B6643100FAF3F000000000000000000000000000D3A69000BF5A0100CC67
      0100B752010000000000000000000000000000000000C2948100FFE8D100FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      73000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000E6CDC000A546
      1100FAF3F00000000000000000000000000000000000E6CDC000BF5A0100CC67
      0100B752010000000000000000000000000000000000C2948100FFECD900FFD2
      A600FFD2A600FFD2A600FFD2A600FFD2A600FFD2A600FFD2A600FFC2BA00AF7D
      73000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C68D7100C9640100C964
      0100BA6E410000000000000000000000000000000000C99A8300FFF1E200FFF1
      E200FFF1E200FFF1E200FFF1E200FFF1E200FFF1E200FFF1E200FFC2BA00AF7D
      7300000000000000000000000000000000008484840000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      000084848400000000000000000000000000848484000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3A69000B14C0100CC670100B353
      1100EDDAD00000000000000000000000000000000000CE9E8500FFF5EB000000
      0000FFFCF900FFF8F000FFF3E700FFF3E700FFF0E100FFE1D200FFC2BA00AF7D
      7300000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C68D7100B3674100C77C4500BE5E1100D5710100CA650100B0572100EDDA
      D0000000000000000000000000000000000000000000D4A48700FFF9F4000000
      000000000000FFFCF900FFF8F000FFF8F000FFF3E700B2807400B2807400B280
      7400000000000000000000000000000000000000000084848400000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000008484
      8400000000000000000000000000000000000000000084848400000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000EDDAD000CD9A8000CC865100C68D7100D9B3A000000000000000
      00000000000000000000000000000000000000000000D9A98A00FFFDFA000000
      00000000000000000000FFFCF900FFFCF900FFF8F000B2807400DDA98100F6ED
      E800000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFAE8C00DCA98700DCA9
      8700DCA98700DCA98700DCA98700DCA98700DCA98700B2807400F8EFE9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00DEDEDE00C6C6C60094949400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00E7E7E700CECECE00E7E7E700FFFFFF00F7F7F700A5A5
      A500DEDEDE00000000008484840000000000427399002C586F002C586F002C58
      6F000000000000000000427399002C586F002C586F002C586F00000000000000
      0000427399002C586F002C586F002C586F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00DEDEDE0094949400A5A5A500ADADAD00FFFFFF00FFFFFF00FFFF
      FF0084848400CECECE000000000000000000699AAE00A3D0EA00A3D0EA002C58
      6F000000000000000000699AAE00A3D0EA00A3D0EA002C586F00000000000000
      0000699AAE00A3D0EA00A3D0EA002C586F000000000000000000000000000000
      0000000000000000000090482000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090482000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00E7E7E700A5A5A5009C9C9C009C9C9C00CECECE00E7E7E700FFFFFF00FFFF
      FF00F7F7F7009C9C9C0000000000848484009FB0A400699AAE00699AAE004273
      990000000000000000009FB0A400699AAE00699AAE0042739900000000000000
      00009FB0A400699AAE00699AAE00427399000000000000000000000000000000
      000000000000A0503000A0502000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0502000A05030000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00F7F7F70018181800ADADAD00E7E7E700F7F7F700E7E7E700FFFFFF00FFFF
      FF00FFFFFF00DEDEDE00DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0503000C0684000B0583000A0502000A0502000A0502000A0502000A048
      200090482000D080600000000000000000000000000000000000D08060009048
      2000A0482000A0502000A0502000A0502000A0502000B0583000C0684000A050
      3000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000E7E7E700E7E7E700F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEDEDE00DEDEDE000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000006C554C0000000000000000000000
      000000000000000000002121210000000000000000000000000000000000A058
      3000C0704000D0785000E0805000F0885000F0885000F0885000F0885000F090
      6000FFB09000D088600000000000000000000000000000000000D0886000FFB0
      9000F0906000F0885000F0885000F0885000F0885000E0805000D0785000C070
      4000A058300000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF0008080800FFFFFF00E7E7E70084848400FFFF
      FF0084848400FFFFFF00ADADAD000000000000000000000000007E7E7E007E7E
      7E007E7E7E007E7E7E007E7E7E00717171006A635F006C554C006C554C004646
      4600363636002F2F2F0024242400000000000000000000000000B0583000C070
      4000E0785000E0885000F0906000F0906000F0986000FFA07000FFA07000FFA8
      8000FFB89000E090700000000000000000000000000000000000E0907000FFB8
      9000FFA88000FFA07000FFA07000F0986000F0906000F0906000E0885000E078
      5000C0704000B0583000000000000000000000000000FFFFFF00000000000000
      000000000000C6C6C600FFFFFF0008080800FFFFFF00CECECE0000000000F7F7
      F70000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000007171710000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B058
      3000E0805000FFA07000FFA88000FFB08000FFB09000FFB89000FFB8A000FFC0
      A000FFC0A000E098700000000000000000000000000000000000E0987000FFC0
      A000FFC0A000FFB8A000FFB89000FFB09000FFB08000FFA88000FFA07000E080
      5000B05830000000000000000000000000000000000000000000000000008484
      840000000000FFFFFF000000000084848400FFFFFF00DEDEDE0000000000F7F7
      F70000000000C6C6C600E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000007E7E7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0583000F0987000E0907000D0886000D0886000D0886000D0886000E090
      7000E0987000F0A0700000000000000000000000000000000000F0A07000E098
      7000E0907000D0886000D0886000D0886000D0886000E0907000F0987000B058
      3000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000C6C6C600FFFFFF0084848400C6C6C600FFFF
      FF0000000000C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0785000E0987000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0987000C07850000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000084848400FFFFFF0084848400C6C6C600FFFFFF000000
      0000C6C6C600FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000427399002C586F002C586F002C586F002C586F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0A07000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0A07000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000084848400FFFFFF00FFFFFF0000000000FFFFFF0000000000C6C6
      C600FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000699AAE00A3D0EA00A3D0EA0056BCFF002C586F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000084848400FFFFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000009FB0A400699AAE00699AAE0042739900206081000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7A2930063493500634935006349
      3500634935006349350063493500634935006349350000000000000000000000
      0000000000000000000000000000000000000000000070504000705840007060
      5000706050007060500070584000705040007058400070605000806050008060
      5000705850007050400060504000604830000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4A4A4002C58
      6F0038383800BF8B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4A4A4002C58
      6F0038383800BF8B84000000000000000000B7A29300FCFBFA00EAE0D800EADF
      D700E6D9D100E0D2C800DACABE00D6C4B8006349350000000000000000000000
      000000000000000000000000000000000000C0A89000FFF8F000FFF8F000E0D8
      D000FFF8F000FFF0F000D0C8C000FFE8E000FFE8E000D0C8C000FFE8E000FFE8
      E000D0C8C000F0D8C000F0D0C000604830000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A4A4002C586F003A8B
      B7003A8BB7002E345700A4A4A400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A4A4002C586F003A8B
      B7003A8BB7002E345700A4A4A40000000000B7A29300FCFBFA00EBB69A00E3B2
      9700DBAC9300D4A79000CCA28E00D6C4B8006349350063493500634935006349
      350063493500634935006349350063493500C0A8A000FFF8FF00808880003030
      3000303030006060600080808000FFF0F000D0C0C00020282000202820002020
      200020202000E0C8C000F0D8C000605040000000000000000000000000000000
      000000000000000000000000000000000000A4A4A4002C586F003A8BB7004DB3
      F200A3D0EA0097CAE800699AAE00000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A4002C586F003A8BB7004DB3
      F200A3D0EA0097CAE800699AAE0000000000BBA69700FEFEFD00FCFBFA00F9F5
      F300F5EEEA00EEE5DF00E9DDD500D6C4B80063493500E1C9BB00DDC1B200DABA
      A900D6B2A000D2AA9700CFA48F0063493500C0A8A000E0D8D000606060004048
      4000B0B0B000F0E8E0003038300070787000E0E0E000F0E8E000302830002028
      2000E0E0E000D0C0B000C0A8A000604830000000000000000000DFD1BC00A4A4
      A4008F8F8F006A635F00605E5E007E7E7E006D6D6D00247EAE004DB3F200A3D0
      EA00A3D0EA00699AAE00A4A4A400000000000000000000000000DFD1BC00A4A4
      A4008F8F8F006A635F00605E5E007E7E7E006D6D6D00247EAE004DB3F200A3D0
      EA00A3D0EA00699AAE00A4A4A40000000000C1AB9C00FDFDFC00EAB79A00E3B2
      9700DBAD9300D3A79000CCA28D00D6C4B80063493500F4E9E200F1E2D900EEDA
      D000EAD3C700E7CDBF00D2AA970063493500C0A8A000FFFFFF00D0D8D000C0C0
      C000FFF8FF00FFF8FF004040400030303000FFF8F000F0E8E000302830002028
      2000E0D8D000FFE0D000F0D8C0006048300000000000DFD1BC008F8F8F009797
      9700A4A4A400DFD1BC00DFD1BC00A4A4A400848484007E7E7E0084C0E400A3D0
      EA00699AAE00A4A4A400000000000000000000000000DFD1BC008F8F8F009797
      9700A4A4A400DFD1BC00DFD1BC00A4A4A400848484007E7E7E0084C0E400A3D0
      EA00699AAE00A4A4A4000000000000000000C7B2A300FDFCFB00FDFCFC00FEFD
      FD00FDFBF900F2EBE700D8D5D300D7C6BA0063493500C2B3A800F6ECE500F1E2
      D900EEDAD000EAD3C700D6B2A00063493500C0A8A000FFFFFF00FFFFFF00E0D8
      D000FFFFFF00C0B8C0003038300030303000FFF8F000F0E0E000303030002028
      2000E0D8D000FFE0D000F0D8C00060483000DFD1BC00979797009FB0A400FFEF
      DF00FFEFDF00FDE3B000DFD1BC00FDE3B000FDE3B0009797970071717100699A
      AE00BFD9AC00000000000000000000000000DFD1BC00979797009FB0A400FFEF
      DF00FFEFDF00FDE3B000DFD1BC00FDE3B000FDE3B0009797970071717100699A
      AE00BFD9AC00000000000000000000000000CFB9A900FCFBFA00EAB79900E4B2
      9700DCAC9400B7A29300644A3600644A3600644A3600D1C3BB00D5CBC300F4EA
      E500F1E2D900EEDAD000DABAA90063493500C0A8A000E0D0C000E0D0D000E0D8
      D00090909000504850004040400040404000F0E0E000F0E8E000303030003028
      3000E0D8D000D0B8B000C0B0A00060483000A4A4A400A4A4A400FFFFF200FFF7
      E800FFEFDF006A635F006A635F00DFD1BC00FDE3B000FDE3B000848484009797
      970000000000000000000000000000000000A4A4A400A4A4A400FFFFF200FFF7
      E800FFEFDF00FFEFDF00FDE3B000DFD1BC00FDE3B000FDE3B000848484009797
      970000000000000000000000000000000000D4BEAF00FCFBFA00FCFBFA00FCFB
      FA00FDFCFB00BBA69600D4C5BA00644A3600E2DDD900FDFBFA00FCF9F700F8F1
      EC001F47D70025409E00DDC1B20063493500C0B0A000FFFFFF00FFFFFF00F0E0
      D000C0C8C0006060600050585000E0E8E000FFF8FF00F0E8E000303830003030
      3000E0D8D000FFE8E000FFE0D00060483000A4A4A400CFE2C500FFFFFC00FFFF
      F200FFF7E8006A635F006A635F00FDE3B000DFD1BC00FDE3B000A4A4A4007E7E
      7E0000000000000000000000000000000000A4A4A400CFE2C500FFFFFC00FFFF
      F200FFF7E800FFEFDF00FFEFDF00FDE3B000DFD1BC00FDE3B000A4A4A4007E7E
      7E0000000000000000000000000000000000D8C2B200FCFBFA00FCFBFA00FCFB
      FA00FCFBFA00C7B1A200644A3600E2DDD900FFFFFF00FFFFFF00FDFBFA00FBF6
      F3003C5EF6001F47D700E1C9BB0063493500C0B0A000FFFFFF00F0E8F000E0E0
      E000FFFFFF00B0B8B00050505000A0A0A000FFF8FF00F0E8E000403840003030
      3000E0E0D000FFE8E000FFE0D0006048300084848400FFFFF200FFFFFC00BF8B
      8400BF8B84007E7E7E007E7E7E006A635F006A635F00DFD1BC00DFD1BC006C55
      4C000000000000000000000000000000000084848400FFFFF200FFFFFC00BF8B
      8400BF8B84007E7E7E007E7E7E006A635F006A635F00DFD1BC00DFD1BC006C55
      4C0000000000000000000000000000000000D8C2B200D8C2B200D4BFAE00D4BF
      AE00CEB8A900C8B2A300E9E2DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFB
      FA00FBF6F300F8F0EB00F4E9E20063493500D0B8A000E0D8D000A0A0A0006068
      6000B0B0B000606860006058600080808000C0C0C00070707000404840003038
      3000E0D0D000D0C0C000D0B8B0006048300084848400FFFFF200FFFFFC009797
      970097979700BF8B8400848484007E7E7E006A635F00FDE3B000DFD1BC006A63
      5F000000000000000000000000000000000084848400FFFFF200FFFFFC009797
      970097979700BF8B8400848484007E7E7E006A635F00FDE3B000DFD1BC006A63
      5F0000000000000000000000000000000000000000000000000000000000C5AF
      A000E9D9CF00E9D9CF00E9D9CF00E9D9CF00E7D5CA00E4CEC200E0C7B900DCBF
      AF00D8B6A500D4AF9C00D1A89400A9968800D0B8A000FFFFFF00FFFFFF00C0B8
      B000808080007070700080888000FFFFFF00FFFFFF00F0E0E000B0B0B0006060
      6000E0D0D000FFF0F000FFE8E00060483000A4A4A400CFE2C500FFFFFC00FFFF
      FC00FFFFFC0097979700BF8B8400FFF7E800FFEFDF00FFEFDF00A4A4A4008484
      840000000000000000000000000000000000A4A4A400CFE2C500FFFFFC00FFFF
      FC00FFFFFC00FFFFFC00FFFFF200FFF7E800FFEFDF00FFEFDF00A4A4A4008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000CBB7AA00F3EEEB00FCFCFC00FAF7F600F8F1EE00F5EBE600F3E4DC00F1DE
      D500EFDBCF00E8D4C900B09B8D0000000000D0B8B000FFFFFF00FFFFFF00E0D8
      D000FFFFFF00FFFFFF00F0E0E000FFFFFF00FFFFFF00E0D0D000FFF8FF00FFF8
      F000E0C8C000FFF0F000FFF0E00060483000DFD1BC009FB0A400FFFFFC00FFFF
      FC00FFFFFC009797970097979700FFFFF200FFF7E800FFEFDF0097979700A4A4
      A40000000000000000000000000000000000DFD1BC009FB0A400FFFFFC00FFFF
      FC00FFFFFC00FFFFFC00FFFFFC00FFFFF200FFF7E800FFEFDF0097979700A4A4
      A400000000000000000000000000000000000000000000000000000000000000
      000000000000CBB7AA00F3EEEB00FFFFFF00FDFBFA00FAF5F300F7EFEA00F4E8
      E200E8D7CE00B09C8E000000000000000000F0A89000F0A89000F0B09000F0A8
      9000F0A89000F0A08000F0987000E0906000E0805000E0784000E0784000E080
      4000E0784000E0704000E0704000D0603000DFD1BC00A4A4A400DFD1BC00FFFF
      FC00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFFF200BFD9AC008F8F8F000000
      000000000000000000000000000000000000DFD1BC00A4A4A400DFD1BC00FFFF
      FC00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFFF200BFD9AC008F8F8F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBB7AA00F3EEEB00FFFFFF00FEFCFC00FCF8F700F3EC
      E800B09D9000000000000000000000000000F0A89000FFC0A000FFC0A000FFC0
      A000FFB89000FFB89000FFB09000FFB08000FFA88000F0A07000F0A07000F098
      7000F0986000F0986000F0986000D068300000000000DFD1BC00A4A4A4009FB0
      A400CFE2C500FFFFF200FFFFF200CFE2C500A4A4A40097979700000000000000
      00000000000000000000000000000000000000000000DFD1BC00A4A4A4009FB0
      A400CFE2C500FFFFF200FFFFF200CFE2C500A4A4A40097979700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5AFA000C5AFA000C5AFA000C4AE9F00C2AD
      9E0000000000000000000000000000000000F0A89000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0784000E0784000E07040000000000000000000DFD1BC00BFD9
      AC00A4A4A4008F8F8F008484840097979700A4A4A40000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD1BC00BFD9
      AC00A4A4A4008F8F8F008484840097979700A4A4A40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B005A5A5A006A6A
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000674D
      3900644A3600684F3B0077614C0077614C00644A3600644A3600644A3600644A
      3600644A36000000000000000000000000008F8F8F0073758900A48289004643
      4300636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEA99900F6EDEA00E5D5
      D600E0CCC300DBC4B700938EB500D1BFB100D5B4A300D5B4A300D2AC9700D2AC
      9700C89F8800644A36000000000000000000769CB6004088DF007376A800A681
      8700454242006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEA99900F9F1ED00F6ED
      EA00F5EAE6002648BC00152FB9006B72CF00E9D1C500E9D1C500E9C9B800E9C9
      B800D2AC9700644A3600000000000000000093BAD60052B8FF004385D9007979
      A700A68187004542420064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEA99900F9F1ED00D7D3
      E2002648BC002854ED002840DF00152FB9009E99C400E9D1C500E9D1C500DBC4
      B700D2AC9700644A360000000000000000000000000083B6DD0053B9FF004385
      D9007979A700A68187004A474700737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1AE9F00FAF4F1002648
      BC002A57F400697EFE005568F300425FE5002648BC00D5C8D400E9D6CC00E0CC
      C300D2AC9700644A36000000000000000000000000000000000072B2E40053B8
      FE004483D6007979A7008E74790052525200656565005C5C5C00525252005050
      50005B5B5B000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000000000000000000000000000000000000000C1AE9F00FCF8F6008895
      FD007992F8007992F800D7D3E2007F8FEF00425FE5004A51B100E9D6CC00E9D6
      CC00D5B4A300674D3900000000000000000000000000000000000000000074B3
      E40053B8FE00588CCF007D7D8000816B6B00B8958100CEB09600E0C7AE00CFB2
      A100796360004646460000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      00000000000000000000000000000000000000000000CAB5A500FDFBFA00E4E3
      FB00C0C1F500F6EDEA00F5EAE600DEDEE4007F8FEF002D4AD7006663B100EDDD
      D500DBC4B700795A410000000000000000000000000000000000000000000000
      000084B7DD00ACB2B700AB8B8800F1CFA900FFF5C500FFFDD100FFFFDB00FFFF
      DC00F5EFE0009379740046464600000000000000000000000000000000000000
      0000808080000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CAB5A500FDFDFD00FDFB
      FA00FBF8F500FAF4F100F9F1ED00F5EAE600EAE1E3007481F2002D4AD700938E
      B500E0CCC30086715E0000000000000000000000000000000000000000000000
      0000BFBFBF00B09D9D00EFC9A600FFF2C000FFF7C400FFFFD800FFFFE800FFFF
      F800FFFFFF00F3EDDA006A5151005E5E5E000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFB9A900FFFFFF00FDFD
      FD00FDFAF900FBF6F500FAF4F100F6EDEA00EAE1E300F0E5E2007F8FEF002D4A
      D700938EB5009F8D7F0000000000000000000000000000000000000000000000
      0000BFBFBF00C7A49B00FFF1C200FFE4B100FFF9C600FFFFDB00FFFFEC00FFFF
      FB00FFFFF700FFFFDA00B2998600525252000000000000000000000000000000
      0000808080000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFBDAE00FFFFFF00FFFE
      FD00819DA800608A9A00608A9A005F808F005F808F005F808F008CA9B5008F98
      EE002D4AD700A8988E0000000000000000000000000000000000000000000000
      0000BFBFBF00E5BDA300FFF5C900FFDDAA00FFF5C200FFFFD600FFFFE500FFFF
      EC00FFFFE700FFFFD900CCB29900525252000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      00000000000000000000000000000000000000000000D1BFB100FFFFFF00FFFF
      FE008CA9B50094D9E40099E6F2007ED7E80062C5DD005199B0006E798100EFE3
      DD00E9D6CC00A8988E0000000000000000000000000000000000000000000000
      0000BFBFBF00E5BFA600FFF5C900FFE6B900FFEFBC00FFFFCD00FFFFD700FFFF
      DB00FFFFD800FFFCD100CCAC93005E5E5E000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000000000000000000000000000000000000000DBC4B700FFFFFF00FFFF
      FF00F6FBFC007AA4B200A9AFAB009F8D7F0074C4D4004E718100F6EDEA00EFE3
      DD00EFE3DD0086715E0000000000000000000000000000000000000000000000
      000000000000CCADA300FFF6CD00FFF2D700FFE3B900FFF1BF00FFF5C200FFF9
      C700FFF7C400FFF6C600B5927F007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBC4B700D1BF
      B100CFBDAE007AA4B200A9E6EF0099E6F20094D9E40046667600BEA99900BEA9
      9900BEA999000000000000000000000000000000000000000000000000000000
      000000000000C0ACAC00EFDAC200FFFFFF00FFF7EA00FFECBF00FFDFAC00FFE3
      B000FFF0BD00F3D2A800856B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084B8C6007AA4B2006B95A30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEA19F00F1E5DD00FFFBE800FFF8CD00FFEEBC00FFF3
      C600F5CFA400AC867C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6A0A000C7A79400CEA88E00E0B89E00D5AC
      9900B29996000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      00000000000000000000000000000000000000000000F6F6F600DFDFDF00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600DFDFDF00F6F6F600000000000000000000000000B7A2
      9300FAE2D200DFB89E00E0B69900E2B49500E2B19100E4AF8C00E5AD8800E6AB
      8400E7A77F00E8A57A00EBA3770000000000000000000000000000000000B7A2
      9300FAE2D200DFB89E00E0B69900E2B49500E2B19100E4AF8C00E5AD8800E6AB
      8400E7A77F00E8A57A00EBA37700000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000FF0000008400
      000084000000000000000000000000000000F6F6F600C8C8C800838383006D6D
      6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D
      6D006D6D6D006D6D6D0083838300C8C8C800000000000000000000000000B9A4
      9500FBE6DA00FBE7DA00FBE6D900FAE5D800FBE4D600FBE2D300F9E0D000F8DD
      CC00F9DBC900F8DAC700E9A47B0000000000000000000000000000000000B9A4
      9500FBE6DA00FBE7DA00FBE6D900FAE5D800FBE4D600FBE2D300F9E0D000F8DD
      CC00F9DBC900F8DAC700E9A47B00000000000000000000000000000000000000
      00000000000000000000000000008400000084000000FF000000FF000000FF00
      000084000000840000000000000000000000DFDFDF001D82B5001B81B300187E
      B000167CAE001379AB001076A8000D73A5000B71A300086EA000066C9E00046A
      9C0002689A00016799004C4C4C0083838300000000000000000000000000BBA6
      9600FBECE200FCECE200D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000F8DECE00F8DBCA00E7A7800000000000000000000000000000000000BBA6
      9600FBECE200FCECE200D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000F8DECE00F8DBCA00E7A78000000000000000000000000000000000008400
      000084000000840000008400000084000000FF000000FF000000FF000000FF00
      0000FF0000008400000084000000000000002287BA0067CCFF002085B80099FF
      FF006FD4FF006FD4FF006FD4FF006FD4FF006FD4FF006FD4FF006FD4FF006FD4
      FF003BA0D30099FFFF00016799006E6E6E00000000000000000000000000BEA8
      9900FDF0E800FDF0E900FDF0E800FCEFE700FCEDE500FBEBE100FBE8DC00FAE5
      D700FAE2D300F9DECE00E6AC850000000000000000000000000000000000BEA8
      9900FDF0E800FDF0E900FDF0E800FCEFE700FCEDE500FBEBE100FBE8DC00FAE5
      D700FAE2D300F9DECE00E6AC8500000000000000000000000000000000008400
      00000000000000000000000000008400000084000000FF000000FF000000FF00
      000084000000840000000000000000000000258ABD0067CCFF00278CBF0099FF
      FF007BE0FF007BE0FF007BE0FF007BE0FF007BE0FF007BE0FF007BE0FF007BE0
      FF0044A9DC0099FFFF0002689A006D6D6D00B7612900B74D0800B34B0800AC47
      0700A34406009B420600923D040089390400803602007A330300D6AE9000D6AE
      9000FBE5D700FAE1D200E4AE8A0000000000B7612900B74D0800B34B0800AC47
      0700A34406009B420600923D040089390400803602007A330300D6AE9000D6AE
      9000FBE5D700FAE1D200E4AE8A00000000000000000000000000000000008400
      0000000000000000000000000000000000008400000084000000FF0000008400
      000084000000000000000000000000000000288DC00067CCFF002D92C50099FF
      FF0085EBFF0085EBFF0085EBFF0085EBFF0085EBFF0085EBFF0085EBFF0085EB
      FF004EB3E60099FFFF00046A9C006D6D6D00BC6A3600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B330300FCEFE800FCEC
      E200FBE8DC00FAE4D600E3B18F0000000000BC6A3600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B330300FCEFE800FCEC
      E200FBE8DC00FAE4D600E3B18F00000000000000000000000000000000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000002A8FC20067CCFF003398CB0099FF
      FF0091F7FF0091F7FF0091F7FF0091F7FF0091F7FF0091F7FF0091F7FF0091F7
      FF0057BCEF0099FFFF00066C9E006D6D6D00C5754500FFFFFF008B2E0700AD61
      3D00FBF4F00082310F00B6653F00FFFFFF00FFFFFF0082360300D6AE9000D6AE
      9000FBEAE100FBE6DA00E2B3950000000000C5754500FFFFFF008B2E0700AD61
      3D00FBF4F00082310F00B6653F00FFFFFF00FFFFFF0082360300D6AE9000D6AE
      9000FBEAE100FBE6DA00E2B39500000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000002D92C5006FD4FF003499CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0060C5F80099FFFF00086EA0006E6E6E00CD7E5200FFFFFF00A76A5400A15A
      3900FBC6B10082310F0082310F00C8BEB200FFFFFF008C3A0400FDF4EF00D6AE
      9000FCEDE400FBE9DD00E0B6990000000000CD7E5200FFFFFF00A76A5400A15A
      3900FBC6B10082310F0082310F00C8BEB200FFFFFF008C3A0400FDF4EF00D6AE
      9000FCEDE400FBE9DD00E0B69900000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002F94C7007BE0FF002D92C500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0081E6FF00FFFFFF000B71A3008C8C8C00D48A6200FFFFFF00BC7D6600BA68
      4200AB71560082310F00B35932006C3D2700FFFFFF0097400500FEF6F200D6AE
      9000FCEEE600FBEADF00DEB89D0000000000D48A6200FFFFFF00BC7D6600BA68
      4200AB71560082310F00B35932006C3D2700FFFFFF0097400500FEF6F200D6AE
      9000FCEEE600FBEADF00DEB89D00000000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000840000000000
      0000000000000000000000000000000000003196C90085EBFF0081E6FF002D92
      C5002D92C5002D92C5002D92C5002D92C5002D92C500288DC0002489BC002085
      B8001C81B4001B81B3001B81B30000000000DB937000FFFFFF00D18E7800B767
      4100DAB3A50098482700D3A28F009C573700D9D2CA00A0430500FEF8F300D6AE
      9000FCF0E900FCECE100DDBAA10000000000DB937000FFFFFF00D18E7800B767
      4100DAB3A50098482700D3A28F009C573700D9D2CA00A0430500FEF8F300D6AE
      9000FCF0E900FCECE100DDBAA1000000000084000000FF000000FF000000FF00
      0000FF000000FF000000FF000000840000000000000000000000000000000000
      0000000000000000000000000000000000003398CB0091F7FF008EF4FF008EF4
      FF008EF4FF008EF4FF008EF4FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00167CAE008C8C8C000000000000000000E19C7C00F7E2DA00DF9B8400C57D
      5C00F6E3DB00B4694900F6E3DB00AD694900A37D7100AA470700D6AE9000D6AE
      9000FDF1E900DCBCA500DDBBA40000000000E19C7C00F7E2DA00DF9B8400C57D
      5C00F6E3DB00B4694900F6E3DB00AD694900A37D7100AA470700D6AE9000D6AE
      9000FDF1E900DCBCA500DDBBA4000000000084000000FF000000FF000000FF00
      0000FF000000FF000000FF000000840000000000000000000000840000000000
      0000000000000000000000000000000000003499CC00FFFFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00FFFFFF00258ABD002287BA001F84B7001D82B5001B81
      B300187EB000000000000000000000000000E7A58700F4BEAC00DF9B8400C782
      6200F3DCD300C9816100F6E3DC00A46B5900D9AA9400B24B0700FDF8F400FDF5
      EF00B7A29300000000000000000000000000E7A58700F4BEAC00DF9B8400C782
      6200F3DCD300C9816100F6E3DC00A46B5900D9AA9400B24B0700FDF8F400FDF5
      EF00B7A2930000000000000000000000000084000000FF000000FF000000FF00
      0000FF000000FF000000FF000000840000000000000000000000000000000000
      000000000000000000000000000000000000000000003499CC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002A8FC200000000000000000000000000000000000000
      000000000000000000000000000000000000EAAA9000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B74D0800FEF7F400FDF4
      EF00B9A49500D4C5BA000000000000000000EAAA9000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B74D0800FEF7F400FDF4
      EF00B9A49500D4C5BA0000000000000000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000840000000000
      00000000000000000000000000000000000000000000000000003499CC003398
      CB003196C9002F94C70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBAD9300EAAA9000E7A68800E29E
      7F00DE957400D68E6700CF835800CA794C00C3703E00B7612900FEF7F300FDF4
      ED00C0AB9C00000000000000000000000000EBAD9300EAAA9000E7A68800E29E
      7F00DE957400D68E6700CF835800CA794C00C3703E00B7612900FEF7F300FDF4
      ED00C0AB9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8C2
      B200D7C1B100D6C0B000D4BEAE00D2BDAD00D1BAAB00CFB9AA00CDB6A800CBB6
      A600CAB4A500000000000000000000000000000000000000000000000000D8C2
      B200D7C1B100D6C0B000D4BEAE00D2BDAD00D1BAAB00CFB9AA00CDB6A800CBB6
      A600CAB4A5000000000000000000000000000000000000000000C6C6C6009494
      940094949400B5B5B5000000000000000000000000000000000000000000C6C6
      C6009494940094949400B5B5B500000000000000000000000000000000000000
      00000000000000000000E7E7E7009C9C9C007B7B7B009C9C9C00C6C6C600D6D6
      D600D6D6D600DEDEDE000000000000000000000000000000000000000000B5AD
      AD00948C8C008C8484008C8484008C848400ADA5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDADAD00BDA5
      A500736363006B6B6B00ADADAD00000000000000000000000000BDBDBD00BDAD
      AD00BDA5A500736363006B6B6B00ADADAD000000000000000000000000000000
      00000000000000000000EFC69C00F7C69400AD947B0073737300848484008484
      84008484840094949400ADADAD000000000000000000D6D6D600AD9C9C00DED6
      D600EFE7E700E7D6D600DEC6C600CEBDBD00B5A5A500736B6B00DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECECE00D6B5B500C6A5A500C6A5
      A500BD9C9C008C7373009C9C9C000000000000000000DECECE00D6B5B500C6A5
      A500C6A5A500BD9C9C008C7373009C9C9C000000000000000000000000000000
      0000E7E7E700CECECE00C6B5AD00EFCEAD00FFDEB500F7CEAD00F7CEA500EFCE
      A500DEB59400B59C8C0073736B008C8C8C0000000000D6C6C600EFDEDE000000
      0000E7DEDE00B59C9C00B5848C00D6BDBD00E7DEDE00B5A5A500D6D6D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD949400EFEFEF00E7E7E700CEBD
      BD00BD949400AD848400B5B5B5000000000000000000AD949400EFEFEF00E7E7
      E700CEBDBD00BD949400AD848400B5B5B500000000000000000000000000C6C6
      C60094949400846B5200735A4A006B5A52007B736B008C7B7300BDA59400CEB5
      A500DECEB500FFDEB500DEB58C00848484000000000000000000DECECE00C6B5
      BD00C6B5B500AD847B009C636300A58C8C00B5ADAD00DEDEDE00000000000000
      0000000000000000000000000000000000000000000081A9B800487182003971
      8A002D6987002C6483002D617C00305B7300305B71003159720031566B003352
      6400324E5F00324959000000000000000000FFF7F700D6A59C00DEADA500CE94
      9400C6737B005A5A5A0094949400C6C6C600D6D6D600C6BDBD00D6A59C00DEAD
      A500CE949400C6737B005A5A5A00A5A5A5000000000000000000BDB5A500B573
      4200CE633100BD634200CE6B4A00C6633900B5523100734A39005A5A5A006B6B
      6B0084848400E7CEAD00EFC69C00ADADAD000000000000000000CECECE00A57B
      6300BD633900C6634200C66342009C523900846B6300CECECE00000000000000
      0000000000000000000000000000000000000000000081A9B800D6FEFF0099E4
      F90086DCF5007CD8F40077D2F30073CFF2006FCAF0006FCAF10068C7EF0061C4
      EE0064C2EC00334E6000000000000000000000000000DE9C7B00E79C5200EFA5
      5A00E79C7300946363005A5A5A007373730073737300C6B5B500DE9C7B00E79C
      5200EFA55A00E79C73008C635A007B7B7B0000000000CEB5A500C6632100AD42
      18009C421000735A2100A53908009C390800B55A3100E7B58C00E7AD8400A584
      6B00D6BDA500FFEFC600BDAD9C000000000000000000B5ADB500BD734A00C65A
      1800A54218008C522100B5421800BD522900CE63390084423100B5B5B5000000
      0000000000000000000000000000000000000000000081A9B800B8E8ED00ABF7
      FF008DEFFF008DEEFF008CEEFF0088EDFE0089EDFE0089EDFE0089EDFE007DE0
      F90064BADF0036526100000000000000000000000000DEBD9C00FFC64A00FFCE
      5A00FFCE5A00D6846B00212121000073A5000073A50021212100DEBD9C00FFC6
      4A00FFCE5A00FFCE5A00D6846B0073737300E7DECE00BD5A1800A5390000AD42
      0000AD4A0000106B08005A520000A55A3100E7B58C00F7CEA500DEAD8400EFCE
      AD00F7E7CE008C847300ADADAD0000000000D6D6D600BD8C6B00BD521000A539
      0000AD420000316300006B4A0000AD390000A5390800BD5A3900735242000000
      000000000000000000000000000000000000000000007FADBE007AB8CF008AE3
      F30090F5FF0089EFFF007EE7FD0077E2FA0078E7FF0085EBFF008AEEFE0076D7
      EF004687A8003A556600000000000000000000000000DEBDA500FFDE8400FFE7
      9400FFE78400DE9C73008C94940029ADD60029ADD6007B7B8400DEBDA500FFDE
      8400FFE79400FFE78400DE9C730073737300DEAD7300AD420000B5520000C65A
      0000AD630000007B0000738C4200DEA58400E7BD9400F7D6AD00F7DEB500E7B5
      9400E7AD840084736B00B5B5B50000000000B59C9C00D6844A00AD420000CE5A
      0000BD6B0000007B000021730000C65A0000B54A000073632100845A3100ADA5
      A500000000000000000000000000000000000000000088B3C200B0E6F10065B5
      D50079E6FB0071DCF5004BADD900359CCE00348FBB006DCEE90070DBF6003E99
      BD0063BFE6003F586800000000000000000000000000D6BDAD00F7E79C00FFF7
      AD00FFF7A500E7AD7B0094949400C6BDBD002121210073737300D6BDAD00F7E7
      9C00FFF7AD00FFF7A500E7AD7B0094949400CE7B3100BD5A0000CE6B0000DE73
      00006B840000008C00006B943900DEA58400EFCEAD00F7DEBD00FFF7CE00FFEF
      C600FFE7BD00AD948400D6D6D60000000000C6A59C00CE7B2900CE5A0000D67B
      0000848C000039940000C6840000BD7B000021730000086B0800636B29008C84
      7B0000000000000000000000000000000000000000008CB9C800D2FDFF00A1EA
      F6006DCAEA0056B3DD0079D9F20087E9FB0084E4F700429EC40054BDE0007CDF
      F4006CCBF300425C6D00000000000000000000000000D6B5B500D6B5B500D6B5
      B500D6B5B500DEA58400D6D6D600C6BDBD002121210063636300D6B5B500D6B5
      B500D6B5B500D6B5B500DEA5840000000000CE7B2100CE6B0000B57B00005A94
      080018A51000319C0800EF941800EFCEAD00EFCEAD00FFDEB500F7D6A500E7C6
      9C009C8463009C9C9C00E7E7E70000000000CEADA500DE842900C673000029A5
      180031AD2100D6AD1800FF9C0800E78C00003184000000730000426B10008C84
      730000000000000000000000000000000000000000008FBECE00CFFEFF0094E5
      F60059B5DE0086E2F4009AF6FF0094F0FE0092EFFD0089E9FA004FAACD007DE0
      F2006DCEF3004763720000000000000000000000000000000000000000000000
      00000000000000000000DEDEDE00C6BDBD00212121004A4A4A0073737300ADAD
      AD0000000000000000000000000000000000DE842900CE7B000018A5210018B5
      310021BD3900CEBD3900FFB52900F79C2100CEA54A00B5B57300ADAD7300296B
      10007B633100B5B5B5000000000000000000C6ADAD00EF9442007B94080010C6
      4A0031CE63007BCE6B00FFCE5A00FFA510006B8C000000840000296B0000B5AD
      A500000000000000000000000000000000000000000091C2D200C0F6FC0067BE
      E2008BE3F4009CF7FF009CF7FF009CF7FF0099F5FF0096F2FD008CE9F90049A0
      C60064BEE3004A66770000000000000000000000000000000000000000000000
      00000000000000000000DE9C7B00E79C5200EFA55A00E79C73008C635A007B7B
      7B00D6D6D600000000000000000000000000E7AD5200B58C080021BD420031CE
      630042CE6B005AD67300E7D67300FFB53900CE940000008C0000007B0000106B
      000094735200D6D6D6000000000000000000C6ADAD00D6B5840031BD390042D6
      7300A5E79C00A5F7B500D6E79400D6B52900B58C0000318400005A7329000000
      0000000000000000000000000000000000000000000093C5D60098DEF200B8EE
      F800C3FCFF00BCFBFF00B6FBFF00ADFAFF00AAF9FF009BF7FF0096F3FD0088E7
      F800429AC0004C69770000000000000000000000000000000000000000000000
      00000000000000000000DEBD9C00FFC64A00FFCE5A00FFCE5A00D6846B007373
      7300D6D6D600000000000000000000000000F7E7C60031AD310031CE630063DE
      84009CEF9C0084E79C00C6EFA500D6C65A00C69C1000738C0000008400005A7B
      0800ADADAD00000000000000000000000000DECECE00CEADAD0084C6730063DE
      7B00BDF7AD00D6FFBD005ADE840039B53100F78C0000C6840800C6BDAD000000
      0000000000000000000000000000000000000000000093C6D700CBF7FD00DBFF
      FF00D9FFFF00D9FFFF00D8FFFF00D8FFFF00D8FFFF00D7FFFF00C8FCFF00B0F9
      FF0094E3F400516D7C0000000000000000000000000000000000000000000000
      00000000000000000000DEBDA500FFDE8400FFE79400FFE78400DE9C73007373
      7300D6D6D600000000000000000000000000000000009CDE8C0042CE6B007BE7
      9400BDF7BD00ADF7B50084E7940029C65A008CA51800E784000052840000B59C
      73000000000000000000000000000000000000000000CEB5B500D6ADA500ADC6
      8C00A5D6840094DE8C0052CE63004AB53900D69C4200DECEB500000000000000
      0000000000000000000000000000000000000000000093C6D70093C6D70093C6
      D70092C5D50090C2D2008EBECE008BBACA0089B5C50086B1C10084ADBD0082AA
      BA0081A9B80081A9B80000000000000000000000000000000000000000000000
      00000000000000000000D6BDAD00F7E79C00FFF7AD00FFF7A500E7AD7B009494
      9400DEDEDE000000000000000000000000000000000000000000B5E7A5007BE7
      940094EFA5008CEF9C0052DE7B0029C65200849C1800EF8C0800D6B584000000
      0000000000000000000000000000000000000000000000000000D6BDBD00CEA5
      AD00C69C9C009C947B00E7DEBD00E7DECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6B5B500D6B5B500D6B5B500D6B5B500DEA58400DEDE
      DE0000000000000000000000000000000000000000000000000000000000EFEF
      D600BDEFB500ADDE8400B5C652008CCE6B00D6C67B00E7DECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6B5B500BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CEADAD008C73730084635A008C5A5A009C6B5A009C7B7300D6BD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D6CE00B5A5A5007B635A0063524A0063524A0073635A008C7B7300A594
      8C00BDB5B500CEC6C60000000000000000000000000000000000D6CECE00A58C
      9400845A6B0073525A0073525A007B5263009C848C00CEBDC600000000000000
      000000000000000000000000000000000000000000000000000000000000DEC6
      C600734A4200633931008C5A5A00AD7B7B00BD848400C6847B00BD736B00AD63
      5A00A56363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6CE
      CE00A58C8400C6949400DEB5B500CE949400A56B6B00845A4A00734A42005A42
      39005A4A4200735A52008C7B7300C6B5B50000000000CEBDC600B59C9C00C6B5
      B500CEB5B500C6ADAD00BD9C9C00AD84840084636B008C6B7B00C6BDBD000000
      0000000000000000000000000000000000000000000000000000D6BDB5006321
      18008C635A00CEADAD00DEC6C600EFCECE00EFCECE00EFCECE00E7C6BD00BD94
      8C00C66B6300A5635A00000000000000000000000000D6D6D600844A4A009C4A
      4A009C424200B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5009C31
      31009C3131009C4A4A009C4A4A00000000000000000000000000CECEC6009C7B
      7300CE948C00E7BDBD00E7BDBD00EFD6D600E7CECE00DEB5B500C6847B00BD7B
      6B00A56352008C524A00735A4A009C8C8400EFDEDE00D6CECE00E7E7E700E7DE
      DE00DED6D600D6BDBD00BDA5A500A56B6B00BD8C8C008C636B00AD949C000000
      00000000000000000000000000000000000000000000E7C6BD0063212100A584
      8C00DEC6CE00E7CECE00EFCED600EFD6D600F7D6D600EFD6CE00F7CEC600F7CE
      C600C6949400C6635A008C4A42000000000000000000BD847300CE636300CE63
      63009C4A4A00AD9C9C00C6737300DEB5B500FFFFFF00F7F7F700E7E7E7009C31
      31009C313100CE6363009C4A4A000000000000000000DED6D6009C736300C67B
      6B00C67B7B00C67B7B00C67B7B00C6848400CE8C8C00CE8C8C00CE8C8C00DEB5
      B500DEB5B500C69C9C00AD7B7300C6BDBD00E7D6D600EFEFEF00F7F7F700EFEF
      EF00DEDEDE00D6C6C600BD8C8C009C5A5A00B5848400B5848C00B5A5AD000000
      00000000000000000000000000000000000000000000AD524A0094737B00E7D6
      DE00E7D6DE00E7D6DE00EFD6DE00F7DEDE00C6ADAD005A424200E7B5B500FFDE
      DE00FFD6D600B56B7300AD524A00BD9C940000000000BD847300CE636300CE63
      63009C4A4A00CEB5B500B5525200BD8C8C00DEDEDE00FFFFFF00F7F7F7009C31
      31009C313100CE6363009C4A4A000000000000000000B5847B00BD736B00C67B
      7B00C67B7B00C67B7B00C67B7B00C67B7B00C6848400C67B7B00C67B7B00C67B
      7B00CE949400C69C9C00D6C6C60000000000EFDEDE00EFEFEF00EFE7E700F7F7
      F700E7E7E700D6B5B500A56363009C525200B5848400B58C9400000000000000
      000000000000000000000000000000000000F7CEC6008C393900DEDEEF00E7DE
      EF00E7DEEF00EFDEE700D6C6C6008473730042393900A58C8C00FFE7EF00FFEF
      EF00FFE7E700C69C9C00B54A4200A552520000000000BD847300CE636300CE63
      63009C4A4A00E7C6C600AD424200AD737300B5B5B500DEDEDE00FFFFFF009C31
      31009C313100CE6363009C4A4A0000000000E7E7E700A5736B00CE948400D694
      7B00CE8C7300C67B7B00C67B7B00C67B7B00C67B7B00C67B7B00B5736B00BD94
      8C00D6C6C600E7E7E70000000000000000000000000000000000CE9C8C00DEB5
      B500D6A5A500CE9494009C4242009C4242009C6B6B00C6B5B500000000000000
      000000000000000000000000000000000000CE847B00A57B7B00EFF7FF00EFE7
      F700F7E7F700BDB5BD0031212900734A4A00DECECE00FFDEDE00FFE7E700FFE7
      EF00FFE7E700DEB5B500AD524A006B18180000000000BD847300CE636300CE63
      63009C4A4A00DECECE00CE949400CEB5B500ADADAD00B5B5B500D6CECE009C31
      31009C313100CE6363009C4A4A0000000000D6C6BD00AD7B7300F7B55200FFBD
      4200FFBD4200FFB53100FFAD2100F7941800D6845A00A5635200CEC6C600CEC6
      C600E7E7E70000000000000000000000000000000000E7D6D600E7A56300FFB5
      3900F7C67B00DEADA500BD6B6B00A5424200845A6300A5849400D6C6CE000000
      000000000000000000000000000000000000C6635A00BDB5BD00EFF7FF00EFEF
      FF00EFEFFF00BDC6D60052525A00A5736B00FFCECE00FFD6D600FFD6D600FFDE
      DE00FFDED600D6B5B500AD524A005210080000000000BD847300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE6363009C4A4A0000000000BD9C9400B5847B00FFCE6300FFCE
      6300FFCE6300FFC65200FFBD3900FFAD2100E7AD6B008C5A5200CEC6C600E7E7
      E7000000000000000000000000000000000000000000DEC6C600EFA55A00FFB5
      3100FFB53900FFB53900F7BD7300E7AD8C00B57B7B008C5A6300947384000000
      000000000000000000000000000000000000CE636300CEC6C600EFF7FF00EFF7
      FF00F7EFFF00EFEFFF009C9CB5004A394200E79C9C00F7CED600F7D6DE00F7D6
      D600EFCECE00C6A59C00A54239005208080000000000BD847300CE636300CE63
      6300BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C
      8C00CE636300CE6363009C4A4A0000000000B5948C00B58C7B00FFDE8400FFDE
      8C00FFDE8400FFCE6B00FFC65200FFB53900D69C8C00A5847B00948CB500ADA5
      AD00DEDEDE0000000000000000000000000000000000D6BDBD00EFAD5200FFBD
      4A00FFC65200FFC65200FFC65200FFBD4A00FFB54A00DE8C6B008C6B73000000
      000000000000000000000000000000000000DE847B00C6A5AD00F7FFFF00EFFF
      FF00F7FFFF00FFF7FF00D6DEEF00636B730084635A00F7ADAD00F7CED600E7D6
      DE00DEC6C600AD7B7B008C2921005A29290000000000BD847300CE636300BD8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BD8C8C00CE6363009C4A4A0000000000AD847B00CEA58400FFEF9C00FFEF
      AD00FFEF9C00FFDE8400FFCE6300FFBD4A00C6948C009C8C8400ADA5AD00B5B5
      C600CECECE00E7E7E700000000000000000000000000CEADAD00FFC65200FFCE
      6300FFCE6B00FFCE6B00FFCE6B00FFCE6300FFC65200E7945A009C7B84000000
      000000000000000000000000000000000000F7C6BD00B56B6300F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7F7FF009CADC6004A4A5200C69C9400F7A59C00E7B5
      B500BDADAD009C4A4A0052101000A58C8C0000000000BD847300CE636300BD8C
      8C00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00BD8C8C00CE6363009C4A4A0000000000A5736B00EFCE8C00FFF7B500FFFF
      C600FFF7B500FFE79400FFD66B00FFC66B00B58C84009C8C8400CEC6BD008C84
      DE009C949400D6CED600E7E7EF0000000000E7DEDE00E7C6B500FFCE6B00FFD6
      7B00FFDE8400FFDE8400FFDE8400FFD67B00FFCE6B00CE846300A58C94000000
      00000000000000000000000000000000000000000000C66B6300D6BDB500F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00B5C6DE008C94AD00635A6300D6BDCE00BDA5
      AD00946B63007B2118004A292900EFE7DE0000000000BD847300CE636300BD8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BD8C8C00CE6363009C4A4A0000000000A5736B00BD9C9400CEB5AD00CEAD
      A500D6ADA500DEB5A500DEAD9C00CE9C9400B58C8400D6CECE00DED6D600E7DE
      DE00ADA5D600ADA5B500D6D6D600EFEFEF00DED6D600EFCEA500FFD67B00FFDE
      8C00FFE79C00FFE79C00FFE79C00FFE78C00FFD67B00BD847300B59CA5000000
      00000000000000000000000000000000000000000000F7C6BD00AD524A00DEC6
      C600EFFFFF00EFFFFF00E7FFFF00C6D6EF00A5B5CE00B5BDD600A5ADBD00845A
      5A007B21210029100800BDADAD000000000000000000BD847300CE636300BD8C
      8C00FFFFFF00BDBDBD00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00BD8C8C00CE6363009C4A4A000000000000000000E7E7E700DED6D600D6C6
      C600CEBDBD00D6C6C600DECEC600DECEC600D6BDBD000000000000000000DEDE
      EF009494E7008C7B9400BDB5BD00DEDEDE00D6CECE00EFCE9C00FFDE8C00FFEF
      9C00FFF7AD00FFF7B500FFF7AD00FFEFA500FFDE8C00A5737300BDADB5000000
      0000000000000000000000000000000000000000000000000000EFBDB500BD63
      5200AD736B00BDADB500BDC6CE00ADB5BD00848494008C6B7300843931006B21
      210039212100A59C9C00000000000000000000000000BD847300CE636300BD8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BD8C8C00CE6363009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E7009C94CE008C84A500BDB5BD00D6CECE00B5A58C00D6BD9400E7D6
      A500FFF7BD00FFFFCE00FFFFC600FFF7AD00FFE794009C6B7300C6BDBD000000
      000000000000000000000000000000000000000000000000000000000000EFD6
      D600DE949400BD6363009C4A42008C4239007B3129006B3129004A2931006B5A
      5A00D6C6BD0000000000000000000000000000000000BD8473009C4A4A00BD8C
      8C00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600BD8C8C009C4A4A00D6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECEE7009C9CD6005252B500948C8C00D6D6D600D6D6D600CEC6C600D6C6
      C600C6ADAD00C6A5A500CEB59C00DEC69C00DEBD9400A57B8400D6CED6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600CEADAD009C847B008C737300A5949400CEC6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5ADDE008C84B500ADADB5000000000000000000000000000000
      0000E7DEDE00E7DEDE00DECECE00D6BDBD00C69C9C00E7D6D600000000000000
      00000000000000000000000000000000000000000000C6848400BD848400C69C
      9C00C6ADB500C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A735200846B42007B39
      21004A6B3900738463007B8463007B73520084634A0084633900845231007B39
      18006331180052422900847B520084422100000000005A735200846B42000029
      940000299400002994007B8463007B73520084634A0084633900845231007B39
      18006331180052422900847B5200844221000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6848400C6848400EFAD
      8400E7A58400D6948400C68C8400C69C9C00C6ADB500C6C6C600000000000000
      00000000000000000000000000000000000000000000CEDEC600BDBD7B00CE5A
      29007BAD5A00BDDEA500C6DEB500BDBD9400B5A57B00B5946B00B5845200AD6B
      42008C4229007B634200DEA56300A54A290000000000CEDEC6000029CE000029
      CE000029CE000029CE0000299400BDBD9400B5A57B00B5946B00B5845200AD6B
      42008C4229007B634200DEA56300A54A29000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6848400E7AD8400CE94
      8400FFD69400FFCE8C00FFC68C00F7B58400E7A58400D6948400C6848400C694
      9400C6ADAD00C6BDC60000000000000000000000000000000000B5E79C00D67B
      4A00948C4200B5EFA500CEEFBD00BDC69C00B5AD8400AD947300AD845A00A563
      42007B423100A5734A00E78C4A007B523900000000000029CE000018D6000018
      D6000018D6000018D6000029CE0000299400B5AD8400AD947300AD845A00A563
      42007B423100A5734A00E78C4A007B5239000000000000000000000000000000
      000000000000EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700000000000000
      00000000000000000000000000000000000000000000C6848400FFD69C00DEA5
      8C00E7BD9C00FFEFAD00FFE7A500FFDE9C00FFD69400FFCE8C00FFC68400EFB5
      8400DE9C8400C6848400C6848400000000000000000000000000A5E79400DED6
      9C00AD843900ADE79C00CEF7CE00BDCEAD00B5B58C00AD9C7300A5845A009C63
      420073422900E79452009C522100000000000029CE000018D6000018D6000018
      D6000018D6000018D6000018D6000018D600B5B58C00AD9C7300A5845A009C63
      420073422900E79452009C522100000000000000000000000000000000000000
      0000D6D6F7005A5AF7001010F7000000F7001010F7005A5AF700D6D6F7000000
      00000000000000000000000000000000000000000000C6848400FFF7B500FFE7
      AD00CE948C00F7E7B500FFFFBD00FFFFB500FFF7B500FFEFAD00FFE7A500FFDE
      9C00E7B58C00C6848400C684840000000000000000000000000000000000B5F7
      B500DED69C00ADD68400CEF7CE00BDDEBD00ADB59400A59C7B009C845A007B52
      3900945A4200BD7B42004A312100000000000029CE0000000000000000000000
      00000000000000000000000000000029CE00ADB59400A59C7B009C845A007B52
      3900945A4200BD7B42004A31210000000000000000000000000000000000ADAD
      F7000808F7000000F7000000F7000000F7000000F7000000F7000808F700ADAD
      F7000000000000000000000000000000000000000000C6848400FFFFC600FFFF
      BD00F7E7B500CE948C00FFF7CE00FFFFCE00FFFFC600FFFFC600FFFFBD00E7C6
      A500CE8C8400E7AD8400C684840000000000000000000000000000000000CEE7
      CE00BDF7C600ADD68400BDF7C600B5DEC600A5BD9C00A5A5840094845A007352
      3900946B42006352390000000000000000000029CE0000000000000000000000
      00000000000000000000000000000029CE00A5BD9C00A5A5840094845A007352
      3900946B42006352390000000000000000000000000000000000D6D6F7000808
      F7000000F7000000F7000000F7000000F7000000F7000000F7000000F7000808
      F700D6D6F70000000000000000000000000000000000C6848400FFFFD600FFFF
      CE00FFFFC600DEBDA500DEB5AD00FFFFE700FFFFDE00FFFFD600F7E7C600CE9C
      8C00FFDEA500EFC69400C6848400000000000000000000000000000000000000
      0000DEEFDE0094CE8400ADE7A500B5EFD6009CC6A50094A58400847B5A005A42
      2900525A42000000000000000000000000000029CE000018D6000018D6000018
      D6000018D6000018D6000018D6000029CE009CC6A50094A58400847B5A005A42
      2900525A420000000000000000000000000000000000EFEFF7005A5AF7000000
      F7000000F7000000F7000000F7000000F7000000F7000000F7000000F7000000
      F7005A5AF70000000000000000000000000000000000C6848400FFFFDE00FFFF
      DE00DEBDAD00B5949400AD9CA500D6ADAD00E7CEC600EFD6CE00C68C8400F7E7
      B500FFFFBD00EFDEAD00C6848400000000000000000000000000000000000000
      0000000000000000000094CE84009CEFC60094CEB5007BA58400525A3900848C
      840000000000000000000000000000000000000000000029CE000018D6000018
      D6000018D6000018D6000029CE009CEFC60094CEB5007BA58400525A3900848C
      84000000000000000000000000000000000000000000EFEFF7001010F7000000
      F7000000F7000000F7000000F7000000F7000000F7000000F7000000F7000000
      F7001010F700EFEFF700000000000000000000000000C6848400EFDED600CE94
      9400BDBDBD00EFF7F700D6FFFF00BDDEE700ADBDC600A5B5BD00AD9CA500D6AD
      9C00FFFFC600EFDEB500C6848400000000000000000000000000000000000000
      000000000000000000000000000063946300739473005A735200848C84000000
      00000000000000000000000000000000000000000000000000000029CE000029
      CE000029CE000029CE000000000063946300739473005A735200848C84000000
      00000000000000000000000000000000000000000000EFEFF7000000F7000000
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF7000000
      F7000000F700EFEFF700000000000000000000000000C6848400BD848400ADC6
      DE00FFFFFF00FFFFFF00FFFFFF00EFFFFF00EFFFFF00DEFFFF00CEFFFF00ADA5
      AD00D6AD9C00EFDEBD00C6848400000000000000000000000000000000000000
      00000000000000000000525242006339210084422900A54A29009C3918000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000525242006339210084422900A54A29009C3918000000
      00000000000000000000000000000000000000000000EFEFF7001010F7000000
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF7000000
      F7001010F700EFEFF700000000000000000000000000C6BDC600BD8C8C00B5CE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00EFFFFF00B5DEEF009CDE
      F7008C84A500CE9C9400C6848400000000000000000000000000000000000000
      000000000000848C6B00636329009C7B4A00B5734200CE6B3900D65A2900C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000848C6B00636329009C7B4A00B5734200CE6B3900D65A29009442
      10000000000000000000000000000000000000000000EFEFF7005A5AF7000000
      F7000000F7000000F7000000F7000000F7000000F7000000F7000000F7000000
      F7005A5AF700EFEFF70000000000000000000000000000000000C6B5B5009494
      BD00BDDEFF0094CEFF0094CEFF007BBDF70073B5F700739CCE009C94AD00AD8C
      9C00AD8C9400BD848400C6848400000000000000000000000000000000000000
      0000000000007B8C4200ADBD7300BDAD7300C68C4A00DE733900DE6B3100AD4A
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000007B8C4200ADBD7300BDAD7300C68C4A00DE733900DE6B3100AD4A
      21000000000000000000000000000000000000000000EFEFF7005A5AF7000000
      F7000000F7000000F7000000F7000000F7000000F7000000F7000000F7000000
      F7005A5AF700EFEFF7000000000000000000000000000000000000000000C6B5
      B500B594940084E7F7007BE7FF007BD6FF007BCEFF007BC6FF007BBDFF0073AD
      F7009494B500C6949400CEC6CE00000000000000000000000000000000000000
      00000000000094B56300CEEFA500CEDEA500BDA57300BD7B4A00B55A3100944A
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000094B56300CEEFA500CEDEA500BDA57300BD7B4A00B55A3100944A
      2100000000000000000000000000000000000000000000000000DEDEF7000808
      F7000000F7000000F7000000F7000000F7000000F7000000F7000000F7000808
      F700DEDEF7000000000000000000000000000000000000000000000000000000
      0000C6B5B500B594940084EFF70084E7FF007BDEFF007BCEFF0084B5E700B58C
      9400C6ADAD000000000000000000000000000000000000000000000000000000
      0000000000008CB55A00BDF7B500C6EFD600A5B5940094846300845A39005229
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000008CB55A00BDF7B500C6EFD600A5B5940094846300845A39005229
      100000000000000000000000000000000000000000000000000000000000ADAD
      F7000808F7000000F7000000F7000000F7000000F7000000F7000808F700ADAD
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000C6B5B500B59494008CD6DE0084E7F7009CB5C600C6949400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000000000007BBD6B0094DEC6007BB5A5006B7B6B0031291800C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000000000007BBD6B0094DEC6007BB5A5006B7B6B0031291800C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000DEDEF7005A5AF7001010F7000000F7001010F7005A5AF700DEDEF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6BDC600C69CA500C6949400C6ADB500CECED6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007BAD84005A8C73004A6B5A009CA5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007BAD84005A8C73004A6B5A009CA5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED6D600BDBDBD00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEE7EF00C6CED600ADADAD00948C8C0073848C004A8CB500638CA500BDC6
      C600000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A0000000000000000000000000000B9A3950063493500634935006349
      3500634935006349350063493500634935006349350063493500634935006349
      350000000000000000000000000000000000000000000000000000000000CED6
      D600949494007B848C004A8CB50039A5DE0021B5FF0021CEFF00188CDE00848C
      A500000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B0800003100000000000000000000BAA59600FCFAEF00FAF2E600F6E9
      DA00F2DECD00EED3BF00EAC8B200E6BEA500E2B49A00DFAD9000DDA789006349
      35000000000000000000000000000000000000000000000000000000000094AD
      BD002994D60021ADFF0021B5FF0029BDFF0029B5FF0029C6FF00219CEF003963
      94000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A00000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A000000000000BCA69800FFFFF600B8A59C00B6A2
      9800F6E8DA00B39D9000B29A8D00B1988B00B1988B00B1988B00DFAD90006349
      3500000000000000000000000000000000000000000000000000000000006394
      C60018ADFF0029B5FF0029B5FF0029A5E70029BDFF0029C6FF0029A5EF00426B
      A5000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A00000000000000000000004A080010AD310010AD
      290008A5180000A5100010AD2100D6F7DE00E7F7EF004AC65200009C0800009C
      0800009C080000A50800004A000000000000BEA89900FFFFF600FFFFF600FDFA
      EF00FAF2E500F6E8DA00F2DECD00EED3C000EAC8B200E6BEA600E3B49A006349
      35000000000000000000000000000000000000000000000000000000000063A5
      CE0021ADFF0029ADFF0010427B00217BAD0029C6FF0029C6FF0029ADF700426B
      B50000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B080000420000005200000884210010B5420010AD
      2900089C1800009C0800089C180084D68C00FFFFFF00F7FFF70042BD4A00009C
      0800009C080000A50800007B080000420000C0AA9C00FFFFF600B7A69C00B6A3
      9800FDF9EF00B39C9000B2998D00B1988B00B1988B00B1988B00E6BEA5006349
      350000000000000000000000000000000000000000000000000000000000529C
      CE0021B5FF0029BDFF00104273002173AD0029CEFF0029C6FF0029B5F700426B
      B500000000000000000000000000000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A5080000940800004200000052000010A5420018B54A0010AD
      310000A51000009C0800009C0800009C080073D67B00FFFFFF00F7FFF70042BD
      4A00009C080000A508000094080000420000C3AE9E00FFFFF600FFFFF600FFFF
      F600FFFFF600FDF9EF00FAF2E500F6E8D900F3DECD00EED3C000EAC8B2006349
      3500000000000000000000000000000000000000000000000000000000004A9C
      D60021B5FF0029B5FF0010395A0029ADE70029C6FF0031C6FF0021C6FF00426B
      B50000000000000000000000000000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A0000006B100021B5520021B55200BDEF
      CE00BDEFC600B5EFC600B5EFC600B5EFC600B5EFC600F7FFF700FFFFFF00EFFF
      EF0052C65A00009C0800009C0800004A0000C5B0A000FFFFF600FFFFF600FFFF
      F600FFFFF600FFFFF600FDFAEF00C1C4C500415C7200F2DECD00EED3C0006349
      350000000000000000000000000000000000000000000000000000000000429C
      D60021B5FF0029B5FF0031C6FF0029C6FF0031CEFF0031DEFF0029D6FF004273
      C600000000000000000000000000000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C0800005200000873100039BD6B0029BD5A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADE7B500009C0800009C080000520000C7B1A200FEFDFC00E2E9E9005E75
      8400DFE3E300FFFFF600C2C8C9004A6170002EA9D60023354700AFA399006349
      350000000000000000000000000041824C0000000000000000000000000029A5
      E70021BDFF0029C6FF0029CEFF0029C6FF00109CF7002184CE0031CEFF0052BD
      F700000000000000000000000000000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C0800004200000873100052C67B0042C6730052C6
      7B0052CE840052CE840052CE84004AC673007BD69400F7FFF700FFFFFF0094DE
      A50018AD310008A51800009C080000420000C9B3A500FEFEFE008FA4AC0086D3
      E5004B617000AFB8BD004A61700061C1DE004C616F0029B6E90015273300102C
      3A0017293500000000003D7443004BA7610000000000000000000000000063B5
      E7002194DE00219CF700108CEF00299CF7004AA5E700A5A5AD00D6DEEF000000
      000000000000000000000000000000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C080000420000087310004ABD6B0084DEA50021B5
      520018B54A0021B5520021B5520052C67B00E7F7EF00FFFFFF0084DE9C0010AD
      310008A5290008A51800008C080000420000CBB5A600FEFEFE00E4EAEA008FA4
      AC0083E1F6004B6170007ACDE2004C616F0065D2F200455D710032B2DF001D99
      C8001A88B3001F536D004F8458004CAC64000000000000000000000000000000
      0000BDBDBD00C6D6E700000000000000000000000000BDBDC600D6DEE7000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B0800000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A0039BD6B00F7FFF700FFFFFF0084DE9C0010AD310008A5
      290008A5210008AD1800006B080000000000CCB6A700CCB6A700CAB5A600BDB0
      A6008FA4AC0083E1F6004B61700083E1F6003C59730065D2F20050C9EF003BBF
      EB0027B2E4001CA3D60064956E0053B46C000000000000000000000000000000
      0000C6CECE00CED6DE000000000000000000C6CECE00ADB5B500000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520021B55200ADE7C60094DEB50018B54A0010AD390010AD
      310010AD2900109C2100006B0800000000000000000000000000000000000000
      0000000000008FA4AC0083E1F600405B720083E1F60077DBF40065D2F20050C9
      EF003BBFEB0029B6E90076A583005DC078000000000000000000000000000000
      0000C6CED600C6C6CE00A5A5AD00B5B5BD0084949C0000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      000000000000000000008FA4AC0083E1F60083E1F60083E1F60077DBF40065D2
      F2005FB2CF007A8B9600AEC1A60093D39A000000000000000000000000000000
      000000000000BDCEE700949C9C008C8C8C00CEDEDE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C60094DEB5007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008FA4AC008CA1A900889CA5008396A0007E90
      9A007A8B96000000000099B89C00AEC1A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFDED600E7C6B500E7C6B500E7CEC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094A5E7004A6BDE0000000000000000008596DC000F30B5001636
      B8001A39B8001A39B7001839BB001739B9001337BD000D35C0000A32C000072F
      BE00022CC0000026B6007F90D10000000000000000000000000000000000BD4A
      1800D64A2100EF5A4200FF635200F7634A00C6421800E76B4A00D6846B00EFDE
      D6000000000000000000000000000000000000000000CECECE00ADADAD009C9C
      9C009C9C9C009C9C9C00A5A5A500000000000000000000000000000000000000
      000000000000000000000000000000000000ADBDEF00395ADE0094A5E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A73DE000029D600395ADE0000000000000000001138D4001F44D9002A4D
      DA002F51DA002E51DB002C51DB002951DC00244FDF001C4BE0001547E0000D42
      E000053AE0000132D7000026B50000000000000000000000000000000000CE4A
      2100F7634A00FF735A00FF846300E76B4200F7CE9400EF634A00FF635200D673
      520000000000000000000000000000000000DECEC600AD6B5200945239009C52
      42009C524200844A310073524200636363007B7B7B0094949400949494008C8C
      8C0084848400848484009494940000000000395ADE000029D6000029D6005A73
      DE00000000000000000000000000000000000000000000000000DEE7EF004A6B
      DE000029D600395ADE000000000000000000000000001941DE002C50E1003759
      E3004464E5007E94ED00E2E8FB00FFFFFF00FFFFFF00DCE4FB007192F100134B
      E9000A43E8000439E000022BBE0000000000000000000000000000000000DE63
      4200FF735A00FF846B00EF846300EFAD7B00FFDEAD00E7735200FF735A00E77B
      6B0000000000000000000000000000000000C66B4200DE523100FF635200FF73
      5A00F76B5200D66B4200FF635200CE4A29004A522900316B310031843100398C
      390031843100217B21004263420094949400BDCEEF000839DE000029DE000029
      DE005A73E70000000000000000000000000000000000CEDEEF002952DE000029
      DE005A73E700000000000000000000000000000000002248DF00385AE3004363
      E400A2B2F200FFFFFF00BBC8F600728FEE006F8FEF00BACAF800FFFFFF0098B1
      F6000E48E900083EE100052EC10000000000000000000000000000000000E7D6
      C600E76B4A00FF8C6B00E77B5200CEA58C00FFC69400EF8C6300FF7B6300DE94
      7B0000000000000000000000000000000000CE846300FF635200FF7B6300FF8C
      6B00DE845200F7CE9C00EF735200FF6B5A009484390052AD52006BAD5A0063CE
      630052C6520039B53900298429009494940000000000DEE7F700395AE7000029
      DE000029DE004A6BE700DEE7F70000000000BDCEEF001039DE000029DE005A73
      E70000000000000000000000000000000000000000002C51E1004261E4008B9E
      EE00FFFFFF008398EE004669E6004066E7003763E8002C5DE9007294F100FFFF
      FF006B8DF0000F43E1000B33C100000000000000000000000000000000000000
      0000C6B5A500733131001010630008107B0010086B00B5635A00DEAD94000000
      00000000000000000000000000000000000000000000E7634A00FF8C6B00E77B
      5200FFC69400FFD6A500E77B5200FF735A00949C520084C68400EFF7E70052AD
      520073D6730052C65200398C3900BDBDBD000000000000000000000000007394
      EF000029E7000029E7002952E700849CEF001039E7000029E7005A73EF000000
      000000000000000000000000000000000000000000003558E2004B68E500EBEF
      FC00BBC6F5004E6DE600496AE600FFFFFF00FFFFFF002D5CE8002456E800B6C7
      F800DBE3FB001848E0001238C200000000000000000000000000000000006B6B
      6B000808080008102100103184001842AD001039A50010218400DEDEE7000000
      00000000000000000000000000000000000000000000BDA59C00A5524A004221
      5A0042317B00634A7B00BD5A3900947B310084DE8400A5C69400FFF7EF00BDCE
      AD0063C6630042A54200849C8400000000000000000000000000000000000000
      0000BDCEEF001842E7000029E7000029E7000029E7005A7BEF00000000000000
      000000000000000000000000000000000000000000003F5FE400536FE700FFFF
      FF008195ED00506DE6004868E500FFFFFF00FFFFFF002C58E6002352E6006587
      EE00FFFFFF001F4CDF00183CC000000000000000000000000000000000001010
      10001818180010429400184AB500185ABD001852B50010399C008C94BD000000
      000000000000000000000000000000000000B5B5B50010101000000008001029
      73001039A50010319400101863004A634A0063A56300428C8C001073BD00217B
      BD0018735A004A5A4A00A5A5A500000000000000000000000000000000000000
      0000EFF7F7005A7BEF000031EF000031EF000031EF00BDCEF700000000000000
      000000000000000000000000000000000000000000004564E5005A75E800FFFF
      FF008195ED00506CE6004867E500FFFFFF00FFFFFF002C55E4002450E4006483
      EC00FFFFFF00254EDE001D3FBF00000000000000000000000000000000001818
      180021212100185AB5002173DE002173DE002173DE00216BD6007B8CB5000000
      000000000000000000000000000000000000393939001818180010316B00184A
      B500185ABD001852B50008319400525263006B8C9C002994F700319CFF00319C
      FF002994EF0031526B008484840000000000000000000000000000000000DEE7
      F7002952EF000031EF000031EF005A7BEF000031F7001039F700BDCEF7000000
      000000000000000000000000000000000000000000004F6CE600637DE800EFF1
      FD00B7C2F500516CE6004865E400FFFFFF00FFFFFF002C52E200264EE200B0BF
      F500E0E6FB002A50DC002141BF00000000000000000000000000000000003131
      31003131310018528C00298CEF003194F700318CF700297BE7007B94BD000000
      0000000000000000000000000000000000001010100029292900184284002173
      DE002173DE002173DE00185ABD004A526B00428CBD0042A5FF0042A5FF0042A5
      FF0039A5FF002184C6006B6B6B00C6C6C6000000000000000000BDCEF700184A
      F7000031F7000031F70094ADF70000000000BDCEF7002952F7001039F700A5B5
      F7000000000000000000000000000000000000000000536FE7006C85EA0097A9
      F100FFFFFF008093ED004C67E5004261E4003A5BE3003054E2006C86EB00FFFF
      FF00728AEC002D51DC002342BE00000000000000000000000000000000002929
      29004A4A4A0031394200214A8400216BCE003184EF002984DE008C9CB5000000
      000000000000000000000000000000000000292929003131310021426B003194
      F700319CFF003194FF002173D600525A73004A9CCE004AB5FF004AB5FF004AB5
      FF004AADFF003194E70063636B00BDBDBD0000000000B5C6F7001039F7000031
      F7000031F70094ADF700000000000000000000000000DEE7F7005A7BF7000031
      FF0094ADF700000000000000000000000000000000005E79E8007A91EC007089
      EB00A6B5F200FFFFFF00B1BDF4007086EA006B83E900B0BDF400FFFFFF0095A8
      F0003053E1002F52DB002342BD00000000000000000000000000000000007B7B
      7B00424242006B6B6B008C8C8C007B7B7B003942630010212900D6DEDE000000
      0000000000000000000000000000000000006B6B6B004A4A4A00424242003142
      6300184294002163C600104A7B00738494005AA5D6004AB5F7004AB5EF005ABD
      FF0052B5FF0042A5EF0052737B000000000094ADF7000031FF000031FF001039
      FF0094ADF70000000000000000000000000000000000000000000000000094AD
      F7002952FF00000000000000000000000000000000006B85EA008DA1EF008097
      ED006F88EB0097A8F000EEF0FC00FFFFFF00FFFFFF00E9EDFC00899DEE004162
      E4003A5CE3003053DC001E3EBC00000000000000000000000000000000000000
      00006B6B6B006B6B6B00949494008C8C8C00424A52009C9C9C00000000000000
      000000000000000000000000000000000000EFEFEF00393939006B6B6B008C8C
      8C00A5A5A5005252520031424A00CECECE006BA5C6002984BD0052A5D60063AD
      D600529CD6001873A500A5A5A500000000001042FF000031FF001039FF00BDCE
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000778EEC009DAEF1008CA0
      EF007990EC007089EB006A83E900657EE900627CE9005D78E8005673E7004E6C
      E6004162E4002F52DB001939BA00000000000000000000000000000000000000
      000000000000C6C6C6009C9C9C00A5ADA500D6DEDE0000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE006B6B6B005A5A
      5A005A5A5A0063636300D6D6D600F7F7F700D6E7EF00318CBD008CC6E700A5CE
      EF005AA5CE005A94AD00DEDEDE00000000007394FF003963FF00BDCEF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2BFF400768DEC006781
      EA005B76E8005470E7004F6CE6004A69E6004B69E5004665E5003F60E3003B5D
      E3003154E2002347D8008A9BDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEE7EF0094BDD6009CC6
      D6009CBDCE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860086868600868686008686860086868600868686008686
      8600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6C6B50094633900946339009C7B5A00000000000000
      0000000000000000000000000000000000000000000060483000604830006048
      3000604830006050400070584000705840007050400060483000604830006048
      3000604830006048300060483000604830000000000060483000604830006048
      3000604830006050400070584000705840007058400060504000604830006048
      3000604830006048300060483000604830000000000000000000000000000000
      000094949400606060004545450043434300554F4F00817B7B004E4E4E005555
      5500737373008686860000000000000000000000000000000000000000000000
      0000B59C8400946339009463390094633900946339009C7B5A00C6AD9C000000
      00000000000000000000000000000000000000000000FFF8F000FFF8F000D0C0
      B000FFF0E000FFE8E000D0C8C000FFE8E000FFE8E000C0B0A000F0D8C000F0D8
      C000C0A89000F0D0C000F0D0B0006048300000000000FFF8F000FFF8F000D0C0
      B000FFF0E000FFF0E000D0C8C000FFE8E000FFE8E000D0B8B000F0D8D000F0D8
      C000C0A89000F0D0C000F0D0B000604830000000000000000000000000006464
      6400A6A6A600F1F1F100B2B2B2009E8B8B00A6868600B6B3B300E5E5E500B4B4
      B40057575700505050007A7A7A000000000000000000000000009C7352009463
      390094633900946339009463390094633900946B4A009C7B5A00A57B5A000000
      00000000000000000000000000000000000000000000FFF8FF00FFF8F000D0C0
      B000FFF0F000FFF0F000B0A8A00050505000F0E8E000D0C0B000F0E0D000F0D8
      C000C0A8A000F0D0C000F0D0C0006048300000000000FFF8FF00FFF8F000D0C0
      C000FFF0F000FFF0F00090808000404040005050500080707000FFE8D000F0E0
      D000C0A8A000F0D0C000F0D0C0006048300000000000000000009B9B9B00EEEE
      EE00F1F1F100E8E8E800ACACAC00939393005F5F5F006D6D6D008C8C8C00BCBC
      BC00E9E9E900B1B1B1007171710000000000D6C6B5008C633100946339009463
      3900946339009463390094633900946339009C7352009C7B5A00A57B5A00B594
      7B000000000000000000000000000000000000000000E0C8C000D0C8C000D0C8
      C000D0C0C000E0C8C000E0D8D0004040400070707000E0D0C000D0B8B000C0B0
      A000C0A8A000C0A8A000C0A890006048300000000000E0C8C000D0C8C000D0C8
      C000E0D0C000B0A8A00020202000D0C0C0009090900010081000A0909000D0C0
      B000C0B0A000C0A8A000C0A890006048300000000000B5B5B500FAFAFA00F2F2
      F200D8D8D800959595007E7E7E0097979700B2B2B200A6A6A600949494008E8E
      8E0089898900646464007A7A7A0000000000000000008C5A29008C5A29008C5A
      29008C6331009463390094633900946339009C7B5A00A57B5A00A57B5A009C7B
      5A0000000000000000000000000000000000C0A89000FFFFFF00FFFFFF00D0C8
      C000FFF8F000FFF8F000F0E0E0006058500040404000E0D8D000FFE8E000FFE0
      D000C0B0A000F0D8C000F0D8C00060483000C0A89000FFFFFF00FFFFFF00E0C8
      C000FFF8F000A0A0A000D0C0C000FFF8F000FFF8F0001010100040404000FFE8
      E000C0B8A000F0D8C000F0D8C0006048300000000000B5B5B500D8D8D800A0A0
      A0009B9B9B00C9C9C900ABABAB008D8D8D0080808000838383009F9F9F00BFBF
      BF007AAA8A00585858007C7C7C000000000000000000C6B59C008C5A29008C5A
      29008C5A29008C5A29008C633100946339009C7B5A00A57B5A00A57B5A009C7B
      5A00A5846300000000000000000000000000C0A89000FFFFFF00FFFFFF00E0C8
      C000FFF8FF00FFF8F000E0E0D0008080800030303000A0A0A000FFF0E000FFE8
      D000C0B0A000F0E0D000F0D8C00060483000C0A89000FFFFFF00FFFFFF00E0C8
      C000FFF8FF00FFF8F000E0E0D000FFF8F000FFF8F0000008000010101000FFF0
      E000D0B8B000F0E0D000F0D8C000604830000000000076767600A6A6A600D9D9
      D900D8D8D800D8D8D800D8D8D800E0E0E000CFCFCF00BEBEBE009D9D9D008989
      89006784710057575700828282000000000000000000000000008C5A29008C5A
      29008C5A29008C5A29008C5A29008C6331009C6B4A009C7352009C7B5A00A57B
      5A00A57B5A00000000000000000000000000C0A8A000E0D0C000E0D0C000E0D0
      C000E0D0C000E0D0C000E0D8D000D0D0D0003038300060586000E0D0D000D0C0
      B000C0B0A000C0B0A000C0B0A00060483000C0A8A000E0D0C000E0D0C000E0C8
      C000E0D0C000E0D8D0003030300040404000101010000000000040384000E0D0
      D000D0B8B000C0B0A000C0B0A00060483000000000009E9E9E00E1E1E100D8D8
      D800D2D2D200C9C9C900D5D5D500CECECE00C2C2C200C0C0C000CCCCCC00D4D4
      D400CCCCCC007171710086868600000000000000000000000000BDA58C008C5A
      29008C5A29008C5A29008C5A2900946B3900946B4A00946B4A00946B4A009C73
      52009C7B5A009C7B5A000000000000000000C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFF8FF00E0E0E000F0F0F0005050500030283000F0E8E000FFF0
      E000D0B8B000FFE0D000FFE0D00060483000C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF0050585000505050002018200040404000E0D8D000FFF0
      E000D0B8B000FFE0D000FFE0D0006048300000000000B5B5B500D5D5D500C2C2
      C200AAAAAA00A5A5A500CFCFCF00F0F0F000EDEDED00EAEAEA00D9D9D900BFBF
      BF00BEBEBE008888880000000000000000000000000000000000000000008C5A
      29008C5A29008C5A29008C5A290094734A009C6B4A00946B4A00946B42009C73
      4A00946B4A00946B4A00D6C6B50000000000C0B0A000FFFFFF00FFFFFF00E0D0
      D000FFFFFF0060586000E0E0E000FFF8F000A0A0A0003028300090909000FFF0
      F000D0C0B000FFE8E000FFE0D00060483000C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF0060686000FFFFFF00FFFFFF00F0E8E000FFF8F000FFF0
      F000D0B8B000FFE8E000FFE0D000604830000000000000000000B5B5B500C9C9
      C900ECECEC00B2B2B200BABABA00AEAEAE00B6B6B600BDBDBD00BDBDBD00B3B3
      B30086868600000000000000000000000000000000000000000000000000B594
      73008C5A29008C5A29008C5A2900946B4A009C6B4A009C734A00946B4A009C6B
      4A00946B4A00C6B59C000000000000000000D0B0A000E0D0C000E0D0C000E0D8
      D000F0E0E000707070005058500040484000303830002028200040404000E0D8
      D000D0C0C000D0B8B000C0B8B00060483000D0B0A000E0D0C000E0D0C000E0D0
      C000E0D8D000F0E0E0006068600070707000505050004038400080808000E0D0
      C000D0C0B000D0B8B000C0B8B00060483000000000000000000000000000C4BB
      BB00FFD4C500FFD2C700FBD7CE00EFDCD500E5E1DF00E7E7E700858585008686
      8600000000000000000000000000000000000000000000000000000000000000
      00008C5A29008C5A29008C5A29009C734A00946B4A00946B4A00946B4A009C73
      4A0000000000000000000000000000000000D0B8A000FFFFFF00FFFFFF00E0D0
      D000FFFFFF00A0A0A0007078700060606000504850003028300030303000FFF8
      F000D0C8C000FFF0E000FFE8E00060483000D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF008078800060606000404040001018100060606000FFF8
      F000D0C0B000FFF0E000FFE8E00060483000000000000000000000000000D5BF
      B900FFDCB800FFDCB800FFDCB800FFD6B300FFD4AF007A636100868686000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A58463008C5A2900946339009C6B4A00946B4A00946B4A00AD8C73000000
      000000000000000000000000000000000000D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00F0E8E000FFF8FF00FFF8FF00F0E8E000FFF8F000FFF8
      F000D0C8C000FFF0F000FFF0E00060483000D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00F0E0E000FFFFFF00FFFFFF00F0E0E000FFF8FF00FFF8
      F000D0C0C000FFF0F000FFF0E00060483000000000000000000000000000CBAB
      A100FFE5CB00FFE5CB00FFE5CB00FFE5CB00F9DDC40073676700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C5A2900946B42009C6B4A009C6B4A00D6C6BD00000000000000
      000000000000000000000000000000000000F0A89000F0A89000F0A89000F0A8
      8000F0A08000F0A08000F0A08000F0A08000E0987000E0906000E0885000E078
      4000E0784000E0704000E0704000D0603000F0A89000F0A89000F0A89000F0A8
      8000F0A08000F0987000F0987000F0987000E0906000E0885000E0805000E078
      4000E0784000E0704000E0704000D0603000000000000000000000000000DFC3
      B700FFEDDC00FFEDDC00FFEDDC00FFEDDC00DBC1B50092929200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C7B52009C734A009C7B5A000000000000000000000000000000
      000000000000000000000000000000000000F0A89000FFC0A000FFC0A000FFC0
      A000FFB89000FFB89000FFB09000FFB08000FFA88000F0A88000F0A07000F098
      7000F0986000F0986000F0986000D0683000F0A89000FFC0A000FFC0A000FFC0
      A000FFB89000FFB89000FFB09000FFB08000FFA88000F0A88000F0A07000F098
      7000F0986000F0986000F0986000D06830000000000000000000CEBAB900FFF7
      EE00FFF7EE00FFF7EE00FFF7EE00FFF7EE00B0A19D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDA58C00000000000000000000000000000000000000
      000000000000000000000000000000000000F0A89000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0784000E0784000E0704000F0A89000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0784000E0784000E07040000000000000000000E6D8D700E6D8
      D700E6D8D700E6D8D700E6D8D700E6D8D700E6D8D70000000000000000000000
      0000000000000000000000000000000000000000000000000000A3787500A378
      7500A3787500A3787500A3787500A3787500A3787500A3787500A3787500A378
      7500A37875008859570000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3787500A3787500A3787500A378
      7500A3787500A3787500A3787500A3787500A3787500A3787500A37875008859
      5700FFCEAA008A5B5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000807060006048
      300060483000604830006048300060483000A3787500F5D7CE00FFDACE00FFD8
      C900FFD6C700FFD5C400FFD3C100FFD2BE00FFD0BA00FFD1AE00FFCEAA008A5B
      5A00FFD2A4008E5F5D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020200020202000202
      0200020202000202020002020200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020200020202000202
      0200020202000202020002020200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090807000F0C0
      A000F0B09000F0987000F0885000E07840008B80A300E3C7BF00FFE8D200FFE6
      CE00FFE3C600FFDFBF00FFDDBB00FFD9B400FFD7AF00FFD4A900FFD2A4008E5F
      5D00FFD4A9009163610000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0908000FFD8
      C000FFD0B000F0C0A000F0A88000F09060004A81CF008B80A300E6C9C000FFE8
      D200FFE6CE00FFE3C600FFDFBF00FFDDBB00FFD9B400FFD7B000FFD4A9009163
      6100FFD7B0009567650000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      7100717171007171710071717100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      7100717171007171710071717100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0989000FFE8
      E000FFE0D000FFD8C000F0C8B000F0B8A0006CB3E4004D7CC7009181A200FAE6
      D500F2D8C500EECEBB00F8D9C000FFDFBF00FFDDBA00FFD9B400FFD7B0009567
      6500FFD9B400996C690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0989000B098
      9000A0908000908880008070600080706000C18E7A0078C1F400818DA700D4AA
      9400D7AB8D00D3A28400D9AF9300DCB49E00FFDFBF00FFDDBB00FFD9B400996C
      6900FFDDBB009C716D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      7100717171007171710071717100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      7100717171007171710071717100000000006048300060483000604830006048
      3000604830006048300000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C18E7A00FFF8F200DCB4A000E2BC
      9800F2E0B500FDFBDE00F2E3D500E0BFAA00D7AF9800FFE0C000FFDDBB009C71
      6D00FFDFBF00A075720000000000000000000000000000000000457E4500457E
      4500355938002C2C2C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF8F000FFF8F000FFF0E000FFF0
      E000FFE8E0008060500000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9967F00FFF9F500D9AD9000F2D3
      A700FFF9C900FFFFE400FFFFF600F2E3C700D5AA8E00FFE3C600FFDFBF00A075
      7200FFE3C600A47A7500000000000000000000000000000000004C9946006AA9
      66004C9946003559380000000000000000000000000002020200020202000202
      0200020202000202020002020200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020200020202000202
      020002020200020202000202020000000000FFFFFF00FFF8FF00FFF8F000FFF0
      F000FFF0E0009078600000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D19E8100FFFEFD00D2A18300FDE5
      B600FFFAC700FFFFD800FFFFDF00FDFAD300D19F8200EFDBD000FFE3C600A47A
      7500FFE6CE00A67D7800000000000000000080B380006AA966006AA9660080B3
      80004C994600457E4500355938002C2C2C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFF8
      F000FFF8F000A090800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8A68600FFFFFF00D9AD9000F2DD
      C800FFE3BC00FFF7C400FFF2C000F2DFB200D5A68A00DFD1D800FFE6CE00A67D
      7800FFDAC900AA7F7B00000000000000000080B38000BFD9AC0071CB710071CB
      71006AA966004C994600457E4500355938000000000000000000000000007171
      710071717100717171007171710000000000479FD0001948AE001948AE00143F
      A40012359B0012359B000D268D000D268D000000000000000000000000007171
      710071717100717171007171710000000000D0C0B000C0B8B000C0B0A000C0A8
      A000B0A09000A090800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0AD8900FFFFFF00E2C4B700DFBC
      A800F2E0CB00FDECBC00F2DBAE00DCAF8D00DFBCAA00FFE3D200FFDAC900AA7F
      7B00F2A29C00AB817D0000000000000000009FB0A400BFD9AC00BFD9AC008FE0
      8F0071CB71006AA966004C994600457E45000000000000000000000000000000
      00000000000000000000000000000000000063ABD20084C0E4002D82EA002D82
      EA002368DD001D56D2001D56D20012359B000000000000000000000000000000
      0000000000000000000000000000000000006048300060483000604830006048
      3000604830006048300000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7B38D00FFFFFF00FFFFFF00E2C6
      B900D6AB9000D2A08300D9AC9100E2C2B100F3DCCB00F3BCB100F2A29C00AB81
      7D00B2807400B280740000000000000000009FB0A4009FB0A40080B38000BFD9
      AC0071CB71006AA966004C994600457E45000000000000000000000000007171
      71007171710071717100717171000000000063ABD20097CAE80084C0E40063AB
      D2002D82EA002368DD001D56D2001948AE000000000000000000000000007171
      710071717100717171007171710000000000FFF8F000FFF8F000FFF0E000FFF0
      E000FFE8E0008068500000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECBA9000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFEFD00FFF9F500FFF8F200B2807400B2807400B2807400B280
      7400DAB19A0000000000000000000000000000000000000000009FB0A400BFD9
      AC00BFD9AC006AA9660000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063ABD20063ABD20063ABD200479F
      D0003A8BB7003A8BB70042739900427399000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFF8FF00FFF8F000FFF0
      F000FFF0E0009078700000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1BE9300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFD00FFF9F500B2807400F0CE9D00DAB19A000000
      00000000000000000000000000000000000000000000000000009FB0A4009FB0
      A40080B3800080B3800000000000000000000000000002020200020202000202
      0200020202000202020002020200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020200020202000202
      020002020200020202000202020000000000FFFFFF00FFFFFF00FFFFFF00FFF8
      F000FFF8F000A090800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5C29500DCA98700DCA98700DCA9
      8700DCA98700DCA98700DCA98700DCA98700B2807400E2B89E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0B8B000C0B0A000C0A8A000C0A8
      A000B0A09000B090800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD603200AA5E3000A85B
      2C00A4582800A05524009C502000984D1D0093491900904515008B421000873F
      0C00843B0900813806007F3503007D3401006048300060483000604830006048
      3000604830006048300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8694200EBAE9400EBAD9200E9AB
      9000E6A98F00E4A78B00E0A48800DDA28500D89E8100D59B7F00D1997B00CE96
      7700CB947500C8917300C79071007F360300FFF8F000FFF8F000FFF0E000FFF0
      E000FFE8E0008060500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006D4931006D4931006D4931006D49
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB6C4500ECB09600FCF6F500FBF4
      F200FAF3F100FAF1F000F9F0ED00F9EEEC00F8EEEA00F8ECE900F8EAE700F7EA
      E600F6E8E500F6E7E300C891720081380600FFFFFF00FFF8FF00FFF8F000FFF0
      F000FFF0E0009078600000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF7E800FFEFDF00DFD1BC006C55
      4C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005454540046464600282828000A0A0A00000000000000
      000000000000000000000000000000000000BE6F4900EDB29A00FCF7F500FCF6
      F400FBF5F300FBF2F100FAF1F000F9F0EE00F9EFED00F9EDEB00F8ECE900F7EA
      E800F7E9E600F7E8E500CA937400843B0900FFFFFF00FFFFFF00FFFFFF00FFF8
      F000FFF8F000A090800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFC00FFFFF200FFEFDF006A63
      5F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006666660071717100464646000A0A0A00000000000000
      000000000000000000000000000000000000C3724C00EEB59D00FDF8F700A951
      26008D4F2900C0B8AB00FAF3F100FAF1F000A9512600583B1400B5AB9C00F8EC
      E900F8EAE800F7E9E700CD967700883F0C00D0C0B000C0B8B000C0B0A000C0A8
      A000B0A09000A090800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFC00FFFFFC00FFFFF2007E7E
      7E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000605E5E0097979700666666002F2F2F00000000000000
      000000000000000000000000000000000000C7765000EFB8A100FDFAF900C47B
      5E00DE7644008D4F2900ECE9E600F5F2EF00CD683F008D4F2900583B1400E9DF
      D900F8ECE900F7EBE800D1987A008B4210000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000807060006048
      3000604830006048300060483000604830006D4931006D4931006D4931006D49
      31006D4931006D4931006D4931006D4931006D49310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000054545400A4A4A4008484840046464600000000000000
      000000000000000000000000000000000000CC7B5500F0BBA500FDFAFA00C983
      6900E2957800DE7644008D4F2900E3D6CD00DB7D5800DE7644008D4F2900998B
      7700F9EDEA00F8ECE900D39B7D008F4514000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090807000F0C0
      A000F0B09000F0987000F0885000E0784000FDE3B000FFBF9100EEB88A00E99A
      7A00E99A7A00EB805900D7744500E06642006D49310000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      00000000000000000000605E5E00DFD1BC00A4A4A40046464600000000000000
      000000000000000000000000000000000000D17F5A00F0BEA900FEFBFB00D38E
      7200B77F6500D19B8300DE7644008D4F2900C56E4A00C9836900B6623A00583B
      1400E9DFD900F8EEEB00D79D8000934918000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0908000FFD8
      C000FFD0B000F0C0A000F0A88000F0906000FDE3B000FDE3B000FFD9A600FFCF
      9C00EEB88A00E99A7A00F9926F00E06642006A635F0002020200020202000202
      0200020202000202020000000000000000000000000000000000000000000000
      00000000000054545400A4A4A400CFE2C5009FB0A40071717100212121000000
      000000000000000000000000000000000000D6825E00F2C1AD00FEFCFC00D897
      7E00B77F6500E6BBAC00C9836900DE76440085462400E0AA9600D17547008D4F
      2900A08F7C00F9EFEC00DAA08300984D1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0989000FFE8
      E000FFE0D000FFD8C000F0C8B000F0B8A000FFEFDF00FDE3B000FDE3B000FFD9
      A600FFBF9100EEB88A00E99A7A00E99A7A007E7E7E0000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      000071717100DFD1BC00FFEFDF00FFEFDF00DFD1BC0097979700605E5E002121
      210000000000000000000000000000000000DB866300F2C4B100FEFEFD00DCA0
      8800B77F6500F5E4E000DCA08800E1AC980088492700E2CBC200DDB9AB00B662
      3A00583B1400F5F0ED00DEA286009C5121000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0989000B098
      9000A0908000908880008070600080706000A4A4A40097979700979797008F8F
      8F008F8F8F008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      7100DFD1BC00FFF7E800FFFFFC00FFFFF200CFE2C500DFD1BC00A4A4A400605E
      5E0017171700000000000000000000000000DF8A6800F4C7B500DF967C00E4A8
      9100E4A89100AD7A6500FFFFFF00D186690091503000E2CBC200E1AC9800C781
      6900B6623A00D49A8100E1A58900A05425006048300060483000604830006048
      3000604830006048300000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFF200FFF7E800FFEFDF006D49
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400CFE2
      C500FFFFF200FFFFFC00FFFFFC00FFFFFC00FFEFDF00CFE2C500DFD1BC009797
      970054545400212121000000000000000000E48E6B00F4CAB800D8957F00D28C
      7300D28D7500C8755600DFBBAE00FEFBFA0099573900FCF8F700CA755400CB7B
      5D00CE7A5B00C66C4A00E4A78C00A4582800FFF8F000FFF8F000FFF0E000FFF0
      E000FFE8E0008068500000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFC00FFFFF200FFF7E8006C55
      4C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400CFE2C500FFFF
      F200FFFFFC00FFFFFC00FFFFF200FFFFF200FFEFDF00CFE2C500DFD1BC00A4A4
      A40066666600545454001717170000000000E7916E00F5CCBB00FFFFFF00FFFF
      FF00FFFEFE00FEFEFE00FEFDFC00FEFCFB00FEFBFA00FDF9F900FCF8F700FCF7
      F600FCF5F400FBF4F300E6AA8E00A75B2D00FFFFFF00FFF8FF00FFF8F000FFF0
      F000FFF0E0009078700000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFC00FFFFFC00FFFFF2007E7E
      7E00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009FB0A400CFE2C500CFE2
      C500CFE2C500DFD1BC00DFD1BC009FB0A4009FB0A400A4A4A400A4A4A4009797
      970071717100666666005454540000000000EB937200F6CEBE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FFFEFD00FEFDFC00FDFCFB00FEFAFA00FDFAF900FCF8
      F800FCF7F600FBF5F400E9AB9100AA5D2F00FFFFFF00FFFFFF00FFFFFF00FFF8
      F000FFF8F000A090800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFD9AC00A4A4A400A4A4A400A4A4
      A400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ED967400F7CFC000F6CEBE00F5CC
      BC00F4CAB800F4C7B500F2C4B100F2C1AD00F0BEA900F0BBA500EFB8A100EDB5
      9D00ECB39A00ECB09600EBAE9400AD603200D0B8B000C0B0A000C0A8A000C0A8
      A000B0A09000B090800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ED967400ED967400EB947200E891
      6F00E48F6D00E18C6800DD886500D8846100D4815C00CF7D5800CA795300C575
      5000C1714C00BD6F4800BA6C4500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006D4931006D4931006D49
      31006D4931006D4931006D4931006D4931000000000000000000000000000000
      000000000000000000000000000000000000000000006D4931006D4931006D49
      31006D4931006D4931006D4931006D4931006D4931006D4931006C554C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A4006C554C006C554C006D49
      31006D4931006D4931006D4931006D4931006D4931006D4931006D4931006D49
      31006D4931006D4931006D4931006D493100A4A4A400FFFFFC00FFEFDF00FFEF
      DF00FFEFDF00FDE3B000FFD9A6006D4931000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400FFFFF200FFFFF200FFEF
      DF00CFE2C500CFE2C500DFD1BC00DFD1BC00DFD1BC00DFD1BC006A635F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4A4A4002C58
      6F0038383800BF8B84000000000000000000A4A4A400CFE2C500DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00DFD1BC006D493100A4A4A400FFFFFC00FFFFFC00FFFF
      F200FFFFF200FFF7E800FDE3B0006D4931000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400FFFFF200DFD1BC00DFD1
      BC00DFD1BC00EEB88A00EEB88A00EEB88A00BF8B8400DFD1BC006A635F000000
      0000000000000202020000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A4A4002C586F003A8B
      B7003A8BB7002E345700A4A4A40000000000A4A4A400FFFFFC00FFFFF200FFFF
      F200FFFFF200FFFFF200FFFFF200FFF7E800FFF7E800FFEFDF00FFEFDF00FFEF
      DF00FFEFDF00FFEFDF00FFEFDF006C554C00EEB88A00EEB88A00A4A4A400BF8B
      8400BF8B8400BF8B8400B1654D006D4931000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400FFFFFC00FFFFFC00FFFF
      F200FFFFF200FFEFDF00FFEFDF00FFEFDF00FFEFDF00DFD1BC006A635F000000
      00006A635F000D0D0D0002020200000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A4002C586F003A8BB7004DB3
      F200A3D0EA0097CAE800699AAE0000000000A4A4A400CFE2C500DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00DFD1BC006C554C00DFD1BC00FFFFFC00FFEFDF00FFEF
      DF00FFEFDF00FDE3B000FDE3B0006D4931006D4931006D4931006D4931006D49
      31006D4931006D4931006D4931006D493100A4A4A400FFFFFC00DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00EEB88A00EEB88A00DFD1BC00CFE2C500848484000000
      0000000000006C554C0000000000020202000000000000000000DFD1BC00A4A4
      A4008F8F8F006A635F00605E5E007E7E7E006D6D6D00247EAE004DB3F200A3D0
      EA00A3D0EA00699AAE00A4A4A40000000000A4A4A400FFFFFC00FFFFF200FFFF
      F200FFFFF200FFFFF200FFFFF200FFFFF200FFF7E800FFF7E800FFF7E800FFEF
      DF00FFEFDF00FFEFDF00FDE3B0006C554C00DFD1BC00FFFFFC00FFFFFC00FFFF
      F200FFFFF200FFFFF200FFEFDF0071717100FFEFDF00FFEFDF00FDE3B000BF8B
      8400DFD1BC00FDE3B000FDE3B0006D493100A4A4A400FFFFFC009FB0A400FFFF
      FC00FFFFF200FFFFF200FFF7E800FFFFF200CFE2C500FFEFDF00BF8B84000000
      00000000000000000000000000004646460000000000DFD1BC008F8F8F009797
      9700A4A4A400DFD1BC00DFD1BC00A4A4A400848484007E7E7E0084C0E400A3D0
      EA00699AAE00A4A4A4000000000000000000A4A4A400CFE2C500DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00DFD1BC006C554C00DFD1BC00DFD1BC00DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00DFD1BC00A4A4A400DFD1BC00DFD1BC00A4A4A400BF8B
      8400A4A4A400A4A4A400BF8B84006D493100DFD1BC00FFEFDF0036363600DFD1
      BC00B1654D006D493100D5885500FFEFDF0054545400DFD1BC00A4A4A4000000
      00000000000000000000000000008F8F8F00DFD1BC00979797009FB0A400FFEF
      DF00FFEFDF00FDE3B000DFD1BC00FDE3B000FDE3B0009797970071717100699A
      AE00BFD9AC00000000000000000000000000A4A4A400FFFFFC00FFFFF200FFFF
      F200FFFFF200FFFFF200FFFFF200FFFFF200FFFFF200FFF7E800FFF7E800FFF7
      E800FFEFDF00FFEFDF00FFEFDF006C554C00DFD1BC00FFFFFC00FFEFDF00FFEF
      DF008C5036006D4931003F3F3F00605E5E0097979700CFE2C500FFEFDF00BF8B
      8400FDE3B000DFD1BC00FDE3B0006D493100DFD1BC0066666600FFF7E800EB80
      5900D588550070A95F00D7744500D5885500CFE2C50036363600979797000000
      0000000000000000000000000000EEB88A00A4A4A400A4A4A400FFFFF200FFF7
      E800FFEFDF006A635F006A635F00DFD1BC00FDE3B000FDE3B000848484009797
      970000000000000000000000000000000000A4A4A400CFE2C500DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00DFD1BC006C554C00DFD1BC00FFFFFC00FFFFF200FFFF
      F200FFFFF200DFD1BC00DFD1BC00979797006C554C0097979700DFD1BC00BF8B
      8400A4A4A400A4A4A400BF8B84006D49310054545400DFD1BC00FFFFFC00D588
      550080AB67006DC46200D5885500B1654D00FFEFDF007E7E7E00605E5E006A63
      5F006C554C0071717100BFD9AC006D493100A4A4A400CFE2C500FFFFFC00FFFF
      F200FFF7E8006A635F006A635F00FDE3B000DFD1BC00FDE3B000A4A4A4007E7E
      7E0000000000000000000000000000000000A4A4A400FFFFF200FFFFF200FFFF
      F200FFFFF200FFFFF200FFFFF200FFFFF200FFFFF200FFF7E800FFEFDF00FFEF
      DF00FFEFDF00FFEFDF00FFEFDF006D493100DFD1BC00A4A4A400BF8B8400BF8B
      8400848484008484840084848400979797008F8F8F006C554C00FFEFDF00A4A4
      A400FFEFDF00FDE3B000FDE3B0006D493100CFE2C50066666600CFE2C50070A9
      5F0067C06700D5885500D588550071CB7100DFD1BC008F8F8F00DFD1BC00DFD1
      BC00EEB88A00FDE3B000CFE2C5006D49310084848400FFFFF200FFFFFC00BF8B
      8400BF8B84007E7E7E007E7E7E006A635F006A635F00DFD1BC00DFD1BC006C55
      4C0000000000000000000000000000000000A4A4A4007E7E7E007E7E7E007E7E
      7E006A635F006A635F006A635F006A635F006A635F006A635F006A635F006A63
      5F006A635F006A635F006A635F006D493100000000000000000000000000BF8B
      8400A4A4A400A4A4A400A4A4A400DFD1BC00A4A4A40046464600DFD1BC00DFD1
      BC00DFD1BC00A4A4A400BF8B84006D493100DFD1BC00FFEFDF0054545400CFE2
      C50070A95F004C9946008FE08F00FFF7E8007E7E7E00FFFFF200FFEFDF00FFFF
      F200FFEFDF00FFFFF200FFFFF2006D49310084848400FFFFF200FFFFFC009797
      970097979700BF8B8400848484007E7E7E006A635F00FDE3B000DFD1BC006A63
      5F0000000000000000000000000000000000A4A4A400DFD1BC009FB0A4009FB0
      A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400BF8B8400BF8B84008F8F
      8F00BF8B8400BF8B8400BF8B84006D4931000000000000000000000000009797
      9700FFFFF200FFFFFC00FFEFDF00D58855008C5036006D493100363636006D49
      3100DFD1BC00FFEFDF00FFEFDF006D493100DFD1BC00FFFFFC00FFEFDF00FFFF
      FC00FFFFFC00FFFFFC00FFFFFC00FFFFF200DFD1BC00DFD1BC00A4A4A400DFD1
      BC00BF8B8400FFEFDF00DFD1BC006D493100A4A4A400CFE2C500FFFFFC00FFFF
      FC00FFFFFC0097979700BF8B8400FFF7E800FFEFDF00FFEFDF00A4A4A4008484
      840000000000000000000000000000000000A4A4A400DFD1BC00BF8B8400DFD1
      BC00FFEFDF00FFFFF200FFFFF200FFFFF200FFEFDF00FFEFDF00BFD9AC00A4A4
      A400A4A4A400A4A4A400BF8B84006D493100000000000000000000000000BF8B
      8400BF8B8400BF8B8400A4A4A400EEB88A00D58855008C5036006D493100EEB8
      8A00BF8B8400B1654D00B1654D006C554C00DFD1BC00FFFFFC00FFFFFC00FFFF
      FC00FFFFFC00FFFFFC00FFEFDF00A4A4A400DFD1BC00FFFFF200FFEFDF00FFFF
      F200FFEFDF00FFFFF200FFEFDF006D493100DFD1BC009FB0A400FFFFFC00FFFF
      FC00FFFFFC009797970097979700FFFFF200FFF7E800FFEFDF0097979700A4A4
      A40000000000000000000000000000000000A4A4A400DFD1BC007E7E7E00BF8B
      8400BF8B8400BF8B8400BF8B8400BF8B8400A4A4A400DFD1BC00BFD9AC00BFD9
      AC00BFD9AC00A4A4A400A4A4A4006C554C00000000000000000000000000A4A4
      A400DFD1BC009FB0A400A4A4A400A4A4A400DFD1BC00D5885500DFD1BC00BF8B
      8400A4A4A400A4A4A400979797006D493100DFD1BC00DFD1BC00DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00A4A4A400DFD1BC00EEB88A00EEB88A00E99A7A00E99A
      7A00EB805900EB805900D7744500D5623700DFD1BC00A4A4A400DFD1BC00FFFF
      FC00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFFF200BFD9AC008F8F8F000000
      000000000000000000000000000000000000EEB88A00CFE2C500DFD1BC00DFD1
      BC00DFD1BC00BFD9AC00BFD9AC00BFD9AC00BFD9AC00BFD9AC00DFD1BC00DFD1
      BC00DFD1BC00DFD1BC00A4A4A4006C554C00000000000000000000000000A4A4
      A400DFD1BC00BFD9AC00BFD9AC00BF8B8400DFD1BC00DFD1BC00DFD1BC00BF8B
      8400BFD9AC00BFD9AC00A4A4A4006D4931000000000000000000000000000000
      000000000000000000000000000000000000EEB88A00FFCF9C00FFCF9C00FFBF
      9100EEB88A00E99A7A00F9926F00D562370000000000DFD1BC00A4A4A4009FB0
      A400CFE2C500FFFFF200FFFFF200CFE2C500A4A4A40097979700000000000000
      000000000000000000000000000000000000EEB88A00EEB88A00EEB88A00EEB8
      8A00A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400A4A4A400A4A4A400000000000000000000000000A4A4
      A400A4A4A400A4A4A400BF8B8400BF8B8400979797008F8F8F00BF8B8400BF8B
      8400B1654D00B1654D00B1654D00BF8B84000000000000000000000000000000
      000000000000000000000000000000000000EEB88A00EEB88A00E99A7A00E99A
      7A00E99A7A00EB805900EB805900D77445000000000000000000DFD1BC00BFD9
      AC00A4A4A4008F8F8F008484840097979700A4A4A40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C554C00FFFFFC00CFE2
      C500CFE2C500CFE2C500DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1BC00DFD1
      BC00DFD1BC00DFD1BC006D493100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007777
      7700555555005555550055555500555555005555550055555500555555005555
      5500555555005555550055555500555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A635F00FFFFFC00FFFF
      FC00FFFFF200FFFFF200FFFFF200FFFFF200FFF7E800FFF7E800FFEFDF00FFEF
      DF00FFEFDF00DFD1BC006D493100000000004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003F3F3F000000000000000000000000007777
      7700CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A635F00FFFFFC00FFFF
      FC00FFFFFC00FFFFF200FFFFF200FFFFF200FFFFF200FFF7E800FFEFDF00FFEF
      DF00FFEFDF00DFD1BC006D493100000000006C554C0000000000020202000202
      0200020202000202020002020200020202000202020002020200020202000202
      0200020202000202020000000000464646000000000000000000000000007777
      7700EAEAEA00EAEAEA00EAEAEA00D6E7E700D6E7E700EAEAEA00D6E7E700D6E7
      E700D6E7E700D6E7E700CCCCCC00555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000071717100FFFFFC00FFFF
      FC00FFFFFC00FFFFF200FFFFF200FFFFF200FFFFF200FFF7E800FFF7E800FFEF
      DF00FFEFDF00DFD1BC006C554C0000000000605E5E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004D4D4D000000000000000000CC3333007777
      7700FFFFFF00F1F1F100F0FBFF00F1F1F100EAEAEA00D6E7E700EAEAEA00D6E7
      E700D6E7E700D6E7E700CCCCCC00555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E7E7E00FFFFFC00FFFF
      FC00FFFFFC00FFFFFC00FFFFF200FFFFF200FFFFF200FFFFF200FFF7E800FFF7
      E800FFEFDF00DFD1BC006C554C00000000006A635F0000000000020202000202
      0200020202000202020002020200020202000202020002020200020202000202
      02000202020002020200000000004D4D4D0000000000CC333300000000000404
      040004040400996600009966000099660000EAEAEA00EAEAEA00D6E7E700EAEA
      EA00D6E7E700D6E7E700CCCCCC0055555500C0A8A00070504000705040007050
      4000705040007050400070504000705040007050400070504000705040007050
      400000000000000000000000000000000000000000007E7E7E00FFFFFC00FFFF
      FC00FFFFFC00FFFFFC00FFFFF200FFFFF200FFFFF200FFFFF200FFFFF200FFF7
      E800FFEFDF00DFD1BC006C554C00000000006D6D6D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006C554C0000808000CC33330066333300CC33
      3300FF663300FF663300FF663300FF66330099660000EAEAEA00EAEAEA00D6E7
      E700EAEAEA00D6E7E700CCCCCC0055555500C0B0A000FFFFFF00E0D8D000E0D0
      D000E0D0C000E0C8C000E0C8B000E0C0B000E0C0B000E0C0B000E0C0B0007050
      400000000000000000000000000000000000000000007E7E7E00FFFFFC00FFFF
      FC00FFFFFC00FFFFFC00FFFFFC00FFFFF200FFFFF200FFFFF200FFFFF200FFF7
      E800FFF7E800FFEFDF006C554C00000000007171710000000000020202000202
      0200020202000202020002020200020202000202020002020200020202000202
      0200020202000202020000000000605E5E005F5F5F006699990099330000FF66
      3300FF663300C0C0C000C0C0C000CC333300FF66330099660000EAEAEA00EAEA
      EA00D6E7E700D6E7E700CCCCCC0055555500D0B8B000FFFFFF00C0A09000C0A0
      9000FFF8F000C0988000C0988000FFE8E000C0908000C0907000E0C0B0007050
      400000000000000000000000000000000000000000007E7E7E007E7E7E007E7E
      7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E006A635F006A63
      5F006A635F006A635F006A635F00000000007E7E7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006A635F00777777006699CC00CC663300FF66
      3300CC660000F0FBFF00F0FBFF00F1F1F100F0FBFF00EAEAEA00F1F1F100D6E7
      E700EAEAEA00D6E7E700CCCCCC0055555500D0C0B000FFFFFF00FFFFFF00FFFF
      FF00FFF8FF00FFF8F000FFF0F000FFF0E000FFE8E000FFE0D000E0C0B0007050
      4000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000020202000202
      0200020202000202020002020200020202000202020002020200020202000202
      02000202020002020200000000006D6D6D00000000007777770099CCFF00FF66
      3300CC660000CC660000CC660000CC660000CC660000CC660000EAEAEA00EAEA
      EA00D6E7E700D6E7E700CCCCCC0055555500E0C8C000E0D0C000E0C8C000E0C8
      C000B0A090006048300060483000604830006048300060483000604830006048
      3000604830006048300060483000705040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007171710000000000800000006699990099FF
      FF00CC660000F0FBFF00F0FBFF00CC333300FFCC0000CC660000F1F1F100EAEA
      EA00EAEAEA00D6E7E700CCCCCC00555555000000000000000000000000000000
      0000C0A8A000FFFFFF00E0D8D000E0D0D000E0D0C000E0C8C000E0C8B000E0C0
      B000E0C0B000E0C0B000E0C0B00070504000000000000000000000000000B165
      4D008C503600000000000000000000000000000000000000000000000000B165
      4D00B1654D000000000000000000000000008F8F8F0000000000000000000000
      0000B1654D008C50360000000000000000000000000000000000B1654D00B165
      4D00EEB88A0000000000000000007E7E7E000000000000000000800000009999
      6600CCCC9900CC333300CC333300FFFF6600CC660000F1F1F100F0FBFF00F1F1
      F100EAEAEA00CCCCCC0099999900555555000000000000000000000000000000
      0000C0B0A000FFFFFF00C0A09000C0A09000FFF8F000C0988000C0988000FFE8
      E000C0908000C0907000E0C0B0007050400000000000E99A7A00B1654D008C50
      3600000000000000000000000000000000000000000000000000000000000000
      0000B1654D008C5036008C503600000000009797970000000000E99A7A00B165
      4D008C503600000000000000000000000000000000000000000000000000B165
      4D008C5036008C50360000000000848484000000000000000000000000008000
      0000CC660000CC660000CC660000CC660000F0FBFF00FF663300F1F1F100F0FB
      FF00CCCCCC009999990077777700555555000000000000000000000000000000
      0000D0B8A000FFFFFF00FFFFFF00FFFFFF00FFF8FF00FFF8F000FFF0F000FFF0
      E000FFE8E000FFE0D000E0C0B00070504000EB805900EB805900EB805900B165
      4D008C5036008C5036008C5036000000000000000000D5885500EB805900EB80
      5900EB805900B1654D008C5036008C50360097979700EB805900EB805900EB80
      59008C5036008C5036008C503600B1654D00B1654D00D7744500D7744500D588
      5500B1654D008C5036008C503600848484000000000000000000000000007777
      7700FFFFFF00F0FBFF00F0FBFF00CC660000CC660000F0FBFF00F0FBFF00F0FB
      FF00555555003333330033333300333333000000000000000000000000000000
      0000F0AB9300F0A89000F0A89000F0A08000F0987000E0906000E0885000E078
      4000E0784000E0704000E0704000D16D360000000000F9926F00EB805900D588
      5500000000000000000000000000000000000000000000000000000000000000
      0000EB805900D7744500E99A7A0000000000A4A4A40000000000F9926F00EB80
      5900EB805900000000000000000000000000000000000000000000000000EB80
      5900D7744500E99A7A00000000008F8F8F000000000000000000000000007777
      7700FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF0099999900F0FBFF0055555500000000000000000000000000000000000000
      0000F0B39300FFC0A000FFC0A000FFB8A000FFB89000FFB09000FFA88000FFA8
      8000F0A07000F0987000F0987000D1744500000000000000000000000000EEB8
      8A00D5885500000000000000000000000000000000000000000000000000EB80
      5900EB805900000000000000000000000000A4A4A4000000000000000000FDE3
      B000EEB88A00D588550000000000000000000000000000000000EB805900EB80
      5900000000000000000000000000979797000000000000000000000000007777
      7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00999999005555550000000000000000000000000000000000000000000000
      0000F0AB9300F0A89000F0A89000F0A89000F0A08000F0A07000E0987000E090
      6000E0885000E0805000E0784000E07445000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007777
      7700868686008686860086868600868686008686860086868600868686008686
      8600868686000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B005A5A5A006A6A
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008F8F8F0073758900A48289004643
      4300636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000187639000C6F32000D6C
      33000E68320011633300125D33001457330016523300184C330019483400E6AB
      8400E7A77F00E8A57A00EBA37700000000000000000084848400000000000000
      0000000000000000000000000000000000008484840000000000848484000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000769CB6004088DF007376A800A681
      8700454242006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202000000000000000000000000000000
      00000000000000000000000000000000000000000000207C3E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00174C3400F8DD
      CC00F9DBC900F8DAC700E9A47B00000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF000000000093BAD60052B8FF004385D9007979
      A700A68187004542420064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020200020202000202020000000000000000000000
      000000000000000000000000000000000000000000002B844500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0085A987001D6F3800195D34005B7D5F0016513300D6AE
      9000D6AE9000F8DBCA00E7A78000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000083B6DD0053B9FF004385
      D9007979A700A68187004A474700737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202000000000000000000000000000000
      00000000000000000000000000000000000000000000388E4E008BBD90001E76
      3B001D6E39001A6235008BBD90003E9247001D673A009FB3A10014573300FAE5
      D700D6AE9000F9DECE00E6AC8500000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000072B2E40053B8
      FE004483D6007979A7008E74790052525200656565005C5C5C00525252005050
      50005B5B5B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202000000000000000000000000000000
      000000000000000000000000000000000000B7A2930046985700FFFFFF008BBD
      9000519E570091C4960057A25A0021703A006C9B6F00DFE9DF00135D3300FBE8
      DC00D6AE9000FAE1D200E4AE8A00000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000848484000000000000000000000000000000000074B3
      E40053B8FE00588CCF007D7D8000816B6B00B8958100CEB09600E0C7AE00CFB2
      A100796360004646460000000000000000000000000000000000000000000000
      0000000000000000000000000000020202000000000000000000000000000000
      000000000000000000000000000000000000B9A4950053A26000FFFFFF00CFDD
      CF0096C69A0057A25A00267C390027673100C0D1C000FFFFFF0010623300FCEC
      E200FBE8DC00FAE4D600E3B18F00000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000008484
      840000000000FFFFFF0000000000848484000000000000000000000000000000
      000084B7DD00ACB2B700AB8B8800F1CFA900FFF5C500FFFDD100FFFFDB00FFFF
      DC00F5EFE0009379740046464600000000000000000000000000000000000000
      000000000000848484007E7E7E006A635F006D4931006D493100000000000000
      000000000000000000000000000000000000BBA696005EAA6600E5ECE5008DC4
      930064AC6900348941006FA5730057A060003A884600D6E2D6000E683200D6AE
      9000D6AE9000FBE6DA00E2B39500000000000000000084848400000000000000
      0000000000000000000000000000000000008484840000000000848484000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000BFBFBF00B09D9D00EFC9A600FFF2C000FFF7C400FFFFD800FFFFE800FFFF
      F800FFFFFF00F3EDDA006A5151005E5E5E000000000000000000000000000000
      00000000000084848400E99A7A00E0664200E06642006D493100000000000000
      000000000000000000000000000000000000BEA8990066B06C008EC293005FA8
      630047975100FFFFFF00CBDACC0054985D0054985D009BB09C000D6C3200FDF1
      EA00FCEDE400FBE9DD00E0B69900000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000008484
      840000000000FFFFFF0000000000848484000000000000000000000000000000
      0000BFBFBF00C7A49B00FFF1C200FFE4B100FFF9C600FFFFDB00FFFFEC00FFFF
      FB00FFFFF700FFFFDA00B2998600525252000000000000000000000000000000
      00000000000084848400E99A7A00F9926F00D77445006D493100000000000000
      000000000000000000000000000000000000C0AC9C0066B06C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C6F3200FDF4
      EF00B7A293000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000084848400000000000000000000000000000000000000
      0000BFBFBF00E5BDA300FFF5C900FFDDAA00FFF5C200FFFFD600FFFFE500FFFF
      EC00FFFFE700FFFFD900CCB29900525252000000000000000000000000000000
      00000000000084848400EEB88A00E99A7A00EB8059006D493100000000000000
      000000000000000000000000000000000000C4AF9F0066B06C0061AD68005AA7
      640052A15E00489A59003F935200358C4C002C854600247F41001D7A3D00FEF8
      F300B9A49500D4C5BA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00E5BFA600FFF5C900FFE6B900FFEFBC00FFFFCD00FFFFD700FFFF
      DB00FFFFD800FFFCD100CCAC93005E5E5E000000000000000000000000000000
      0000000000008F8F8F00FFBF9100EEB88A00E99A7A006D493100000000000000
      000000000000000000000000000000000000C8B2A200FEFBF900D6AE9000D6AE
      9000D6AE9000D6AE9000D4BEAE00D2BDAD00D1BAAB00CDB6A800CBB6A600C8B0
      9F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCADA300FFF6CD00FFF2D700FFE3B900FFF1BF00FFF5C200FFF9
      C700FFF7C400FFF6C600B5927F007B7B7B0000000000A4A4A4007E7E7E006C55
      4C006D4931008F8F8F00FFD9A600FFCF9C00E99A7A006D4931007E7E7E006A63
      5F006C554C006D4931000000000000000000CBB5A600FFFDFC00FEFCFA00FEF8
      F400FDF4EF00FDF1EA00FCEDE400FBE9DD00E0B6990000000000000000000000
      0000B969430000000000000000000000000000000000FFFFFF00000000000000
      00008484840000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0ACAC00EFDAC200FFFFFF00FFF7EA00FFECBF00FFDFAC00FFE3
      B000FFF0BD00F3D2A800856B6B000000000000000000A4A4A400FFFFF200FFF7
      E800FFEFDF0097979700FDE3B000FFD9A600EEB88A006D493100FFFFF200FFEF
      DF00DFD1BC006D4931000000000000000000CEB9A900FFFEFD00D6AE9000D6AE
      9000D6AE9000FDF4EF00B7A2930000000000000000000000000000000000B969
      4300B9694300B9694300B9694300000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEA19F00F1E5DD00FFFBE800FFF8CD00FFEEBC00FFF3
      C600F5CFA400AC867C00000000000000000000000000A4A4A400FFFFFC00FFFF
      F200FFF7E80097979700FDE3B000FDE3B000FFBF91006D493100FFFFFC00FFFF
      F200FFEFDF006D4931000000000000000000D1BCAC00FFFEFE00FFFEFD00FEFA
      F700FEF8F300FEF8F300B9A49500D4C5BA000000000000000000000000000000
      0000B96943000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6A0A000C7A79400CEA88E00E0B89E00D5AC
      9900B299960000000000000000000000000000000000BFD9AC00FFFFFC00FFFF
      FC00FFFFF200A4A4A400FFEFDF00FDE3B000FDE3B0006D493100FFFFFC00FFFF
      FC00FFF7E8006D4931000000000000000000D4BEAE00D2BDAD00D1BAAB00CDB6
      A800CBB6A600CAB4A500C0AB9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5897200AF7B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6008484840000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00FCB2
      9E00FFDEBC00CE8F7500DA8C7200FBAD8C00B87C6500AB7A6900000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000C6C6C6008484840084848400FFFFFF00C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00F2AF
      9C00FFD1B200D5A59200FFBE9E00D59A8300BB766000FCB09000D78E7400D680
      6200E5CBC100000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000000000000000000084848400000000000000000000000000D4B6AC00F7B5
      A200FFD0AF00E8C1AC00E8CDB100D6A28E00FFFFFA00D29C8400EAB5A000E69F
      8100EDCDC100000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00840000008400000084848400C6C6C6008484
      84000000000084848400C6C6C600848484000000000000000000D4B6AC00FAB9
      A800FFDAB900C2846C00C37A6400FFE2BB00A0736000FFD8B700E2C2A900E9BF
      A200EBCABD00000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00C6C6C600840000008400000084848400C6C6C600C6C6
      C6008484840084848400C6C6C600848484000000000000000000D4B6AC00FBBF
      B000FFD1B200DAB09E00FFDFBF00B8837000EBA38900E0A38700C8867100DE95
      7800ECD0C300000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008400000000000000000000000000000000000000FFFF
      FF00FFFFFF00C6C6C600C6C6C6008484840084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000D4B6AC00FCC1
      B100FFD7B500E6C1AA00E3C7AA00F3C0AA00FFFAE100E1B49A00F6C7B000E6B3
      9800E9CABE00000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF0000000000000000000000000000000000840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000FFFFFF00FFFF
      FF00840000008400000084848400C6C6C600C6C6C600C6C6C600840000008400
      000084848400C6C6C60084848400C6C6C6000000000000000000D4B6AC00FFC8
      B900FFDCBC00BC806B00CA826B00FFD4B100A46B5800FFD5B100DBB59600FFD1
      A000F5D9CC00000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084848400FFFFFF00C6C6
      C600840000008400000084848400C6C6C600C6C6C600C6C6C600840000008400
      000084848400C6C6C600C6C6C600000000000000000000000000D4B6AC00FFCC
      C100FFDABA00D6AF9F00FFEECD00C6958400FFD2B600EFAC8900286AD1004775
      B900FFE8CE00000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF0000000000000000000000000000000000840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008400000000000000000000000000000084848400C6C6
      C6008484840084848400C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      8400C6C6C600C6C6C60000000000000000000000000000000000D5BDB600FFD4
      C900FFD7B700F0CEB600DCB9A100FCD2B800DCC7B100F7C19B0063AAE90078A2
      EB00FCD2B800000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008400000000000000000000008484840084848400C6C6
      C600FFFFFF00C6C6C600C6C6C600840000008400000084848400C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000D7C0B800FFDA
      D000FFDFC000F1BF9F00E1AE9300EABFA100FFDFC000FFEAC700D4CFC000D6CE
      C400EDC9B600000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00840000000000000084848400C6C6C600848484000000
      000084848400FFFFFF00C6C6C600840000008400000084848400C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000D9C0B900FFE0
      DA00F6CBAE00E89E7800FFBF9000FCB28900E1A27F00DDA08100E9AA8900F4BF
      9B00E8CFC200000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00840000000000000000000000C6C6C600848484000000
      00000000000084848400FFFFFF008484840084848400C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000DAC0B800FFE6
      E300F5CDAD00EE844E00FF965600FF975B00FF9F6500FFA56C00FFA97200F099
      6C00DABEB100000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C600C6C6C600848484008484
      8400000000000000000000000000000000000000000000000000D4B6AC00FFE4
      E300FFE3C400E0A08000E18A5F00E2875C00DE7C4E00D87D5500F6844D00DC7D
      4F00D9B7A500000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C6000000000084848400C6C6
      C600848484000000000000000000000000000000000000000000DABDB400FFFF
      FF00FFFBE000FFFFDE00FFFFE400FFFEE000FFFFE300FFF8DA00F3D1B700FFE0
      C400F6DAC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60084848400000000000000000000000000000000000000000000000000EAD8
      CB00EFDFD100E8D2C100E5CCB700E6CAAD00D5B39200EFD6AE00F8E3BA00FFFD
      CB00D7B8A1000000000000000000000000000000000000000000000000000000
      0000000000008686860086868600868686008686860086868600868686008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094949400606060004545450043434300554F4F00817B7B004E4E4E005555
      5500737373008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      6400A6A6A600F1F1F100B2B2B2009E8B8B00A6868600B6B3B300E5E5E500B4B4
      B40057575700505050007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B9B9B00EEEE
      EE00F1F1F100E8E8E800ACACAC00939393005F5F5F006D6D6D008C8C8C00BCBC
      BC00E9E9E900B1B1B10071717100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0785000F0885000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500FAFAFA00F2F2
      F200D8D8D800959595007E7E7E0097979700B2B2B200A6A6A600949494008E8E
      8E0089898900646464007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D27D5500F0885000E8B08E00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500D8D8D800A0A0
      A0009B9B9B00C9C9C900ABABAB008D8D8D0080808000838383009F9F9F00BFBF
      BF007AAA8A00585858007C7C7C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0885000C97B560000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000076767600A6A6A600D9D9
      D900D8D8D800D8D8D800D8D8D800E0E0E000CFCFCF00BEBEBE009D9D9D008989
      8900678471005757570082828200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000008484
      840000000000000000000000000000000000000000000000000000000000F090
      6000E0784000DBAF910000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E00E1E1E100D8D8
      D800D2D2D200C9C9C900D5D5D500CECECE00C2C2C200C0C0C000CCCCCC00D4D4
      D400CCCCCC007171710086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000848484000000000000FF
      FF0000000000000000000000000000000000000000000000000000000000F088
      5000C068400000000000000000000000000090503000B0583000B0603000C068
      4000D0704000E0784000000000000000000000000000B5B5B500D5D5D500C2C2
      C200AAAAAA00A5A5A500CFCFCF00F0F0F000EDEDED00EAEAEA00D9D9D900BFBF
      BF00BEBEBE008888880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF00FFFFFF0084848400FFFF
      FF0000000000000000000000000000000000000000000000000000000000E184
      5500C06840000000000000000000000000000000000000000000F0987000F080
      5000E0703000E080500000000000000000000000000000000000B5B5B500C9C9
      C900ECECEC00B2B2B200BABABA00AEAEAE00B6B6B600BDBDBD00BDBDBD00B3B3
      B300868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000E17C
      4600C06840000000000000000000000000000000000000000000F0A07000F090
      6000F0805000E09060000000000000000000000000000000000000000000C4BB
      BB00FFD4C500FFD2C700FBD7CE00EFDCD500E5E1DF00E7E7E700858585008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000E17C
      4600A45E37000000000000000000D8A58200B0604000B0604000F0946600F0A0
      700000000000E09870000000000000000000000000000000000000000000D5BF
      B900FFDCB800FFDCB800FFDCB800FFD6B300FFD4AF007A636100868686000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F088
      5000A0604000B87B4E00C17D5300C0684000C0704000E0906000F0B090000000
      000000000000F0A880000000000000000000000000000000000000000000CBAB
      A100FFE5CB00FFE5CB00FFE5CB00FFE5CB00F9DDC40073676700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E17D4600B4663800B0684000D0704000F0946600F0B09000000000000000
      000000000000000000000000000000000000000000000000000000000000DFC3
      B700FFEDDC00FFEDDC00FFEDDC00FFEDDC00DBC1B50092929200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0AD8600F0AD8700F1B59600F0B0900000000000000000000000
      0000000000000000000000000000000000000000000000000000CEBAB900FFF7
      EE00FFF7EE00FFF7EE00FFF7EE00FFF7EE00B0A19D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6D8D700E6D8
      D700E6D8D700E6D8D700E6D8D700E6D8D700E6D8D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000086E8C00086B86000865
      800005627D00055C7700035A720004586C0006516500024D640004495D000345
      590002415500023E5200023E5200034256000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3787500A378
      7500A3787500A3787500A3787500A3787500A3787500A3787500A3787500A378
      7500A37875008859570000000000000000001E9CC70078D1FA0078D1FA0078D1
      FA0073CDFA006CC8FA0064C2F9005BBCF90052B5F90048ADF8003FA7F80037A1
      F700309CF7002B98F7002B98F70003425600BEA99A0063493500634935006349
      3500634935006349350063493500634935006349350063493500634935006349
      350063493500634935006349350000000000BEA99A0063493500634935006349
      3500634935006349350063493500634935006349350063493500634935006349
      35006349350063493500634935000000000000000000A8A7B800A3787500F5D7
      CE00FFDACE00FFD8C900FFD6C700FFD5C400FFD3C100FFD2BE00FFD0BA00FFD1
      AE00FFCEAA008A5B5A000000000000000000219FCA0078D1FA001E8FB60078D1
      FA001C90B40073CDFA00198BAC0064C2F9001183A70052B5F9000E799B003FA7
      F8000B6F8D00309CF700309CF700044C6000BEA99A00FAF5F200E9D9CF00E8D4
      C900E4CFC200E1C9BC00DFC3B500DBBDAD00D9B7A600D5B19F00D3AB9800D0A6
      9200CC9E8700CA9A83006349350000000000BEA99A00FAF5F200E9D9CF00E8D4
      C900E4CFC200E1C9BC00DFC3B500DBBDAD00D9B7A600D5B19F00D3AB9800D0A6
      9200CC9E8700CA9A83006349350000000000000000004982D2008B80A300E3C7
      BF00FFE8D200FFE6CE00FFE3C600FFDFBF00FFDDBB00FFD9B400FFD7AF00FFD4
      A900FFD2A4008E5F5D000000000000000000219FCA00219FCA001E8FB600219F
      CA001C90B4001E9CC400198BAC001A95BA001183A700158AAF000E799B000C81
      A6000B6F8D000975960009759600076D8E00BEA99A00FBF3EE00878583008785
      830087858300F7E6DD00878583008785830087858300F2DCCF00878583008785
      830087858300CDA18B006349350000000000BEA99A00FBF3EE00878583008785
      830087858300F7E6DD00878583008785830087858300F2DCCF00878583008785
      830087858300CDA18B0063493500000000000000000078C9FE004A81CF008B80
      A300E6C9C000FFE8D200FFE6CE00FFE3C600FFDFBF00FFDDBB00FFD9B400FFD7
      B000FFD4A9009163610000000000000000000000000000000000000000000000
      00000000000000000000DFD6CE00FEFDFC00F3EAE400EFE5E000EADFD800E4D9
      D100DCD0C800D4C6BC00CBBBB100826D5C00BEA99A00FCF5F000FBF2ED00FAEF
      E900F9ECE500F7E9E000F6E5DC00F2DCCF00F2DCCF00F2DCCF00F2DCCF00F2DC
      CF00E3CBBF00CC9E87006349350000000000BEA99A00FCF5F000FBF2ED00FAEF
      E900F9ECE500F7E9E000F6E5DC00F2DCCF00F2DCCF00F2DCCF00F2DCCF00F2DC
      CF00E3CBBF00CC9E8700634935000000000000000000F6FDFF006CB3E4004D7C
      C7009181A200FAE6D500F2D8C500EECEBB00F8D9C000FFDFBF00FFDDBA00FFD9
      B400FFD7B00095676500000000000000000000000000D46C4000D46C4000D46C
      4000CC673B00C25F3400B5562C00A74D24009A441C00903C1500934017008A38
      1100B1938400C0A99D00C7B3A60070584500BEA99A00FDF6F20092908F008785
      830071706D00F7E9E000878583008785830087858300F2DCCF00878583008785
      830087858300D9B8A7006349350000000000BEA99A00FDF6F20092908F008785
      830071706D00F7E9E000878583008785830087858300F2DCCF00878583008785
      830087858300D9B8A70063493500000000000000000000000000C18E7A0078C1
      F400818DA700D4AA9400D7AB8D00D3A28400D9AF9300DCB49E00FFDFBF00FFDD
      BB00FFD9B400996C6900000000000000000000000000D46C4000F8A37900F17F
      4900EC763D00E7723A00E26F3700DE6C3500DE723E00EB8A5B00D7754B00F4E7
      DF00F0E6DD00E9DCD100C5AFA2006A503C00BEA99A00FDF8F400FDF5F100FBF2
      EE00FBF0EA00F9EDE600F8EAE100F7E7DD00F5E2D900F4DFD400F2DCCF00F0D8
      CB00EFD5C700DCC0B1006349350000000000BEA99A00FDF8F400FDF5F100FBF2
      EE00FBF0EA00F9EDE600F8EAE100F7E7DD00F5E2D900F4DFD400F2DCCF00F0D8
      CB00EFD5C700DCC0B10063493500000000000000000000000000C18E7A00FFF8
      F200DCB4A000E2BC9800F2E0B500FDFBDE00F2E3D500E0BFAA00D7AF9800FFE0
      C000FFDDBB009C716D00000000000000000000000000D5704500FCAE88008837
      100096411900AA4F2600BE5D3200E6784300EE8D5E00DF906E00D2B9AA00B497
      8900B1938400C4AFA500CAB5A500654B3800BEA99A00FDF9F500878583008785
      830087858300FAEFE800878583008785830087858300F8ECE500878583008785
      830087858300E3CBBF006349350000000000BEA99A00FDF9F500878583008785
      830087858300FAEFE800878583008785830087858300F8ECE500878583008785
      830087858300E3CBBF0063493500000000000000000000000000C9967F00FFF9
      F500D9AD9000F2D3A700FFF9C900FFFFE400FFFFF600F2E3C700D5AA8E00FFE3
      C600FFDFBF00A0757200000000000000000000000000D7754B00FEB895009F47
      1E0000000000CB6D4400F07F4800F3906000D7754B00FEF4EF00FCFBFA00FAF6
      F300F5EFEA00EFE7DF00D2BCAC00654B3700BEA99A00FEF9F600FEF8F500FDF6
      F200FCF3EF00FBF1EB00F8ECE500F8ECE500F8ECE500F8ECE500F8ECE500F8EC
      E500F8ECE500E9D7CF006349350000000000BEA99A00FEF9F600FEF8F500FDF6
      F200FCF3EF00FBF1EB00F8ECE500F8ECE500F8ECE500F8ECE500F8ECE500F8EC
      E500F8ECE500E9D7CF0063493500000000000000000000000000D19E8100FFFE
      FD00D2A18300FDE5B600FFFAC700FFFFD800FFFFDF00FDFAD300D19F8200EFDB
      D000FFE3C600A47A7500000000000000000000000000DA7B5300FFBFA000BD5C
      3200D0724A00F98B5600F9956400D7754B00D2B9AA00BBA59800B69C8E00B497
      8900B1938400C7B6AD00D8C2B200664D3900BEA99A00FEF9F60092908F008785
      830071706D00FBF1EB00878583008785830087858300FBF1EB00878583008785
      830087858300EEE2DA006349350000000000BEA99A00FEF9F60092908F008785
      830071706D00FBF1EB00878583008785830087858300FBF1EB00878583008785
      830087858300EEE2DA0063493500000000000000000000000000D8A686000000
      0000D9AD9000F2DDC800FFE3BC00FFF7C400FFF2C000F2DFB200D5A68A00DFD1
      D800FFE6CE00A67D7800000000000000000000000000DC825C00FFC4A700D46C
      4000FFA47700FD9F7100D7754B00FEF4EF00FFFFFF00FFFFFF00FFFFFF00FFFE
      FE00FCFBFB00F8F4F200DCC6B600654B3700BEA99A00FEF9F600FEF9F600FEF8
      F600FDF6F300FCF5F000FBF2ED00F8ECE500F8ECE500F8ECE500F8ECE500F8EC
      E500F8ECE500F8ECE5006349350000000000BEA99A00FEF9F600FEF9F600FEF8
      F600FDF6F300FCF5F000FBF2ED00F8ECE500F8ECE500F8ECE500F8ECE500F8EC
      E500F8ECE500F8ECE50063493500000000000000000000000000E0AD89000000
      0000E2C4B700DFBCA800F2E0CB00FDECBC00F2DBAE00DCAF8D00DFBCAA00FFE3
      D200FFDAC900AA7F7B00000000000000000000000000DF896500FFC4A700FFB6
      9300FEAE8700D7754B00E5D0C400FFFFFF00C0AFA600BFACA100BBA59800BAA5
      9800FEFEFE00D0BEB200C7B0A200664C3800EAAA8B00EAAA8B00E8A68600E59F
      7D00E2987400E0936C00DD8C6200DA835A00D77D5000D4774700D1704000D16E
      3E00D16E3D00D16E3D00CF69360000000000EAAA8B00EAAA8B00E8A68600E59F
      7D00E2987400E0936C00DD8C6200DA835A00D77D5000D4774700D1704000D16E
      3E00D16E3D00D16E3D00CF693600000000000000000000000000E7B38D000000
      000000000000E2C6B900D6AB9000D2A08300D9AC9100E2C2B100F3DCCB00F3BC
      B100F2A29C00AB817D00000000000000000000000000E1906E00FFC4A700FEB6
      9200DF84540000000000DECFC300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C7B7AB00755E4C0069503D00664C3800EAAA8B00FFC2A200FFC2A200FDC0
      A000FEBE9D00FCBB9800FBB79300FBB28D00F8AC8400F7A77D00F5A17600F49C
      7000F4996A00F3956500CE69360000000000EAAA8B00FFC2A200FFC2A200FDC0
      A000FEBE9D00FCBB9800FBB79300FBB28D00F8AC8400F7A77D00F5A17600F49C
      7000F4996A00F3956500CE693600000000000000000000000000ECBA90000000
      0000000000000000000000000000FFFEFD00FFF9F500FFF8F200B2807400B280
      7400B2807400B2807400000000000000000000000000E4967600FEBC9C00E190
      6E000000000000000000DAC8BA00FFFFFF00C3B4AB00C2B2A800BFACA100FFFF
      FF00BFAC9F00D6C8BD00654B370000000000EAAA8B00EAAA8B00E8A68600E6A0
      7F00E39A7600E0936D00DD8C6300DA845900D77C4F00D4744500D06E3D00D06E
      3D00D06E3D00D06E3D00CF69370000000000EAAA8B00EAAA8B00E8A68600E6A0
      7F00E39A7600E0936D00DD8C6300DA845900D77C4F00D4744500D06E3D00D06E
      3D00D06E3D00D06E3D00CF693700000000000000000000000000F1BE93000000
      000000000000000000000000000000000000FFFEFD00FFF9F500B2807400F0CE
      9D00DAB19A0000000000000000000000000000000000E69B7B00E79F81000000
      00000000000000000000D9C4B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C1AC9E00664C380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5C29500DCA9
      8700DCA98700DCA98700DCA98700DCA98700DCA98700DCA98700B2807400E2B8
      9E000000000000000000000000000000000000000000E79F8100000000000000
      00000000000000000000D9C3B300D8C3B300D8C3B300D8C2B300D8C2B200D4BE
      AE00C9B3A4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094A5E7004A6BDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3E1D700F4E3D900F4E3DA00F3E2D800F3E1D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3E1D700F4E3D900F4E3DA00F3E2D800F3E1D700000000000000
      000000000000000000000000000000000000ADBDEF00395ADE0094A5E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A73DE000029D600395ADE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4E3
      D800F8FAFB00E4E2E200CFB1A200D4AB9600DDC6BB00ECF1F000F6F3F200F2E1
      D60000000000000000000000000000000000000000000000000000000000F4E3
      D800F8FAFB00E4E2E200CFB1A200D4AB9600DDC6BB00ECF1F000F6F3F200F2E1
      D60000000000000000000000000000000000395ADE000029D6000029D6005A73
      DE00000000000000000000000000000000000000000000000000DEE7EF004A6B
      DE000029D600395ADE0000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5EAE200F4FF
      FF00CF9A8000B74C1500B9643C00D9AF9A00C0582300B9562400D5AF9F00F7FF
      FF00F4E2D9000000000000000000000000000000000000000000F5EAE200F4FF
      FF00CF9A8000B74C1500B9643C00D9AF9A00C0582300B9562400D5AF9F00F7FF
      FF00F4E2D900000000000000000000000000BDCEEF000839DE000029DE000029
      DE005A73E70000000000000000000000000000000000CEDEEF002952DE000029
      DE005A73E7000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FF000000FF000000000000000000
      00000000000000000000000000000000000000000000F2E1D700F8FFFF00C77D
      5800BB450C00C64E1300C2A49500FFFFFF00D9926F00C14A0F00B8450B00CE9A
      8000F8FFFF00F2E0D600000000000000000000000000F2E1D700F8FFFF00C77D
      5800BB450C00C64E1300C2A49500FFFFFF00D9926F00C14A0F00B8450B00CE9A
      8000F8FFFF00F2E0D600000000000000000000000000DEE7F700395AE7000029
      DE000029DE004A6BE700DEE7F70000000000BDCEEF001039DE000029DE005A73
      E700000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000FAFAF900D8A89000BD48
      0D00CD622E00CD602900CB6B3A00D88E6800CA5E2900CC622D00C95D2900B947
      1000E0C9BD00F6EDE800000000000000000000000000FAFAF900D8A89000BD48
      0D00CD622E00CD602900CB6B3A00D88E6800CA5E2900CC622D00C95D2900B947
      1000E0C9BD00F6EDE80000000000000000000000000000000000000000007394
      EF000029E7000029E7002952E700849CEF001039E7000029E7005A73EF000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF00000000000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000F3E0D700F8FAFB00C5623200CA5C
      2600CE673300CB5B2300CA896900F7E7DF00D06B3800CA5A2300CD653100C353
      1B00C7785000F8FCFD000000000000000000F3E0D700F8FAFB00C5623200CA5C
      2600CE673300CB5B2300CA896900F7E7DF00D06B3800CA5A2300CD653100C353
      1B00C7785000F8FCFD0000000000000000000000000000000000000000000000
      0000BDCEEF001842E7000029E7000029E7000029E7005A7BEF00000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF00000000000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000F3E1D800F2DED600C5561E00CE66
      3200CC653100CC5A2100C2866900FFFFFF00E8AD9100C44A0F00CC622D00CB5F
      2800C35E2B00F3F2F100F2DFD60000000000F3E1D800F2DED600C5561E00CE66
      3200CC653100CC5A2100C2866900FFFFFF00E8AD9100C44A0F00CC622D00CB5F
      2800C35E2B00F3F2F100F2DFD600000000000000000000000000000000000000
      0000EFF7F7005A7BEF000031EF000031EF000031EF00BDCEF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E1D900F3D8CA00CD5B2200CF66
      3200CC642F00CC602B00C4551F00CFB5A800FFFFFF00E09C7A00C7531A00CD60
      2B00C65E2900F5F1ED00F0DED50000000000F2E1D900F3D8CA00CD5B2200CF66
      3200CC642F00CC602B00C4551F00CFB5A800FFFFFF00E09C7A00C7531A00CD60
      2B00C65E2900F5F1ED00F0DED50000000000000000000000000000000000DEE7
      F7002952EF000031EF000031EF005A7BEF000031F7001039F700BDCEF7000000
      0000000000000000000000000000000000000000000000000000840000008400
      000084000000840000008400000000000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000F1E0D700FBEDE600DB6A3200D368
      3300CA5E2800C9582100C9541900C14B1000E2D0C600FFFFFF00D0703F00CD5A
      2000CE6A3800FCFBFB00EFDDD30000000000F1E0D700FBEDE600DB6A3200D368
      3300CA5E2800C9582100C9541900C14B1000E2D0C600FFFFFF00D0703F00CD5A
      2000CE6A3800FCFBFB00EFDDD300000000000000000000000000BDCEF700184A
      F7000031F7000031F70094ADF70000000000BDCEF7002952F7001039F700A5B5
      F700000000000000000000000000000000000000000000000000000000008400
      000084000000840000008400000000000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000F1DED400FFFFFF00F5986A00E266
      2A00C88B6D00F0EAE300D77E5100BD300000D79C7E00FFFFFF00DA8C6500D153
      1400E29A7600FEFDFE000000000000000000F1DED400FFFFFF00F5986A00E266
      2A00C88B6D00F0EAE300D77E5100BD300000D79C7E00FFFFFF00DA8C6500D153
      1400E29A7600FEFDFE00000000000000000000000000B5C6F7001039F7000031
      F7000031F70094ADF700000000000000000000000000DEE7F7005A7BF7000031
      FF0094ADF7000000000000000000000000000000000000000000000000000000
      000084000000840000008400000000000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000F6F1EF00FFEADB00FF8A
      4900DE875C00EEFFFF00FEFCFD00E7B9A100FAFFFF00F3F9FE00E0723C00E670
      3500FFF3EE00F4E7E000000000000000000000000000F6F1EF00FFEADB00FF8A
      4900DE875C00EEFFFF00FEFCFD00E7B9A100FAFFFF00F3F9FE00E0723C00E670
      3500FFF3EE00F4E7E000000000000000000094ADF7000031FF000031FF001039
      FF0094ADF70000000000000000000000000000000000000000000000000094AD
      F7002952FF000000000000000000000000000000000000000000000000000000
      000000000000840000008400000000000000FF000000FF000000000000000000
      00000000000000000000000000000000000000000000F1DED400FFFFFF00FFE9
      CE00FFB27000ECAF8700ECE2DF00EBF0F400F1E4E000F6A47800FE8C4D00FFDE
      CA00FDFFFF00F0DDD200000000000000000000000000F1DED400FFFFFF00FFE9
      CE00FFB27000ECAF8700ECE2DF00EBF0F400F1E4E000F6A47800FE8C4D00FFDE
      CA00FDFFFF00F0DDD20000000000000000001042FF000031FF001039FF00BDCE
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008400000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0DFD600FFFF
      FF00FFFFFB00FFF3C600FEDDA800FCCF9800FFC99100FFD4A900FFFEF800FCFF
      FF00F1DFD4000000000000000000000000000000000000000000F0DFD600FFFF
      FF00FFFFFB00FFF3C600FEDDA800FCCF9800FFC99100FFD4A900FFFEF800FCFF
      FF00F1DFD4000000000000000000000000007394FF003963FF00BDCEF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1DC
      D300F5E8E400FDFCFD00FFFFFF00FFFFFF00FFFFFF00FCFBFD00F3E6E000F1DD
      D20000000000000000000000000000000000000000000000000000000000F1DC
      D300F5E8E400FDFCFD00FFFFFF00FFFFFF00FFFFFF00FCFBFD00F3E6E000F1DD
      D200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1DCD100EFDBD000EFDBD100EFDCD100F1DBD000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1DCD100EFDBD000EFDBD100EFDCD100F1DBD000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0887000604830006048
      3000604830006048300060483000604830006048300060483000604830006048
      3000604830006048300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0704000B0583000B0583000A0502000A05020009048
      2000904820009040200080402000000000000000000000000000A08870006048
      3000604830006048300060483000604830006048300060483000604830006048
      30006048300060483000604830000000000000000000B0908000FFF8FF00FFF8
      F000FFF8F000FFF0F000FFF0F000FFE8E000F0E8E000F0E0D000F0E0D000F0D8
      D000F0D8C00060483000000000000000000000000000A0887000604830006048
      3000604830006048300060483000604830006048300060483000604830006048
      3000604830006048300000000000000000000000000000000000000000000000
      00000000000000000000C0785000FFF8F000D0B0A000D0B0A000D0B0A000C0B0
      A000C0A8A000C0A8900090402000000000000000000000000000B0908000FFF8
      FF00FFF8F000FFF8F000FFF0F000FFF0F000FFE8E000F0E8E000F0E0D000F0E0
      D000F0D8D000F0D8C000604830000000000000000000B0989000FFFFFF00FFF8
      FF00FFF8F000FFF8F000FFF0F000FFF0E000FFE8E000F0E8E000F0E0D000F0D8
      D000F0D8D00060483000000000000000000000000000B0908000FFF8FF00FFF8
      F000FFF8F000FFF0F000FFF0F000E0906000F0E8E000F0E0D000F0E0D000F0D8
      D000F0D8C0006048300000000000000000000000000000000000000000000000
      00000000000000000000D0886000FFFFFF00E0906000D0805000D0805000D080
      5000D0805000C0A8A00090482000000000000000000000000000B0989000FFFF
      FF00FFF8FF00FFF8F000FFF8F000FFF0F000FFF0E000FFE8E000F0E8E000F0E0
      D000F0D8D000F0D8D000604830000000000000000000C0A09000FFFFFF00FFFF
      FF00FFF8F000FFF8F000FFF0F000FFF0F000FFE8E000F0E8E000F0E0E000F0E0
      D000F0D8D00060483000000000000000000000000000B0989000FFFFFF00FFF8
      FF00FFF8F000FFF8F000FFF0F000E0906000FFE8E000F0E8E000F0E0D000F0D8
      D000F0D8D000604830000000000000000000B0A0900060483000604830006048
      30006048300060483000D0907000FFFFFF00FFFFFF00FFF0F000F0E0D000F0D0
      C000F0C0B000C0B0A00090482000000000000000000000000000C0A09000FFFF
      FF00FFFFFF00FFF8F000FFF8F000FFF0F000FFF0F000FFE8E000F0E8E000F0E0
      E000F0E0D000F0D8D000604830000000000000000000F0A89000F0A89000F0A8
      8000F0A08000E0987000E0906000E0885000E0805000E0784000E0704000E070
      4000E0704000E0704000000000000000000000000000C0A09000FFFFFF00FFFF
      FF00FFF8F000FFF8F000FFF0F000E0906000FFE8E000F0E8E000F0E0E000F0E0
      D000F0D8D000604830000000000000000000B0A09000FFF0F000F0E0D000E0D8
      D000E0D0C000E0C8C000E0A08000FFFFFF00F0A88000E0987000E0906000D080
      5000D0805000D0B0A000A0482000000000000000000000000000F0A89000F0A8
      9000F0A88000F0A08000E0987000E0906000E0885000E0805000E0784000E070
      4000E0704000E0704000E07040000000000000000000F0A89000FFFFFF00FFC0
      A000FFB89000FFB89000FFB09000FFA88000FFA88000F0A07000F0A07000F098
      7000F0986000E0704000000000000000000000000000B0989000FFFFFF00FFF8
      FF00FFF8F000FFF8F000FFF0F000E0906000FFE8E000F0E8E000F0E0D000F0E0
      D000F0D8D000604830000000000000000000B0A09000FFF8F000E0B08000E0A0
      7000E0A07000D0987000E0A89000FFFFFF00FFFFFF00FFFFFF00FFF8F000F0E8
      E000F0D0C000D0B0A000A05020000000000000000000A0887000F0A89000FFFF
      FF00FFC0A000FFB89000FFB89000FFB09000FFA88000FFA88000F0A07000F0A0
      7000F0987000F0986000E07040000000000000000000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0704000000000000000000000000000B0989000FFFFFF00FFF8
      FF00FFF8F000FFF8F000FFF0F000E0906000FFE8E000F0E8E000F0E0D000F0E0
      D000F0D8D000604830000000000000000000C0A89000FFFFFF00FFF8F000F0F0
      F000F0E8E000F0E0D000E0B8A000FFFFFF00FFB09000FFB09000F0D8D000E090
      6000B0583000B0583000A05020000000000000000000B0908000F0A89000F0A8
      9000F0A89000F0A88000F0A08000F0987000E0987000E0906000E0886000E080
      5000E0784000E0784000E07040000000000000000000A0887000604830006048
      3000604830006048300060483000604830006048300060483000604830006048
      30006048300060483000000000000000000000000000B0989000FFF8FF00FFF8
      FF00FFF8F000FFF8F000FFF0F000E0906000FFE8E000F0E8E000F0E0D000F0E0
      D000F0D8D000604830000000000000000000C0A8A000FFFFFF00FFC8A000F0B8
      9000E0B08000E0A07000F0C0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F098
      7000F0C8B000B0583000DCA583000000000000000000B0989000FFFFFF00FFF8
      FF00FFF8F000FFF8F000FFF0F000FFF0E000FFE8E000F0E8E000F0E0D000F0D8
      D000F0D8D00060483000000000000000000000000000B0908000FFF8FF00FFF8
      F000FFF8F000FFF0F000FFF0F000FFE8E000F0E8E000F0E0D000F0E0D000F0D8
      D000F0D8C00060483000000000000000000000000000B0989000FFFFFF00FFF8
      FF00FFF8F000FFF8F000FFF0F000E0906000FFE8E000F0E8E000F0E0D000F0D8
      D000F0D8D000604830000000000000000000C0B0A000FFFFFF00FFFFFF00FFF8
      FF00FFF0F000F0E8E000F0C8B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0A8
      8000C0683000E3AC8800000000000000000000000000C0A09000FFFFFF00FFFF
      FF00FFF8F000FFF8F000FFF0F000FFF0F000FFE8E000F0E8E000F0E0E000F0E0
      D000F0D8D00060483000000000000000000000000000B0989000FFFFFF00FFF8
      FF00FFF8F000FFF8F000FFF0F000FFF0E000FFE8E000F0E8E000F0E0D000F0D8
      D000F0D8D00060483000000000000000000000000000C0A09000FFFFFF00FFFF
      FF00FFF8F000FFF8F000FFF0F000E0906000FFE8E000F0E8E000F0E0E000F0E0
      D000F0D8D000604830000000000000000000D0B8B000FFFFFF00FFD8C000FFD0
      B000F0E0D000B0A09000F0C8B000F0C0B000F0C0B000F0B8A000F0B09000F0B0
      9000ECBA980000000000000000000000000000000000F0A89000F0A89000F0A8
      8000F0A08000E0987000E0906000E0885000E0805000E0784000E0704000E070
      4000E0704000E0704000000000000000000000000000C0A09000FFFFFF00FFFF
      FF00FFF8F000FFF8F000FFF0F000FFF0F000FFE8E000F0E8E000F0E0E000F0E0
      D000F0D8D00060483000000000000000000000000000F0A89000F0A89000F0A8
      8000F0A08000E0987000E0906000E0885000E0805000E0784000E0704000E070
      4000E0704000E07040000000000000000000D0C0B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0A89000D0C8C00090706000DCC0A80000000000000000000000
      00000000000000000000000000000000000000000000F0A89000FFFFFF00FFC0
      A000FFB89000FFB89000FFB09000FFA88000FFA88000F0A07000F0A07000F098
      7000F0986000E0704000000000000000000000000000F0A89000F0A89000F0A8
      8000F0A08000E0987000E0906000E0885000E0805000E0784000E0704000E070
      4000E0704000E0704000000000000000000000000000F0A89000FFFFFF00FFC0
      A000FFB89000FFB89000FFB09000FFA88000FFA88000F0A07000F0A07000F098
      7000F0986000E07040000000000000000000E0C0B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0B0A000A0806000DEC4AD000000000000000000000000000000
      00000000000000000000000000000000000000000000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0704000000000000000000000000000F0A89000FFFFFF00FFC0
      A000FFB89000FFB89000FFB09000FFA88000FFA88000F0A07000F0A07000F098
      7000F0986000E0704000000000000000000000000000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E07040000000000000000000E0C0B000E0C0B000D0C0B000D0C0
      B000D0B8B000D0B0A000E3C9B700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E070400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECC09F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B005A5A5A006A6A
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000082828200626262000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F8F8F0073758900A48289004643
      4300636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3B3B300E0E0E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769CB6004088DF007376A800A681
      8700454242006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A1A1A100C2C2C200CECECE000000000000000000000000000000
      000075B3D30065CCE00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093BAD60052B8FF004385D9007979
      A700A68187004542420064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00ACACAC00AAAAAA000000000000000000000000000000
      0000B6DFED0050B8FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000083B6DD0053B9FF004385
      D9007979A700A68187004A474700737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090482000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4D4D4009494940082828200000000000000000000000000579F
      C50047B3F70079DFF40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000072B2E40053B8
      FE004483D6007979A7008E74790052525200656565005C5C5C00525252005050
      50005B5B5B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0502000A05030000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000868686008C8C8C006B6B6B00000000000000000092B8D1007ED5
      FB003298E2003573950000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000074B3
      E40053B8FE00588CCF007D7D8000816B6B00B8958100CEB09600E0C7AE00CFB2
      A100796360004646460000000000000000000000000000000000D08060009048
      2000A0482000A0502000A0502000A0502000A0502000B0583000C0684000A050
      3000000000000000000000000000000000000000000000000000D3D3D300B3B3
      B300A0A0A000ABABAB008B88850055585900BABABA00000000003685B8006EC8
      F00065CBF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084B7DD00ACB2B700AB8B8800F1CFA900FFF5C500FFFDD100FFFFDB00FFFF
      DC00F5EFE0009379740046464600000000000000000000000000D0886000FFB0
      9000F0906000F0885000F0885000F0885000F0885000E0805000D0785000C070
      4000A058300000000000000000000000000000000000D7D7D700BEBEBE00A9A9
      A90075757500B6B0AD0049B6F70053BDFF00375B770049A2CF0044AAFF001C82
      C200327CAB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00B09D9D00EFC9A600FFF2C000FFF7C400FFFFD800FFFFE800FFFF
      F800FFFFFF00F3EDDA006A5151005E5E5E000000000000000000E0907000FFB8
      9000FFA88000FFA07000FFA07000F0986000F0906000F0906000E0885000E078
      5000C0704000B0583000000000000000000000000000AEAEAE00B8B8B800CECE
      CE00FFFFFF0089B1D40078DDFF004BB1FF0099FFFF006BD1FD003096F0004FB5
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00C7A49B00FFF1C200FFE4B100FFF9C600FFFFDB00FFFFEC00FFFF
      FB00FFFFF700FFFFDA00B2998600525252000000000000000000E0987000FFC0
      A000FFC0A000FFB8A000FFB89000FFB09000FFB08000FFA88000FFA07000E080
      5000B058300000000000000000000000000000000000B9B9B900B5B5B500B6B6
      B600E1DCD80061CCFB0047ADFF004FB5FF009CFEFF0073D9FF00157BBC002F81
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00E5BDA300FFF5C900FFDDAA00FFF5C200FFFFD600FFFFE500FFFF
      EC00FFFFE700FFFFD900CCB29900525252000000000000000000F0A07000E098
      7000E0907000D0886000D0886000D0886000D0886000E0907000F0987000B058
      30000000000000000000000000000000000000000000CBCBCB00B9B9B9009192
      9400A5C6E30092F8FF002E94FF00467FA70037738D00A4EEFF00349DFF0043A6
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00E5BFA600FFF5C900FFE6B900FFEFBC00FFFFCD00FFFFD700FFFF
      DB00FFFFD800FFFCD100CCAC93005E5E5E000000000000000000000000000000
      00000000000000000000000000000000000000000000E0987000C07850000000
      0000000000000000000000000000000000000000000000000000C1C1C1009F99
      940078CAFF00EAF9FF002E96FF004894CA00BC9C9B00415D6A00A1D0F80058BE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCADA300FFF6CD00FFF2D700FFE3B900FFF1BF00FFF5C200FFF9
      C700FFF7C400FFF6C600B5927F007B7B7B000000000000000000000000000000
      00000000000000000000000000000000000000000000F0A07000000000000000
      00000000000000000000000000000000000000000000A3A3A200EAEAEA00F8F9
      F900DBD7D30077BBF900F0FFFF006BC4FF008BEBF000D09E9C00218EEC004EB4
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0ACAC00EFDAC200FFFFFF00FFF7EA00FFECBF00FFDFAC00FFE3
      B000FFF0BD00F3D2A800856B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBC39A0056565600ABAB
      AB0094949400C0BEBB00A3C5E700BCF9FF008EBEBF00C195920039A4FF003984
      C200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEA19F00F1E5DD00FFFBE800FFF8CD00FFEEBC00FFF3
      C600F5CFA400AC867C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F9D9C00E8CBAD005E5E
      5D00616161006C6C6C00626262006F6D6F00CFABAB0095D2CD0040A5FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6A0A000C7A79400CEA88E00E0B89E00D5AC
      9900B29996000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFD0D0009A95
      9000C4C0BA00CDCBCC00A9A2A2008F8E8E00ECECEC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C382D0070292C00531B
      2C00481339000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A0063493500634935006349
      3500634935006349350063493500634935006349350063493500634935006349
      3500634935006349350063493500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AA4A0800DEA07700E6B1
      8A00C37B4F0099512A00612B2200451436004C0A4C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A00FAF5F200E9D9CF00E8D4
      C900E4CFC200E1C9BC00DFC3B500DBBDAD00D9B7A600D5B19F00D3AB9800D0A6
      9200CC9E8700CA9A830063493500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD4E0E00E5BB9C00FFF4
      D800FFE7C600FFDBB200F1B78900CA804D009E54280051252D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A00FBF3EE00878583008785
      830087858300F7E6DD00878583008785830087858300F2DCCF00878583008785
      830087858300CDA18B0063493500000000000000000000000000000000000000
      0000000000000000000090482000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B4551400E8C1A600FFEC
      D400FFE3C400F2DCBF00FFE1BD00FFD18600FBAD5D0075371E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      000000000000000000000000000000000000BEA99A00FCF5F000FBF2ED00FAEF
      E900F9ECE500F7E9E000F6E5DC00F2DCCF00F2DCCF00F2DCCF00F2DCCF00F2DC
      CF00E3CBBF00CC9E870063493500000000000000000000000000000000000000
      000000000000A0503000A0502000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B85C1B00EDCDB600FFF3
      DB00CCD7CC004EAECA00FADBB100FFC25B00F5B6790066312700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A00FDF6F20092908F008785
      830071706D00F7E9E000878583008785830087858300F2DCCF00878583008785
      830087858300D9B8A70063493500000000000000000000000000000000000000
      0000A0503000C0684000B0583000A0502000A0502000A0502000A0502000A048
      200090482000D0806000000000000000000000000000BD611F00F6D9C500D8E7
      DF004DB0CD003DACD100BABDA70091917500D49A6200813C1A0056034F007A00
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A00FDF8F400FDF5F100FBF2
      EE00FBF0EA00F9EDE600F8EAE100F7E7DD00F5E2D900F4DFD400F2DCCF00F0D8
      CB00EFD5C700DCC0B1006349350000000000000000000000000000000000A058
      3000C0704000D0785000E0805000F0885000F0885000F0885000F0885000F090
      6000FFB09000D0886000000000000000000000000000C3672500F8E5D70073C4
      DC00BCD7D600A7D0D40077BACA00A89B8200EAB68000FAC99300C8774600952D
      3B00740A62007800780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A00FDF9F500878583008785
      830087858300FAEFE800878583008785830087858300F8ECE500878583008785
      830087858300E3CBBF0063493500000000000000000000000000B0583000C070
      4000E0785000E0885000F0906000F0906000F0986000FFA07000FFA07000FFA8
      8000FFB89000E0907000000000000000000000000000C76D2C00F6EAE300F7F6
      EE00FFF6E400D7E2D90074BFD100FFEBCA00E2AA7600C6844F00F3C69600F8C6
      9200BC8A69005B2A83006C067E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A00FEF9F600FEF8F500FDF6
      F200FCF3EF00FBF1EB00F8ECE500F8ECE500F8ECE500F8ECE500F8ECE500F8EC
      E500F8ECE500E9D7CF006349350000000000000000000000000000000000B058
      3000E0805000FFA07000FFA88000FFB08000FFB09000FFB89000FFB8A000FFC0
      A000FFC0A000E0987000000000000000000000000000CE773800F9F2F000FFFD
      F700FFF6EB00FCF2E30095CAD400F6EEDD00EAB8910067241800000000000000
      0000000000003059D1004B0DB100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A00FEF9F60092908F008785
      830071706D00FBF1EB00878583008785830087858300FBF1EB00878583008785
      830087858300EEE2DA0063493500000000000000000000000000000000000000
      0000B0583000F0987000E0907000D0886000D0886000D0886000D0886000E090
      7000E0987000F0A07000000000000000000000000000CF7C4200FCFBFB00FFFF
      FF00FFF8F200FFF9EC00A8D3DC00CCE2E000F4BD930057252800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A00FEF9F600FEF9F600FEF8
      F600FDF6F300FCF5F000FBF2ED00F8ECE500F8ECE500F8ECE500F8ECE500F8EC
      E500F8ECE500F8ECE50063493500000000000000000000000000000000000000
      000000000000C0785000E0987000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF7E4700FAF8FA00FFFF
      FF00FFFFFF00FFFFFE00D4EAEC00C3E5E800F0B68A0057252700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAAA8B00EAAA8B00E8A68600E59F
      7D00E2987400E0936C00DD8C6200DA835A00D77D5000D4774700D1704000D16E
      3E00D16E3D00D16E3D00CF693600000000000000000000000000000000000000
      00000000000000000000F0A07000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA641000C3713B00D194
      6800DCB39700E8CEC100F7E9E000FFFEFB00E9BA930059242900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAAA8B00FFC2A200FFC2A200FDC0
      A000FEBE9D00FCBB9800FBB79300FBB28D00F8AC8400F7A77D00F5A17600F49C
      7000F4996A00F3956500CE693600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4892E00D1670600CA5B
      0000C4530000BF510000C05D1000C87B4800CC7839005F283100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAAA8B00EAAA8B00E8A68600E6A0
      7F00E39A7600E0936D00DD8C6300DA845900D77C4F00D4744500D06E3D00D06E
      3D00D06E3D00D06E3D00CF693700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B482
      6D00BD8A5700CB8D4500D2833000D7731000D66B040071294D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5897200AF7B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00FCB2
      9E00FFDEBC00CE8F7500DA8C7200FBAD8C00B87C6500AB7A6900000000000000
      00000000000000000000000000000000000016419E0016419E002C586F008484
      84004273990016419E0084848400000000000000000000000000000000000000
      00006A635F00000000000000000000000000D58855008C503600EEB88A000000
      00008C5036008C503600B1654D00000000000000000000000000000000000000
      00006A635F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00F2AF
      9C00FFD1B200D5A59200FFBE9E00D59A8300BB766000FCB09000D78E7400D680
      6200E5CBC10000000000000000000000000000000000A4A4A40016419E00A4A4
      A40000000000000000008484840000000000000000000000000000000000BF8B
      840002020200BF8B8400000000000000000000000000B1654D00DFD1BC000000
      0000EEB88A008C503600DFD1BC0000000000000000000000000000000000BF8B
      840002020200BF8B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00F7B5
      A200FFD0AF00E8C1AC00E8CDB100D6A28E00FFFFFA00D29C8400EAB5A000E69F
      8100EDCDC1000000000000000000000000000000000000000000848484001641
      9E00000000000000000000000000000000000000000000000000000000003F3F
      3F000202020036363600000000000000000000000000D5885500B1654D00BF8B
      84008C503600B1654D0000000000000000000000000000000000000000003F3F
      3F00020202003636360000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00FAB9
      A800FFDAB900C2846C00C37A6400FFE2BB00A0736000FFD8B700E2C2A900E9BF
      A200EBCABD000000000000000000000000000000000000000000000000004273
      9900427399000000000000000000000000000000000000000000A4A4A4000202
      02000202020002020200BF8B84000000000000000000DFD1BC00B1654D00DFD1
      BC008C503600EEB88A0000000000000000000000000000000000A4A4A4000202
      02000202020002020200BF8B8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00FBBF
      B000FFD1B200DAB09E00FFDFBF00B8837000EBA38900E0A38700C8867100DE95
      7800ECD0C3000000000000000000000000000000000000000000000000009797
      9700102F9500A4A4A400000000000000000000000000000000006A635F00BF8B
      840002020200BF8B84006C554C00000000000000000000000000D5885500B165
      4D008C50360000000000000000000000000000000000000000006A635F00BF8B
      840002020200BF8B84006C554C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00FCC1
      B100FFD7B500E6C1AA00E3C7AA00F3C0AA00FFFAE100E1B49A00F6C7B000E6B3
      9800E9CABE00000000000000000000000000000000008F8F8F00000000000000
      0000427399002C586F0000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000E99A7A00B165
      4D00BF8B84000000000000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00FFC8
      B900FFDCBC00BC806B00CA826B00FFD4B100A46B5800FFD5B100DBB59600FFD1
      A000F5D9CC0000000000000000000000000000000000979797008F8F8F00A4A4
      A4008F8F8F007E7E7E00A4A4A400000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000FDE3B000D774
      4500FDE3B0000000000000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00FFCC
      C100FFDABA00D6AF9F00FFEECD00C6958400FFD2B600EFAC8900286AD1004775
      B900FFE8CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5BDB600FFD4
      C900FFD7B700F0CEB600DCB9A100FCD2B800DCC7B100F7C19B0063AAE90078A2
      EB00FCD2B800000000000000000000000000D58855008C503600EEB88A000000
      00008C5036008C503600B1654D00000000000000000000000000000000000000
      00000202020000000000000000000000000016419E0016419E002C586F008484
      84004273990016419E0084848400000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7C0B800FFDA
      D000FFDFC000F1BF9F00E1AE9300EABFA100FFDFC000FFEAC700D4CFC000D6CE
      C400EDC9B60000000000000000000000000000000000B1654D00DFD1BC000000
      0000EEB88A008C503600DFD1BC00000000000000000000000000000000000000
      00000202020000000000000000000000000000000000A4A4A40016419E00A4A4
      A400000000000000000084848400000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9C0B900FFE0
      DA00F6CBAE00E89E7800FFBF9000FCB28900E1A27F00DDA08100E9AA8900F4BF
      9B00E8CFC20000000000000000000000000000000000D5885500B1654D00BF8B
      84008C503600B1654D0000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000848484001641
      9E00000000000000000000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DAC0B800FFE6
      E300F5CDAD00EE844E00FF965600FF975B00FF9F6500FFA56C00FFA97200F099
      6C00DABEB10000000000000000000000000000000000DFD1BC00B1654D00DFD1
      BC008C503600EEB88A0000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000004273
      9900427399000000000000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4B6AC00FFE4
      E300FFE3C400E0A08000E18A5F00E2875C00DE7C4E00D87D5500F6844D00DC7D
      4F00D9B7A5000000000000000000000000000000000000000000D5885500B165
      4D008C5036000000000000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000009797
      9700102F9500A4A4A40000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DABDB400FFFF
      FF00FFFBE000FFFFDE00FFFFE400FFFEE000FFFFE300FFF8DA00F3D1B700FFE0
      C400F6DAC6000000000000000000000000000000000000000000E99A7A00B165
      4D00BF8B84000000000000000000000000000000000000000000000000000000
      000002020200000000000000000000000000000000008F8F8F00000000000000
      0000427399002C586F0000000000000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAD8
      CB00EFDFD100E8D2C100E5CCB700E6CAAD00D5B39200EFD6AE00F8E3BA00FFFD
      CB00D7B8A1000000000000000000000000000000000000000000FDE3B000D774
      4500FDE3B0000000000000000000000000000000000000000000000000000000
      00000202020000000000000000000000000000000000979797008F8F8F00A4A4
      A4008F8F8F007E7E7E00A4A4A400000000000000000000000000000000000000
      0000020202000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000CBCBCB008B8B8B0086868600A7A7A7009393930083838300B9B9
      B900E4E4E400F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3787500A378
      7500A3787500A3787500A3787500A3787500A3787500A3787500A3787500A378
      7500A37875008859570000000000000000000000000000000000F8F8F800DEDE
      DE00949494005F5F5F004444440042424200544E4E00817A7A004E4E4E005555
      550073737300AEAEAE00E0E0E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A7B800A3787500F5D7
      CE00FFDACE00FFD8C900FFD6C700FFD5C400FFD3C100FFD2BE00FFD0BA00FFD1
      AE00FFCEAA008A5B5A00000000000000000000000000F8F8F800BABABA006363
      6300A5A5A500F1F1F100B2B2B2009E8B8B00A6868600B6B3B300E5E5E500B4B4
      B40057575700505050007A7A7A00E9E9E9000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084008400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004982D2008B80A300E3C7
      BF00FFE8D200FFE6CE00FFE3C600FFDFBF00FFDDBB00FFD9B400FFD7AF00FFD4
      A900FFD2A4008E5F5D00000000000000000000000000B7B7B7009A9A9A00EEEE
      EE00F1F1F100E8E8E800ACACAC00939393005F5F5F006D6D6D008C8C8C00BCBC
      BC00E9E9E900B1B1B10071717100ECECEC000000000000000000840084008400
      8400840084008400840084008400840084008400840084008400840084008400
      8400000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000078C9FE004A81CF008B80
      A300E6C9C000FFE8D200FFE6CE00FFE3C600FFDFBF00FFDDBB00FFD9B400FFD7
      B000FFD4A90091636100000000000000000000000000CBCBCB00FAFAFA00F2F2
      F200D8D8D800959595007E7E7E0097979700B2B2B200A6A6A600949494008E8E
      8E0089898900646464007A7A7A00EDEDED000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084008400C6C6
      C6000000000000000000000000000000000000000000000000000084840000FF
      FF000084840000FFFF000084840000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000F6FDFF006CB3E4004D7C
      C7009181A200FAE6D500F2D8C500EECEBB00F8D9C000FFDFBF00FFDDBA00FFD9
      B400FFD7B00095676500000000000000000000000000B5B5B500D8D8D800A0A0
      A0009B9B9B00C9C9C900ABABAB008D8D8D0080808000838383009F9F9F00BFBF
      BF007AAA8A00575757007C7C7C00EDEDED000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084008400C6C6
      C60000000000000000000000000000000000000000000000000000FFFF000084
      840000FFFF000084840000FFFF00008484000000000000848400000000000000
      0000000000000000000000000000000000000000000000000000C18E7A0078C1
      F400818DA700D4AA9400D7AB8D00D3A28400D9AF9300DCB49E00FFDFBF00FFDD
      BB00FFD9B400996C690000000000000000000000000076767600A6A6A600D9D9
      D900D8D8D800D8D8D800D8D8D800E0E0E000CFCFCF00BEBEBE009D9D9D008989
      8900678471005656560082828200EDEDED000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084008400C6C6
      C6000000000000000000000000000000000000000000848484000000000000FF
      FF000084840000FFFF000084840000FFFF000000000000848400008484000000
      0000000000000000000000000000000000000000000000000000C18E7A00FFF8
      F200DCB4A000E2BC9800F2E0B500FDFBDE00F2E3D500E0BFAA00D7AF9800FFE0
      C000FFDDBB009C716D000000000000000000000000009E9E9E00E1E1E100D8D8
      D800D2D2D200C9C9C900D5D5D500CECECE00C2C2C200C0C0C000CCCCCC00D4D4
      D400CCCCCC0070707000A5A5A500F3F3F3000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084008400C6C6
      C6000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000008484000084
      8400000000000000000000000000000000000000000000000000C9967F00FFF9
      F500D9AD9000F2D3A700FFF9C900FFFFE400FFFFF600F2E3C700D5AA8E00FFE3
      C600FFDFBF00A0757200000000000000000000000000AEAEAE00D5D5D500C2C2
      C200AAAAAA00A5A5A500CFCFCF00F0F0F000EDEDED00EAEAEA00D9D9D900BFBF
      BF00BEBEBE0088888800E4E4E400000000000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084008400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000084
      8400008484000000000000000000000000000000000000000000D19E8100FFFE
      FD00D2A18300FDE5B600FFFAC700FFFFD800FFFFDF00FDFAD300D19F8200EFDB
      D000FFE3C600A47A7500000000000000000000000000F5F5F500C6C6C600C9C9
      C900ECECEC00B2B2B200BABABA00AEAEAE00B6B6B600BDBDBD00BDBDBD00B3B3
      B300A7A7A700E9E9E90000000000000000000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084008400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000008484000084840000848400000000000000000000000000D8A686000000
      0000D9AD9000F2DDC800FFE3BC00FFF7C400FFF2C000F2DFB200D5A68A00DFD1
      D800FFE6CE00A67D78000000000000000000000000000000000000000000C3BB
      BB00FFD4C500FFD2C700FBD7CE00EFDCD500E5E1DF00E7E7E70085858500BFBF
      BF00F6F6F6000000000000000000000000000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084008400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000084840000000000000000000000000000000000E0AD89000000
      0000E2C4B700DFBCA800F2E0CB00FDECBC00F2DBAE00DCAF8D00DFBCAA00FFE3
      D200FFDAC900AA7F7B000000000000000000000000000000000000000000D5BF
      B800FFDCB800FFDCB800FFDCB800FFD6B300FFD4AF0079626000BCBCBC00F8F8
      F800000000000000000000000000000000000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084008400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF000084840000000000000000000000000000000000E7B38D000000
      000000000000E2C6B900D6AB9000D2A08300D9AC9100E2C2B100F3DCCB00F3BC
      B100F2A29C00AB817D0000000000000000000000000000000000FEFEFE00CAAA
      A100FFE5CB00FFE5CB00FFE5CB00FFE5CB00F9DDC40073666600E3E3E3000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00C6C6C60000000000000000000000000000000000ECBA90000000
      0000000000000000000000000000FFFEFD00FFF9F500FFF8F200B2807400B280
      7400B2807400B280740000000000000000000000000000000000ECE9E900DFC3
      B700FFEDDC00FFEDDC00FFEDDC00FFEDDC00DAC1B50092929200F0F0F0000000
      0000000000000000000000000000000000000000000000000000840084008400
      8400840084008400840084008400840084008400840000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000008484840084848400000000000000000000000000F1BE93000000
      000000000000000000000000000000000000FFFEFD00FFF9F500B2807400F0CE
      9D00DAB19A0000000000000000000000000000000000FEFEFE00CDB9B800FFF7
      EE00FFF7EE00FFF7EE00FFF7EE00FFF7EE00B0A19C00CECECE00FCFCFC000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C60084008400C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5C29500DCA9
      8700DCA98700DCA98700DCA98700DCA98700DCA98700DCA98700B2807400E2B8
      9E000000000000000000000000000000000000000000F8F5F500D8C5C400F5F1
      F000E6D8D700E6D8D700E6D8D700EADFDE00DFD8D800FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008ACAD0004699A8002C6B
      740028656D0028656D0028656D0028656D0037707600648E9500AABBBB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080685000203040002030400020304000203040002030
      4000203040002030400020304000203040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000000000000000000000000000000000000000000039ADC0005ECC
      DF003CB6CE0039ADC000358997002C7C89001B8196001C7283000A5A69003770
      760093B1B5000000000000000000000000000000000060809000506070004050
      6000304050002030400090706000F0E0D000B0A09000B0A09000B0A09000B0A0
      9000B0A09000B0A09000B0A09000203040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00000000000000000000000000000000000000000000000000A7DAE1004AC2
      D60080E2F10069DEEB0057D9ED003CB6CE002C7C89001992AF001992AF001C72
      83000A5A6900648E950000000000000000007080900020B8F0000090D0000090
      D0000090D0000090D00090786000F0E8E000F0D8D000E0D0C000E0C8C000D0C0
      B000D0B8B000D0B8B000B0A09000203040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400ADAD
      AD000000000000000000000000000000000000000000000000000000000039C4
      D40057C9DA0085EAF6007BECF50064E0F0003CB6CE002C7C89001992AF001992
      AF00168AA30013657400648E9500000000007088900070C8F00010B8F00010B0
      F00000A8E0000098D000A0807000F0F0F000C0B0A000C0B0A000C0A8A000B0A0
      9000D0C0B000B0A09000B0A09000203040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000949494000000
      0000000000000000000000000000000000000000000000000000000000008EDB
      E30033BDD600A1F5FB0090EFF8007BECF50064E0F0003399A5001B8196002C7C
      89002C7C89002C6B74000A5A690093B1B5008088900070D0F00030C0F00010B8
      F00000A8F00000A0E000A0888000FFF8FF00F0F0F000F0E8E000F0D8D000E0D0
      C000705850006050400050484000404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033BDD6009FEDF300A1F5FB008CF5FC0076EBF90062CFDC004699A8003CB6
      CE0043C6DF002FADC70028656D004D8087008090A00080D8F00040C8F00030C0
      F00010B8F00000A0E000B0908000FFFFFF00C0B0A000C0B0A000C0A8A000F0E0
      D00080605000D0C8C00060504000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00C6C6C6000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000077B1B3008B4425008B442500BDAB9A0084F1F90073EBF50062E3F10051D7
      EA004CD2EB0043C6DF0039ADC000377076008098A00090E0F00060D8F00050C8
      F00030C0F00010B0F000B0989000FFFFFF00FFFFFF00FFF8FF00F0F0F000F0E8
      E000806850008060500000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484000000000000FFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000000000000000000000000000000000000000B07860008D5036000000
      000000000000AC420E00AC420E008B44250092F5FE007EEEF9006CE9F70062E3
      F10057D9ED0051D7EA0043C6DF003E7981008098A000A0E8F00080E0F00070D8
      F00050D0F00010B0F000B0A09000B0989000B0908000A0888000A08070009078
      6000907060000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00C6C6
      C600000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000000000000000000000000000D08D7300DB622600AC420E007A29
      00007A2900007A290000AC420E007A2900008ACAD00077B1B30089F2F90073EB
      F50062E3F1005ADCEF0052D3E4003E79810090A0A000B0F0FF00A0E8FF0090E0
      F00070D0F00010A0D00010A0D00010A0D0001098D0000090D0000090D0000090
      D000303840000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848484000000000000FF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      000000000000000000000000000000000000CD735C00F5A07300DB622600AC42
      0E00ECB29D00BB715000DB6226007A290000383E44004D4B480090EFF80089F2
      F90073EBF50067E3F3005FD6E7003E79810090A0B000B0F0FF00A0F0FF006080
      9000607080005070800050687000506870005060700040587000207090000090
      D000404860000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C6000000000084848400000000000000000000000000000000000000
      00000000000000000000000000000000000084848400ADADAD00000000000000
      000000000000000000000000000000000000EABDA800FBD6C700F5A07300BB71
      5000D08D7300F6C8B500ECB29D00AC420E00CAFEFF00B4F7FC00A2F9FF009BF3
      FC0089F2F9007BECF50069DEEB003770760090A8B000B0F0FF00B0F0FF006088
      900090C8D00090E8F00080D8E00060C8E0005098B000405860002080A0000090
      D000505870000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000FFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      00000000000000000000000000000000000000000000F6C8B500D08D73000000
      000000000000E7845300BB715000E5CEC000D9FAFC00D1FAFD00CAFEFF00BDF8
      FC00A1F5FB0089F2F90069DEEB003770760090A8B000B0F0F000B0F0FF00A0F0
      F0007098A000A0F0F0006F7E800080C8D000507080003060800060C0F00020B8
      F000506070000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000848484000000000000000000000000000000
      0000000000000000000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000045CBCC00C7EEF200D5F6F900D9FAFC00D1FAFD00D1FAFD00BDF8
      FC00B4F7FC00A1F5FB0070E8F700377076000000000090A8B00090A8B00090A8
      B0006090A000A0E8F000A0E8F00090D8E0004068700070889000808890007088
      9000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000840000008400000000000000000000000000000000000000
      00000000000084848400ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000050CFCE0045CBCC0045CBCC0039C4D40039C4D4002BB5CD002BB5
      CD0020B0CC0020B0CC002BB5CD004D8087000000000000000000000000000000
      00000000000080B0C00080B0C00080A0B0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00DEDEDE00C6C6C60094949400C6C6
      C600000000000000000000000000000000000000000071717100717171007171
      71006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D0000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000001818
      1800000000000000000000000000000000006D6D6D00B1654D008C5036008C50
      36008C5036008C5036006C554C006A635F00717171006D6D6D006D6D6D006D6D
      6D006D6D6D0071717100717171006D6D6D00000000000000000000000000FF00
      0000FF000000FF0000000000000000000000C6C6C60000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00E7E7E700CECECE00E7E7E700FFFFFF00F7F7F700A5A5
      A500DEDEDE00000000008484840000000000E0664200DC513100F9635000FD72
      5C00F1684E00D7744500F1684E00D24C270035593800355938002F982D004890
      37002F982D0025662500355938006D6D6D000000000000000000000000000000
      00000000000000000000FFFFFF00C6C6C600FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00DEDEDE0094949400A5A5A500ADADAD00FFFFFF00FFFFFF00FFFF
      FF0084848400CECECE000000000000000000D5885500F9635000FD7C6400FC8B
      6D00D5885500FFCF9C00F36D5300FD6A5700917930004DB34D006AA9660063CA
      630052C252003CB73C00239023006D6D6D000000000000000000000000000000
      000000000000FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00E7E7E700A5A5A5009C9C9C009C9C9C00CECECE00E7E7E700FFFFFF00FFFF
      FF00F7F7F7009C9C9C0000000000848484007F4C6E00E0664200FD846900EB80
      5900FFCF9C00FFCF9C00EF765600FD6B580080AB670080B38000FFEFDF004DB3
      4D0075D275004FC14F00489037006D6D6D000000000000000000000000000000
      00000000000000000000FFFFFF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00F7F7F70018181800ADADAD00E7E7E700F7F7F700E7E7E700FFFFFF00FFFF
      FF00FFFFFF00DEDEDE00DEDEDE00000000007F4C6E007F4C6E00B1654D004C21
      4F002E3457007F4C6E00B1654D00917930007CD77C008FE08F00FFF7E800BFD9
      AC005BC55B0044A6440000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000E7E7E700E7E7E700F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEDEDE00DEDEDE00000000007F4C6E001717170005070E000D29
      6800143AA000102F9500081D6C00545454006AA96600427399001579BA00247D
      B600377D57004D4D4D0000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000084000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF0008080800FFFFFF00E7E7E70084848400FFFF
      FF0084848400FFFFFF00ADADAD00000000003F3F3F001A1A1A00102C5B001A4D
      B3001C56BC001B51B700102F950054545400699AAE002C92F1003399FF003399
      FF002C92F1002C586F0084848400000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008400000084000000FF0000008400000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000C6C6C600FFFFFF0008080800FFFFFF00CECECE0000000000F7F7
      F70000000000C6C6C600C6C6C6000000000012121200282828000F2D93002774
      DA002671D7002671D7001E5AC0005A6064003F95C30040A6FF0040A6FF0040A6
      FF003DA2FF002385C6006D6D6D00000000000000000000000000000000000000
      00000000000000000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00000084000000FF000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000FFFFFF000000000084848400FFFFFF00DEDEDE0000000000F7F7
      F70000000000C6C6C600E7E7E700000000002C2C2C00363636002C586F003191
      F9003399FF003694F700246AD0005A606400479FD0004BB1FF004BB1FF004DB3
      FF0049AFFF002D92E60066666600000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00C6C6C600FFFFFF00FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000000000000000000000FF000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000C6C6C600FFFFFF0084848400C6C6C600FFFF
      FF0000000000C6C6C600FFFFFF00000000006D6D6D004A4A4A003F3F3F004646
      4600143FA4002060C600135F88007E7E7E0057A9D7004DB3F2004DB3F20055BB
      FF0051B7FF0043A8ED006D6D6D00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6C6C600FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000084848400FFFFFF0084848400C6C6C600FFFFFF000000
      0000C6C6C600FFFFFF0000000000000000000000000038383800666666008F8F
      8F00A4A4A4004D4D4D00464646000000000063ABD200247DB60057A9D70063AB
      D200479FD0001372A200699AAE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000084848400FFFFFF00FFFFFF0000000000FFFFFF0000000000C6C6
      C600FFFFFF0000000000000000000000000000000000000000006D6D6D00605E
      5E00605E5E00666666000000000000000000000000003A8BB70084C0E400A3D0
      EA00479FD000699AAE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000084848400FFFFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A8BB7003A8B
      B7003A8BB7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007088900060809000607880005070
      8000506070004058600040485000303840002030300020203000101820001010
      10001010200000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60084848400848484008484840084848400C6C6C600C6C6C6000000
      0000000000000000000000000000000000007088900090A0B00070B0D0000090
      D0000090D0000090D0000090C0001088C0001080B0001080B0002078A0002070
      9000204860000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600844A4A009C4A
      4A009C424200B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5009C31
      31009C3131009C4A4A009C4A4A0000000000000000000000000000000000C6C6
      C600C6C6C60084848400C6C6C60084848400848484008484840084848400C6C6
      C600C6C6C6000000000000000000000000008088900080C0D00090A8B00080E0
      FF0060D0FF0050C8FF0050C8FF0040C0F00030B0F00030A8F00020A0E0001090
      D000206880006059560000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD847300CE636300CE63
      63009C4A4A00AD9C9C00C6737300DEB5B500FFFFFF00F7F7F700E7E7E7009C31
      31009C313100CE6363009C4A4A00000000000000000000000000C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484008484
      8400C6C6C600C6C6C60000000000000000008090A00080D0F00090A8B00090C0
      D00070D8FF0060D0FF0060D0FF0050C8FF0050C0FF0040B8F00030B0F00030A8
      F0001088D0002048600000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000BD847300CE636300CE63
      63009C4A4A00CEB5B500B5525200BD8C8C00DEDEDE00FFFFFF00F7F7F7009C31
      31009C313100CE6363009C4A4A00000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00848484000000000000000000C6C6C600FFFFFF00C6C6
      C60000000000C6C6C600C6C6C600000000008090A00080D8F00080C8E00090A8
      B00080E0FF0070D0FF0060D8FF0060D0FF0060D0FF0050C8FF0040C0F00040B8
      F00030B0F00020688000717D7E00000000000000000000000000000000000000
      000000000000FFFFFF0084848400FFFFFF0000FFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000BD847300CE636300CE63
      63009C4A4A00E7C6C600AD424200AD737300B5B5B500DEDEDE00FFFFFF009C31
      31009C313100CE6363009C4A4A000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C60000000000C6C6C600000000008098A00090E0F00090E0FF0090A8
      B00090B8C00070D8FF0060D8FF0060D8FF0060D8FF0060D0FF0050D0FF0050C8
      FF0040B8F00030A0E0004A657300000000000000000000000000000000000000
      0000FFFFFF0084848400FFFFFF00C6C6C6008484840000FFFF00FFFFFF000000
      00000000000000000000000000000000000000000000BD847300CE636300CE63
      63009C4A4A00DECECE00CE949400CEB5B500ADADAD00B5B5B500D6CECE009C31
      31009C313100CE6363009C4A4A000000000000000000FFFFFF00FFFFFF00FFFF
      FF0084848400000000000000000000000000000000000000000000000000FFFF
      FF00C6C6C6000000000000000000000000008098A00090E0F000A0E8FF0080C8
      E00090A8B00080E0FF0080E0FF0080E0FF0080E0FF0080E0FF0080E0FF0080E0
      FF0070D8FF0070D8FF0050A8D0008A838100000000000000000000000000FFFF
      FF0084848400FFFFFF00C6C6C6008484840000FFFF00FFFFFF0000FFFF008484
      84000000000000000000000000000000000000000000BD847300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE6363009C4A4A000000000000000000C6C6C600FFFFFF00FFFF
      FF00848484008484840084848400000000000000000000000000000000008484
      84008484840000000000000000000000000090A0A000A0E8F000A0E8FF00A0E8
      FF0090B0C00090B0C00090A8B00090A8B00080A0B00080A0B0008098A0008098
      A0008090A0008090A00080889000708890000000000000000000FFFFFF008484
      8400FFFFFF00C6C6C6008484840000FFFF00FFFFFF0000FFFF0084848400C6C6
      C600C6C6C60000000000000000000000000000000000BD847300CE636300CE63
      6300BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C
      8C00CE636300CE6363009C4A4A0000000000000000000000000084000000C6C6
      C6008484840084848400C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000090A0B000A0E8F000A0F0FF00A0E8
      FF00A0E8FF0080D8FF0060D8FF0060D8FF0060D8FF0060D8FF0060D8FF0060D8
      FF0070889000000000000000000000000000000000000000000000000000FFFF
      FF00C6C6C6008484840000FFFF00FFFFFF0000FFFF0084848400C6C6C600C6C6
      C600C6C6C60000000000000000000000000000000000BD847300CE636300BD8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BD8C8C00CE6363009C4A4A000000000000000000C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000C6C6C6000000000090A0B000A0F0F000B0F0F000A0F0
      FF00A0E8FF00A0E8FF0070D8FF0090A0A0008098A0008098A0008090A0008090
      9000708890000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF0084848400C6C6C600C6C6C600C6C6
      C6000000000000000000000000000000000000000000BD847300CE636300BD8C
      8C00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00BD8C8C00CE6363009C4A4A000000000000000000C6C6C600FFFFFF008484
      8400C6C6C6000000000000000000000000008484840000000000848484000000
      0000C6C6C600C6C6C600000000000000000090A8B000A0D0E000B0F0F000B0F0
      F000A0F0FF00A0E8FF0090A0B000000000000000000000000000000000000000
      0000000000009068500090685000906850000000000000000000000000000000
      0000000000000000000000FFFF0084848400C6C6C600C6C6C600C6C6C6008484
      84008400000000000000000000000000000000000000BD847300CE636300BD8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BD8C8C00CE6363009C4A4A00000000000000000000000000C6C6C600C6C6
      C6008484840084848400C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000090A8B00090A8B00090A8
      B00090A8B00090A8B00000000000000000000000000000000000000000000000
      0000000000000000000090685000906850000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600000000008400
      00008400000084000000000000000000000000000000BD847300CE636300BD8C
      8C00FFFFFF00BDBDBD00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00BD8C8C00CE6363009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090786000000000000000
      000000000000A090800000000000907860000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000084000000840000000000000000000000BD847300CE636300BD8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BD8C8C00CE6363009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0908000A088
      8000B09880000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000840000000000000000000000BD8473009C4A4A00BD8C
      8C00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600BD8C8C009C4A4A00D6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000086E8C00086B86000865
      800005627D00055C7700035A720004586C0006516500024D640004495D000345
      590002415500023E5200023E5200034256000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E9CC70078D1FA0078D1FA0078D1
      FA0073CDFA006CC8FA0064C2F9005BBCF90052B5F90048ADF8003FA7F80037A1
      F700309CF7002B98F7002B98F700034256000000000000000000000000000000
      00000000000000000000D0806000D0886000E0907000E0987000F0A070000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B05830000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000219FCA0078D1FA001E8FB60078D1
      FA001C90B40073CDFA00198BAC0064C2F9001183A70052B5F9000E799B003FA7
      F8000B6F8D00309CF700309CF700044C60000000000000000000000000000000
      0000000000000000000090482000FFB09000FFB89000FFC0A000E09870000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0583000C0704000A058300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0885000D07850000000
      000000000000000000000000000000000000219FCA00219FCA001E8FB600219F
      CA001C90B4001E9CC400198BAC001A95BA001183A700158AAF000E799B000C81
      A6000B6F8D000975960009759600076D8E000000000000000000000000000000
      00000000000000000000A0482000F0906000FFA88000FFC0A000E09070000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0583000E0805000E0785000C0704000A0503000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8B08E00F0885000D27D
      5500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFD6CE00FEFDFC00F3EAE400EFE5E000EADFD800E4D9
      D100DCD0C800D4C6BC00CBBBB100826D5C000000000000000000000000000000
      00000000000000000000A0502000F0885000FFA07000FFB8A000D08860000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0785000F0987000FFA07000E0885000D0785000C0684000A05030000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C97B5600F088
      50000000000000000000000000000000000000000000D46C4000D46C4000D46C
      4000CC673B00C25F3400B5562C00A74D24009A441C00903C1500934017008A38
      1100B1938400C0A99D00C7B3A600705845000000000000000000000000000000
      00000000000000000000A0502000F0885000FFA07000FFB89000D08860000000
      000000000000000000000000000000000000000000000000000000000000F0A0
      7000E0987000E0907000FFA88000F0906000E0805000B0583000A05020009048
      2000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E078
      4000F090600000000000000000000000000000000000D46C4000F8A37900F17F
      4900EC763D00E7723A00E26F3700DE6C3500DE723E00EB8A5B00D7754B00F4E7
      DF00F0E6DD00E9DCD100C5AFA2006A503C000000000000000000000000000000
      00000000000000000000A0502000F0885000F0986000FFB09000D08860000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0886000FFB08000F0906000F0885000A0502000000000000000
      0000000000000000000000000000000000000000000000000000E0784000D070
      4000C0684000B0603000B058300090503000000000000000000000000000C068
      4000F088500000000000000000000000000000000000D5704500FCAE88008837
      100096411900AA4F2600BE5D3200E6784300EE8D5E00DF906E00D2B9AA00B497
      8900B1938400C4AFA500CAB5A500654B38000000000000000000000000000000
      00000000000000000000A0502000F0885000F0906000FFB08000D08860000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0886000FFB09000F0986000F0885000A0502000000000000000
      0000000000000000000000000000000000000000000000000000E0805000E070
      3000F0805000F09870000000000000000000000000000000000000000000C068
      4000E184550000000000000000000000000000000000D7754B00FEB895009F47
      1E0000000000CB6D4400F07F4800F3906000D7754B00FEF4EF00FCFBFA00FAF6
      F300F5EFEA00EFE7DF00D2BCAC00654B37000000000000000000000000000000
      000090482000A0502000B0583000E0805000F0906000FFA88000E0907000E098
      7000F0A070000000000000000000000000000000000000000000000000000000
      000000000000D0886000FFB89000FFA07000F0885000A0502000000000000000
      0000000000000000000000000000000000000000000000000000E0906000F080
      5000F0906000F0A07000B1775F0000000000000000000000000000000000C068
      4000E17C460000000000000000000000000000000000DA7B5300FFBFA000BD5C
      3200D0724A00F98B5600F9956400D7754B00D2B9AA00BBA59800B69C8E00B497
      8900B1938400C7B6AD00D8C2B200664D39000000000000000000000000000000
      000000000000A0503000C0684000D0785000E0885000FFA07000F0987000C078
      5000000000000000000000000000000000000000000000000000000000000000
      000000000000D0886000FFB8A000FFA07000F0885000A0502000000000000000
      0000000000000000000000000000000000000000000000000000E0987000F098
      7000F0A07000F0946600B0604000B0604000000000000000000000000000A45E
      3700E17C460000000000000000000000000000000000DC825C00FFC4A700D46C
      4000FFA47700FD9F7100D7754B00FEF4EF00FFFFFF00FFFFFF00FFFFFF00FFFE
      FE00FCFBFB00F8F4F200DCC6B600654B37000000000000000000000000000000
      00000000000000000000A0503000C0704000E0785000E0805000B05830000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0907000FFC0A000FFA88000F0906000A0482000000000000000
      0000000000000000000000000000000000000000000000000000F0A880000000
      000000000000F0B09000E0906000C0704000C0684000C17D5300B87B4E00A060
      4000F088500000000000000000000000000000000000DF896500FFC4A700FFB6
      9300FEAE8700D7754B00E5D0C400FFFFFF00C0AFA600BFACA100BBA59800BAA5
      9800FEFEFE00D0BEB200C7B0A200664C38000000000000000000000000000000
      0000000000000000000000000000A0583000C0704000B0583000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0987000FFC0A000FFB89000FFB0900090482000000000000000
      0000000000000000000000000000000000000000000000000000F0A890000000
      00000000000000000000F0B09000F0946600D0704000B0684000B4663800E17D
      46000000000000000000000000000000000000000000E1906E00FFC4A700FEB6
      9200DF84540000000000DECFC300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C7B7AB00755E4C0069503D00664C38000000000000000000000000000000
      000000000000000000000000000000000000B058300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0A07000E0987000E0907000D0886000D0806000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0B09000F1B59600F0AD8700F0AD86000000
      00000000000000000000000000000000000000000000E4967600FEBC9C00E190
      6E000000000000000000DAC8BA00FFFFFF00C3B4AB00C2B2A800BFACA100FFFF
      FF00BFAC9F00D6C8BD00654B3700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E69B7B00E79F81000000
      00000000000000000000D9C4B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C1AC9E00664C380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E79F8100000000000000
      00000000000000000000D9C3B300D8C3B300D8C3B300D8C2B300D8C2B200D4BE
      AE00C9B3A4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007474740074747400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003FBA5A00355B35005E5E5E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A67B7600A3787500A378
      7500A3787500A3787500A3787500A3787500A3787500A3787500A3787500AF7D
      7300000000000000000000000000000000008484840000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C60084000000840000008400
      000084000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000044CD670053E27C002F5832006161
      6100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A97E7800FFD4C200FFD8
      CB00FFD7C900FFD4C200FFD4C100FFD4C100FFD4C200FFCFB900FFCCB300AF7D
      73000000000000000000000000000000000084848400FFFFFF00000000000000
      000000000000C6C6C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000007C7C
      7C000000000000000000000000000000000034B7510062FB950046CF6900344D
      34005E5E5E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD817900FFD4C200FFD4
      C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFC2BA00AF7D
      73000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60084848400FFFFFF00C6C6C60084000000840000008400
      000084000000FFFFFF0000000000000000000000000000000000118721003B64
      3E0059595900000000000000000082A8820047D670005CF58F0062FB95002479
      2C005E5E5E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2857B00FFD4C200FFD4
      C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFC2BA00AF7D
      73000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000001A9933002BBA
      5400205C230000000000787E78002B963D0052EB850057F08A005CF58F0030B0
      4A00595959000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B78A7E00FFE5CA00FFD4
      C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFD4C200FFC2BA00AF7D
      73000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60084848400FFFFFF00C6C6C60084000000840000008400
      000084000000FFFFFF000000000000000000000000000000000017972E0033CC
      65002BBA54001C5F1F001A77240042D872004CE57F0051EA840057F08A002DAC
      4600676767000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2948100FFE8D100FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      73000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000C6C6C600FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000159429002DC6
      5A0033CC65002BBA540033C6600041DA740046DF79004CE57F0051EA84002AA1
      4100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2948100FFECD900FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      73000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60084848400FFFFFF00C6C6C60084848400C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000000000001291240027C0
      4E002DC65A0033CC650035CE68003AD36D0041DA740046DF790047DD77002F72
      3200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2948100FFE8D100FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      73000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000FFFFFF0084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C600C6C6C6000000000000000000000000000F8E1D0021BA
      430027C04E002DC65A0033CC650035CE68003AD36D0040D9730023993A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2948100FFECD900FFE8
      D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFE8D100FFC2BA00AF7D
      73000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C60084848400000000008484840084848400FFFFFF00FFFFFF000000
      00000000000000000000C6C6C6000000000000000000000000000B8B17001BB4
      370021BA420027C04D002CC5580032CB630035CE680028B14B003B4E3B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C99A8300FFF1E200FFF1
      E200FFF1E200FFF1E200FFF1E200FFF1E200FFF1E200FFF1E200FFC2BA00AF7D
      7300000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00C6C6C60084848400000000000000000084848400FFFFFF00C6C6C6000000
      0000C6C6C600FFFFFF00C6C6C60000000000000000000000000008870F0015AE
      29001AB3350020B9400026BF4C002CC5570032CB630031C76100236B2C005252
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9E8500FFF5EB00FFF3
      E700FFFCF900FFF8F000FFF3E700FFF3E700FFF0E100FFE1D200FFC2BA00AF7D
      7300000000000000000000000000000000000000000000000000848484008484
      84008484840000000000000000000000000084848400FFFFFF00FFFFFF000000
      0000FFFFFF00C6C6C600FFFFFF0000000000000000000000000005850A000FA8
      1D0015AE29001AB3350020B9400026BF4C002CC5570032CB630031C660002870
      30005E5E5E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4A48700FFF9F400FFF3
      E700FFF3E700FFFCF900FFF8F000FFF8F000FFF3E700B2807400B2807400B280
      7400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000000282050009A2
      12000FA81D0015AE29001AB3350020B9400026BF4C002CC5570032CB630031C6
      6000478F50000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9A98A00FFFDFA00FFF3
      E700FFF3E700FFF3E700FFFCF900FFFCF900FFF8F000B2807400DDA98100F6ED
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      840084848400848484000000000000000000000000000000000008870F007AAD
      7A0079AC790079AC790079AC790079AC790079AC790079AC790079AC790079AC
      790079AC79000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFAE8C00DCA98700DCA9
      8700DCA98700DCA98700DCA98700DCA98700DCA98700B2807400F8EFE9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D6843006942390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D88B
      6700B060400090503000644C3400000000000000000068413800684128000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E080
      500000000000DFB197008050300000000000CA8A6500B0604000604030003B2A
      2800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E088
      500000000000000000009050300000000000D078500000000000C89C83007040
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8A4
      7700E0885000B068400090503000B17C6000D078500000000000DBAA8A009050
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0946600E1855700A56048009D614200C3764700D0785000C06840000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3A38100E0805000DD987600D0785000D27D5600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000087766600706050008068500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090807000807060007060500083746700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2B9AD00A0989000B6AA9E009080700068575600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C3B2B100A0909000000000000000000070605000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B098900000000000000000000000000080706000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0989000000000000000000000000000C0B0B000C8AD96000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9AFA50000000000000000000000000000000000AF9E91000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF00C6C6C600FFFFFF0000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000000000008484840000000000BEA99A0063493500634935006349
      3500634935006349350063493500634935006349350063493500634935006349
      350063493500634935006349350000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000000000000000000000000000BEA99A00FAF5F200E9D9CF00E8D4
      C900E4CFC200E1C9BC00DFC3B500DBBDAD00D9B7A600D5B19F00D3AB9800D0A6
      9200CC9E8700CA9A83006349350000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00000000008484840000000000C6C6C600C6C6C600C6C6C6000000
      00008484840000000000FFFFFF00000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484000000000000000000BEA99A00FBF3EE00FAF0EB00F9ED
      E700F8E9E100F7E6DD00F5E3D8008C8987005F5C5A0047444200474442004744
      4200302E2C00CDA18B006349350000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000000000000000000000000000BEA99A00FCF5F000FBF2ED00FAEF
      E900F9ECE500F7E9E000F6E5DC00A29E9B00FDF8F500FCF2EB00FCF1EB00FCF2
      EA00413D3B00D5B19F006349350000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000008400
      000000000000C6C6C600FFFFFF00C6C6C600FFFFFF0000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000084848400000000000000000000000000BEA99A00FDF6F20092908F008785
      830071706D005F5C5A00F7E8DF00BAB7B400999694008C898700827E7D007875
      730055524F00D9B8A7006349350000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      000000000000000000000000000000000000BEA99A00FDF8F400FDF5F100FBF2
      EE00FBF0EA00F9EDE600F8EAE100F7E7DD00F5E2D900F4DFD400F2DCCF00F0D8
      CB00EFD5C700DCC0B1006349350000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000008484840084000000FF000000FF00
      0000FF00000000840000008400000084000000840000FF000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      840000000000000000000000000000000000BEA99A00FDF9F500FDF6F300FCF5
      F000FBF2EC00FAEFE800F8ECE5008C8987005F5C5A0047444200474442004744
      4200302E2C00E3CBBF006349350000000000000000000000000000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF00000000000000000084848400FF000000FF000000FF00
      0000FF0000000084000000840000008400000084000084840000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      000000000000000000000000000000000000BEA99A00FEF9F600FEF8F500FDF6
      F200FCF3EF00FBF1EB00FAEEE700A29E9B00FDF8F500FCF2EB00FCF1EB00FCF2
      EA00413D3B00E9D7CF00634935000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF0000000000000000000000000084848400FF000000FF0000000084
      00000084000000840000008400000084000000840000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      000000000000000000000000000000000000BEA99A00FEF9F60092908F008785
      830071706D005F5C5A00FBF0EA00BAB7B400999694008C898700827E7D007875
      730055524F00EEE2DA0063493500000000000000000000000000000000000000
      000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF000000000000000000000000000000000084848400FF000000008400000084
      0000008400000084000000840000840000008484000084000000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99A00FEF9F600FEF9F600FEF8
      F600FDF6F300FCF5F000FBF2ED00FAEFE900F9ECE500F7E9E000F6E5DC00F5E2
      D700F3DFD300FFFFFF0063493500000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000FFFF000000
      00000000000000000000000000000000000084848400FF000000C6C6C6000084
      000000840000840000000084000000840000FF00000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      000000000000000000000000000000000000EAAA8B00EAAA8B00E8A68600E59F
      7D00E2987400E0936C00DD8C6200DA835A00D77D5000D4774700D1704000D16E
      3E00D16E3D00D16E3D00CF693600000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000FFFF00000000000000
      8400000000000000000000000000000000008484840084848400FF000000FFFF
      FF00C6C6C600FF000000FF000000FF000000FF00000000840000008400008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAAA8B00FFC2A200FFC2A200FDC0
      A000FEBE9D00FCBB9800FBB79300FBB28D00F8AC8400F7A77D00F5A17600F49C
      7000F4996A00F3956500CE693600000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      8400000000000000000000000000000000000000000084848400FFFFFF00C6C6
      C600FFFFFF000084000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840000000000000000000000
      000000000000000000000000000000000000EAAA8B00EAAA8B00E8A68600E6A0
      7F00E39A7600E0936D00DD8C6300DA845900D77C4F00D4744500D06E3D00D06E
      3D00D06E3D00D06E3D00CF693700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000000000000000000000000000000000000000000000000848484008484
      840084840000C6C6C60000840000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840000000000000000000000
      000000000000000000000000000000000000000000007B7B7B005A5A5A006A6A
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F8F8F0073758900A48289004643
      4300636363000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBA5960063493500634935006349
      3500664D38006349350063493500634935006349350063493500634935006349
      3500634935006349350063493500634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7A2930063493500634935006349
      3500634935006349350063493500634935006349350000000000000000000000
      000000000000000000000000000000000000769CB6004088DF007376A800A681
      8700454242006363630000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBA59600D8B7A100C59D8100B28B
      6F00D8B7A100C9A78F00B68D7100D8B7A100C59D8100B28B6F00D8B7A100C59D
      8100B28B6F00D2A98C00BE987B00634935000000000000000000000000000000
      0000000000006666660066666600666666006666660066666600666666000000
      000000000000000000000000000000000000B7A29300FCFBFA00EAE0D800EADF
      D700E6D9D100E0D2C800DACABE00D6C4B8006349350000000000000000000000
      00000000000000000000000000000000000093BAD60052B8FF004385D9007979
      A700A68187004542420064646400000000000000000000000000000000000000
      000000000000000000000000000000000000C0AB9C00FFFEFE00FFFEFE00C29A
      7D00FDFAF800FDF8F500C29A7D00FBF2EC00FBF1EA00BF967900FAE9DD00FBEA
      E000C29A7D00FAE0CF00D4BDAE00634935000000000000000000000000006666
      66006666660066666600515F8B00154BFF00BF857600154BFF00666666006666
      660000000000000000000000000000000000B7A29300FCFBFA00EBB69A00E3B2
      9700DBAC9300D4A79000CCA28E00D6C4B8006349350063493500634935006349
      3500634935006349350063493500634935000000000083B6DD0053B9FF004385
      D9007979A700A68187004A474700737373000000000000000000000000000000
      000000000000000000000000000000000000C0AB9C00FFFEFE00FFFEFE00CFA5
      8700FFFCFB00FEF9F800CDA38500FDF4EF00FBF1EA00CDA38500FBEAE000FAE9
      DD00CDA38500F9E1D200D4BDAE00634935000000000000000000628FC300154B
      FF00154BFF00154BFF003684FF00EEBF9E00BF857600C4B0B5003684FF00154B
      FF0066666600666666000000000000000000BBA69700FEFEFD00FCFBFA00F9F5
      F300F5EEEA00EEE5DF00E9DDD500D6C4B80063493500E1C9BB00DDC1B200DABA
      A900D6B2A000D2AA9700CFA48F0063493500000000000000000072B2E40053B8
      FE004483D6007979A7008E74790052525200656565005C5C5C00525252005050
      50005B5B5B00000000000000000000000000C0AB9C00D5AF9600C29A7D00B28B
      6F00CDA38500BF967900B28B6F00CDA38500BF9679000940EB000535D3000535
      D300022BB800CDA38500BF9679006349350000000000000000003784FF00DBBE
      A900FFDCAF00FDE0B800FEECC800FDEBD500DD9F7400FFE1B900F8F1EA007BA7
      FF0062719000666666006666660000000000C1AB9C00FDFDFC00EAB79A00E3B2
      9700DBAD9300D3A79000CCA28D00D6C4B80063493500F4E9E200F1E2D900EEDA
      D000EAD3C700E7CDBF00D2AA97006349350000000000000000000000000074B3
      E40053B8FE00588CCF007D7D8000816B6B00B8958100CEB09600E0C7AE00CFB2
      A10079636000464646000000000000000000C8B3A400FFFEFE00FFFEFE00BF96
      7900FFFEFE00FFFEFE00BF967900FDFAF800FEF7F40000000000FEF7F400FDF4
      EF000535D300FAE6DB00D0C2B50063493500000000005A8DCA004081F000FFDF
      B900FADDBA00FDEECF00FEF5E600ECC2A800F8C99700FFE2C100FFF7EF00FFFF
      FF007BA6FF007FB3FF006666660066666600C7B2A300FDFCFB00FDFCFC00FEFD
      FD00FDFBF900F2EBE700D8D5D300D7C6BA0063493500C2B3A800F6ECE500F1E2
      D900EEDAD000EAD3C700D6B2A000634935000000000000000000000000000000
      000084B7DD00ACB2B700AB8B8800F1CFA900FFF5C500FFFDD100FFFFDB00FFFF
      DC00F5EFE000937974004646460000000000C8B3A400FFFEFE00FFFEFE00CDA3
      8500FFFEFE00FFFEFE00CDA38500FFFCFB00FDFAF8004F78F600FFFCFB00FEF7
      F4000535D300FBEAE000D0C2B5006349350000000000429CF900429CF900FFEC
      D300FFEEDB00FFFBF600FFFEFD00DD9F7400FEDBAF00FFECD700FFF8F100FFFD
      FC00FFFFFF004D9CFF0058669C0066666600CFB9A900FCFBFA00EAB79900E4B2
      9700DCAC9400B7A29300644A3600644A3600644A3600D1C3BB00D5CBC300F4EA
      E500F1E2D900EEDAD000DABAA900634935000000000000000000000000000000
      0000BFBFBF00B09D9D00EFC9A600FFF2C000FFF7C400FFFFD800FFFFE800FFFF
      F800FFFFFF00F3EDDA006A5151005E5E5E00C8B3A400D5AF9600C29A7D00B28B
      6F00CDA38500BF967900B28B6F00CDA38500BF9679007193FB004F78F6000000
      00000940EB00CDA38500C29A7D0063493500000000003F92FA00F8E0C800FFF2
      E200FFFBF600FFFEFE00F2DCCC00F5C89900FFE9CC00FFFBF700FFFEFE00FFFF
      FF00EDF5FF002F91FF008096AE0066666600D4BEAF00FCFBFA00FCFBFA00FCFB
      FA00FDFCFB00BBA69600D4C5BA00644A3600E2DDD900FDFBFA00FCF9F700F8F1
      EC001F47D70025409E00DDC1B200634935000000000000000000000000000000
      0000BFBFBF00C7A49B00FFF1C200FFE4B100FFF9C600FFFFDB00FFFFEC00FFFF
      FB00FFFFF700FFFFDA00B299860052525200C8B3A400FFFEFE00FFFEFE00BF96
      7900FFFEFE00FFFEFE00BF967900FFFEFE00FFFEFE00BF967900FDFAF800FEF7
      F400BF967900FBF2EC00E0D8D200664D3800669FD200429CF900FFF8F200FFFA
      F500FFF9F400FDF9F600DD9F7400FEDCAF00FFF3E300FFFDFC00FFFFFF00FFFF
      FF008CC3FF005AACFF006666660000000000D8C2B200FCFBFA00FCFBFA00FCFB
      FA00FCFBFA00C7B1A200644A3600E2DDD900FFFFFF00FFFFFF00FDFBFA00FBF6
      F3003C5EF6001F47D700E1C9BB00634935000000000000000000000000000000
      0000BFBFBF00E5BDA300FFF5C900FFDDAA00FFF5C200FFFFD600FFFFE500FFFF
      EC00FFFFE700FFFFD900CCB2990052525200C8B3A400FFFEFE00FFFEFE00CDA3
      8500FFFEFE00FFFEFE00CDA38500FFFEFE00FFFEFE00CDA38500FFFCFB00FDFA
      F800CDA38500FDF4EF00FBF2EC0063493500429CF900E1C9B500FFF3E700FFF3
      E800FFFCF900F3EAE500EEC8A500FFE8C900FFF4E800FFFAF500FFFFFF00F9FC
      FF00399DFF008F84B8006666660000000000D8C2B200D8C2B200D4BFAE00D4BF
      AE00CEB8A900C8B2A300E9E2DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFB
      FA00FBF6F300F8F0EB00F4E9E200634935000000000000000000000000000000
      0000BFBFBF00E5BFA600FFF5C900FFE6B900FFEFBC00FFFFCD00FFFFD700FFFF
      DB00FFFFD800FFFCD100CCAC93005E5E5E00EAAA8B00EAAA8B00E9A78700E8A4
      8200E7A07D00E6997400E6997400E5936A00E48E6300E4895C00E3835300E27D
      4B00E1794500E0753F00DC723B00CE6B3A00429CF900FFEEDD00FFFFFF00FFFF
      FF00CCDDFF009DBAFF00B2BCD900F8EDDF00FFFEFD00FFFFFF00FFFFFF00A5D2
      FF0051ADFE00666666000000000000000000000000000000000000000000C5AF
      A000E9D9CF00E9D9CF00E9D9CF00E9D9CF00E7D5CA00E4CEC200E0C7B900DCBF
      AF00D8B6A500D4AF9C00D1A89400A99688000000000000000000000000000000
      000000000000CCADA300FFF6CD00FFF2D700FFE3B900FFF1BF00FFF5C200FFF9
      C700FFF7C400FFF6C600B5927F007B7B7B00EAAA8B00FDECE100FFEBE000FFEB
      E000FEE9DE00FEE9DE00FDE7DB00F8AC8500F8AC8500F6A57B00F6A57B00F6A5
      7B00F6A57B00F6A57B00F59E7100CE6B3A003595FF007EC5FF00B2BCD900B2BC
      D900000000000000000000000000C7DDFE00C3DEFF00FFFFFF00FFFFFF0052B0
      FF00627190006666660000000000000000000000000000000000000000000000
      0000CBB7AA00F3EEEB00FCFCFC00FAF7F600F8F1EE00F5EBE600F3E4DC00F1DE
      D500EFDBCF00E8D4C900B09B8D00000000000000000000000000000000000000
      000000000000C0ACAC00EFDAC200FFFFFF00FFF7EA00FFECBF00FFDFAC00FFE3
      B000FFF0BD00F3D2A800856B6B0000000000EAAA8B00E9A78700E8A48200E7A0
      7D00E6997400E6997400E5936A00DE8C6500DA845A00DA845A00D5774A00D577
      4A00D5774A00CE6B3A00CE6B3A00CE6B3A000000000000000000000000000000
      000000000000000000000000000000000000B2BCD900AAD4FF007EC5FF0064C2
      FF00666666000000000000000000000000000000000000000000000000000000
      000000000000CBB7AA00F3EEEB00FFFFFF00FDFBFA00FAF5F300F7EFEA00F4E8
      E200E8D7CE00B09C8E0000000000000000000000000000000000000000000000
      00000000000000000000BEA19F00F1E5DD00FFFBE800FFF8CD00FFEEBC00FFF3
      C600F5CFA400AC867C000000000000000000A3A3A100FFFFFF008B8B8800FFFF
      FF008B8B8800FFFFFF008B8B8800FFFFFF008B8B8800FFFFFF006E726F00FFFF
      FF0063636300FDFDFD0061615500D0D5D1000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007EC5FF007CB1
      DA00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBB7AA00F3EEEB00FFFFFF00FEFCFC00FCF8F700F3EC
      E800B09D90000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6A0A000C7A79400CEA88E00E0B89E00D5AC
      9900B2999600000000000000000000000000000000001F251E00E1E0E0001F25
      1E00E3E3E2001F251E00E8E7E6001F251E00D0D5D1001F251E00D0D5D1001F25
      1E00ECECEC001F251E00E1E0E000A3A3A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5AFA000C5AFA000C5AFA000C4AE9F00C2AD
      9E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060483000604830006048
      3000605040007050400070585000806050008060500070605000705040006050
      4000604830006048300060483000604830000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      00000000000000000000000000000000000000000000FFF8F000FFF8F000D0C0
      B000FFF0E000FFF0E000E0D0D000FFF0F000FFF0E000D0C8C000FFE0D000F0D8
      C000C0A8A000F0D0C000F0D0B000604830000000000000000000000000000000
      0000000000006666660066666600666666006666660066666600666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484008484840084848400C6C6C60084848400000000000000
      00000000000000000000000000000000000000000000FFF8FF00FFF8F000D0C0
      B000FFF0F000F0F0E00030283000202020001018100010101000E0D0C000FFE0
      D000C0A8A000F0D0C000F0D0C000604830000000000000000000000000006666
      66006666660066666600515F8B00154BFF00BF857600154BFF00666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090482000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF00C6C6C600FFFFFF00C6C6C60084848400848484000000
      00000000000000000000000000000000000000000000E0C8C000D0C8C000D0C8
      C000D0C8C000E0E0E000E0D0D0003028300020202000C0B8B000E0D8D000C0B0
      B000C0A8A000C0A8A000C0A89000604830000000000000000000628FC300154B
      FF00154BFF00154BFF003684FF00EEBF9E00BF857600C4B0B5003684FF00154B
      FF00666666006666660000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0502000A05030000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C60084848400848484008484
      840000000000000000000000000000000000C0A89000FFFFFF00FFFFFF00D0C8
      C000FFF8F000FFF8F000F0E8E0004038400020202000F0E0E000FFE8E000FFE0
      D000C0B0A000F0D8C000F0D8C0006048300000000000000000003784FF00DBBE
      A900FFDCAF00FDE0B800FEECC800FDEBD500DD9F7400FFE1B900F8F1EA007BA7
      FF00627190006666660066666600000000000000000000000000D08060009048
      2000A0482000A0502000A0502000A0502000A0502000B0583000C0684000A050
      300000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60084848400848484008484
      840084848400000000000000000000000000C0A89000FFFFFF00FFFFFF00E0C8
      C000FFF8FF00FFF8F000F0E0E0004048400020202000E0E0E000FFE8E000FFE8
      D000C0B0A000F0E0D000F0D8C00060483000000000005A8DCA004081F000FFDF
      B900FADDBA00FDEECF00FEF5E600ECC2A800F8C99700FFE2C100FFF7EF00FFFF
      FF007BA6FF007FB3FF0066666600666666000000000000000000D0886000FFB0
      9000F0906000F0885000F0885000F0885000F0885000E0805000D0785000C070
      4000A0583000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C60084848400848484008484
      840084848400000000000000000000000000C0A8A000E0D0C000E0D0C000E0C8
      C000E0C8C000E0D0C000F0E0E0005058500020202000E0E0E000D0C0C000D0B8
      B000C0B0A000C0B0A000C0B0A0006048300000000000429CF900429CF900FFEC
      D300FFEEDB00FFFBF600FFFEFD00DD9F7400FEDBAF00FFECD700FFF8F100FFFD
      FC00FFFFFF004D9CFF0058669C00666666000000000000000000E0907000FFB8
      9000FFA88000FFA07000FFA07000F0986000F0906000F0906000E0885000E078
      5000C0704000B05830000000000000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840084848400000000000000000000000000C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00F0E8E0006060600020282000E0E0E000FFF0F000FFE8
      E000C0B8B000FFE0D000FFE0D00060483000000000003F92FA00F8E0C800FFF2
      E200FFFBF600FFFEFE00F2DCCC00F5C89900FFE9CC00FFFBF700FFFEFE00FFFF
      FF00EDF5FF002F91FF008096AE00666666000000000000000000E0987000FFC0
      A000FFC0A000FFB8A000FFB89000FFB09000FFB08000FFA88000FFA07000E080
      5000B0583000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      840084848400000000000000000000000000C0B0A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00F0E8E0006060600020282000F0E0E000FFF0F000FFF0
      E000D0B8B000FFE8E000FFE0D00060483000669FD200429CF900FFF8F200FFFA
      F500FFF9F400FDF9F600DD9F7400FEDCAF00FFF3E300FFFDFC00FFFFFF00FFFF
      FF008CC3FF005AACFF0066666600000000000000000000000000F0A07000E098
      7000E0907000D0886000D0886000D0886000D0886000E0907000F0987000B058
      300000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      840084848400000000000000000000000000D0B0A000E0D0C000E0D0C000E0D0
      C000E0D0D000E0D8D000908890006068600030283000F0E0E000E0C8C000D0C0
      B000D0B8B000D0B8B000C0B8B00060483000429CF900E1C9B500FFF3E700FFF3
      E800FFFCF900F3EAE500EEC8A500FFE8C900FFF4E800FFFAF500FFFFFF00F9FC
      FF00399DFF008F84B80066666600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0987000C07850000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084848400848484000000000000000000D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00E0E0E000A098A00040384000E0D8D000FFF8F000FFF8
      F000D0C0B000FFF0E000FFE8E00060483000429CF900FFEEDD00FFFFFF00FFFF
      FF00CCDDFF009DBAFF00B2BCD900F8EDDF00FFFEFD00FFFFFF00FFFFFF00A5D2
      FF0051ADFE006666660000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0A07000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840000000000000000000000000000000000D0B8A000FFFFFF00FFFFFF00E0D0
      C000FFFFFF00FFFFFF00E0D8D000FFFFFF00F0F8F000E0D0D000FFF8FF00FFF8
      F000D0C0B000FFF0F000FFF0E000604830003595FF007EC5FF00B2BCD900B2BC
      D900000000000000000000000000C7DDFE00C3DEFF00FFFFFF00FFFFFF0052B0
      FF00627190006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400C6C6C600C6C6C6008484840084848400000000000000
      000000000000000000000000000000000000F0A89000F0A89000F0A89000F0A8
      8000F0A08000E0987000E0907000E0906000E0886000E0805000E0784000E070
      4000E0704000E0704000E0704000D06030000000000000000000000000000000
      000000000000000000000000000000000000B2BCD900AAD4FF007EC5FF0064C2
      FF00666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      000000000000000000000000000000000000F0A89000FFC0A000FFC0A000FFC0
      A000FFB89000FFB89000FFB09000FFB08000FFA88000F0A08000F0A07000F098
      7000F0986000F0986000F0986000D06830000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007EC5FF007CB1
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0A89000F0A89000F0A89000F0A8
      9000F0A88000F0A08000F0987000E0987000E0906000E0886000E0805000E078
      4000E0784000E0784000E0784000E07040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200300000100010000000000001900000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF00000000000004000000000000000401000000000000840F000000000000
      843F000000000000C56F000000000000E64F000000000000E40F000000000000
      F61F000000000000FF7F000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFF3FFFFFFFFFFFFFFE1FFC3F
      FC7F0001FC1FF80FF83F4001F0078003F01F0001C0030000E00F000180010000
      E00F000100010000F83F180100000000F83F182100000000F83F10010400E000
      F83F10610000C001F83F100100008007F83F1001A44D801FF83FC3879C7B807F
      FFFFFFFFCC67FFFFFFFFFFFFF39FFFFFFC1FFFFFFFFFFFFFF81F0007FFFFFFFF
      E00F0003FFFFFC7F800F0001FFFFFC7F80077C00E000FC7FB00100002800FEFF
      80010000EC00FEFF800100002800FC7F00818000E800FC7F004080002F80F83F
      00208000EFC0F83F2000C0002FE0F83F0001E000E000F83F8101F000FFFFF83F
      FF81F81FFFFFF83FFFFFFC7FFFFFFFFFFFFFFF83FFFFF000E00FE000FFF11000
      E007E000FFE0F600C807E000FFC01700C00700000000F600C1070000000117C0
      810300000001F7E09C030000000107F09C030000010100009F8300000181600F
      8F83000000017008800300000001600F80C3000100017C0881C3000300017E0F
      C00701FF00FF7F08FFFF83FF01FF000FFFFFFFFFFFFFFFFFFFFFE000F000E000
      0001E000F400E0000001E000F000E00000010000000008000001000000000800
      0001000000000C000001000001000E000001000001800F000001000001C00FC0
      0001000001C00000000100000000000100FF00010001000101FF000100010001
      FFFF00FF00FF00FFFFFF01FF01FF01FF80018001FFE7FFCF80018001FFE3FF8F
      80018001FE01FF00800180010000000080018001000000008001800100000000
      8001800100010000800180010007000780018001000700078001800100070007
      8001800100070007800180010007000790019801840F840FB801BC01C01FC01F
      BC01BE01E03FE03F801F801FFFFFFFFFFE0FFFFFFFFFFFFFFC03E007E007FFFF
      C201C003C003FFFF81C380038003FFFFC38180018101E00FFFC380018001F3EF
      FF8180018001F9FF000080018001FCFF000083C18001FE7F000080018001FCFF
      000080018001F9FF400080018001F3EF000080038003E00F0000C003C003FFFF
      0000E00FE00FFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFF1000
      FFFF8003FFFFF000F81F8003F83F1000F18F8003F11FF000E3FF8003F01F1000
      E7E78003F45FF000A1C38003F55F000081818003F55F0000C3E78003F55F000F
      E7E7C007F55F0008FFC7E00FFC9F000FFF8FF01FFC1F0008F81FF83FFFFF000F
      FFFFFFFFFFFF0008FFFFFFFFFFFF000FE000FFFFFC7FFFFFE000FFFFFC3FFFFF
      E000F8FF001FFFFFE000F87F000FFC3FE000F83F00078001E000FC1F00030FE0
      E000FE0F000107E0E000F807000387E1E000F8030003E7C7E000F80F000103C0
      0000FC070000F18F000080030003C0130000800100038C390001800F80031C3C
      E003800FC003FFFFE007FFFFE003FFFFFFFFFFFFFE1FE000800F001FFE1FE000
      8007001BE211E00080030011E611E0008001001AA7F1E0008001001E87FD0000
      8001001E87FD00008001001F83FF000080010000C1F000008001000000F00000
      80010000007000008001000081F00000C0010000808F0000E0010040C08F0001
      F00100C1E00F0003FFFFFFC3F03FE007FFFF8FFFFFFFFFFFFFFF07FFFF3FFFFF
      87FF03FFFF1FC7C7003F01FFFF0FC387000F80FFFF07C10F000FC007C607E01F
      0007E003C407F03F0007F001C007F83F0003F000C00FF01B0003F000C00FE001
      0001F000C01F03030003F000C01F07838000F800C00F6787C7E3F801C007E60F
      FFD5FC03C007C43FFFF7FE07C007FFFFFFFFFFFFFFFFFFFF8001FFFFFFFF8001
      8001FFFF800F800180018003800F800180018003800F800180018003800F8001
      80018003800F000180018003800F000180018003800F000180018003800F0007
      80018003800F000380018003800F000F80018003800F007780018003800F01E1
      8001FFFF800F00F7FFFFFFFF801F01FFFFFFFFFF8000E0008000CFFF00008000
      8000C3FF000000008000C1FF000000008000C07F000000000000C03F00000000
      0000C01F000000000000C007000000000000C007000000000000C00F00000000
      0000C03F000000000000C07F000000000000C0FF000000010000C3FF00000001
      0000C7FF000000010000FFFF00010003FFFFFFFFFFFFFFFFFFFF800080008000
      FC3F800000008000F81F800000008000F00F800000008000F00F000000000000
      F00F000000000000F00F000000000000F00F000000000000F00F000000000000
      F00F000000000000F80F000000000000F80F000000000000FC1F000000000000
      FE3F000000000000FFFF000000000000FFF9FFF9FFFFFFFFFFF1FFF1E01FFFFF
      FFE3FFE3C09F800FE047E047C3FF800F800F800F83CF800F800F800F87C7800F
      000700070183800F000700070101800F000700070201800F000700078387800F
      00070007C787800F00070007FF87800F00070007FF07900F800F800FF00F980F
      800F800FF83F9C0FE03FE03FFFFF801FF80FFFFFFFFFFFFFF007FFFFFFFFFFFF
      F003FFFFFFFFFFFFF0010C30FFFFFFFFE0010C30FDFFFFBFC0000C30F9FFFF9F
      8000FFFFF003C00F8000DF7DE003C0070800C001C003C0031000FF7FE003C007
      A000FF7FF003C00FE000FFFFF9FFFF9FC001FC1FFDFFFFBFC003FC1FFFFFFFFF
      E807FC1FFFFFFFFFFD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF007F8000FFC3FFC3
      007F0000FF81FF8100000000FF01FF0100000000C001C0010000000080038003
      000000000007000700000000000F000F00000000000F000F00000000000F000F
      00000000000F000FE0000000000F000FF0010000000F000FF8030000001F001F
      FC070000803F803FFE0F0000C07FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFE7CFF0FFFFFFF1FFE38FF1FF
      E007E0FFF11FE3FFF00FC47FF83FE7FFF81FCE3FFC7FE707FC3FFF1FF83FE387
      FE7FFF8FF11FE107FFFFFFC7E38FF007FFFFFFE7E7CFF837FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFF3FFE7E7FC7FFFFF
      F0FFE1E7FC7FFFFFF03FE067E00FE007F00FE007E00FE007F03FE067E00FE007
      F0FFE1E7FC7FFFFFF3FFE7E7FC7FFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFE00707FFFFFFFFFF
      800303FFFFFFFFFF800301FFFFFFFFFF800380FFFFFFFFFF8003C007E7E7FFCF
      8003E003E787FF0F8003F001E607FC0F8003F000E007F00F8003F000E607FC0F
      8003F000E787FF0F8003F000E7E7FFCF8003F800FFFFFFFFC007F801FFFFFFFF
      FC7FFC03FFFFFFFFFFFFFE07FFFFFFFFFFDFFFFFFFFFFFFFFF8F8000E001E001
      FF070000E001E001FE030000E001E001E0010000E001E001EE03000000010001
      EF07000000010001EF8F000000010001EFDF000000010001EFFF000000010001
      00DF00010001000100FF00030001000100DF00070007000700FF81FF00030003
      00DFC3FF00070007FFFFFFFFE007E007C3E1FC03E07FFFFF81C0FC01801FFFFF
      0180F000901FFFFF0180E000C03F80030000C000C03F800380008001801F8003
      80000001001F800380000001000F800380000001000F800380010001000F8003
      FC0F0003000F8003FC070003001F8003FC070007001F8003FC07800F803F8003
      FC07C01FC0FFFFFFFC0FE03FF3FFFFFFF80FFFFFF003C03FE007FFFFE000801F
      C0038001C000001F800180018000001F800080018001003F000080010003C03F
      000080010007801F00008001000F801F000080010007801F000080010003801F
      000080010001001F800080010000001F800180018060001FC0038001FFF0001F
      E0078001FFF0001FF81FFFFFFFF8F03F83FF80008000FFFF803F80008000FFFF
      8003C0008000F83F8001C0010001F01F8001E0017E01E00F8001E0037E03C007
      8001F007000780078001FC0F800F80038001FE1FC21F80038001FC1FFC1F8003
      8001F80FF80F8003C001F80FF80F8003E001F80FF80FC007F007F80FF80FE00F
      F80FFC0FFC0FF01FFC1FFE1FFE1FF83FFF1FF81FF81FFFFFF00FE007E007000F
      E00FC003C003000FE00F80018001000FE00F80018001000FE00F00000000000F
      E00F00000000000FE00F00000000000FE00F00000000000EE00F000000000004
      E01F000000000000F39F800180010000F33F80018001F800F07FC003C003FC00
      F87FE007E007FE04FFFFF81FF81FFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFF98001
      E00F81FF1FF18001E00F00010FC38001E00F000007878001E00F0000810F8001
      F01F8000E01F8001E01F8001F03F8001E01F0001F03F8001E01F0001E01F8001
      E01F0000C10F8001E01F000083878001E01F000107E78001F03F00010FFF8001
      F87F80011FFF8001FFFFFF83FFFFFFFFFFFFFFFFFFFFF80FFC3F80008000F003
      F01F80008000E001C01F80008000C001000F800080008001800F000000008001
      8007000000008001C007000000008001C003000000008003E00100000000C007
      E00300000000E00FF00F00000000E01FF01F00000000E03FF83F00000000E03F
      F8FF00000000C07FFDFF00000000C07FC003FFFFFFFFFFFF0003FFFFFFFFFFC0
      0003FF81FF81FEC00003FFFFFFFFFC000003FFE1FFE1FEC00003FFFFFFFFFFC0
      0003FFE1FFE103FF0003C3FFFFFF03FF0003C381FF8103FF000300FFFFFF03FF
      000300E100E103FF000300FF00FF03FF000300E100E103FF0007C3FF00FF03FF
      001FC381FF8103FF003FFFFFFFFF03FFFFFFFFFFFFFF800003FFFFFFFFFF0000
      03FF0FFFFFFF000003FF0FFFFC3F000003FF0FFFFC3F000003FF0FFFFC3F0000
      FFC0007FFC3F0000FEC00077FC3F0000FC000003F81F0000FEC00077F00F0000
      FFC0007FE007000003FF0FFFC003000003FF0FFF8001000003FF0FFF80010000
      03FF0FFFFFFF000003FFFFFFFFFF0001FFFF80FF801FFFFF000000FF001FFFC3
      000000FF001BFF81000000FF0011FF0100000000001AC00100000000001E8003
      00000000001E000700000000001E000F000000000000000F000000000000000F
      0000E0000000000F0000E0000000000F0000E0000000000F0000E0000000001F
      0000E000FF00803F0000E000FF00C07FFFFF8001FFFFE000FFFB80017FFEE000
      FFFB80014002E000FFE080017FFEC000FFFB800140028000000B80017FFE0000
      000F800140020000000F80017FFE0000000FFFFF400280000000FFFF7FFE8000
      F000E7E773C6C000F0008FF147E2E000F00001800000E000F0008FF147E2E001
      F000E7E763CEE003F000FFFFFFFFE007BFE08FFFFFFFFFFFBFE007FFFFFF8001
      BE0003FFFEFF8001BEE001FFFC7F8001BEE080FFFEFF8001BEFFC007FEFF0001
      BEF1E003FEFF0001BEE0F001F83F0001BE00F000F83F0001BEE0F000F83F0007
      BEF1F000F83F0003B83FF000F83F000F183FF80080030077003FF801800301E1
      183FFC03800300F7F87FFE07800301FFFFFFFFFFF3FFF3FFFFFFFFFFE27FC03F
      8007E001E03FC0078007E001F81CC0078007E001F008C0078007E001E000C007
      8007E001C000C0078003C0018000C007800180018000C0078003C001C001C007
      8007E0018003C0078007E0011007C0078007E001180FC0078007E001FC07C007
      8007E001FE07C007FFFFFFFFFF07E007F80FFFFFFFFFFFFFF003FFFFFFFFFFFF
      E001FFFFFFFFFFFFC001FFFFFFFFF9FF8001FFFFFDFFF1FF8001E79FFCE7F3FF
      8001F33FFC07E3FF8001F87FFC07E7038003FCFFC007E7C3C007F87FFC07E7C3
      E00FF33FFC07E60BE01FE79FFCE7E01BE03FFFFFFDFFF03FE03FFFFFFFFFF87F
      C07FFFFFFFFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFF8000FFFFFFFFC0030000
      00010001800300000001000180030000000100018003FC000001000180038000
      00010001C003800000010001C003800000010001C003880000010001C0038000
      00010001D003800000010001D003800000010001D803840000010001DE038C01
      00010001DF079C03FFFFFFFFC00FBC07FFFFFFFFFFFFFFFFFFF9FEFFF83FF83F
      1FF1FC7FE00FE00F0FC3F83FC007C0070787F01F80038003810FE00F80038003
      E01FC00700030003F03F800300010001F03F000100010001E01F800300010001
      C10FC007000300038387E00F8003800307E7F01F800380030FFFF83FC007C007
      1FFFFC7FE00FE00FFFFFFEFFF83FF83FFFFFFFFFFFFFFFFFFFFFFFFF8003FFFF
      FC01C00180038003FC01C00180038003FC01C001800380030001C00180038003
      0001C00180038003000180018003800300018001800380030001800380038003
      00038003800380030007800380038003007F80038003800300FF800380038003
      01FFFFFF8003FFFFFFFFFFFFFFFDFFFF8FFFFFFFFCFFFFFF07FFFFFFF9FFFFFF
      03FFFFFFF8F3FFFF01FFFFFFF8F3F00F80FFFFBFF8E3F8C7C007FF9FF8C3F8C7
      E003C00FC047F8C7F001C0078007F80FF000C003800FF8C7F000C007800FF8C7
      F000C00F800FF8C7F000FF9FC00FF00FF800FFBF800FFFFFF801FFFF800FFFFF
      FC03FFFF801FFFFFFE07FFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFE00F
      0001FFFF807FFFFF0001FFFF803FF83F0001FDFF803FF11F0001F9FF803FF39F
      0001F003800FF39F0001E0038003F39F0001C0038001F39F0001E0038039F39F
      0001F003803FF39F0001F9FF803FE10F0001FDFF803FFFFF0001FFFF803FFFFF
      0001FFFFE03FFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFC03F01F711F7
      FFFFC0078DE391E3F801C007CFE383E3FFFFC007E7C183C18001C007E3C1C7C1
      FFFFC007B3F7C7F7F801C00781F7C7F7FFFFC007FFF7FFF78001C00711F701F7
      FFFFC00791F78DF7F801C00783F7CFF7FFFFC00783F7E7F78001C007C7F7E3F7
      FFFFC007C7F7B3F7FFFFE007C7F781F7FFFFF003FFFFFFFFC003C0018007FFFF
      800380008007FFFF800380008007807F800380008007803F800380008007801F
      C00380008007800FC00380008007C007C00380018007E003C00380038007F001
      D003E0078007F801D003E00F8007FC01D803C01F8007FE01DE03C01F800FFF01
      DF07801F801FFFFFC00F803F803FFFFFFFFFFFFFFFFFFFFFFF9F801FFC00FFFF
      FF0FC0078000007FFF0FC0030000FF3FFE0FE0010000FF1FF61FE0000000FF0F
      F01FF0000001FF07F03FF0000003FF07F00F98000007FF83F01F00000007FF83
      F03F00000007FFC1F03F00000007FFC1F0FF98000007FFE0F0FFF800800FFFE0
      F1FFF800F8FFFFF1FFFFFFFFFFFFFFF9FFFFF80FFFFFFFFFFFFFF007807FC00F
      FFFFF0030000C00FFEFFF0010000E01FFEFFE0010000F03FFDFFC0000000F01F
      FDFF80000003E00FF8FF80000003C00FF83F08000001C00FF01F10000001C007
      F00FA0000001C00FE007E0000001C00FE67FC0018101C007FFFFC003C383E007
      FFFFE807FFC7E007FFFFFD3FFFFFF01FFFFFFFFFFFFFFFFFFFFF000707FFFFFF
      F01F0007F9FF8001E0070003FC7F8001C0030003F83F8001C0010001F01F8001
      80010001E00F800180010000C007800180010000800380018001000700038001
      80010007E0078001800301F8F8038001C00783FCFC018001FE7FFFBAFE208001
      FFFFFFC7FFF08001FFFFFFFFFFF9FFFFFFFFFFFFFFFF8000FFFFFFFFFFFF0000
      FC1FFEFFFFFF0000FC1FFC7FFF9F0000FC1FF83FFF8FFC00FC1FF01FFFCF8000
      FC1FE00FFFE78000FC1FF83FC0E78000FC1FF83FC3E78800F007F83FC1E78000
      F80FF83FC0E78000FC1FF83FD8078000FE3FF83FDC0F8400FF7FF83FFE1F8C01
      FFFFFFFFFFFF9C03FFFFFFFFFFFFBC07FFFFFFFFFFFFFFFFFE01FF3FFFFFFFFF
      7C01FF1FFFFF800F3801FF0FE007800F0001EF07FFFF800F0001C6078001800F
      0001C407FFFF800F0001C007E007800F0001C00FFFFF800F0001C00F8001800F
      0000C01FFFFF800F0200C01FE007800F8300C00FFFFF800FC700C0078001800F
      FF81C007FFFF800FFFC3C007FFFF801FFFFFFFFFFFFFFFFFFEFFFFFFF3FFFFFF
      FFFFFFFFE19FFFFFC27FE07FE90F801FFFFFF8FFED4FFFFFC200F8FFE04F8001
      FFFFFC7FF01FFFFFDE07FC7FF83F801FCE07FE3FFC7FFFFF07FFFE3FFC3F8001
      CE00FF1FF83FFFFFDE00FE0FF9BF801FFFFFFFFFFBBFFFFFC200FFFFFB9F8001
      FFFFFFFFFBDFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFF8430FC0FFFFC003F001
      9FE10001C003E000DFE30001C003E000CFE30001C003E000EFC70001C003C001
      E0070001C0038003F78F0001C003000FF38F00018001000FFB1F0001C003000F
      F91F0001E007000FFC3F0001F007000FFC3F0001F807000FFE7F0001FC27801F
      FE7F0001FE67C03FFFFFFFFFFFFFE07F8FFFFFFFFFFFFFFF07FF0000FFFF007F
      03FF0000F81F007F01FF0000E00F000080FF0000C0030000C0070000C0010000
      E003004080000000F001000080000000F000001080000000F000000000010000
      F000000000010000F00000000003E000F80000000E03F001F8010000FF07F803
      FC030000FFCFFC07FE078000FFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFF8000FFFF
      FFFFFF3F8000F81FFFFFF81F8000E00FFFBFE00F8000C003FF9FC0070000C001
      C00FC00300008000C007C00300008000C003C00300008000C007C00300000001
      C00FC00300000001FF9FE00300000003FFBFF00F00000E03FFFFF83F0000FF07
      FFFFFCFF0000FFCFFFFFFFFF0000FFFF00000000000000000000000000000000
      000000000000}
  end
  object dsScouting: TDataSource
    DataSet = ibqrScouting
    OnDataChange = dsScoutingDataChange
    Left = 216
    Top = 136
  end
  object ibqrScouting: TIBQuery
    Database = ibdbHTInfo
    AfterOpen = ibqrScoutingAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      'SCOUTING.*,'
      
        '(SELECT COUNT(KOOPJES.ID) FROM KOOPJES WHERE KOOPJES.SCOUTING_ID' +
        ' = SCOUTING.ID) as AANTAL_KOOPJES'
      'FROM SCOUTING'
      'WHERE '
      'DEADLINE >= :TIJDSTIP'
      'ORDER BY SUBSKILL DESC')
    Left = 208
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TIJDSTIP'
        ParamType = ptUnknown
      end>
  end
  object dsTransferprijzen: TDataSource
    DataSet = ibqrTransferprijzen
    Left = 240
    Top = 437
  end
  object ibqrTransferprijzen: TIBQuery
    Database = ibdbHTInfo
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM GET_TRANSFERPRIJZEN(:ID)'
      'ORDER BY DATUM DESC')
    Left = 344
    Top = 445
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object FBidwarTimer: TTimer
    Enabled = False
    OnTimer = FBidwarTimerTimer
    Left = 648
    Top = 93
  end
  object dsTalents: TDataSource
    DataSet = ibqrTalents
    Left = 464
    Top = 317
  end
  object ibqrTalents: TIBQuery
    Database = ibdbHTInfo
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM GET_TALENTS WHERE DATUM IS NOT NULL'
      'ORDER BY PLAYER_ID')
    Left = 456
    Top = 373
  end
  object pmStatusbar: TPopupMenu
    Left = 704
    Top = 221
    object btnDoubleSpeed: TMenuItem
      Caption = 'Double speed'
      OnClick = btnDoubleSpeedClick
    end
    object btnTripleSpeed: TMenuItem
      Caption = 'Triple speed'
      OnClick = btnTripleSpeedClick
    end
    object Quadspeed1: TMenuItem
      Caption = 'Quad speed'
      OnClick = Quadspeed1Click
    end
    object btnWarpspeed: TMenuItem
      Caption = 'Warpspeed'
      OnClick = btnWarpspeedClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Forcesave1: TMenuItem
      Caption = 'Force save'
      OnClick = Forcesave1Click
    end
  end
  object JvTrayIcon1: TJvTrayIcon
    Active = True
    Animated = True
    Icon.Data = {
      0000010009002020100001000400E8020000960000001818100001000400E801
      00007E030000101010000100040028010000660500002020000001000800A808
      00008E0600001818000001000800C8060000360F000010100000010008006805
      0000FE1500002020000001002000A8100000661B000018180000010020008809
      00000E2C00001010000001002000680400009635000028000000200000004000
      000001000400000000000000000000000000000000000000000000000000FF00
      FF0080008000FF00000080000000FFFF00008080000000FF00000080000000FF
      FF00008080000000FF0000008000FFFFFF00C0C0C0008080800000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEE9FEFFFFFFFFFFFFFF
      FFFFFF7EEEEEEEEEEFEFFFFFFFFFFFFFFFFFFFEEEEEEEEEEEEFFFFFFFFFFFFFF
      FFFEFFDDDDEFEDEEEEFFFFFFFFFFFFFFFFFFFEDDE9FFFEDEEEFFFFFFFFFFFFFF
      FFFFEDDDEFFFFFEDDEFFEFFFFFFFFFFFFFE9DDDDEFFFFFEDDDEFEFFFFFFFFFFF
      FFEEDDCCEFFFFFDDDDEFFFFFFFFFFFFFFFEECCCCDEFFFEDDDDE7EFFFFFFFFFFF
      FFFFDCCCCCCDDDDDDDDFEFFFFFFFFFFFFFFFEECCCCCCCCDDDDDFFFFFFFFFFFFF
      FFFFFFECCCCCCDCDDDEFFFFFFFFFFFFFFFFFEFFECCCCCDEEEEFFFFFFFFFFFFFF
      FFFFFEFFCCCCCEFFFFFFFFFFFFFFFFFFFFFFFFE9DCCCEFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFFEEEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFEEEFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFE0
      0FFFFFC003FFFF8001FFFF0001FFFE0000FFFE0000FFFE00007FFC00007FFC00
      007FFC00007FFE00007FFE0000FFFF0000FFFF0001FFFF8003FFFFC007FFFFE0
      0FFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2800
      0000180000003000000001000400000000000000000000000000000000000000
      000000000000FF00FF0080008000FF00000080000000FFFF00008080000000FF
      00000080000000FFFF00008080000000FF0000008000FFFFFF00C0C0C0008080
      800000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEEEEEEE9FEFFFFFFFFFFFF7EEEEEEEEEEFEFFFFFFFFFFFEEEEEE
      EEEEEEFFFFFFFFFEFFDDDDEFEDEEEEFFFFFFFFFFFEDDE9FFFEDEEEFFFFFFFFFF
      EDDDEFFFFFEDDEFFEFFFFFE9DDDDEFFFFFEDDDEFEFFFFFEEDDCCEFFFFFDDDDEF
      FFFFFFEECCCCDEFFFEDDDDE7EFFFFFFFDCCCCCCDDDDDDDDFEFFFFFFFEECCCCCC
      CCDDDDDFFFFFFFFFFFECCCCCCDCDDDEFFFFFFFFFEFFECCCCCDEEEEFFFFFFFFFF
      FEFFCCCCCEFFFFFFFFFFFFFFFFE9DCCCEFFFFFFFFFFFFFFFFFFEFFEEEFFEFFFF
      FFFFFFFFFFFFFFEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FF83FF00FE00FF00FC003F00F800
      1F00F0001F00E0000F00E0000F00E0000700C0000700C0000700C0000700E000
      0700E0000F00F0000F00F0001F00F8003F00FC007F00FE00FF00FFC7FF00FFFF
      FF00FFFFFF002800000010000000200000000100040000000000000000000000
      0000000000000000000000000000FF00FF0080008000FF00000080000000FFFF
      00008080000000FF00000080000000FFFF00008080000000FF0000008000FFFF
      FF00C0C0C0008080800000000000FFFFFFEFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
      EEEEEEEEFEEFFEF9EEEEEEEEEFFFEFFEDDDEEDEEEEFFFFEDDEFFFEDDEEFEEFDD
      DEFFFFEDDEFEEEDDCEFFFFEDDEFFEECCCDFFFEDDDDEFEECCCCDDEDDDDDEEFFED
      CCCCCCDDDDFEFFFFDCCCCCDDDEFFFEEFECCCCDEFEFFFFFEFFDCCDEFFFFFFFFFF
      E9EDEFFEFFFFFFFFEFFEEFFEFFFFF00F0000E0030000C0010000800100000000
      0000000000000000000000000000000000000000000000000000800000008001
      0000C0030000E0070000F00F0000280000002000000040000000010008000000
      00000000000000000000000000000000000000000000FFFFFF00CCFFFF0099FF
      FF0066FFFF0033FFFF0000FFFF00FFCCFF00CCCCFF0099CCFF0066CCFF0033CC
      FF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099FF00FF66
      FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33FF009933
      FF006633FF003333FF000033FF00FF00FF00CC00FF009900FF006600FF003300
      FF000000FF00FFFFCC00CCFFCC0099FFCC0066FFCC0033FFCC0000FFCC00FFCC
      CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
      CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
      CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
      CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
      990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
      990000CC9900FF999900CC99990099999900669999003399990000999900FF66
      9900CC66990099669900666699003366990000669900FF339900CC3399009933
      9900663399003333990000339900FF009900CC00990099009900660099003300
      990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
      6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
      6600669966003399660000996600FF666600CC66660099666600666666003366
      660000666600FF336600CC33660099336600663366003333660000336600FF00
      6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
      330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
      330000CC3300FF993300CC99330099993300669933003399330000993300FF66
      3300CC66330099663300666633003366330000663300FF333300CC3333009933
      3300663333003333330000333300FF003300CC00330099003300660033003300
      330000003300FFFF0000CCFF000099FF000066FF000033FF000000FF0000FFCC
      0000CCCC000099CC000066CC000033CC000000CC0000FF990000CC9900009999
      0000669900003399000000990000FF660000CC66000099660000666600003366
      000000660000FF330000CC33000099330000663300003333000000330000FF00
      0000CC0000009900000066000000330000000000EE000000DD000000BB000000
      AA0000008800000077000000550000004400000022000000110000EE000000DD
      000000BB000000AA000000880000007700000055000000440000002200000011
      0000EE000000DD000000BB000000AA0000008800000077000000550000004400
      00002200000011000000EEEEEE00DDDDDD00BBBBBB00AAAAAA00888888007777
      77005555550044444400222222001111110000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFCFCACFDACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFACFFFDFDFEFEFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FDAC81FAFA81FBFBFBFCFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
      FCFAFAFAFAFAFAFAFAFAFAFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
      FA5656F9565656FAFAFAF9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFAC
      F8F8F8F8FAACFAF8F9F9F9F9ACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD56
      F7F756FCFEFEFD56F75656F9ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF92B
      2B2BFCFEFDFDFDFD56F7F856FDFFFBFFFFFFFFFFFFFFFFFFFFFFFFFF81FC2B2B
      F601FAFEFDFDFDFEFB2CF7F8FCFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFB812BF6
      F60156FEFDFDFDACF72B2BF7FAFEFCFFFFFFFFFFFFFFFFFFFFFFFFFF81FC0101
      01002BFCACFDFEF9012B2B2C56FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2B01
      0000F500F62BF801F62B2BF7F8AC81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFA
      01F5000000000101F62B2BF7F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FC000000000001F601F62B2C81FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFE
      FE56000000F50101F981FCF9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
      FEFC01F5010101FAFEFEACFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FCFC2B010101FAFEACFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF81FEAC81F981ACFE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFBFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFE00FFFFFC003FFFF80
      01FFFF0001FFFE0000FFFE0000FFFE00007FFC00007FFC00007FFC00007FFE00
      007FFE0000FFFF0000FFFF0001FFFF8003FFFFC007FFFFE00FFFFFFC7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF28000000180000003000
      000001000800000000000000000000000000000000000000000000000000FFFF
      FF00CCFFFF0099FFFF0066FFFF0033FFFF0000FFFF00FFCCFF00CCCCFF0099CC
      FF0066CCFF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399
      FF000099FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33
      FF00CC33FF009933FF006633FF003333FF000033FF00FF00FF00CC00FF009900
      FF006600FF003300FF000000FF00FFFFCC00CCFFCC0099FFCC0066FFCC0033FF
      CC0000FFCC00FFCCCC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99
      CC00CC99CC009999CC006699CC003399CC000099CC00FF66CC00CC66CC009966
      CC006666CC003366CC000066CC00FF33CC00CC33CC009933CC006633CC003333
      CC000033CC00FF00CC00CC00CC009900CC006600CC003300CC000000CC00FFFF
      9900CCFF990099FF990066FF990033FF990000FF9900FFCC9900CCCC990099CC
      990066CC990033CC990000CC9900FF999900CC99990099999900669999003399
      990000999900FF669900CC66990099669900666699003366990000669900FF33
      9900CC33990099339900663399003333990000339900FF009900CC0099009900
      9900660099003300990000009900FFFF6600CCFF660099FF660066FF660033FF
      660000FF6600FFCC6600CCCC660099CC660066CC660033CC660000CC6600FF99
      6600CC99660099996600669966003399660000996600FF666600CC6666009966
      6600666666003366660000666600FF336600CC33660099336600663366003333
      660000336600FF006600CC00660099006600660066003300660000006600FFFF
      3300CCFF330099FF330066FF330033FF330000FF3300FFCC3300CCCC330099CC
      330066CC330033CC330000CC3300FF993300CC99330099993300669933003399
      330000993300FF663300CC66330099663300666633003366330000663300FF33
      3300CC33330099333300663333003333330000333300FF003300CC0033009900
      3300660033003300330000003300FFFF0000CCFF000099FF000066FF000033FF
      000000FF0000FFCC0000CCCC000099CC000066CC000033CC000000CC0000FF99
      0000CC99000099990000669900003399000000990000FF660000CC6600009966
      0000666600003366000000660000FF330000CC33000099330000663300003333
      000000330000FF000000CC0000009900000066000000330000000000EE000000
      DD000000BB000000AA0000008800000077000000550000004400000022000000
      110000EE000000DD000000BB000000AA00000088000000770000005500000044
      00000022000000110000EE000000DD000000BB000000AA000000880000007700
      000055000000440000002200000011000000EEEEEE00DDDDDD00BBBBBB00AAAA
      AA0088888800777777005555550044444400222222001111110000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCACFDACFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFACFFFDFDFEFEFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAC81FA
      FA81FBFBFBFCFF81FFFFFFFFFFFFFFFFFFFFFFFDFCFAFAFAFAFAFAFAFAFAFAFF
      81FFFFFFFFFFFFFFFFFFFDFEFA5656F9565656FAFAFAF9FAFFFFFFFFFFFFFFFF
      FFFBFFACF8F8F8F8FAACFAF8F9F9F9F9ACACFFFFFFFFFFFFFFFEFD56F7F756FC
      FEFEFD56F75656F9ACFFFFFFFFFFFFFFFFFEF92B2B2BFCFEFDFDFDFD56F7F856
      FDFFFBFFFFFFFFFF81FC2B2BF601FAFEFDFDFDFEFB2CF7F8FCFEFCFFFFFFFFFF
      FB812BF6F60156FEFDFDFDACF72B2BF7FAFEFCFFFFFFFFFF81FC010101002BFC
      ACFDFEF9012B2B2C56FCFCFFFFFFFFFFFFFD2B010000F500F62BF801F62B2BF7
      F8AC81FFFFFFFFFFFFFEFCFA01F5000000000101F62B2BF7F8FFFFFFFFFFFFFF
      FFFFFEFEFC000000000001F601F62B2C81FCFFFFFFFFFFFFFFFFFBFEFE560000
      00F50101F981FCF9FEFFFFFFFFFFFFFFFFFFFFFCFEFC01F5010101FAFEFEACFE
      FFFFFFFFFFFFFFFFFFFFFFFFFCFC2B010101FAFEACFDFEFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF81FEAC81F981ACFE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FBFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00FFFFFF00FFFFFF00FF83FF00FE00FF00FC003F00F8001F00F0001F00E000
      0F00E0000F00E0000700C0000700C0000700C0000700E0000700E0000F00F000
      0F00F0001F00F8003F00FC007F00FE00FF00FFC7FF00FFFFFF00FFFFFF002800
      0000100000002000000001000800000000000000000000000000000000000000
      000000000000FFFFFF00CCFFFF0099FFFF0066FFFF0033FFFF0000FFFF00FFCC
      FF00CCCCFF0099CCFF0066CCFF0033CCFF0000CCFF00FF99FF00CC99FF009999
      FF006699FF003399FF000099FF00FF66FF00CC66FF009966FF006666FF003366
      FF000066FF00FF33FF00CC33FF009933FF006633FF003333FF000033FF00FF00
      FF00CC00FF009900FF006600FF003300FF000000FF00FFFFCC00CCFFCC0099FF
      CC0066FFCC0033FFCC0000FFCC00FFCCCC00CCCCCC0099CCCC0066CCCC0033CC
      CC0000CCCC00FF99CC00CC99CC009999CC006699CC003399CC000099CC00FF66
      CC00CC66CC009966CC006666CC003366CC000066CC00FF33CC00CC33CC009933
      CC006633CC003333CC000033CC00FF00CC00CC00CC009900CC006600CC003300
      CC000000CC00FFFF9900CCFF990099FF990066FF990033FF990000FF9900FFCC
      9900CCCC990099CC990066CC990033CC990000CC9900FF999900CC9999009999
      9900669999003399990000999900FF669900CC66990099669900666699003366
      990000669900FF339900CC33990099339900663399003333990000339900FF00
      9900CC00990099009900660099003300990000009900FFFF6600CCFF660099FF
      660066FF660033FF660000FF6600FFCC6600CCCC660099CC660066CC660033CC
      660000CC6600FF996600CC99660099996600669966003399660000996600FF66
      6600CC66660099666600666666003366660000666600FF336600CC3366009933
      6600663366003333660000336600FF006600CC00660099006600660066003300
      660000006600FFFF3300CCFF330099FF330066FF330033FF330000FF3300FFCC
      3300CCCC330099CC330066CC330033CC330000CC3300FF993300CC9933009999
      3300669933003399330000993300FF663300CC66330099663300666633003366
      330000663300FF333300CC33330099333300663333003333330000333300FF00
      3300CC00330099003300660033003300330000003300FFFF0000CCFF000099FF
      000066FF000033FF000000FF0000FFCC0000CCCC000099CC000066CC000033CC
      000000CC0000FF990000CC99000099990000669900003399000000990000FF66
      0000CC66000099660000666600003366000000660000FF330000CC3300009933
      0000663300003333000000330000FF000000CC00000099000000660000003300
      00000000EE000000DD000000BB000000AA000000880000007700000055000000
      4400000022000000110000EE000000DD000000BB000000AA0000008800000077
      000000550000004400000022000000110000EE000000DD000000BB000000AA00
      0000880000007700000055000000440000002200000011000000EEEEEE00DDDD
      DD00BBBBBB00AAAAAA0088888800777777005555550044444400222222001111
      110000000000FFFFFFFFACFFFCACFDACFFFEFFFFFFFFFFFFFFFDACFDACACFDFD
      FEFEFDFAFFFFFFFFFDFDFBFAFAFAFA81FAFBACFBFAFFFFFCFEFCF9F9F95656FA
      FAF9FAACACFFFBFCFEFAF8F8F88181F8F9F956FBFDFDFEFEFBF72CF9ACFEFEFA
      F75656FBFFFCFBACF72B2BFBFEFDFDFEFAF7F781FFFCFBFAF6F601FAFEFDFDFE
      FA2BF7F9FEACFBFA0101F5F7FDFDF4FC2B2B2BF8FCACFBFB01F500F52BF8FAF7
      012B2BF7FBFCFEFD81F700000000F501F62B2BF7ACFCFFFDFEFD2B0000000101
      F62CF7F9ACFCFFFBFCF481F500F5F52B81ACFCACFDFFFFFFFBACACF600F52BFC
      FEFEFEFFFFFFFFFFFFFCFBFCFAF8FAFDFDFCFEFFFFFFFFFFFFFF81FEACFBFBAC
      FEFBFFFFFFFFF00F0000E0030000C00100008001000000000000000000000000
      0000000000000000000000000000000000008000000080010000C0030000E007
      0000F00F00002800000020000000400000000100200000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004E4E4EFF383838FF2A2A2AFF262626FF373737FFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00343434FF0000
      00FF212525FF1E2121FF131413FF0E0E0EFF090909FF000000FF232323FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C1C1CFF333B3BFF5E6B
      6BFF637271FF657373FF606F6DFF515D5DFF4B5655FF4A5454FF3D4645FF0000
      00FF696969FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C1C1CFF394040FF708080FF7080
      80FF728280FF71807FFF707F7FFF707F7FFF6C7D7BFF718181FF738584FF7384
      83FF000000FF6B6B6BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001E1E1EFF111111FF697777FF849897FF8498
      97FF839796FF899D9DFF8CA1A0FF8AA09EFF738382FF728382FF748484FF788A
      88FF758685FF020202FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00575757FF070707FF373C3CFF98AEADFF9AB1AFFF9EB5
      B4FF9FB6B6FF778686FF363C3CFF748382FF9AB1B1FF7F9190FF7E908EFF7B8D
      8CFF7B8E8DFF2F3434FF2B2B2BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000A0A0AFF1E1F1FFF889B9BFFA2B9B8FFADC7C6FF8DA0
      9FFF3C4242FF151313FF141313FF181818FF879998FFACC3C3FF91A5A4FF899E
      9DFF809392FF2A2D2DFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000D0E0EFF7A8C8BFFB3CDCCFFB3CDCCFFB8D4D3FF454C
      4CFF0F0D0DFF1C1C1CFF1C1C1CFF1B1B1BFF1C1B1BFF899A99FFAEC7C6FF9FB5
      B4FF8CA0A0FF272929FF070707FF555555FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006A6A6AFF3A4242FFB9D5D4FFBBD6D5FFC2E0DDFFCCE9E8FF6C79
      79FF151414FF1D1D1DFF1F1F1DFF202120FF191616FF545D5DFFAFC8C7FFA2B9
      B8FF98AEADFF434B4BFF080808FF424242FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00595959FF546060FFC0DDDCFFC7E4E3FFD1EFEEFFDCFCFBFF92A6
      A5FF141212FF1F1D1DFF202020FF1D1D1DFF2F3130FFA9C1C0FFBFDAD8FFB3CC
      CAFFA5BDBCFF70807FFF111111FF3A3A3AFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006B6B6BFF46504FFFCEEDECFFCFEEEBFFDDFDFBFFEBFEFEFFC0DA
      D8FF434948FF303333FF212121FF151313FF849694FFCCE9E8FFC0DBDAFFB6D1
      D0FFA7C0BFFF92A7A6FF394040FF454545FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001D2222FFB9D5D4FFD6F7F6FFE8FEFEFFEAFEFEFFE3FE
      FEFFEBFEFEFFD1EFEEFFB2C9C8FF96A9A8FFCDE9E8FFC5E1E0FFBFDBDAFFB6D1
      D0FFA8C1C0FF9EB4B3FF2B3131FF606060FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00121212FF484F4FFF647070FFD4F1F0FFE7FEFEFFFCFE
      FEFFFEFEFEFFF6FEFEFFEAFEFEFFDBFBF9FFD1F0EFFFC6E3E2FFBBD7D6FFB4CF
      CEFFA9C4C2FF9AB0AFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00121413FF120E0FFF484F4FFFEAFEFEFFFCFE
      FEFFFEFEFEFFF8FEFEFFE9FEFEFFD7F7F6FFC8E5E4FFCEEEECFFC2E1E0FFB3CF
      CEFFAFCAC9FF556160FF393939FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00555555FF111111FF141212FF8EA2A1FFF5FE
      FEFFF2FEFEFFF0FEFEFFE4FEFEFFD6F7F6FFCAEAE8FF839796FF5B6564FF4148
      47FF7B8E8DFF0E0E0EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00414141FF161716FF3B3E3EFFCDEC
      EBFFE0FEFEFFDDFEFDFFD8F9F7FFCDECEBFF667372FF0F0D0EFF0F0D0DFF292C
      2CFF0E0E0EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00414141FF3F4848FFB1CE
      CCFFD7F9F8FFD1F2F1FFCEEDECFF6B7A79FF120F0FFF292C2CFF212525FF1515
      15FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006D6D6DFF0C0C
      0CFF2F3737FF606F6FFF798B8BFF576363FF2A3030FF090909FF606060FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF005B5B5BFF484848FF545454FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF83FFFFFE00FFFFFC003FFFF8001FFFF0001FFFE00
      00FFFE0000FFFE00007FFC00007FFC00007FFC00007FFE00007FFE0000FFFF00
      00FFFF0001FFFF8003FFFFC007FFFFE00FFFFFFC7FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001800000030000000010020000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E4E4EFF3838
      38FF2A2A2AFF262626FF373737FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00343434FF000000FF212525FF1E21
      21FF131413FF0E0E0EFF090909FF000000FF232323FFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001C1C1CFF333B3BFF5E6B6BFF637271FF6573
      73FF606F6DFF515D5DFF4B5655FF4A5454FF3D4645FF000000FF696969FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001C1C1CFF394040FF708080FF708080FF728280FF7180
      7FFF707F7FFF707F7FFF6C7D7BFF718181FF738584FF738483FF000000FF6B6B
      6BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001E1E1EFF111111FF697777FF849897FF849897FF839796FF899D
      9DFF8CA1A0FF8AA09EFF738382FF728382FF748484FF788A88FF758685FF0202
      02FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00575757FF070707FF373C3CFF98AEADFF9AB1AFFF9EB5B4FF9FB6B6FF7786
      86FF363C3CFF748382FF9AB1B1FF7F9190FF7E908EFF7B8D8CFF7B8E8DFF2F34
      34FF2B2B2BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000A0A0AFF1E1F1FFF889B9BFFA2B9B8FFADC7C6FF8DA09FFF3C4242FF1513
      13FF141313FF181818FF879998FFACC3C3FF91A5A4FF899E9DFF809392FF2A2D
      2DFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000D0E0EFF7A8C8BFFB3CDCCFFB3CDCCFFB8D4D3FF454C4CFF0F0D0DFF1C1C
      1CFF1C1C1CFF1B1B1BFF1C1B1BFF899A99FFAEC7C6FF9FB5B4FF8CA0A0FF2729
      29FF070707FF555555FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006A6A
      6AFF3A4242FFB9D5D4FFBBD6D5FFC2E0DDFFCCE9E8FF6C7979FF151414FF1D1D
      1DFF1F1F1DFF202120FF191616FF545D5DFFAFC8C7FFA2B9B8FF98AEADFF434B
      4BFF080808FF424242FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005959
      59FF546060FFC0DDDCFFC7E4E3FFD1EFEEFFDCFCFBFF92A6A5FF141212FF1F1D
      1DFF202020FF1D1D1DFF2F3130FFA9C1C0FFBFDAD8FFB3CCCAFFA5BDBCFF7080
      7FFF111111FF3A3A3AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B6B
      6BFF46504FFFCEEDECFFCFEEEBFFDDFDFBFFEBFEFEFFC0DAD8FF434948FF3033
      33FF212121FF151313FF849694FFCCE9E8FFC0DBDAFFB6D1D0FFA7C0BFFF92A7
      A6FF394040FF454545FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001D2222FFB9D5D4FFD6F7F6FFE8FEFEFFEAFEFEFFE3FEFEFFEBFEFEFFD1EF
      EEFFB2C9C8FF96A9A8FFCDE9E8FFC5E1E0FFBFDBDAFFB6D1D0FFA8C1C0FF9EB4
      B3FF2B3131FF606060FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00121212FF484F4FFF647070FFD4F1F0FFE7FEFEFFFCFEFEFFFEFEFEFFF6FE
      FEFFEAFEFEFFDBFBF9FFD1F0EFFFC6E3E2FFBBD7D6FFB4CFCEFFA9C4C2FF9AB0
      AFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00121413FF120E0FFF484F4FFFEAFEFEFFFCFEFEFFFEFEFEFFF8FE
      FEFFE9FEFEFFD7F7F6FFC8E5E4FFCEEEECFFC2E1E0FFB3CFCEFFAFCAC9FF5561
      60FF393939FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00555555FF111111FF141212FF8EA2A1FFF5FEFEFFF2FEFEFFF0FE
      FEFFE4FEFEFFD6F7F6FFCAEAE8FF839796FF5B6564FF414847FF7B8E8DFF0E0E
      0EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00414141FF161716FF3B3E3EFFCDECEBFFE0FEFEFFDDFE
      FDFFD8F9F7FFCDECEBFF667372FF0F0D0EFF0F0D0DFF292C2CFF0E0E0EFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00414141FF3F4848FFB1CECCFFD7F9F8FFD1F2
      F1FFCEEDECFF6B7A79FF120F0FFF292C2CFF212525FF151515FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006D6D6DFF0C0C0CFF2F3737FF606F
      6FFF798B8BFF576363FF2A3030FF090909FF606060FFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005B5B
      5BFF484848FF545454FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF83FF00FE00FF00FC003F00F8001F00F0001F00E0000F00E0000F00E000
      0700C0000700C0000700C0000700E0000700E0000F00F0000F00F0001F00F800
      3F00FC007F00FE00FF00FFC7FF00FFFFFF00FFFFFF0028000000100000002000
      0000010020000000000000000000000000000000000000000000000000005A5A
      5A0046464600181818001A1A1A002E2E2E1B0706063B414141F7292929F71E1D
      1DF72A2929F70504043B1312131B23232300747474006B6B6B006B6B6B005A5A
      5A004646460018181800191818292A2B2BE61F2323FF32393AFF2E3433FF2126
      25FF181B1BFF161818FF141515E6201E1E4B7A7A7A186A6A6A006B6B6B005A5A
      5A00464646001818182C1F2121DE465151FF6D7C7CFF6F7F7EFF6F7D7DFF6675
      75FF606E6DFF637170FF52605FFF2A2E2DFF535151C278787823717171005A5A
      5A00474747250E0D0DDB3B4343FF7E9190FF7F9291FF7E908FFF879999FF899D
      9CFF758786FF738483FF7E9090FF6E7F7EFF2A2E2EFF36353546434343005A5A
      5A1E3D3D3DE20B0B0BFF728181FF9DB4B2FF9DB4B3FF98AEADFF5F6C6CFF5E6B
      6BFF92A8A8FF819493FF7B8C8AFF869A98FF4D5959FF1C1C1CDC2726261A1616
      161C0A0909FF515B5BFFA3BAB9FFAEC8C7FF839594FF343939FF141313FF1110
      10FF677374FFA8BEBEFF93A7A6FF8EA4A3FF55605FFF040404FF4545453C5958
      5958303837FFA9C3C2FFBAD5D4FFBCD8D7FF4A5253FF0F0D0DFF1D1D1CFF1C1C
      1CFF151212FF6F7C7CFFAEC7C6FFA2B8B8FF5A6666FF050404FF454545FC5757
      58FF6B7C7BFFC9E7E6FFC4E2E0FFD3F3F2FF758484FF100D0EFF1F1D1DFF2021
      21FF181616FF6B7878FFB5CFCEFFABC3C2FF7D8E8EFF161818FF302F30F75959
      59FF748685FFD5F5F3FFD3F4F1FFE7FFFFFFA4B9B8FF1E1E1DFF1A1818FF0A07
      07FF474E4DFFC0DAD9FFC2DEDCFFB3CECDFF9DB4B3FF434B4AFF353535F75B5B
      5B584F5C5BFFD9FBFAFFE4FFFFFFECFFFFFFDEF7F7FFC0D3D3FF9FB5B4FF7684
      83FFADC4C3FFCCE9E8FFBFDBDAFFB1CCCBFFABC4C3FF505B5BFF4E4E4EFC1413
      13191E2020F3576161FFADC4C3FFECFFFFFFFDFFFFFFFFFFFFFFF5FFFFFFE0FC
      FCFFD4F4F2FFC9E7E6FFBFDCDBFFB5D1D0FFAEC7C6FF2D3333FF4949493C1E1E
      1E0020202050110E0FFF212222FFC3D5D5FFFFFFFFFFFDFEFEFFF4FFFFFFDFFC
      FCFFD1F1F0FFC7E6E5FFAEC9C8FFACC6C5FF798C8BFF343535E23838381A5959
      59005E5E5E31414141DB0A0707FF586161FFE5F6F6FFEDFFFFFFE6FFFEFFE1FF
      FFFFBCD9D7FF596564FF343736FF444C4BFF2A302FDB252323253C3C3C005555
      5500575757005050502C343434DE2F3333FFC3E4E3FFE9FFFFFFE2FFFFFFBBD8
      D7FF444A4AFF111010FF101111FF141414DE0402022C2D2D2D003C3C3C005555
      5500575757004C4C4C003F3F3F295A5D5DE6404949FF677978FF91A8A8FF7586
      86FF242727FF191A1AFF444545E60E0E0E290A0A0A002C2C2C003C3C3C005555
      5500575757004C4C4C003C3C3C006666661B0C0C0C2531363758545555F75253
      53F7363B3B58121313255454541B0E0E0E000A0A0A002C2C2C003C3C3C00F00F
      0000E0030000C001000080010000000000000000000000000000000000000000
      000000000000000000008000000080010000C0030000E0070000F00F0000}
    IconIndex = 0
    Visibility = [tvVisibleTaskBar, tvVisibleTaskList, tvAutoHide, tvRestoreDbClick]
    Left = 552
    Top = 173
  end
  object IEDownload1: TIEDownload
    AdditionalHeader.Strings = (
      'Content-Type: application/x-www-form-urlencoded ')
    DefaultProtocol = 'http://'
    DefaultUrlFileName = 'index.html'
    OnDownload = IEDownload1Download
    OnDownloadComplete = IEDownload1DownloadComplete
    Left = 248
    Top = 293
  end
  object tmrAutoStart: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmrAutoStartTimer
    Left = 744
    Top = 141
  end
end
