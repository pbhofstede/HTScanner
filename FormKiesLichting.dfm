object frmKiesLichting: TfrmKiesLichting
  Left = 666
  Top = 358
  Width = 390
  Height = 298
  Caption = 'Kies lichting'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxdbgrdSISObjectInfo: TdxDBGrid
    Left = 2
    Top = 2
    Width = 370
    Height = 254
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
    DataSource = dsKiesLichting
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
    Anchors = [akLeft, akTop, akRight, akBottom]
    object dxdbgrdSISObjectInfoID: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID'
    end
    object dxdbgrdSISObjectInfoOMSCHRIJVING: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OMSCHRIJVING'
    end
    object dxdbgrdSISObjectInfoNT_SEIZOEN: TdxDBGridColumn
      Caption = 'NT Seizoen'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NT_SEIZOEN'
    end
  end
  object ibtrLichting: TIBTransaction
    Active = False
    AutoStopAction = saNone
    Left = 224
    Top = 24
  end
  object ibqrKiesLichting: TIBQuery
    Transaction = ibtrLichting
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT D.* FROM U20_DATA D'
      'WHERE D.DATUM - (3 * 16 * 7) > CURRENT_DATE'
      'ORDER BY D.DATUM')
    Left = 112
    Top = 80
  end
  object dsKiesLichting: TDataSource
    DataSet = ibqrKiesLichting
    Left = 112
    Top = 16
  end
end
