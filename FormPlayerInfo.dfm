object frmPlayerInfo: TfrmPlayerInfo
  Left = 409
  Top = 141
  ActiveControl = edPlayerID
  Caption = 'Speler/manager informatie'
  ClientHeight = 605
  ClientWidth = 1223
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pcgControlInfo: TcxPageControl
    Left = 0
    Top = 0
    Width = 1223
    Height = 605
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tbPlayerinfo
    OnPageChanging = pcgControlInfoPageChanging
    ClientRectBottom = 601
    ClientRectLeft = 4
    ClientRectRight = 1219
    ClientRectTop = 24
    object tbPlayerinfo: TcxTabSheet
      Caption = 'Info'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1215
        Height = 58
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1215
          58)
        object Label1: TLabel
          Left = 11
          Top = 12
          Width = 41
          Height = 13
          Caption = 'PlayerID'
        end
        object Label2: TLabel
          Left = 11
          Top = 32
          Width = 37
          Height = 13
          Caption = 'TeamID'
        end
        object lblBlacklist: TLabel
          Left = 224
          Top = 32
          Width = 77
          Height = 13
          Caption = 'BLACKLISTED!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lblStatus: TLabel
          Left = 224
          Top = 10
          Width = 3
          Height = 13
        end
        object edPlayerID: TEdit
          Left = 88
          Top = 7
          Width = 121
          Height = 21
          TabOrder = 0
          OnChange = edPlayerIDChange
        end
        object edTeamID: TEdit
          Left = 88
          Top = 29
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Button1: TButton
          Left = 1086
          Top = 24
          Width = 115
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Zoek!'
          TabOrder = 2
          OnClick = Button1Click
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 58
        Width = 1215
        Height = 212
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          1215
          212)
        object lblPlayerName: TLabel
          Left = 11
          Top = 12
          Width = 32
          Height = 13
          Caption = 'Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnDblClick = lblPlayerNameDblClick
        end
        object lblKeepen: TLabel
          Left = 11
          Top = 99
          Width = 40
          Height = 13
          Caption = 'Keepen:'
          OnDblClick = lblKeepenDblClick
        end
        object lblVerdedigen: TLabel
          Tag = 1
          Left = 11
          Top = 119
          Width = 61
          Height = 13
          Caption = 'Verdedigen: '
          OnDblClick = lblKeepenDblClick
        end
        object lblPositiespel: TLabel
          Tag = 2
          Left = 11
          Top = 139
          Width = 54
          Height = 13
          Caption = 'Positiespel:'
          OnDblClick = lblKeepenDblClick
        end
        object lblVleugelspel: TLabel
          Tag = 3
          Left = 11
          Top = 159
          Width = 57
          Height = 13
          Caption = 'Vleugelspel:'
          OnDblClick = lblKeepenDblClick
        end
        object lblPassen: TLabel
          Tag = 4
          Left = 131
          Top = 99
          Width = 38
          Height = 13
          Caption = 'Passen:'
          OnDblClick = lblKeepenDblClick
        end
        object lblSpelhervatten: TLabel
          Tag = 6
          Left = 131
          Top = 139
          Width = 72
          Height = 13
          Caption = 'Spelhervatten:'
          OnDblClick = lblKeepenDblClick
        end
        object lblScoren: TLabel
          Tag = 5
          Left = 131
          Top = 119
          Width = 37
          Height = 13
          Caption = 'Scoren:'
          OnDblClick = lblKeepenDblClick
        end
        object lblSpecialiteit: TLabel
          Left = 11
          Top = 32
          Width = 66
          Height = 13
          Caption = 'Specialiteit:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblAllRound: TLabel
          Left = 11
          Top = 52
          Width = 43
          Height = 13
          Caption = 'Allround:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblManagerNaam: TLabel
          Left = 11
          Top = 74
          Width = 79
          Height = 13
          Caption = 'Naam manager: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblDatum: TLabel
          Left = 448
          Top = 141
          Width = 3
          Height = 13
        end
        object Button2: TButton
          Left = 1086
          Top = 80
          Width = 115
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Update'
          TabOrder = 0
          OnClick = Button2Click
        end
        object btnInfo: TButton
          Left = 1086
          Top = 24
          Width = 115
          Height = 25
          Anchors = [akTop, akRight]
          Caption = '1e Info'
          TabOrder = 1
          OnClick = btnInfoClick
        end
        object Button4: TButton
          Left = 1086
          Top = 166
          Width = 115
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Verwijderen!'
          TabOrder = 2
          OnClick = Button4Click
        end
        object chckU20: TCheckBox
          Left = 132
          Top = 158
          Width = 97
          Height = 17
          Caption = 'U20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Button3: TButton
          Left = 1086
          Top = 52
          Width = 115
          Height = 25
          Anchors = [akTop, akRight]
          Caption = '1e Info (herhaling)'
          TabOrder = 4
          OnClick = Button3Click
        end
        object Button5: TButton
          Left = 1086
          Top = 108
          Width = 115
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Update (herhaling)'
          TabOrder = 5
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 1086
          Top = 137
          Width = 115
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Promotie'
          TabOrder = 6
          OnClick = Button6Click
        end
        object btnScout: TButton
          Left = 1086
          Top = 0
          Width = 115
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Scout!'
          TabOrder = 7
          OnClick = btnScoutClick
        end
        object chckInDocs: TCheckBox
          Left = 340
          Top = 158
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = 'In docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object chckbxExported: TCheckBox
          Left = 340
          Top = 139
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Exported'
          TabOrder = 9
        end
        object chckKeeper: TCheckBox
          Left = 340
          Top = 120
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Keeper'
          TabOrder = 10
        end
        object Panel6: TPanel
          Left = 536
          Top = 0
          Width = 257
          Height = 212
          Anchors = [akLeft, akTop, akBottom]
          BevelInner = bvLowered
          TabOrder = 11
          object Label15: TLabel
            Left = 128
            Top = 8
            Width = 13
            Height = 13
            Caption = 'NT'
          end
          object Label16: TLabel
            Left = 216
            Top = 8
            Width = 19
            Height = 13
            Caption = 'U20'
          end
          object Label17: TLabel
            Left = 16
            Top = 32
            Width = 13
            Height = 13
            Caption = 'GK'
          end
          object lblNTGK: TLabel
            Left = 128
            Top = 32
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblU20GK: TLabel
            Left = 220
            Top = 32
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 16
            Top = 48
            Width = 14
            Height = 13
            Caption = 'CD'
          end
          object lblNTCD: TLabel
            Left = 128
            Top = 48
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblU20CD: TLabel
            Left = 220
            Top = 48
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 16
            Top = 64
            Width = 22
            Height = 13
            Caption = 'OCD'
          end
          object lblNTOCD: TLabel
            Left = 128
            Top = 64
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblU20OCD: TLabel
            Left = 220
            Top = 64
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 16
            Top = 80
            Width = 24
            Height = 13
            Caption = 'OWB'
          end
          object lblNTOWB: TLabel
            Left = 128
            Top = 80
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblU20OWB: TLabel
            Left = 220
            Top = 80
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 16
            Top = 96
            Width = 12
            Height = 13
            Caption = 'IM'
          end
          object lblNTIM: TLabel
            Left = 128
            Top = 96
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblU20IM: TLabel
            Left = 220
            Top = 96
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 16
            Top = 112
            Width = 28
            Height = 13
            Caption = 'WING'
          end
          object lblNTWing: TLabel
            Left = 128
            Top = 112
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblU20Wing: TLabel
            Left = 220
            Top = 112
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 16
            Top = 128
            Width = 16
            Height = 13
            Caption = 'FW'
          end
          object lblNTFW: TLabel
            Left = 128
            Top = 128
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblU20FW: TLabel
            Left = 220
            Top = 128
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 16
            Top = 144
            Width = 22
            Height = 13
            Caption = 'dFW'
          end
          object lblNTdFW: TLabel
            Left = 128
            Top = 144
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblU20dfW: TLabel
            Left = 220
            Top = 144
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 16
            Top = 175
            Width = 47
            Height = 13
            Caption = 'Talented?'
          end
          object lblCurGK: TLabel
            Left = 185
            Top = 32
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCurCD: TLabel
            Left = 185
            Top = 48
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCurOCD: TLabel
            Left = 185
            Top = 64
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCurOWB: TLabel
            Left = 185
            Top = 80
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCurIM: TLabel
            Left = 185
            Top = 96
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCurWNG: TLabel
            Left = 185
            Top = 112
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCurFW: TLabel
            Left = 185
            Top = 128
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCurdFW: TLabel
            Left = 185
            Top = 144
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 17
            Top = 160
            Width = 12
            Height = 13
            Caption = 'SP'
          end
          object lblNTSP: TLabel
            Left = 129
            Top = 160
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCurSP: TLabel
            Left = 186
            Top = 160
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblU20SP: TLabel
            Left = 221
            Top = 160
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'GK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 16
            Top = 193
            Width = 86
            Height = 13
            Caption = 'Possible talented?'
          end
          object chckNTTalented: TCheckBox
            Left = 130
            Top = 175
            Width = 33
            Height = 17
            TabOrder = 0
          end
          object chckU20Talented: TCheckBox
            Left = 223
            Top = 175
            Width = 33
            Height = 17
            TabOrder = 1
          end
          object chckPossible: TCheckBox
            Left = 130
            Top = 193
            Width = 33
            Height = 17
            TabOrder = 2
          end
        end
        object cxedtManager: TcxTextEdit
          Left = 128
          Top = 72
          Properties.OnEditValueChanged = cxedtManagerPropertiesEditValueChanged
          TabOrder = 12
          Width = 313
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 270
        Width = 1215
        Height = 307
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 2
        object dxPageControl1: TcxPageControl
          Left = 0
          Top = 0
          Width = 1215
          Height = 307
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tbBatchlings
          ClientRectBottom = 303
          ClientRectLeft = 4
          ClientRectRight = 1211
          ClientRectTop = 24
          object tbTeamSpelers: TcxTabSheet
            Caption = 'Talenten'
            object dxDBGrid1: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1207
              Height = 279
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
              DataSource = DataSource1
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoSmartRefresh, edgoSmartReload]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              RegistryPath = '\Software\HTScanner\PlayerInfo'
              ShowGrid = False
              ShowPreviewGrid = False
              OnCustomDrawCell = dxDBGrid1CustomDrawCell
              object dxDBGrid1PLAYER_ID: TdxDBGridColumn
                Caption = 'PlayerID'
                Width = 195
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLAYER_ID'
              end
              object dxDBGrid1PLAYER_NAME: TdxDBGridMaskColumn
                Caption = 'Naam'
                Width = 178
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLAYER_NAME'
              end
              object dxDBGrid1LEEFTIJD: TdxDBGridMaskColumn
                Caption = 'Leeftijd'
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LEEFTIJD'
              end
              object dxDBGrid1U20: TdxDBGridCheckColumn
                Width = 28
                BandIndex = 0
                RowIndex = 0
                FieldName = 'U20'
                ValueChecked = '-1'
                ValueUnchecked = '0'
              end
              object dxDBGrid1SPECIALITEIT: TdxDBGridColumn
                Caption = 'Specialiteit'
                Width = 111
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SPECIALITEIT'
              end
              object dxDBGrid1KEEPEN: TdxDBGridMaskColumn
                Caption = 'GK'
                Width = 38
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_KEEPEN'
              end
              object dxDBGrid1VERDEDIGEN: TdxDBGridMaskColumn
                Caption = 'DEF'
                Width = 38
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_VERDEDIGEN'
              end
              object dxDBGrid1POSITIESPEL: TdxDBGridMaskColumn
                Caption = 'PM'
                Width = 38
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_POSITIESPEL'
              end
              object dxDBGrid1PASSEN: TdxDBGridMaskColumn
                Caption = 'PASS'
                Width = 38
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_PASSEN'
              end
              object dxDBGrid1SCOREN: TdxDBGridMaskColumn
                Caption = 'SC'
                Width = 38
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_SCOREN'
              end
              object dxDBGrid1SPELHERVATTEN: TdxDBGridMaskColumn
                Caption = 'SH'
                Width = 38
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_SPELHERVATTEN'
              end
              object dxDBGrid1VLEUGELSPEL: TdxDBGridMaskColumn
                Caption = 'WING'
                Width = 44
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_VLEUGELSPEL'
              end
              object dxDBGrid1GOOGLE_DOC: TdxDBGridColumn
                Caption = 'Doc.'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'GOOGLE_DOC'
              end
              object dxDBGrid1TABSHEET: TdxDBGridColumn
                Caption = 'Sheet'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TABSHEET'
              end
              object dxDBGrid1SCOUT: TdxDBGridColumn
                Caption = 'Scout'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SCOUT'
              end
              object dxDBGrid1GEBOORTEDATUM: TdxDBGridDateColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'GEBOORTE_DATUM'
              end
            end
          end
          object tbBatchlings: TcxTabSheet
            Caption = 'Batchlings'
            object dbgrdBatchlings: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1207
              Height = 279
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
              DataSource = dsBatchlings
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              RegistryPath = '\Software\HTScanner\Batchlings'
              OnCustomDrawCell = dbgrdBatchlingsCustomDrawCell
              object dbgrdBatchlingsColumn1: TdxDBGridColumn
                Caption = 'ID'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLAYER_ID'
              end
              object dbgrdBatchlingsColumn2: TdxDBGridColumn
                Caption = 'Naam'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLAYER_NAME'
              end
              object dbgrdBatchlingsColumn3: TdxDBGridColumn
                Caption = 'Leeftijd'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LEEFTIJD'
              end
              object dbgrdBatchlingsColumn4: TdxDBGridColumn
                Caption = 'Nationaliteit'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NATIONALITEIT'
              end
              object dbgrdBatchlingsColumn5: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DELETED'
              end
              object dbgrdBatchlingsColumn6: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PROMOTED'
              end
              object dbgrdBatchlingsColumn7: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'U20'
                ValueChecked = '-1'
                ValueUnchecked = '0'
                DisplayChecked = '-1'
                DisplayUnChecked = '0'
              end
              object dbgrdBatchlingsColumn8: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NT'
                ValueChecked = '-1'
                ValueUnchecked = '0'
                DisplayChecked = '-1'
                DisplayUnChecked = '0'
              end
              object dbgrdBatchlingsColumn9: TdxDBGridColumn
                Caption = 'KarakterID'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'KARAKTER_ID'
              end
              object dbgrdBatchlingsColumn10: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'IS_TRAINER'
              end
            end
          end
          object tbPosTwins: TcxTabSheet
            Caption = 'Possible batchlings'
            object dxDBGrid7: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1207
              Height = 279
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
              DataSource = dsPosBatchlings
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              RegistryPath = '\Software\HTScanner\PlayerInfo'
              OnCustomDrawCell = dbgrdBatchlingsCustomDrawCell
              object dxDBGridColumn7: TdxDBGridColumn
                Caption = 'ID'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLAYER_ID'
              end
              object dxDBGridColumn8: TdxDBGridColumn
                Caption = 'Naam'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLAYER_NAME'
              end
              object dxDBGrid7Column9: TdxDBGridColumn
                Caption = 'KarakterID'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'KARAKTER_ID'
              end
              object dxDBGridColumn9: TdxDBGridColumn
                Caption = 'Leeftijd'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LEEFTIJD'
              end
              object dxDBGridColumn10: TdxDBGridColumn
                Caption = 'Nationaliteit'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NATIONALITEIT'
              end
              object dxDBGridColumn11: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DELETED'
              end
              object dxDBGridColumn12: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PROMOTED'
              end
              object dxDBGridCheckColumn1: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'U20'
                ValueChecked = '-1'
                ValueUnchecked = '0'
                DisplayChecked = '-1'
                DisplayUnChecked = '0'
              end
              object dxDBGridCheckColumn2: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NT'
                ValueChecked = '-1'
                ValueUnchecked = '0'
                DisplayChecked = '-1'
                DisplayUnChecked = '0'
              end
              object dxDBGrid7Column10: TdxDBGridColumn
                Caption = 'Specialiteit'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SPECIALITEIT'
              end
              object dxDBGrid7Column11: TdxDBGridColumn
                Caption = 'Karakter'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'KARAKTER'
              end
              object dxDBGrid7Column12: TdxDBGridColumn
                Caption = 'Eerlijkheid'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EERLIJKHEID'
              end
              object dxDBGrid7Column13: TdxDBGridColumn
                Caption = 'Agressiviteit'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'AGRESSIVITEIT'
              end
              object dxDBGrid7Column14: TdxDBGridColumn
                Caption = 'Leiderschap'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LEIDERSCHAP'
              end
              object dxDBGrid7Column15: TdxDBGridColumn
                Caption = 'GK'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_KEEPEN'
              end
              object dxDBGrid7Column16: TdxDBGridColumn
                Caption = 'DEF'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_VERDEDIGEN'
              end
              object dxDBGrid7Column17: TdxDBGridColumn
                Caption = 'POS'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_POSITIESPEL'
              end
              object dxDBGrid7Column18: TdxDBGridColumn
                Caption = 'WNG'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_VLEUGELSPEL'
              end
              object dxDBGrid7Column19: TdxDBGridColumn
                Caption = 'PASS'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_PASSEN'
              end
              object dxDBGrid7Column20: TdxDBGridColumn
                Caption = 'SC'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_SCOREN'
              end
              object dxDBGrid7Column21: TdxDBGridColumn
                Caption = 'SH'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POT_SPELHERVATTEN'
              end
            end
          end
          object dxTabSheet2: TcxTabSheet
            Caption = 'Top prestaties'
            object dxDBGrid6: TdxDBGrid
              Left = 0
              Top = 0
              Width = 1207
              Height = 279
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
              DataSource = dsPrestaties
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              object dxDBGridColumn1: TdxDBGridColumn
                Caption = 'ID'
                Width = 67
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLAYER_ID'
              end
              object dxDBGridColumn2: TdxDBGridColumn
                Caption = 'Naam'
                Width = 146
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLAYER_NAME'
              end
              object dxDBGridColumn3: TdxDBGridColumn
                Caption = 'Leeftijd'
                Width = 176
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LEEFTIJD'
              end
              object dxDBGrid6Column10: TdxDBGridColumn
                Caption = 'Linie'
                Width = 112
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LINIE'
              end
              object dxDBGrid6Column7: TdxDBGridColumn
                Caption = 'Sterren'
                Width = 176
                BandIndex = 0
                RowIndex = 0
                FieldName = 'STERREN'
              end
              object dxDBGrid6Column8: TdxDBGridColumn
                Caption = 'Positie'
                Width = 154
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POSITIE'
              end
              object dxDBGrid6Column9: TdxDBGridDateColumn
                Caption = 'Leeftijd (pres)'
                Width = 309
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LEEFTIJD_PRESTATIE'
              end
              object dxDBGridColumn4: TdxDBGridColumn
                Caption = 'Nationaliteit'
                Width = 262
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NATIONALITEIT'
              end
              object dxDBGridColumn5: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DELETED'
              end
              object dxDBGridColumn6: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PROMOTED'
              end
            end
          end
        end
      end
    end
    object tbSTDBerichten: TcxTabSheet
      Caption = 'STD Berichten'
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 552
        Width = 1215
        Height = 25
        DataSource = dsSTDBerichten
        Align = alBottom
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1215
        Height = 105
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label4: TLabel
          Left = 16
          Top = 11
          Width = 61
          Height = 13
          Caption = 'Omschrijving'
        end
        object Label5: TLabel
          Left = 16
          Top = 35
          Width = 24
          Height = 13
          Caption = 'Type'
        end
        object Label6: TLabel
          Left = 232
          Top = 35
          Width = 15
          Height = 13
          Caption = 'Nr.'
        end
        object dxDBEdit2: TdxDBEdit
          Left = 104
          Top = 8
          Width = 377
          TabOrder = 0
          DataField = 'OMSCHRIJVING'
          DataSource = dsSTDBerichten
        end
        object dxDBSpinEdit1: TdxDBSpinEdit
          Left = 259
          Top = 32
          Width = 55
          TabOrder = 1
          DataField = 'UPDATE_COUNT'
          DataSource = dsSTDBerichten
        end
        object dxDBCheckEdit4: TdxDBCheckEdit
          Left = 100
          Top = 55
          Width = 121
          TabOrder = 2
          Alignment = taLeftJustify
          Caption = 'U20'
          DataField = 'U20'
          DataSource = dsSTDBerichten
          ValueChecked = '-1'
          ValueGrayed = '0'
          ValueUnchecked = '0'
          StoredValues = 1
        end
        object dxDBCheckEdit5: TdxDBCheckEdit
          Left = 100
          Top = 73
          Width = 121
          TabOrder = 3
          Alignment = taLeftJustify
          Caption = 'Herhaling!'
          DataField = 'HERHALING'
          DataSource = dsSTDBerichten
          ValueChecked = '-1'
          ValueGrayed = '0'
          ValueUnchecked = '0'
          StoredValues = 1
        end
        object dxDBImageEdit1: TdxDBImageEdit
          Left = 104
          Top = 32
          Width = 121
          TabOrder = 4
          DataField = 'BERICHT_TYPE'
          DataSource = dsSTDBerichten
          Descriptions.Strings = (
            '1e Info'
            'Update'
            'Afwijzing'
            'Promotie')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3')
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
        end
      end
      object dxDBMemo1: TdxDBMemo
        Left = 0
        Top = 105
        Width = 1215
        Align = alClient
        TabOrder = 2
        DataField = 'BERICHT'
        DataSource = dsSTDBerichten
        Height = 447
      end
    end
    object tbBericht: TcxTabSheet
      Caption = 'Bericht'
      object mBericht: TdxMemo
        Left = 0
        Top = 0
        Width = 1215
        Align = alClient
        TabOrder = 0
        OnExit = mBerichtExit
        Height = 577
      end
    end
    object tbNTScouting: TcxTabSheet
      Caption = 'NT Scouting'
      object Panel5: TPanel
        Left = 0
        Top = 217
        Width = 1215
        Height = 360
        Align = alBottom
        Caption = 'Panel5'
        TabOrder = 0
        object dxDBGrid3: TdxDBGrid
          Left = 1
          Top = 1
          Width = 1213
          Height = 358
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
          DataSource = dsScouting
          Filter.Criteria = {00000000}
          LookAndFeel = lfUltraFlat
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object dxDBGrid3ID: TdxDBGridMaskColumn
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dxDBGrid3PLAYER_ID: TdxDBGridMaskColumn
            Caption = 'PlayerID'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAYER_ID'
          end
          object dxDBGrid3PLAYER_NAAM: TdxDBGridMaskColumn
            Caption = 'Naam'
            Width = 326
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAYER_NAAM'
          end
          object dxDBGrid3YOUTHPLAYER_ID: TdxDBGridMaskColumn
            Caption = 'YouthplayerID'
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'YOUTHPLAYER_ID'
          end
          object dxDBGrid3SPECIALITEIT: TdxDBGridMaskColumn
            Caption = 'Specialiteit'
            Width = 188
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SPECIALITEIT'
          end
          object dxDBGrid3IN_NT_DOCS: TdxDBGridCheckColumn
            Caption = 'In NT Docs...'
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IN_NT_DOCS'
            ShowNullFieldStyle = nsGrayedChecked
            ValueChecked = '-1'
            ValueUnchecked = '0'
          end
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1215
        Height = 222
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 569
          Height = 222
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            Left = 11
            Top = 12
            Width = 41
            Height = 13
            Caption = 'PlayerID'
          end
          object edNTPlayerID: TEdit
            Left = 88
            Top = 7
            Width = 121
            Height = 21
            TabOrder = 0
            OnChange = edPlayerIDChange
          end
          object GroupBox1: TGroupBox
            Left = 216
            Top = 2
            Width = 353
            Height = 207
            Caption = ' Player Test NT/U20 '
            TabOrder = 1
            object Label7: TLabel
              Left = 16
              Top = 24
              Width = 36
              Height = 13
              Caption = 'Keepen'
            end
            object Label8: TLabel
              Left = 16
              Top = 45
              Width = 54
              Height = 13
              Caption = 'Verdedigen'
            end
            object Label9: TLabel
              Left = 16
              Top = 66
              Width = 50
              Height = 13
              Caption = 'Positiespel'
            end
            object Label10: TLabel
              Left = 16
              Top = 87
              Width = 53
              Height = 13
              Caption = 'Vleugelspel'
            end
            object lblPassen1: TLabel
              Left = 16
              Top = 108
              Width = 34
              Height = 13
              Caption = 'Passen'
            end
            object Label11: TLabel
              Left = 16
              Top = 129
              Width = 33
              Height = 13
              Caption = 'Scoren'
            end
            object Label12: TLabel
              Left = 16
              Top = 150
              Width = 68
              Height = 13
              Caption = 'Spelhervatten'
            end
            object Leeftijd: TLabel
              Left = 18
              Top = 180
              Width = 36
              Height = 13
              Caption = 'Leeftijd'
            end
            object Label13: TLabel
              Left = 204
              Top = 180
              Width = 23
              Height = 13
              Caption = 'days'
            end
            object Label14: TLabel
              Left = 133
              Top = 180
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblGK: TLabel
              Left = 247
              Top = 24
              Width = 15
              Height = 13
              Caption = 'GK'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = lblGKClick
            end
            object lblCD: TLabel
              Tag = 1
              Left = 247
              Top = 40
              Width = 15
              Height = 13
              Caption = 'CD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = lblGKClick
            end
            object lblOCD: TLabel
              Tag = 2
              Left = 247
              Top = 56
              Width = 23
              Height = 13
              Caption = 'OCD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = lblGKClick
            end
            object lblOWB: TLabel
              Tag = 3
              Left = 247
              Top = 71
              Width = 26
              Height = 13
              Caption = 'OWB'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = lblGKClick
            end
            object lblIM: TLabel
              Tag = 4
              Left = 247
              Top = 87
              Width = 15
              Height = 13
              Caption = 'IM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = lblGKClick
            end
            object lblWing: TLabel
              Tag = 5
              Left = 247
              Top = 103
              Width = 31
              Height = 13
              Caption = 'WING'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = lblGKClick
            end
            object lblFW: TLabel
              Tag = 6
              Left = 247
              Top = 119
              Width = 17
              Height = 13
              Caption = 'FW'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = lblGKClick
            end
            object lblDFW: TLabel
              Tag = 7
              Left = 247
              Top = 135
              Width = 25
              Height = 13
              Caption = 'DFW'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = lblGKClick
            end
            object pckEdKeepen: TdxPickEdit
              Left = 88
              Top = 21
              Width = 153
              TabOrder = 0
              DropDownListStyle = True
              Items.Strings = (
                'niet-bestaand (non-existent)'
                'rampzalig (disastrous)'
                'waardeloos (wretched)'
                'slecht (poor)'
                'zwak (weak)'
                'matig (inadequate)'
                'redelijk (passable)'
                'goed (solid)'
                'uitstekend (excellent)'
                'formidabel (formidable)'
                'uitmuntend (outstanding)'
                'briljant (brilliant)'
                'wonderbaarlijk (magnificent)'
                'wereldklasse (world class)'
                'bovennatuurlijk (supernatural)'
                'reusachtig (titanic)'
                'buitenaards (extra-terrestrial)'
                'mythisch (mythical)'
                'magisch (magical)'
                'utopisch (utopian)'
                'goddelijk (divine)')
            end
            object pckEdVerdedigen: TdxPickEdit
              Left = 88
              Top = 42
              Width = 153
              TabOrder = 1
              DropDownListStyle = True
              Items.Strings = (
                'niet-bestaand (non-existent)'
                'rampzalig (disastrous)'
                'waardeloos (wretched)'
                'slecht (poor)'
                'zwak (weak)'
                'matig (inadequate)'
                'redelijk (passable)'
                'goed (solid)'
                'uitstekend (excellent)'
                'formidabel (formidable)'
                'uitmuntend (outstanding)'
                'briljant (brilliant)'
                'wonderbaarlijk (magnificent)'
                'wereldklasse (world class)'
                'bovennatuurlijk (supernatural)'
                'reusachtig (titanic)'
                'buitenaards (extra-terrestrial)'
                'mythisch (mythical)'
                'magisch (magical)'
                'utopisch (utopian)'
                'goddelijk (divine)')
            end
            object pckEdPositiespel: TdxPickEdit
              Left = 88
              Top = 63
              Width = 153
              TabOrder = 2
              DropDownListStyle = True
              Items.Strings = (
                'niet-bestaand (non-existent)'
                'rampzalig (disastrous)'
                'waardeloos (wretched)'
                'slecht (poor)'
                'zwak (weak)'
                'matig (inadequate)'
                'redelijk (passable)'
                'goed (solid)'
                'uitstekend (excellent)'
                'formidabel (formidable)'
                'uitmuntend (outstanding)'
                'briljant (brilliant)'
                'wonderbaarlijk (magnificent)'
                'wereldklasse (world class)'
                'bovennatuurlijk (supernatural)'
                'reusachtig (titanic)'
                'buitenaards (extra-terrestrial)'
                'mythisch (mythical)'
                'magisch (magical)'
                'utopisch (utopian)'
                'goddelijk (divine)')
            end
            object pckEdVleugelspel: TdxPickEdit
              Left = 88
              Top = 84
              Width = 153
              TabOrder = 3
              DropDownListStyle = True
              Items.Strings = (
                'niet-bestaand (non-existent)'
                'rampzalig (disastrous)'
                'waardeloos (wretched)'
                'slecht (poor)'
                'zwak (weak)'
                'matig (inadequate)'
                'redelijk (passable)'
                'goed (solid)'
                'uitstekend (excellent)'
                'formidabel (formidable)'
                'uitmuntend (outstanding)'
                'briljant (brilliant)'
                'wonderbaarlijk (magnificent)'
                'wereldklasse (world class)'
                'bovennatuurlijk (supernatural)'
                'reusachtig (titanic)'
                'buitenaards (extra-terrestrial)'
                'mythisch (mythical)'
                'magisch (magical)'
                'utopisch (utopian)'
                'goddelijk (divine)')
            end
            object pckEdPassen: TdxPickEdit
              Left = 88
              Top = 105
              Width = 153
              TabOrder = 4
              DropDownListStyle = True
              Items.Strings = (
                'niet-bestaand (non-existent)'
                'rampzalig (disastrous)'
                'waardeloos (wretched)'
                'slecht (poor)'
                'zwak (weak)'
                'matig (inadequate)'
                'redelijk (passable)'
                'goed (solid)'
                'uitstekend (excellent)'
                'formidabel (formidable)'
                'uitmuntend (outstanding)'
                'briljant (brilliant)'
                'wonderbaarlijk (magnificent)'
                'wereldklasse (world class)'
                'bovennatuurlijk (supernatural)'
                'reusachtig (titanic)'
                'buitenaards (extra-terrestrial)'
                'mythisch (mythical)'
                'magisch (magical)'
                'utopisch (utopian)'
                'goddelijk (divine)')
            end
            object pckEdScoren: TdxPickEdit
              Left = 88
              Top = 126
              Width = 153
              TabOrder = 5
              DropDownListStyle = True
              Items.Strings = (
                'niet-bestaand (non-existent)'
                'rampzalig (disastrous)'
                'waardeloos (wretched)'
                'slecht (poor)'
                'zwak (weak)'
                'matig (inadequate)'
                'redelijk (passable)'
                'goed (solid)'
                'uitstekend (excellent)'
                'formidabel (formidable)'
                'uitmuntend (outstanding)'
                'briljant (brilliant)'
                'wonderbaarlijk (magnificent)'
                'wereldklasse (world class)'
                'bovennatuurlijk (supernatural)'
                'reusachtig (titanic)'
                'buitenaards (extra-terrestrial)'
                'mythisch (mythical)'
                'magisch (magical)'
                'utopisch (utopian)'
                'goddelijk (divine)')
            end
            object pckEdSpelhervatten: TdxPickEdit
              Left = 88
              Top = 147
              Width = 153
              TabOrder = 6
              DropDownListStyle = True
              Items.Strings = (
                'niet-bestaand (non-existent)'
                'rampzalig (disastrous)'
                'waardeloos (wretched)'
                'slecht (poor)'
                'zwak (weak)'
                'matig (inadequate)'
                'redelijk (passable)'
                'goed (solid)'
                'uitstekend (excellent)'
                'formidabel (formidable)'
                'uitmuntend (outstanding)'
                'briljant (brilliant)'
                'wonderbaarlijk (magnificent)'
                'wereldklasse (world class)'
                'bovennatuurlijk (supernatural)'
                'reusachtig (titanic)'
                'buitenaards (extra-terrestrial)'
                'mythisch (mythical)'
                'magisch (magical)'
                'utopisch (utopian)'
                'goddelijk (divine)')
            end
            object spedJaar: TdxSpinEdit
              Left = 88
              Top = 176
              Width = 41
              TabOrder = 7
              Value = 17.000000000000000000
            end
            object spedDagen: TdxSpinEdit
              Left = 145
              Top = 176
              Width = 57
              TabOrder = 8
            end
            object Button7: TButton
              Left = 249
              Top = 173
              Width = 75
              Height = 25
              Caption = 'Show me!'
              TabOrder = 9
              OnClick = Button7Click
            end
            object chckIsU20: TCheckBox
              Left = 246
              Top = 152
              Width = 50
              Height = 17
              Alignment = taLeftJustify
              Caption = 'U20'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
            end
          end
          object chckEDKeeper: TdxCheckEdit
            Left = 8
            Top = 32
            Width = 121
            TabOrder = 2
            Caption = 'Keeper'
          end
        end
        object Panel9: TPanel
          Left = 569
          Top = 0
          Width = 646
          Height = 222
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 515
            Height = 222
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel10'
            TabOrder = 0
            object GroupBox2: TGroupBox
              Left = 0
              Top = 0
              Width = 515
              Height = 222
              Align = alClient
              Caption = ' Huidige talenten '
              TabOrder = 0
              object dxDBGrid5: TdxDBGrid
                Left = 2
                Top = 15
                Width = 511
                Height = 205
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
                DataSource = dsTalenten
                Filter.Criteria = {00000000}
                LookAndFeel = lfUltraFlat
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                RegistryPath = '\Software\HTScanner\NTTalents'
                Anchors = []
                object dxDBGrid5PLAYER_ID: TdxDBGridMaskColumn
                  Caption = 'PlayerID'
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PLAYER_ID'
                end
                object dxDBGrid5PLAYER_NAME: TdxDBGridMaskColumn
                  Caption = 'Naam'
                  Width = 350
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PLAYER_NAME'
                end
                object dxDBGrid5LEEFTIJD: TdxDBGridMaskColumn
                  Caption = 'Leeftijd'
                  Width = 44
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'LEEFTIJD'
                end
                object dxDBGrid5SPECIALITEIT: TdxDBGridMaskColumn
                  Caption = 'Specialiteit'
                  Width = 129
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SPECIALITEIT'
                end
                object dxDBGrid5POS_INDEX: TdxDBGridCurrencyColumn
                  Caption = 'Index'
                  Width = 66
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'POS_INDEX'
                  DisplayFormat = '0.00;-0.00'
                  Nullable = False
                end
              end
            end
          end
          object Panel11: TPanel
            Left = 515
            Top = 0
            Width = 131
            Height = 222
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              131
              222)
            object btnNTScouting: TButton
              Left = 8
              Top = 24
              Width = 115
              Height = 25
              Anchors = [akTop, akRight]
              Caption = 'Zoek!'
              TabOrder = 0
              OnClick = btnNTScoutingClick
            end
            object Button8: TButton
              Left = 8
              Top = 48
              Width = 115
              Height = 25
              Anchors = [akTop, akRight]
              Caption = 'Scout!'
              TabOrder = 1
              OnClick = Button8Click
            end
            object btnYouthplayerID: TButton
              Left = 8
              Top = 72
              Width = 115
              Height = 25
              Anchors = [akTop, akRight]
              Caption = 'Find YouthplayerID!'
              TabOrder = 2
              OnClick = btnYouthplayerIDClick
            end
            object Button10: TButton
              Left = 8
              Top = 96
              Width = 115
              Height = 25
              Anchors = [akTop, akRight]
              Caption = 'Get Info!'
              TabOrder = 3
              OnClick = Button10Click
            end
          end
        end
      end
    end
    object tbPotentials: TcxTabSheet
      Caption = 'U20/NT-potentials'
      object dxDBGrid4: TdxDBGrid
        Left = 0
        Top = 0
        Width = 1215
        Height = 577
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
        DataSource = dsPotentials
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        RegistryPath = '\Software\HTScanner\NTPotentials'
        OnCustomDrawCell = dxDBGrid4CustomDrawCell
        object dxDBGrid4IS_U20: TdxDBGridCheckColumn
          Caption = 'U20'
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_U20'
          ValueChecked = '-1'
          ValueUnchecked = '0'
        end
        object dxDBGrid4LEEFTIJD: TdxDBGridMaskColumn
          Caption = 'Leeftijd'
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEEFTIJD'
        end
        object dxDBGrid4PLAYER_ID: TdxDBGridMaskColumn
          Caption = 'PlayerID'
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_ID'
        end
        object dxDBGrid4PLAYER_NAAM: TdxDBGridMaskColumn
          Caption = 'Naam'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAYER_NAAM'
        end
        object dxDBGrid4HERKOMST: TdxDBGridMaskColumn
          Caption = 'Nationaliteit'
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HERKOMST'
        end
        object dxDBGrid4SPECIALITEIT: TdxDBGridMaskColumn
          Caption = 'Specialiteit'
          Width = 36
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPECIALITEIT'
        end
        object dxDBGrid4TSI: TdxDBGridMaskColumn
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TSI'
        end
        object dxDBGrid4DEADLINE: TdxDBGridDateColumn
          Caption = 'Deadline'
          Width = 34
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DEADLINE'
        end
        object dxDBGrid4HOOGSTE_BOD: TdxDBGridMaskColumn
          Caption = 'Hoogste bod'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HOOGSTE_BOD'
        end
        object dxDBGrid4KEEPEN: TdxDBGridMaskColumn
          Caption = 'KEEP'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KEEPEN'
        end
        object dxDBGrid4VERDEDIGEN: TdxDBGridMaskColumn
          Caption = 'DEF'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VERDEDIGEN'
        end
        object dxDBGrid4POSITIESPEL: TdxDBGridMaskColumn
          Caption = 'PM'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'POSITIESPEL'
        end
        object dxDBGrid4VLEUGELSPEL: TdxDBGridMaskColumn
          Caption = 'WNG'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VLEUGELSPEL'
        end
        object dxDBGrid4PASSEN: TdxDBGridMaskColumn
          Caption = 'PAS'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PASSEN'
        end
        object dxDBGrid4SCOREN: TdxDBGridMaskColumn
          Caption = 'SCO'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SCOREN'
        end
        object dxDBGrid4SPELHERVATTING: TdxDBGridMaskColumn
          Caption = 'SH'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SPELHERVATTING'
        end
        object dxDBGrid4GK_INDEX: TdxDBGridCurrencyColumn
          Caption = 'Index (GK)'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = dxDBGrid4GK_INDEXCustomDrawCell
          FieldName = 'GK_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid4CD_INDEX: TdxDBGridCurrencyColumn
          Caption = 'Index (CD)'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = dxDBGrid4GK_INDEXCustomDrawCell
          FieldName = 'CD_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid4OCD_INDEX: TdxDBGridCurrencyColumn
          Caption = 'Index (OCD)'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = dxDBGrid4GK_INDEXCustomDrawCell
          FieldName = 'OCD_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid4OWB_INDEX: TdxDBGridCurrencyColumn
          Caption = 'Index (OWB)'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = dxDBGrid4GK_INDEXCustomDrawCell
          FieldName = 'OWB_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid4IM_INDEX: TdxDBGridCurrencyColumn
          Caption = 'Index (IM)'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = dxDBGrid4GK_INDEXCustomDrawCell
          FieldName = 'IM_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid4WING_INDEX: TdxDBGridCurrencyColumn
          Caption = 'Index (WING)'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = dxDBGrid4GK_INDEXCustomDrawCell
          FieldName = 'WING_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid4FW_INDEX: TdxDBGridCurrencyColumn
          Caption = 'Index (FW)'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = dxDBGrid4GK_INDEXCustomDrawCell
          FieldName = 'FW_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid4DFW_INDEX: TdxDBGridCurrencyColumn
          Caption = 'Index (DFW)'
          Width = 22
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = dxDBGrid4GK_INDEXCustomDrawCell
          FieldName = 'DFW_INDEX'
          DisplayFormat = '0.00;-0.00'
          Nullable = False
        end
        object dxDBGrid4LEEFTIJD1: TdxDBGridMaskColumn
          Visible = False
          Width = 82
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEEFTIJD1'
        end
        object dxDBGrid4DATUM: TdxDBGridColumn
          Caption = 'Scandatum'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATUM'
        end
        object dxDBGrid4YOUTHPLAYER_ID: TdxDBGridMaskColumn
          Caption = 'YouthplayerID'
          Width = 26
          BandIndex = 0
          RowIndex = 0
          FieldName = 'YOUTHPLAYER_ID'
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ibqrTalenten
    Left = 392
    Top = 341
  end
  object ibqrTalenten: TIBQuery
    Transaction = IBReadTransaction
    SQL.Strings = (
      
        'SELECT J.PLAYER_ID,J.PLAYER_NAME,L.LEEFTIJD,J.TABSHEET,J.GEBOORT' +
        'E_DATUM,'
      
        'K.POT_KEEPEN,K.POT_VERDEDIGEN,K.POT_POSITIESPEL,J.GOOGLE_DOC,D.S' +
        'COUT,'
      
        'K.POT_PASSEN,K.POT_SCOREN,K.POT_SPELHERVATTEN,K.POT_VLEUGELSPEL,' +
        'K.SPECIALITEIT, U.U20 FROM JEUGDSPELERS J'
      'LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM,CURRENT_DATE) L ON (0=0)'
      'LEFT JOIN KARAKTER_PROFIEL K ON (J.KARAKTER_ID = K.ID)'
      'LEFT JOIN GET_IS_U20(J.GEBOORTE_DATUM,0) U ON (0=0)'
      
        'LEFT JOIN DOCS D ON (J.GOOGLE_DOC = D.DOC_NAME AND J.TABSHEET = ' +
        'D.SHEET_NAME)'
      
        'WHERE J.TEAM_ID = :TEAMID AND J.IN_DOCS = -1 AND (J.PROMOTED = 0' +
        ' OR J.PROMOTED IS NULL) '
      'ORDER BY J.GEBOORTE_DATUM DESC')
    Left = 64
    Top = 421
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TEAMID'
        ParamType = ptUnknown
      end>
  end
  object IBWriteTransaction: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 424
    Top = 45
  end
  object ibdtstManagerInfo: TIBDataSet
    Transaction = IBWriteTransaction
    AfterClose = ibdtstScoutingAfterClose
    BeforeOpen = ibdtstScoutingBeforeOpen
    DeleteSQL.Strings = (
      'delete from MANAGER_INFO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into MANAGER_INFO'
      '  (ID, TEAM_ID, MANAGER_NAAM)'
      'values'
      '  (:ID, :TEAM_ID, :MANAGER_NAAM)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  TEAM_ID,'
      '  MANAGER_NAAM'
      'from MANAGER_INFO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM MANAGER_INFO'
      'WHERE TEAM_ID = :TEAMID')
    ModifySQL.Strings = (
      'update MANAGER_INFO'
      'set'
      '  ID = :ID,'
      '  TEAM_ID = :TEAM_ID,'
      '  MANAGER_NAAM = :MANAGER_NAAM'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_MANAGER_INFO'
    Left = 968
    Top = 157
  end
  object dsManagerInfo: TDataSource
    DataSet = ibdtstManagerInfo
    Left = 320
    Top = 373
  end
  object dsSTDBerichten: TDataSource
    DataSet = ibdtstSTDBerichten
    Left = 120
    Top = 367
  end
  object ibdtstSTDBerichten: TIBDataSet
    Transaction = IBWriteTransaction
    AfterClose = ibdtstScoutingAfterClose
    AfterPost = ibdtstSTDBerichtenAfterPost
    BeforeOpen = ibdtstScoutingBeforeOpen
    DeleteSQL.Strings = (
      'delete from STD_BERICHTEN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into STD_BERICHTEN'
      '  (ID, UPDATE_COUNT, BERICHT, OMSCHRIJVING, U20, HERHALING, '
      'BERICHT_TYPE)'
      'values'
      
        '  (:ID, :UPDATE_COUNT, :BERICHT, :OMSCHRIJVING, :U20, :HERHALING' +
        ', '
      ':BERICHT_TYPE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  UPDATE_COUNT,'
      '  BERICHT,'
      '  OMSCHRIJVING,'
      '  U20,'
      '  HERHALING,'
      '  BERICHT_TYPE'
      'from STD_BERICHTEN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM STD_BERICHTEN')
    ModifySQL.Strings = (
      'update STD_BERICHTEN'
      'set'
      '  ID = :ID,'
      '  UPDATE_COUNT = :UPDATE_COUNT,'
      '  BERICHT = :BERICHT,'
      '  OMSCHRIJVING = :OMSCHRIJVING,'
      '  U20 = :U20,'
      '  HERHALING = :HERHALING,'
      '  BERICHT_TYPE = :BERICHT_TYPE'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_STD_BERICHTEN_ID'
    Left = 976
    Top = 231
  end
  object ibqrBatchlings: TIBQuery
    Transaction = IBReadTransaction
    SQL.Strings = (
      'SELECT * FROM GET_BATCHLINGS_UNLIMITED(:KARAKTERID,1)'
      'ORDER BY LEEFTIJD')
    Left = 64
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'KARAKTERID'
        ParamType = ptUnknown
      end>
  end
  object dsBatchlings: TDataSource
    DataSet = ibqrBatchlings
    Left = 168
    Top = 340
  end
  object ibdtstScouting: TIBDataSet
    Transaction = IBWriteTransaction
    AfterClose = ibdtstScoutingAfterClose
    AfterPost = ibdtstScoutingAfterPost
    BeforeOpen = ibdtstScoutingBeforeOpen
    DeleteSQL.Strings = (
      'delete from SCOUTING'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SCOUTING'
      '  (YOUTHPLAYER_ID, IN_NT_DOCS)'
      'values'
      '  (:YOUTHPLAYER_ID, :IN_NT_DOCS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PLAYER_ID,'
      '  PLAYER_NAAM,'
      '  TSI,'
      '  VORM,'
      '  CONDITIE,'
      '  POSITIESPEL,'
      '  VERDEDIGEN,'
      '  VLEUGELSPEL,'
      '  KEEPEN,'
      '  PASSEN,'
      '  SCOREN,'
      '  SPELHERVATTING,'
      '  LEEFTIJD,'
      '  SUBSKILL,'
      '  HOOGSTE_BOD,'
      '  VRAAGPRIJS,'
      '  DEADLINE,'
      '  HERKOMST,'
      '  SPECIALITEIT,'
      '  ERVARING,'
      '  KARAKTER,'
      '  AGRESSIVITEIT,'
      '  EERLIJKHEID,'
      '  LEIDERSCHAP,'
      '  TALENT_SCOUTING,'
      '  DATUM,'
      '  U20,'
      '  NT,'
      '  LOON,'
      '  WEKEN_BLESSURE,'
      '  KARAKTER_PROFIEL_ID,'
      '  YOUTHPLAYER_ID,'
      '  IN_NT_DOCS'
      'from SCOUTING '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT '
      'ID,'
      'PLAYER_ID,'
      'PLAYER_NAAM, '
      'YOUTHPLAYER_ID, '
      'SPECIALITEIT, '
      'IN_NT_DOCS,'
      'KARAKTER_PROFIEL_ID '
      'FROM SCOUTING'
      'WHERE PLAYER_ID = :ID')
    ModifySQL.Strings = (
      'update SCOUTING'
      'set'
      '  YOUTHPLAYER_ID = :YOUTHPLAYER_ID,'
      '  IN_NT_DOCS = :IN_NT_DOCS'
      'where'
      '  ID = :OLD_ID')
    Left = 968
    Top = 86
    object ibdtstScoutingID: TIntegerField
      FieldName = 'ID'
      Origin = '"SCOUTING"."ID"'
      Required = True
    end
    object ibdtstScoutingPLAYER_ID: TIntegerField
      FieldName = 'PLAYER_ID'
      Origin = '"SCOUTING"."PLAYER_ID"'
    end
    object ibdtstScoutingPLAYER_NAAM: TIBStringField
      FieldName = 'PLAYER_NAAM'
      Origin = '"SCOUTING"."PLAYER_NAAM"'
      Size = 100
    end
    object ibdtstScoutingYOUTHPLAYER_ID: TIntegerField
      FieldName = 'YOUTHPLAYER_ID'
      Origin = '"SCOUTING"."YOUTHPLAYER_ID"'
    end
    object ibdtstScoutingSPECIALITEIT: TIBStringField
      FieldName = 'SPECIALITEIT'
      Origin = '"SCOUTING"."SPECIALITEIT"'
    end
    object ibdtstScoutingIN_NT_DOCS: TSmallintField
      FieldName = 'IN_NT_DOCS'
      Origin = '"SCOUTING"."IN_NT_DOCS"'
    end
    object ibdtstScoutingKARAKTER_PROFIEL_ID: TIntegerField
      FieldName = 'KARAKTER_PROFIEL_ID'
      Origin = '"SCOUTING"."KARAKTER_PROFIEL_ID"'
    end
  end
  object dsScouting: TDataSource
    DataSet = ibdtstScouting
    Left = 392
    Top = 422
  end
  object dsPotentials: TDataSource
    DataSet = ibqrPotentials
    Left = 280
    Top = 463
  end
  object ibqrPotentials: TIBQuery
    Transaction = IBReadTransaction
    BeforeOpen = ibqrPotentialsBeforeOpen
    SQL.Strings = (
      
        'SELECT L.LEEFTIJD, U20.U20 IS_U20, S.PLAYER_ID, S.PLAYER_NAAM, S' +
        '.HERKOMST, S.DATUM,'
      '  S.SPECIALITEIT, S.TSI, S.DEADLINE, S.HOOGSTE_BOD, S.KEEPEN,'
      
        '  S.VERDEDIGEN, S.POSITIESPEL, S.VLEUGELSPEL, S.PASSEN, S.SCOREN' +
        ','
      
        '  S.SPELHERVATTING, POT.GK_INDEX, POT.CD_INDEX, POT.OCD_INDEX, P' +
        'OT.OWB_INDEX,'
      
        '  POT.IM_INDEX, POT.WING_INDEX, POT.FW_INDEX, POT.DFW_INDEX, S.L' +
        'EEFTIJD,'
      '  S.YOUTHPLAYER_ID'
      'FROM SCOUTING S'
      'LEFT JOIN JEUGDSPELERS J ON (S.YOUTHPLAYER_ID = J.PLAYER_ID)'
      'LEFT JOIN KARAKTER_PROFIEL K ON (J.KARAKTER_ID = K.ID)'
      'LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM,CURRENT_DATE) L ON (0=0)'
      
        'LEFT JOIN CALC_NT_POTENTIAL_OVERALL(J.GEBOORTE_DATUM,L.AGE,L.DAY' +
        'S,J.KARAKTER_ID,S.KEEPEN,S.VERDEDIGEN,S.POSITIESPEL,S.VLEUGELSPE' +
        'L,S.PASSEN,S.SCOREN,S.SPELHERVATTING) POT'
      '  ON (0=0)'
      
        'LEFT JOIN GET_IS_U20(J.GEBOORTE_DATUM,CASE WHEN COALESCE(K.IS_KE' +
        'EPER,0) = -1 THEN 0 ELSE 1 END) U20 ON (0=0)'
      'WHERE'
      'S.DEADLINE >= CURRENT_TIMESTAMP AND'
      
        '((POT.GK_INDEX >= :MAX_AWIJKING or POT.CD_INDEX >= :MAX_AWIJKING' +
        ' OR POT.OCD_INDEX >= :MAX_AWIJKING OR'
      
        'POT.OWB_INDEX >= :MAX_AWIJKING OR POT.IM_INDEX >= :MAX_AWIJKING ' +
        'OR POT.WING_INDEX >= :MAX_AWIJKING OR'
      'POT.FW_INDEX >= :MAX_AWIJKING OR POT.DFW_INDEX > :MAX_AWIJKING)'
      'OR'
      
        '((U20.U20 = -1) AND (S.KEEPEN >=7 AND S.VERDEDIGEN + S.SPELHERVA' +
        'TTING >=8))'
      ')'
      'ORDER BY S.DEADLINE')
    Left = 608
    Top = 351
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MAX_AWIJKING'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAX_AWIJKING'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAX_AWIJKING'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAX_AWIJKING'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAX_AWIJKING'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAX_AWIJKING'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAX_AWIJKING'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAX_AWIJKING'
        ParamType = ptUnknown
      end>
  end
  object dsTalenten: TDataSource
    DataSet = ibqrNTTalenten
    Left = 944
    Top = 289
  end
  object ibqrNTTalenten: TIBQuery
    Transaction = IBReadTransaction
    SQL.Strings = (
      'SELECT'
      'PLAYER_ID,'
      'PLAYER_NAME,'
      #39#39' AS LEEFTIJD,'
      'SPECIALITEIT,'
      '0 POS_INDEX'
      'FROM NT_SCOUTING')
    Left = 704
    Top = 345
  end
  object dsPrestaties: TDataSource
    DataSet = ibqrPrestaties
    Left = 776
    Top = 415
  end
  object ibqrPrestaties: TIBQuery
    Transaction = IBReadTransaction
    SQL.Strings = (
      'SELECT'
      '  P.STERREN,'
      '  P.LINIE,'
      '  P.POSITIE,'
      '  P.PLAYER_ID,'
      '  P.LEEFTIJD LEEFTIJD_PRESTATIE,'
      '  P.TALENTED,'
      '  J.PLAYER_NAME,'
      '  L.LEEFTIJD,'
      '  J.NATIONALITEIT,'
      '  J.DELETED,'
      '  J.PROMOTED'
      'FROM'
      '  GET_BESTE_PRESTATIE_PER_LINIE(:KARAKTERID, 0, NULL) P'
      '  LEFT JOIN JEUGDSPELERS J ON (P.PLAYER_ID = J.PLAYER_ID)'
      
        '  LEFT JOIN GET_LEEFTIJD(J.GEBOORTE_DATUM, CURRENT_DATE) L ON (0' +
        '=0)')
    Left = 880
    Top = 407
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'KARAKTERID'
        ParamType = ptUnknown
      end>
  end
  object ibqrPosBatchlings: TIBQuery
    Transaction = IBReadTransaction
    SQL.Strings = (
      'SELECT * FROM GET_BATCHLINGS_UNLIMITED(:KARAKTERID)'
      'ORDER BY LEEFTIJD')
    Left = 456
    Top = 508
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'KARAKTERID'
        ParamType = ptUnknown
      end>
  end
  object dsPosBatchlings: TDataSource
    DataSet = ibqrPosBatchlings
    Left = 472
    Top = 463
  end
  object IBReadTransaction: TIBTransaction
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'nowait')
    Left = 296
    Top = 85
  end
end
