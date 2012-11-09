unit uHTDb;

interface

uses
  IBDatabase, IBSQL, Classes, IBQuery;

type
  TDBResultType= (srtString,srtDate,srtDateTime,srtFloat,srtInteger,srtVariant);
  TDBValueType = (svtNormal,svtSum,svtMin,svtMax,svtCount,svtDistinct,svtDistinctCount);
  TDBFieldValues = array of variant;
  TDBAction = (dbaNone, dbaFree);

function CreateSQL(aDataBase: TIBDataBase; aSQL:String = '';aTransaction:TIBTransaction=nil):TIBSQL;
function CreateQuery(aDataBase: TIBDataBase; aSQL: String = ''; aTransaction: TIBTransaction = nil;  aUniDirectional: Boolean = FALSE):TIBQuery;
function CreateTransAction(aDatabase: TIBDatabase; aName: String = ''): TIBTransAction;
function GetSPValue(aDataBase:TIBDatabase;aSPName:String;
  const aParamValues:array of Variant;
  aResultField:String;aResultType:TDBResultType=srtString;
  aValueType:TDBValueType=svtNormal):Variant;
function GetSPValues(aDataBase:TIBDatabase;aSPName:String;
  const aParamValues:array of Variant;
  const aResultFields:array of String;
  const aResultTypes: array of TDBResultType;
  aValueType:TDBValueType=svtNormal):TDBFieldValues;
function CommitTransaction(aTransaction:TIBTransaction;aAction: TDBAction):boolean;
function GetFieldValue(aDatabase:TIBDatabase;aTableName:String;
  const aKeyFields:array of String;const aKeyValues:array of Variant;
  aResultField:String;
  aResultType:TDBResultType;
  aValueType:TDBValueType=svtNormal;aTransaction:TIBTransaction=nil;aExtFilter:String=''): Variant;
function GetFieldValues(aDatabase:TIBDatabase;aTableName:String;
  const aKeyFields:array of String;const aKeyValues:array of Variant;
  const aResultFields: array of String; const aResultTypes: array of TDBResultType;
  aValueType:TDBValueType=svtNormal;aTransaction:TIBTransaction = nil;aExtFilter:String=''): TDBFieldValues;
function FormatSQL(aTableName: String; const aKeyFields: array of String; const aKeyValues: array of Variant;
  const aResultFields: array of String; aUseResultAsAlias: Boolean; aValueType: TDBValueType = svtNormal; aExtFilter: String = '';
  aDirParamVervangen: Boolean = FALSE):TStringList;
function GetGeneratorValue(aDatabase: TIBDatabase; aGenerator: String; aInc: integer = 1;
  aTransaction: TIBTransaction = nil): integer;
function CreateInsertSQL(aDataBase:TIBDataBase;aTabel:String;aTransaction:TIBTransaction=nil):TIBSQL;
procedure UpdateFieldValue(aDatabase:TIBDatabase; aTransaction:TIBTransaction; aTableName:String;
  const aKeyFields:array of String; const aKeyValues:array of Variant;
  const aUpdateFields:array of String; const aUpdateValues:array of Variant);
function GetFieldCount(aDatabase:TIBDatabase;aTableName:String):integer;
function ExecSQL(aDatabase:TIBDatabase;aSQL:String;const aParams:array of String;const aParamValues: array of Variant):boolean;


implementation

uses
  SysUtils, IBHeader, Variants;

function ExecSQL(aDatabase:TIBDatabase;aSQL:String;const aParams:array of String;const aParamValues:array of Variant):boolean;
var
  i:integer;
  aIBSQL:TIBSQL;
