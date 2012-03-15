object frmAutoScout: TfrmAutoScout
  Left = 305
  Top = 321
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 381
  ClientWidth = 1184
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 340
    Width = 1184
    Height = 41
    Align = alBottom
    TabOrder = 0
    object CancelBtn: TButton
      Left = 1099
      Top = 9
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object btnScan: TButton
      Left = 19
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Scan!'
      Default = True
      ModalResult = 1
      TabOrder = 1
      OnClick = btnScanClick
    end
  end
  object dbgAutoscan: TdxDBGrid
    Left = 0
    Top = 0
    Width = 1184
    Height = 340
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = dsAutoscan
    Filter.Criteria = {00000000}
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    ShowNewItemRow = True
    object dbgAutoscanMIN_LEEFTIJD: TdxDBGridColumn
      Caption = 'Min leeftijd'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MIN_LEEFTIJD'
    end
    object dbgAutoscanID: TdxDBGridColumn
      Caption = 'id'
      Visible = False
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID'
    end
    object dbgAutoscanMAX_LEEFTIJD: TdxDBGridColumn
      Caption = 'Max leeftijd'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MAX_LEEFTIJD'
    end
    object dbgAutoscanSKILL1_TYPE_OMS: TdxDBGridLookupColumn
      Caption = 'Vaardigheid 1'
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SKILL1_TYPE_OMS'
      ImmediateDropDown = True
      ListFieldName = 'OMSCHRIJVING'
    end
    object dbgAutoscanSKILL1_MIN_OMS: TdxDBGridLookupColumn
      Caption = '1 min'
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SKILL1_MIN_OMS'
      ListFieldName = 'OMSCHRIJVING'
    end
    object dbgAutoscanSKILL1_MAX_OMS: TdxDBGridLookupColumn
      Caption = '1 max'
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SKILL1_MAX_OMS'
      ListFieldName = 'OMSCHRIJVING'
    end
    object dbgAutoscanSKILL2_TYPE_OMS: TdxDBGridLookupColumn
      Caption = 'Vaardigheid 2'
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SKILL2_TYPE_OMS'
      ListFieldName = 'OMSCHRIJVING'
    end
    object dbgAutoscanSKILL2_MIN_OMS: TdxDBGridLookupColumn
      Caption = '2 min'
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SKILL2_MIN_OMS'
      ListFieldName = 'OMSCHRIJVING'
    end
    object dbgAutoscanSKILL2_MAX_OMS: TdxDBGridLookupColumn
      Caption = '2 max'
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SKILL2_MAX_OMS'
      ListFieldName = 'OMSCHRIJVING'
    end
    object dbgAutoscanSKILL3_TYPE_OMS: TdxDBGridLookupColumn
      Caption = 'Vaardigheid 3'
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SKILL3_TYPE_OMS'
      ListFieldName = 'OMSCHRIJVING'
    end
    object dbgAutoscanSKILL3_MIN_OMS: TdxDBGridLookupColumn
      Caption = '3 min'
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SKILL3_MIN_OMS'
      ListFieldName = 'OMSCHRIJVING'
    end
    object dbgAutoscanSKILL3_MAX_OMS: TdxDBGridLookupColumn
      Caption = '3 max'
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SKILL3_MAX_OMS'
      ListFieldName = 'OMSCHRIJVING'
    end
  end
  object qyAutoscan: TIBDataSet
    Database = frmHTScanner.ibdbHTInfo
    Transaction = ibtrAutoScan
    AfterPost = qyAutoscanAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AUTOSCAN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into AUTOSCAN'
      
        '  (ID, MIN_LEEFTIJD, MAX_LEEFTIJD, SKILL1_TYPE, SKILL1_MIN, SKIL' +
        'L1_MAX, '
      
        '   SKILL2_TYPE, SKILL2_MIN, SKILL2_MAX, SKILL3_TYPE, SKILL3_MIN,' +
        ' SKILL3_MAX)'
      'values'
      
        '  (:ID, :MIN_LEEFTIJD, :MAX_LEEFTIJD, :SKILL1_TYPE, :SKILL1_MIN,' +
        ' :SKILL1_MAX, '
      
        '   :SKILL2_TYPE, :SKILL2_MIN, :SKILL2_MAX, :SKILL3_TYPE, :SKILL3' +
        '_MIN, :SKILL3_MAX)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  MIN_LEEFTIJD,'
      '  MAX_LEEFTIJD,'
      '  SKILL1_TYPE,'
      '  SKILL1_MIN,'
      '  SKILL1_MAX,'
      '  SKILL2_TYPE,'
      '  SKILL2_MIN,'
      '  SKILL2_MAX,'
      '  SKILL3_TYPE,'
      '  SKILL3_MIN,'
      '  SKILL3_MAX'
      'from AUTOSCAN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM AUTOSCAN')
    ModifySQL.Strings = (
      'update AUTOSCAN'
      'set'
      '  ID = :ID,'
      '  MIN_LEEFTIJD = :MIN_LEEFTIJD,'
      '  MAX_LEEFTIJD = :MAX_LEEFTIJD,'
      '  SKILL1_TYPE = :SKILL1_TYPE,'
      '  SKILL1_MIN = :SKILL1_MIN,'
      '  SKILL1_MAX = :SKILL1_MAX,'
      '  SKILL2_TYPE = :SKILL2_TYPE,'
      '  SKILL2_MIN = :SKILL2_MIN,'
      '  SKILL2_MAX = :SKILL2_MAX,'
      '  SKILL3_TYPE = :SKILL3_TYPE,'
      '  SKILL3_MIN = :SKILL3_MIN,'
      '  SKILL3_MAX = :SKILL3_MAX'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_AUTOSCAN_ID'
    Left = 168
    Top = 128
    object qyAutoscanID: TIntegerField
      FieldName = 'ID'
      Origin = '"AUTOSCAN"."ID"'
      Required = True
    end
    object qyAutoscanMIN_LEEFTIJD: TSmallintField
      FieldName = 'MIN_LEEFTIJD'
      Origin = '"AUTOSCAN"."MIN_LEEFTIJD"'
    end
    object qyAutoscanMAX_LEEFTIJD: TSmallintField
      FieldName = 'MAX_LEEFTIJD'
      Origin = '"AUTOSCAN"."MAX_LEEFTIJD"'
    end
    object qyAutoscanSKILL1_TYPE: TSmallintField
      FieldName = 'SKILL1_TYPE'
      Origin = '"AUTOSCAN"."SKILL1_TYPE"'
    end
    object qyAutoscanSKILL1_TYPE_OMS: TStringField
      FieldKind = fkLookup
      FieldName = 'SKILL1_TYPE_OMS'
      LookupDataSet = mmVaardigheden
      LookupKeyFields = 'ID'
      LookupResultField = 'OMSCHRIJVING'
      KeyFields = 'SKILL1_TYPE'
      Lookup = True
    end
    object qyAutoscanSKILL1_MIN: TSmallintField
      FieldName = 'SKILL1_MIN'
      Origin = '"AUTOSCAN"."SKILL1_MIN"'
    end
    object qyAutoscanSKILL1_MIN_OMS: TStringField
      FieldKind = fkLookup
      FieldName = 'SKILL1_MIN_OMS'
      LookupDataSet = mmWaarden
      LookupKeyFields = 'ID'
      LookupResultField = 'OMSCHRIJVING'
      KeyFields = 'SKILL1_MIN'
      Lookup = True
    end
    object qyAutoscanSKILL1_MAX: TSmallintField
      FieldName = 'SKILL1_MAX'
      Origin = '"AUTOSCAN"."SKILL1_MAX"'
    end
    object qyAutoscanSKILL1_MAX_OMS: TStringField
      FieldKind = fkLookup
      FieldName = 'SKILL1_MAX_OMS'
      LookupDataSet = mmWaarden
      LookupKeyFields = 'ID'
      LookupResultField = 'OMSCHRIJVING'
      KeyFields = 'SKILL1_MAX'
      Lookup = True
    end
    object qyAutoscanSKILL2_TYPE: TSmallintField
      FieldName = 'SKILL2_TYPE'
      Origin = '"AUTOSCAN"."SKILL2_TYPE"'
    end
    object qyAutoscanSKILL2_MIN: TSmallintField
      FieldName = 'SKILL2_MIN'
      Origin = '"AUTOSCAN"."SKILL2_MIN"'
    end
    object qyAutoscanSKILL2_MAX: TSmallintField
      FieldName = 'SKILL2_MAX'
      Origin = '"AUTOSCAN"."SKILL2_MAX"'
    end
    object qyAutoscanSKILL3_TYPE: TSmallintField
      FieldName = 'SKILL3_TYPE'
      Origin = '"AUTOSCAN"."SKILL3_TYPE"'
    end
    object qyAutoscanSKILL3_MIN: TSmallintField
      FieldName = 'SKILL3_MIN'
      Origin = '"AUTOSCAN"."SKILL3_MIN"'
    end
    object qyAutoscanSKILL3_MAX: TSmallintField
      FieldName = 'SKILL3_MAX'
      Origin = '"AUTOSCAN"."SKILL3_MAX"'
    end
    object qyAutoscanSKILL2_TYPE_OMS: TStringField
      FieldKind = fkLookup
      FieldName = 'SKILL2_TYPE_OMS'
      LookupDataSet = mmVaardigheden
      LookupKeyFields = 'ID'
      LookupResultField = 'OMSCHRIJVING'
      KeyFields = 'SKILL2_TYPE'
      Lookup = True
    end
    object qyAutoscanSKILL2_MIN_OMS: TStringField
      FieldKind = fkLookup
      FieldName = 'SKILL2_MIN_OMS'
      LookupDataSet = mmWaarden
      LookupKeyFields = 'ID'
      LookupResultField = 'OMSCHRIJVING'
      KeyFields = 'SKILL2_MIN'
      Lookup = True
    end
    object qyAutoscanSKILL2_MAX_OMS: TStringField
      FieldKind = fkLookup
      FieldName = 'SKILL2_MAX_OMS'
      LookupDataSet = mmWaarden
      LookupKeyFields = 'ID'
      LookupResultField = 'OMSCHRIJVING'
      KeyFields = 'SKILL2_MAX'
      Lookup = True
    end
    object qyAutoscanSKILL3_TYPE_OMS: TStringField
      FieldKind = fkLookup
      FieldName = 'SKILL3_TYPE_OMS'
      LookupDataSet = mmVaardigheden
      LookupKeyFields = 'ID'
      LookupResultField = 'OMSCHRIJVING'
      KeyFields = 'SKILL3_TYPE'
      Lookup = True
    end
    object qyAutoscanSKILL3_MIN_OMS: TStringField
      FieldKind = fkLookup
      FieldName = 'SKILL3_MIN_OMS'
      LookupDataSet = mmWaarden
      LookupKeyFields = 'ID'
      LookupResultField = 'OMSCHRIJVING'
      KeyFields = 'SKILL3_MIN'
      Lookup = True
    end
    object qyAutoscanSKILL3_MAX_OMS: TStringField
      FieldKind = fkLookup
      FieldName = 'SKILL3_MAX_OMS'
      LookupDataSet = mmWaarden
      LookupKeyFields = 'ID'
      LookupResultField = 'OMSCHRIJVING'
      KeyFields = 'SKILL3_MAX'
      Lookup = True
    end
  end
  object dsAutoscan: TDataSource
    DataSet = qyAutoscan
    Left = 256
    Top = 128
  end
  object mmVaardigheden: TdxMemData
    Indexes = <>
    Persistent.Data = {
      566572666666666666FE3F020000000200000002000300494400150000000100
      0D004F4D53434852494A56494E470001010001070000004B656570656E000103
      00010B0000005665726465646967656E00010400010C000000506F7369746965
      7370656C00010500010C000000566C657567656C7370656C0001060001070000
      0053636F72656E00010700010F0000005370656C68657276617474696E670001
      0800010700000050617373656E00}
    SortOptions = []
    Left = 80
    Top = 248
    object mmVaardighedenID: TSmallintField
      FieldName = 'ID'
    end
    object mmVaardighedenOMSCHRIJVING: TStringField
      FieldName = 'OMSCHRIJVING'
    end
  end
  object ibtrAutoScan: TIBTransaction
    Active = False
    DefaultDatabase = frmHTScanner.ibdbHTInfo
    AutoStopAction = saNone
    Left = 88
    Top = 128
  end
  object mmWaarden: TdxMemData
    Indexes = <>
    Persistent.Data = {
      566572666666666666FE3F020000000200000002000300494400150000000100
      0D004F4D53434852494A56494E4700010100010A00000052616D707A616C6967
      00010200010B0000005761617264656C6F6F73000103000107000000536C6563
      68740001040001050000005A77616B0001050001060000004D61746967000106
      000109000000526564656C696A6B000107000105000000476F65640001080001
      0B0000005569747374656B656E6400010900010B000000466F726D6964616265
      6C00010A00010B0000005569746D756E74656E6400010B000109000000427269
      6C6A616E7400010C00010F000000576F6E646572626161726C696A6B00010D00
      010D000000576572656C646B6C6173736500010E000110000000426F76656E6E
      61747575726C696A6B00010F00010B0000005265757361636874696700011000
      010C00000042756974656E61617264730001110001090000004D797468697363
      680001120001080000004D61676973636800011300010900000055746F706973
      636800011400010A000000476F6464656C696A6B00}
    SortOptions = []
    Left = 176
    Top = 248
    object SmallintField1: TSmallintField
      FieldName = 'ID'
    end
    object StringField1: TStringField
      FieldName = 'OMSCHRIJVING'
    end
  end
end
