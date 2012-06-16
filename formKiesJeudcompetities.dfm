object frmKiesReeks: TfrmKiesReeks
  Left = 510
  Top = 233
  Width = 528
  Height = 391
  Caption = 'Kies competitiereeks'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxdbgrdSISObjectInfo: TdxDBGrid
    Left = 2
    Top = 2
    Width = 508
    Height = 347
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnDblClick = dxdbgrdSISObjectInfoDblClick
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = dsComps
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HideFocusRect = True
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHideFocusRect, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    ScrollBars = ssVertical
    ShowGrid = False
    ShowHeader = False
    OnCustomDrawCell = dxdbgrdSISObjectInfoCustomDrawCell
    Anchors = [akLeft, akTop, akRight, akBottom]
    object dxdbgrdSISObjectInfoOMSCHRIJVING: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OMSCHRIJVING'
    end
    object dxdbgrdSISObjectInfoLAATSTE_SCAN: TdxDBGridDateColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LAATSTE_SCAN'
    end
    object dxdbgrdSISObjectInfoColumn3: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AANTAL_COMP'
    end
    object dxdbgrdSISObjectInfoColumn4: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AANTAL_GESCOUT'
    end
    object dxdbgrdSISObjectInfoColumn5: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TBS_DATUM'
    end
    object dxdbgrdSISObjectInfoPLAYERS_TODO: TdxDBGridColumn
      Caption = 'Todo'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PLAYERS_TODO'
    end
    object dxdbgrdSISObjectInfoColumn7: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PLAYERS_DONE'
    end
  end
  object ibqrComps: TIBQuery
    Transaction = ibtrComp
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      'JC.ID,'
      'JC.OMSCHRIJVING,'
      'JC.TBS_DATUM,'
      'MAX(SC.SCAN_DATE) LAATSTE_SCAN,'
      '(SELECT SUM(NO_COMPETITIES) FROM JEUGD_COMPETITIES_ID WHERE '
      ' JEUGD_COMPETITIES_ID = JC.ID) AANTAL_COMP,'
      ''
      '(SELECT COUNT(ID) FROM COMPETITIES_SCANNED WHERE'
      'JEUGD_COMPETITIES_ID = JC.ID AND SCAN_DATE BETWEEN'
      'MAX(SC.SCAN_DATE) - 6 AND CURRENT_DATE) AANTAL_GESCOUT'
      ''
      'FROM JEUGD_COMPETITIES JC'
      
        'LEFT JOIN COMPETITIES_SCANNED SC ON (JC.ID = SC.JEUGD_COMPETITIE' +
        'S_ID)'
      'GROUP BY'
      '  JC.ID, JC.OMSCHRIJVING, JC.VOLGORDE, JC.TBS_DATUM,'
      'ORDER BY VOLGORDE')
    Left = 96
    Top = 48
  end
  object ibtrComp: TIBTransaction
    Active = False
    AutoStopAction = saNone
    Left = 224
    Top = 24
  end
  object dsComps: TDataSource
    DataSet = ibqrComps
    Left = 64
    Top = 128
  end
end