begin
  try
    aIBSQL := CreateSQL(aDatabase,aSQL,nil);
    with aIBSQL do
    begin
      try
        if High(aParams) > -1 then
        begin
          for i:=low(aParams) to High(aParams) do
          begin
            if aParamValues[i] = NULL then
            begin
              ParamByName(aParams[i]).Clear;
            end
            else
            begin
              case ParamByName(aParams[i]).SQLType of
                SQL_SHORT,SQL_LONG:  ParamByName(aParams[i]).asInteger := aParamValues[i];
                SQL_VARYING,SQL_TEXT,SQL_BLOB: ParamByName(aParams[i]).AsString := aParamValues[i];
                SQL_FLOAT,SQL_D_FLOAT: ParamByName(aParams[i]).AsFloat := aParamValues[i];
                SQL_DOUBLE: ParamByName(aParams[i]).AsDouble := aParamValues[i];
                SQL_INT64: ParamByName(aParams[i]).AsInt64 := aParamValues[i];
                SQL_TYPE_DATE: ParamByName(aParams[i]).AsDate := aParamValues[i];
                SQL_TYPE_TIME,SQL_TIMESTAMP: ParamByName(aParams[i]).AsDateTime := aParamValues[i];
                else
                  ParamByName(aParams[i]).Value := aParamValues[i];
              end;
            end;
          end;
        end;
        ExecQuery;
      finally
        result := CommitTransaction(Transaction,dbaFree);
        Free;
      end;
    end;
  except
    raise;
  end;
end;

function GetTableFieldsList(aDataBase:TIBDataBase;aTransaction:TIBTransaction;aTableName:String): TStringList;
const
  SQL = 'select r.rdb$field_name veldnaam,f.rdb$computed_source veldsource '+
    'from rdb$relation_fields r '+
    'left join rdb$fields f on (r.rdb$field_source = f.rdb$field_name) '+
    'where r.rdb$relation_name = :tabelnaam order by r.rdb$field_name';
var
  aIBSQL:TIBSQL;
  vIndex: integer;
begin
  try
    Result := TStringList.Create;

    vIndex := -1;

    if (vIndex = -1) then
    begin
      aIBSQL := CreateSQL(aDataBase,SQL,aTransaction);
      with aIBSQL do
      begin
        try
          ParamByName('tabelnaam').asString := UpperCase(aTableName);
          ExecQuery;
          while not EOF do
          begin
            if FieldByName('veldsource').asTrimString = '' then
              Result.Add(FieldByName('veldnaam').AsTrimString);
            Next;
          end;
        finally
          if (aTransaction = nil) then
          begin
            // Eventueel aangemaakte runtime transactie verwijderen
            CommitTransaction(Transaction,dbaFree);
          end;
          Free;
        end;
      end;
    end;
  except
    raise;
  end;
end;


function GetTableFields(aDataBase:TIBDataBase; aTransaction:TIBTransaction; aTableName:String): String;
var
  aTempStringList: TStringList;
begin
  try
    aTempStringList := GetTableFieldsList(aDatabase, aTransaction, aTableName);
    try
      Result := aTempStringList.Text;
    finally
      aTempStringList.Free;
    end;
  except
    raise;
  end;
end;

function GetInsertSQL(aTableName, aFieldString:String): String;
var
  i:integer;
  aField: String;
  aFields: TStringList;
begin
  try
    result := '';

    aFields := TStringList.Create;

    try
      aFields.Text := aFieldString;

      Result := Result + 'INSERT INTO '+ aTableName + #13#10;
      Result := Result + '(' + #13#10;

      for i:=0 to aFields.Count-1 do
      begin
        if aFields[i] <> '' then
        begin
          aField := aFields[i];
          if i <> aFields.Count-1 then
            aField := aField + ',';
          Result := Result + aField + #13#10;
        end;
      end;

      Result := Result + ')' + #13#10;
      Result := Result + 'VALUES(' + #13#10;

      for i:=0 to aFields.Count-1 do
      begin
        if aFields[i] <> '' then
        begin
          aField := ':'+aFields[i];
          if i <> aFields.Count-1 then
            aField := aField + ',';
          Result := Result + aField + #13#10;
        end;
      end;

      Result := Result + ')' + #13#10;
    finally
      aFields.Free;
    end;
  except
    raise;
  end;
end;

