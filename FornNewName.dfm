object frmNewName: TfrmNewName
  Left = 509
  Top = 340
  Width = 402
  Height = 130
  Caption = 'frmNewName'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblPrompt: TLabel
    Left = 8
    Top = 8
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnOk: TButton
    Left = 112
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 0
    OnClick = btnOkClick
  end
  object btnAnnuleren: TButton
    Left = 192
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Annuleren'
    ModalResult = 2
    TabOrder = 1
    OnClick = btnAnnulerenClick
  end
  object dxDBEdit1: TdxDBEdit
    Left = 8
    Top = 24
    Width = 369
    TabOrder = 2
    DataField = 'PLAYER_NAME'
    DataSource = DataSource1
  end
  object ibdtstPlayerName: TIBDataSet
    Database = frmHTScanner.ibdbHTInfo
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from JEUGDSPELERS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into JEUGDSPELERS'
      
        '  (ID, PLAYER_ID, PLAYER_NAME, TEAM_ID, GEBOORTE_DATUM, TOETREED' +
        '_DATUM, '
      
        '   SCAN_DATUM, IS_NEW, EXPORTED, KARAKTER_ID, IN_DOCS, KEEPEN, V' +
        'ERDEDIGEN, '
      
        '   VLEUGELSPEL, POSITIESPEL, PASSEN, SCOREN, SPELHERVATTEN, UPDA' +
        'TE_COUNT)'
      'values'
      
        '  (:ID, :PLAYER_ID, :PLAYER_NAME, :TEAM_ID, :GEBOORTE_DATUM, :TO' +
        'ETREED_DATUM, '
      
        '   :SCAN_DATUM, :IS_NEW, :EXPORTED, :KARAKTER_ID, :IN_DOCS, :KEE' +
        'PEN, :VERDEDIGEN, '
      
        '   :VLEUGELSPEL, :POSITIESPEL, :PASSEN, :SCOREN, :SPELHERVATTEN,' +
        ' :UPDATE_COUNT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PLAYER_ID,'
      '  PLAYER_NAME,'
      '  TEAM_ID,'
      '  GEBOORTE_DATUM,'
      '  TOETREED_DATUM,'
      '  SCAN_DATUM,'
      '  IS_NEW,'
      '  EXPORTED,'
      '  KARAKTER_ID,'
      '  IN_DOCS,'
      '  KEEPEN,'
      '  VERDEDIGEN,'
      '  VLEUGELSPEL,'
      '  POSITIESPEL,'
      '  PASSEN,'
      '  SCOREN,'
      '  SPELHERVATTEN,'
      '  UPDATE_COUNT'
      'from JEUGDSPELERS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM JEUGDSPELERS'
      'WHERE PLAYER_ID = :ID')
    ModifySQL.Strings = (
      'update JEUGDSPELERS'
      'set'
      '  ID = :ID,'
      '  PLAYER_ID = :PLAYER_ID,'
      '  PLAYER_NAME = :PLAYER_NAME,'
      '  TEAM_ID = :TEAM_ID,'
      '  GEBOORTE_DATUM = :GEBOORTE_DATUM,'
      '  TOETREED_DATUM = :TOETREED_DATUM,'
      '  SCAN_DATUM = :SCAN_DATUM,'
      '  IS_NEW = :IS_NEW,'
      '  EXPORTED = :EXPORTED,'
      '  KARAKTER_ID = :KARAKTER_ID,'
      '  IN_DOCS = :IN_DOCS,'
      '  KEEPEN = :KEEPEN,'
      '  VERDEDIGEN = :VERDEDIGEN,'
      '  VLEUGELSPEL = :VLEUGELSPEL,'
      '  POSITIESPEL = :POSITIESPEL,'
      '  PASSEN = :PASSEN,'
      '  SCOREN = :SCOREN,'
      '  SPELHERVATTEN = :SPELHERVATTEN,'
      '  UPDATE_COUNT = :UPDATE_COUNT'
      'where'
      '  ID = :OLD_ID')
    Left = 32
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = frmHTScanner.ibdbHTInfo
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 296
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ibdtstPlayerName
    Left = 224
    Top = 8
  end
end
