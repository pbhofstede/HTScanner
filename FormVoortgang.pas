unit FormVoortgang;

{$I 'D:\Projecten\Syntri ERP\SIS\sis.inc'}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Gauges, StdCtrls, ExtCtrls, syFormVoortgang, unPanelEx;

type
  TfrmVoortgang = class(TForm)
    syFormVoortgang: TsyFormVoortgang;
  private
    FShowTime: Boolean;
    FOwnerDisable: Boolean;

    FOwnerIsDisabled: Boolean;
    FApplicationDisable: Boolean;
    FOwnActiveForm: TForm;
    procedure SetMelding(const Value: String);
    procedure SetMax(const Value: integer);
    procedure SetProgress(const Value: integer);
    procedure SetShowTime(const Value: Boolean);
    function GetMax: integer;
    function GetMelding: String;
    function GetProgress: integer;
    { Private declarations }
  public
    { Public declarations }
    procedure StepIt;
    procedure Refresh(aMaxRecords: Integer; aMelding: String; aShowProgressBar: Boolean = True);

    property Progress:integer read GetProgress write SetProgress;
    property Max:integer read GetMax write SetMax;
    property Melding:String read GetMelding write SetMelding;
    property ShowTime: Boolean read FShowTime write SetShowTime;
    property OwnerDisable: Boolean read FOwnerDisable write FOwnerDisable;
    property ApplicationDisable: Boolean read FApplicationDisable write FApplicationDisable;
    property OwnActiveForm: TForm read FOwnActiveForm write FOwnActiveForm;

    constructor Create(aOwner:TComponent; aMaxBewerkingen:integer;
      aShowProgress: Boolean = True; aParent: TWinControl = nil;
      aOwnerDisable: Boolean = True; aBold: Boolean = TRUE);reintroduce;
    destructor Destroy; override;
  end;

implementation


{$R *.DFM}

{ TfrmVoortgang }

{-----------------------------------------------------------------------------
  Procedure: TfrmVoortgang.Create
  Author:    Harry
  Date:      07-feb-2003
  Arguments: aOwner: TComponent; aMaxBewerkingen: integer
  Result:    None

  Constructor voor TfrmVoortgang. Het maximum aantal bewerkingen kan direct
  worden meegegeven.
-----------------------------------------------------------------------------}
constructor TfrmVoortgang.Create(aOwner: TComponent;
  aMaxBewerkingen: integer; aShowProgress: Boolean = True;
  aParent: TWinControl = nil; aOwnerDisable: Boolean = True; aBold: Boolean = TRUE);
begin
  inherited Create(nil);

  ApplicationDisable := TRUE;
  ShowTime := aShowProgress;
  syFormVoortgang.FV_Max := aMaxBewerkingen;
  syFormVoortgang.FV_ShowProgress := aShowProgress;

  OwnerDisable := False;

  if Assigned(aOwner) and OwnerDisable then
  begin
    if (aOwner is TForm) then TForm(aOwner).Enabled := False;
    FOwnerIsDisabled := True;
  end else
    FOwnerIsDisabled := False;

  if Assigned(aParent) then
  begin
    Parent := aParent;
    BorderStyle := bsNone;
    WindowState := wsMaximized;
    FormStyle := fsNormal;
    Align := alClient;
    syFormVoortgang.FV_MeldingBold := aBold;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TfrmVoortgang.Refresh
  Author:    Gert
  Date:      26-aug-2004
  Arguments: aShowProgressBar: Boolean
  Result:    None

  17-03-2006: HdJ -- Application.ProcessMessages vervangen door
    Invalidate. Er mogen geen andere taken worden uitgevoerd...
-----------------------------------------------------------------------------}
procedure TfrmVoortgang.Refresh(aMaxRecords: Integer; aMelding: String; aShowProgressBar: Boolean);
begin
  try
    Visible := True;
    syFormVoortgang.Refresh(aMaxRecords, aMelding, aShowProgressBar, FShowTime);

    if (ApplicationDisable) and
       (Assigned(Application)) and
       (Assigned(Application.Mainform)) then
    begin
      Application.MainForm.Enabled := FALSE;
    end;

    if (ApplicationDisable) and
       (Assigned(Screen.ActiveForm)) and
       (not (Screen.ActiveForm is TfrmVoortgang)) then
    begin
      if (not Assigned(OwnActiveForm)) then
      begin
        OwnActiveForm := Screen.ActiveForm;
      end;
      OwnActiveForm.Enabled := FALSE;
    end;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TfrmVoortgang.SetMax
  Author:    Harry
  Date:      07-feb-2003
  Arguments: const Value: integer
  Result:    None

  Setter voor property Max. De voortgang wordt automatisch op nul gezet, en
  het maximum bereik van de gauge wordt gezet.