function GetFieldCount(aDatabase:TIBDatabase;aTableName:String):integer;
begin
  try
    with CreateSQL(aDatabase) do
    begin
      try
        with SQL do
        begin
          Add('select count(r.rdb$field_name) velden');
          Add('from rdb$relation_fields r');
          Add('where r.rdb$relation_name = :tabelnaam');
        end;
        ParamByName('tabelnaam').asString := UpperCase(aTableName);
        ExecQuery;
        result := FieldByName('velden').asInteger;
      finally
        CommitTransaction(Transaction,dbaFree);
        Free;
      end;
    end;
  except
    raise;
  end;
end;

procedure ClearParameters(aIBSQL: TIBSQL);
var
  i: Integer;
begin
  try
    if Assigned(aIBSQL) then
    begin
      for i := 0 to aIBSQL.Params.Count - 1 do
      begin
        aIBSQL.Params[i].Clear;
      end;
    end;
  except
    raise;
  end;
end;


function CreateInsertSQL(aDataBase:TIBDataBase;aTabel:String;aTransaction:TIBTransaction=nil):TIBSQL;
var
  aSQL, aFields : String;
begin
  try
    aFields := GetTableFields(aDataBase, aTransaction, aTabel);
    aSQL := GetInsertSQL(aTabel, aFields);
    result := CreateSQL(aDataBase,aSQL,aTransaction);

    ClearParameters(Result);
  except
    raise;
  end;
end;

procedure UpdateFieldValue(aDatabase:TIBDatabase; aTransaction:TIBTransaction; aTableName:String;
  const aKeyFields:array of String; const aKeyValues:array of Variant;
  const aUpdateFields:array of String; const aUpdateValues:array of Variant);
var
  i:integer;
  vSQL:TStringList;
  aSQL:TIBSQL;
begin
  try
    if High(aUpdateFields) > -1 then
    begin
      vSQL := TStringList.Create;
      vSQL.Add('UPDATE');
      vSQL.Add(   aTableName);
      vSQL.Add('SET');

      for i := Low(aUpdateFields) to High(aUpdateFields) do
      begin
        vSQL.Add(aUpdateFields[i] + ' = :' + format('UPDATE_PARAM%D', [I]));
        if i < High(aUpdateFields) then
        begin
          vSQL.Add(',');
        end;
      end;

      if High(aKeyFields) > -1 then
      begin
        vSQL.Add('WHERE');

        for i := Low(aKeyFields) to High(aKeyFields) do
        begin
          if (aKeyValues[i] = Null) then
          begin
            vSQL.Add(aKeyFields[i] + ' IS NULL');
          end
          else
          begin
            vSQL.Add(aKeyFields[i] + ' = :' + format('WHERE_PARAM%D', [I]));
          end;

          if i < High(aKeyFields) then
          begin
            vSQL.Add('AND');
          end;
        end;
      end;

      try
        aSQL := CreateSQL(aDatabase,vSQL.Text,aTransaction);
        with aSQL do
        begin
          try
            for i := low(aKeyValues) to High(aKeyValues) do
            begin
              if (aKeyValues[i] <> Null) then
              begin
                ParamByName(format('WHERE_PARAM%D', [I])).Value := aKeyValues[i];
              end;
            end;

            for i := low(aUpdateValues) to High(aUpdateValues) do
            begin
              if (aUpdateValues[i] = NULL) then
              begin
                ParamByName(format('UPDATE_PARAM%D', [I])).Clear;
              end
              else
              begin
                case ParamByName(format('UPDATE_PARAM%D', [I])).SQLType of
                  SQL_SHORT,SQL_LONG:  ParamByName(format('UPDATE_PARAM%D', [I])).asInteger := aUpdateValues[i];
                  SQL_VARYING,SQL_TEXT,SQL_BLOB: ParamByName(format('UPDATE_PARAM%D', [I])).AsString := aUpdateValues[i];
                  SQL_FLOAT,SQL_D_FLOAT: ParamByName(format('UPDATE_PARAM%D', [I])).AsFloat := aUpdateValues[i];
                  SQL_INT64: ParamByName(format('UPDATE_PARAM%D', [I])).asInt64 := aUpdateValues[i];
                  SQL_DOUBLE: ParamByName(format('UPDATE_PARAM%D', [I])).AsDouble := aUpdateValues[i];
                  SQL_TYPE_DATE:
                    begin
                      if (aUpdateValues[i] = 0) or
                         (aUpdateValues[i] = NULL) then
                      begin
                        ParamByName(format('UPDATE_PARAM%D', [I])).Clear;
                      end
                      else
                      begin
                        ParamByName(format('UPDATE_PARAM%D', [I])).AsDate := aUpdateValues[i];
                      end;
                    end;
                  SQL_TYPE_TIME,SQL_TIMESTAMP:
                  begin
                    if (aUpdateValues[i] = 0) or
                       (aUpdateValues[i] = NULL) then
                    begin
                      ParamByName(format('UPDATE_PARAM%D', [I])).Clear;
                    end
                    else
                    begin
                      if (VarType(aUpdateValues[i]) = varString) then
                      begin
                        ParamByName(format('UPDATE_PARAM%D', [I])).Value := aUpdateValues[i];
                      end
                      else
                      begin
                        ParamByName(format('UPDATE_PARAM%D', [I])).AsDateTime := aUpdateValues[i];
                      end;
                    end;
                  end;
                else
                  ParamByName(format('UPDATE_PARAM%D', [I])).Value := aUpdateValues[i];
                end;
              end;
            end;

            ExecQuery;
          finally
            if (aTransaction = nil) then
            begin
              CommitTransaction(Transaction,dbaFree);
            end;
            Free;
          end;
        end;
      finally
        vSQL.Free;
      end;
    end;
  except
    raise;
  end;
