unit uHTGrid;

interface

uses
  uHTDb, dxTL;

function GetNodeValue(aNode: TdxTreeListNode; aFieldName: String;
    aResultType: TDBResultType; aForceHasChildren: Boolean =  FALSE): Variant; overload;
function GetNodeValue(aNode: TdxTreeListNode; aIndex: Integer;
    aResultType: TDBResultType; aForceHasChildren: Boolean =  FALSE): Variant; overload;

implementation

uses
  Variants, uHTMisc, dxDBCtrl;

function GetNodeValue(aNode: TdxTreeListNode; aIndex: Integer;
  aResultType: TDBResultType; aForceHasChildren: Boolean =  FALSE): Variant; overload;
begin
  try
    Result := NULL;

    if (Assigned(aNode)) and
       ((not aNode.HasChildren) or (aForceHasChildren)) and
       (Assigned(aNode.Owner)) then
    begin
      if (aNode.CountValues > aIndex) then
        Result := aNode.Values[aIndex]
      else
        MessageBoxInfo('De kolom voor deze index is niet gevonden.', 'uBibGrid.GetNodeValue');
    end;

    if (Result = NULL) or (VarToStr(Result) = '') then
    begin
      case aResultType of
        srtString:   Result := '';
        srtFloat:    Result := 0;
        srtInteger:  Result := 0;
        srtDate:     Result := 0;
        srtDateTime: Result := 0;
      end;
    end;
  except
    raise;
  end;
end;

function GetNodeValue(aNode: TdxTreeListNode; aFieldName: String;
  aResultType: TDBResultType; aForceHasChildren: Boolean = FALSE): Variant;
begin
  try
    Result := NULL;

    if (Assigned(aNode)) and
       ((not aNode.HasChildren) or (aForceHasChildren)) and
       (Assigned(aNode.Owner)) and
       (aNode.Owner.InheritsFrom(TCustomDxDBTreeListControl)) then
    begin
      if Assigned(TCustomDxDBTreeListControl(aNode.Owner).FindColumnByFieldName(aFieldName)) then
        Result := aNode.Values[TCustomDxDBTreeListControl(aNode.Owner).ColumnByFieldName(aFieldName).Index]
      else
        MessageBoxInfo('De bijbehorende kolom voor dit veld (' + aFieldName + ') is niet gevonden.', 'uBibGrid.GetNodeValue');
    end;

    if (Result = NULL) or (VarToStr(Result) = '') then
    begin
      case aResultType of
        srtString:   Result := '';
        srtFloat:    Result := 0;
        srtInteger:  Result := 0;
        srtDate:     Result := 0;
        srtDateTime: Result := 0;
      end;
    end;
  except
    raise;
  end;
end;

end.