-----------------------------------------------------------------------------}
procedure TfrmVoortgang.SetMax(const Value: integer);
begin
  syFormVoortgang.FV_Max := Value;
end;

{-----------------------------------------------------------------------------
  Procedure: TfrmVoortgang.SetMelding
  Author:    Harry
  Date:      07-feb-2003
  Arguments: const Value: String
  Result:    None

  Setter voor property Melding. De melding wordt in het scherm getoond.

  23-08-2004: Fokko -- Application.ProcessMessages vervangen door Invalidate,
                       omdat anders al events worden afgehandeld die niet mogen.
  17-03-2006: HdJ -- Application.ProcessMessage wéér vervangen door Invalidate
-----------------------------------------------------------------------------}
procedure TfrmVoortgang.SetMelding(const Value: String);
begin
  syFormVoortgang.FV_Melding := Value;

  Show;
  Update;

  if (ApplicationDisable) and
     (Assigned(Application)) and
     (Assigned(Application.MainForm)) then
  begin

    Application.MainForm.Enabled := FALSE;
  end;

  if (ApplicationDisable) and
     (Assigned(Screen.ActiveForm)) and
     (not (Screen.ActiveForm is TfrmVoortgang)) then
  begin
    if (not Assigned(OwnActiveForm)) then
    begin
      OwnActiveForm := Screen.ActiveForm;
    end;
    OwnActiveForm.Enabled := FALSE;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: TfrmVoortgang.SetProgress
  Author:    Harry
  Date:      07-feb-2003
  Arguments: const Value: integer
  Result:    None

  07-07-2003: Ronnie - Wiskunde voor gevorderen ;) boven de 100 kwam altijd op 0 uit!

  Setter voor property Progress. De voortgang wordt omgerekend voor de gauge.
-----------------------------------------------------------------------------}
procedure TfrmVoortgang.SetProgress(const Value: integer);
begin
  syFormVoortgang.FV_Progress := Value;
end;

{-----------------------------------------------------------------------------
  Procedure: TfrmVoortgang.SetShowTime
  Author:    Gert
  Date:      02-jul-2004
  Arguments: const Value: Boolean
  Result:    None
-----------------------------------------------------------------------------}
procedure TfrmVoortgang.SetShowTime(const Value: Boolean);
begin
  FShowTime := Value;
  syFormVoortgang.FV_ShowTime := Value;

  if Value then
    ClientHeight := 53
  else
    ClientHeight := 38;
end;

{-----------------------------------------------------------------------------
  Procedure: TfrmVoortgang.StepIt
  Author:    Harry
  Date:      07-feb-2003
  Arguments: None
  Result:    None

  Procedure die door andere formulier kan worden opgeroepen. De voortgang
  wordt met 1 verhoogd.

  23-08-2004: Fokko -- Application.ProcessMessages vervangen door Invalidate,
                       omdat anders al events worden afgehandeld die niet mogen.
-----------------------------------------------------------------------------}
procedure TfrmVoortgang.StepIt;
begin
  try
    syFormVoortgang.StepIt;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: Destroy
  Author:    Gert
  Date:      10-nov-2004
  Arguments: None
  Result:    None
-----------------------------------------------------------------------------}
destructor TfrmVoortgang.Destroy;
begin
  try
    if Assigned(Owner) and OwnerDisable then
    begin
      try
        if (Owner is TForm) and (TForm(Owner).Visible) then
          TForm(Owner).Enabled := True;
      except
        // Mis!
      end;
    end;

    try
      if (Assigned(Application)) and
         (Assigned(Application.MainForm)) then
      begin
        Application.MainForm.Enabled := TRUE;
      end;
      if (Assigned(OwnActiveForm)) then
      begin
        OwnActiveForm.Enabled := TRUE;
        OwnActiveForm.BringToFront;
      end;
    except

    end;

    inherited Destroy;
  except
    raise;
  end;
end;


{-----------------------------------------------------------------------------
  Procedure: GetMax
  Author:    Gert
  Date:      04-mrt-2005
  Arguments: None
  Result:    integer
-----------------------------------------------------------------------------}
function TfrmVoortgang.GetMax: integer;
begin
  try
    Result := syFormVoortgang.FV_Max;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: GetMelding
  Author:    Gert
  Date:      04-mrt-2005
  Arguments: None
  Result:    String
-----------------------------------------------------------------------------}
function TfrmVoortgang.GetMelding: String;
begin
  try
    Result := syFormVoortgang.FV_Melding;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: GetProgress
  Author:    Gert
  Date:      04-mrt-2005
  Arguments: None
  Result:    integer
-----------------------------------------------------------------------------}
function TfrmVoortgang.GetProgress: integer;
begin
  try
    Result := syFormVoortgang.FV_Progress;
  except
    raise;
  end;
end;
end.