end;


function GetGeneratorValue(aDatabase: TIBDatabase; aGenerator: String; aInc: integer = 1;
  aTransaction: TIBTransaction = nil): integer;
var
  aSQL:String;
  aOwnTransaction: Boolean;
  vIBSQL:TIBSQL;
begin
  try
    aOwnTransaction := not Assigned(aTransaction);

    aSQL := Format('select gen_id(%s,%d) from rdb$database',[AnsiQuotedStr(aGenerator,'"'),aInc]);

    vIBSQL := CreateSQL(aDatabase, aSQL, aTransaction);
    with vIBSQL do
    begin
      try
        ExecQuery;
        result := Fields[0].asInteger;
      finally
        if aOwnTransaction then
        begin
          Transaction.Commit;
          Transaction.Free;
        end;
        Free;
      end;
    end;
  except
    raise;
  end;
end;

function GetFieldValue(aDatabase:TIBDatabase;aTableName:String;
  const aKeyFields:array of String;const aKeyValues:array of Variant;
  aResultField:String;
  aResultType:TDBResultType;
  aValueType:TDBValueType=svtNormal;
  aTransaction:TIBTransaction=nil;aExtFilter:String=''):Variant;
var
  vFieldValues: TDBFieldValues;
  vResultFields: array[0..0] of string;
  vResultTypes: array[0..0] of TDBResultType;
begin
  try
    vResultFields[0] := aResultField;
    vResultTypes[0] := aResultType;

    vFieldValues := GetFieldValues(
      aDatabase, aTableName, aKeyFields, aKeyValues, vResultFields, vResultTypes,
      aValueType,aTransaction,aExtFilter);

    if (High(vFieldValues) = 0) then
    begin
      Result := vFieldValues[0];
    end;
  except
    raise;
  end;
end;

function FormatSQL(aTableName: String; const aKeyFields: array of String; const aKeyValues: array of Variant;
  const aResultFields: array of String; aUseResultAsAlias: Boolean; aValueType: TDBValueType = svtNormal; aExtFilter: String = '';
  aDirParamVervangen: Boolean = FALSE):TStringList;
var
  i, vVarType, vIntValue:integer;
  vDoubleValue: Double;
  vDateTimeValue: TDateTime;
  vAlias: String;
begin
  try
    result := TStringList.Create;
    with result do
    begin
      Add('SELECT');

      for i := Low(aResultFields) to High(aResultFields) do
      begin
        if (aUseResultAsAlias) then
        begin
          vAlias := aResultFields[i];
          if Pos('.',vAlias) > 0 then
          begin
            vAlias := Copy(vAlias,Pos('.',vAlias) + 1, Length(vAlias));
          end;

          case aValueType of
            svtNormal: Add(aResultFields[i]);
            svtSum: Add(Format('SUM(%s) AS %s',[aResultFields[i], vAlias]));
            svtMin: Add(Format('MIN(%s) AS %s',[aResultFields[i], vAlias]));
            svtMax: Add(Format('MAX(%s) AS %s',[aResultFields[i], vAlias]));
            svtCount: Add(Format('COUNT(%s) AS %s',[aResultFields[i], vAlias]));
            svtDistinct: Add(Format('DISTINCT(%s) AS %s',[aResultFields[i], vAlias]));
            svtDistinctCount: Add(Format('COUNT(DISTINCT(%s)) AS %s',[aResultFields[i], vAlias]));
          end
        end
        else
        begin
          case aValueType of
            svtNormal: Add(aResultFields[i]);
            svtSum: Add(Format('SUM(%s)',[aResultFields[i]]));
            svtMin: Add(Format('MIN(%s)',[aResultFields[i]]));
            svtMax: Add(Format('MAX(%s)',[aResultFields[i]]));
            svtCount: Add(Format('COUNT(%s)',[aResultFields[i]]));
            svtDistinct: Add(Format('DISTINCT(%s)',[aResultFields[i]]));
            svtDistinctCount: Add(Format('COUNT(DISTINCT(%s))',[aResultFields[i]]));
          end;
        end;

        if i < High(aResultFields) then
        begin
          Add(',');
        end;
      end;

      Add(Format('FROM %s',[aTableName]));

      if High(aKeyFields) > -1 then
      begin
        Add('WHERE');
        for i:=Low(aKeyFields) to High(aKeyFields) do
        begin
          if (aDirParamVervangen) then
          begin
            vVarType := VarType(aKeyValues[i]);

            case vVarType of
              varSmallint, varInteger, varSingle, varByte:
                begin
                  vIntValue := aKeyValues[i];
                  Add(Format('%s = %d', [aKeyFields[i], vIntValue]));
                end;
              varDouble, varCurrency:
                begin
                  vDoubleValue := aKeyValues[i];
                  Add(Format('%s = %.2f', [aKeyFields[i], vDoubleValue]));
                end;
              varDate:
                begin
                  vDateTimeValue := aKeyValues[i];
                  Add(Format('%s = ''%s''', [aKeyFields[i], FormatDateTime('dd.mm.yyyy', vDateTimeValue)]));
                end;
              varEmpty, varNull:
                begin
                  Add(Format('%s IS NULL', [aKeyFields[i]]));
                end;
            else
              Add(Format('%s = ''%s''', [aKeyFields[i], VarToStr(aKeyValues[i])]));
            end;
          end else
          begin
            Add(Format('%s = :ID%d',[aKeyFields[i],i+1]));
          end;
          if i < High(aKeyFields) then
            Add('AND');
        end;
      end;

      if (aExtFilter <> '') then
      begin
        if High(aKeyFields) = -1 then
        begin
          Add('WHERE');
        end;
        Add(aExtFilter);
      end;
    end;
  except
    raise;
  end;
end;


function GetFieldValues(aDatabase:TIBDatabase;aTableName:String;
  const aKeyFields:array of String;const aKeyValues:array of Variant;
  const aResultFields: array of String; const aResultTypes: array of TDBResultType;
  aValueType:TDBValueType=svtNormal;aTransaction:TIBTransaction = nil;aExtFilter:String=''): TDBFieldValues;
var
  i:integer;
  vSQL:TStringList;
  aSQL:TIBSQL;
  vParamName:String;
begin
  try
    SetLength(Result, High(aResultTypes) + 1);
    vSQL := FormatSQL(aTableName,aKeyFields,aKeyValues,aResultFields, FALSE, aValueType,aExtFilter);
    try
      aSQL := CreateSQL(aDatabase,vSQL.Text,aTransaction);
      with aSQL do
      begin
        try
          for i:=low(aKeyValues) to High(aKeyValues) do
          begin
            vParamName := Format('ID%d',[i+1]);
            case ParamByName(vParamName).SQLType of
                SQL_SHORT,SQL_LONG:  ParamByName(vParamName).asInteger := aKeyValues[i];
                SQL_VARYING,SQL_TEXT,SQL_BLOB: ParamByName(vParamName).AsString := aKeyValues[i];
                SQL_FLOAT,SQL_D_FLOAT: ParamByName(vParamName).AsFloat := aKeyValues[i];
                SQL_INT64: ParamByName(vParamName).asInt64 := aKeyValues[i];
                SQL_DOUBLE: ParamByName(vParamName).AsDouble := aKeyValues[i];
                SQL_TYPE_DATE: ParamByName(vParamName).AsDate := aKeyValues[i];
                SQL_TYPE_TIME,SQL_TIMESTAMP: ParamByName(vParamName).AsDateTime := aKeyValues[i];
                else
                  ParamByName(vParamName).Value := aKeyValues[i];
              end;
          end;

          ExecQuery;

          for i := low(aResultTypes) to High(aResultTypes) do
          begin
            case aResultTypes[i] of
              srtString: result[i] := Fields[i].asString;
              srtFloat: result[i] := Fields[i].asFloat;
              srtInteger: result[i] := Fields[i].asInt64;
              srtDate: result[i] := Fields[i].asDate;
              srtDateTime: result[i] := Fields[i].asDateTime;
              else
                result[i] := Fields[i].Value;
            end;
          end;
        finally
          CommitTransaction(Transaction,dbaFree);
          Free;
        end;
      end;
    finally
      vSQL.Free;
    end;
  except
    raise;
  end;
end;

function CreateTransAction(aDatabase: TIBDatabase; aName: String = ''): TIBTransAction;
begin
  try
    Result := TIBTransaction.Create(nil);

    with Result do
    begin
      if (aName <> '') then
      begin
        Name := aName;
      end;
      DefaultDatabase := aDataBase;

      with Params do
      begin
        Clear;

        Add('read_committed');
        Add('rec_version');
        Add('nowait');
      end;
      if DefaultDataBase.Connected then
        StartTransaction;
    end;
  except
    raise;
  end;
end;

function CommitTransaction(aTransaction:TIBTransaction;aAction: TDBAction):boolean;
begin
  try
    result := FALSE;
    if (aTransaction <> nil)  then
    begin
      try
        if (aTransaction.DefaultDatabase <> nil) and (aTransaction.DefaultDatabase.Connected) then
        begin
          with aTransaction do
          begin
            if InTransaction then
            begin
              try
                Commit;
                result := TRUE;
              Except
                if InTransaction then
                begin
                  Rollback;
                end;
              end;
            end;
          end;
        end;
      finally
        if aAction = dbaFree then
        begin
          aTransaction.Free;
        end;
      end;
    end;
  except
    raise;
  end
end;

function GetSPValue(aDataBase:TIBDatabase;aSPName:String;
  const aParamValues:array of Variant;
  aResultField:String;aResultType:TDBResultType=srtString;
  aValueType:TDBValueType=svtNormal):Variant;
begin
  try
    result := GetSPValues(aDatabase,aSPName,aParamValues,
      [aResultField],[aResultType],aValueType)[0];
  except
    raise;
  end;
end;

function GetSPValues(aDataBase:TIBDatabase;aSPName:String;
  const aParamValues:array of Variant;
  const aResultFields:array of String;
  const aResultTypes: array of TDBResultType;
  aValueType:TDBValueType=svtNormal):TDBFieldValues;
var
  i:integer;
  aParam,vParamName:String;
begin
  try
    SetLength(Result, High(aResultTypes) + 1);
    with CreateSQL(aDatabase) do
    begin
      try
        with SQL do
        begin
          Add('SELECT');
          for i:=low(aResultFields) to High(aResultFields) do
          begin
            case aValueType of
              svtNormal: Add(aResultFields[i]);
              svtSum: Add(Format('SUM(%s) %0:s',[aResultFields[i]]));
              svtMin: Add(Format('MIN(%s) %0:s',[aResultFields[i]]));
              svtMax: Add(Format('MAX(%s) %0:s',[aResultFields[i]]));
              svtCount: Add(Format('COUNT(%s) %0:s',[aResultFields[i]]));
              svtDistinct: Add(Format('DISTINCT(%s)',[aResultFields[i]]));
              svtDistinctCount: Add(Format('COUNT(DISTINCT(%s))',[aResultFields[i]]));
            end;
            if i < High(aResultFields) then
              Add(',');
          end;
          Add(Format('FROM %s',[aSpName]));
          if High(aParamValues) > -1 then
          begin
            Add('(');
            for i := low(aParamValues) to High(aParamValues) do
            begin
              aParam := Format(':PARAM%d',[i+1]);
              if i < High(aParamValues) then
                aParam := aParam + ',';
              Add(aParam);
            end;
            Add(')');
          end;
        end;
        for i:=low(aParamValues) to High(aParamValues) do
        begin
          vParamName := Format('PARAM%d',[i+1]);
          case ParamByName(vParamName).SQLType of
            SQL_SHORT,SQL_LONG:  ParamByName(vParamName).asInteger := aParamValues[i];
            SQL_VARYING,SQL_TEXT,SQL_BLOB: ParamByName(vParamName).AsString := aParamValues[i];
            SQL_FLOAT,SQL_D_FLOAT: ParamByName(vParamName).AsFloat := aParamValues[i];
            SQL_INT64: ParamByName(vParamName).asInt64 := aParamValues[i];
            SQL_DOUBLE: ParamByName(vParamName).AsDouble := aParamValues[i];
            SQL_TYPE_DATE: ParamByName(vParamName).AsDate := aParamValues[i];
            SQL_TYPE_TIME,SQL_TIMESTAMP: ParamByName(vParamName).AsDateTime := aParamValues[i];
            else
              ParamByName(vParamName).Value := aParamValues[i];
          end;
        end;
        ExecQuery;
        for i:=low(aResultFields) to High(aResultFields) do
        begin
          case aResultTypes[i] of
            srtString: result[i] := FieldByName(aResultFields[i]).asString;
            srtFloat: result[i] := FieldByName(aResultFields[i]).asFloat;
            srtInteger: result[i] := FieldByName(aResultFields[i]).asInteger;
            srtDate: result[i] := FieldByName(aResultFields[i]).asDate;
            srtDateTime: result[i] := FieldByName(aResultFields[i]).asDateTime;
            else
              result[i] := FieldByName(aResultFields[i]).Value;
          end;
        end;
      finally
        CommitTransaction(Transaction,dbaFree);
        Free;
      end;
    end;
  except
    raise;
  end;
end;

function CreateSQL(aDataBase: TIBDataBase; aSQL:String = '';aTransaction:TIBTransaction=nil):TIBSQL;
begin
  try
    result := nil;

    if aDataBase <> nil then
    begin
      if (result = nil) then
      begin
        Result := TIBSQL.Create(nil);

        with result do
        begin
          DataBase := aDataBase;
          if aTransaction = nil then
            TransAction := CreateTransaction(DataBase)
          else
            TransAction := aTransaction;

          if aSQL <> '' then
            SQL.Add(aSQL);
        end;
      end;
    end
    else
    begin
      raise Exception.Create('Database not assigned!');
    end;
  except
    raise;
  end;
end;

function CreateQuery(aDataBase: TIBDataBase; aSQL: String = ''; aTransaction: TIBTransaction = nil;  aUniDirectional: Boolean = FALSE):TIBQuery;
begin
  try
    result := TIBQuery.Create(nil);
    with result do
    begin
      UniDirectional := aUniDirectional;
      DataBase := aDataBase;
      if (aTransaction = nil) then
      begin
        Transaction := CreateTransaction(DataBase);
      end
      else
      begin
        Transaction := aTransaction;
      end;

      if aSQL <> '' then
        SQL.Add(aSQL);
    end;
  except
    raise;
  end;
end;

end.
