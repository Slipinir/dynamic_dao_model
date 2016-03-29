program dynamic_model;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp, propriedade_base_class,
  propriedade_base_tipo_enum, propriedade_integer_class,
propriedade_string_class, propriedade_boolean_class, propriedade_numeric_class
  { you can add units after this };

type

  { TDynamicModel }

  TDynamicModel = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

{ TDynamicModel }

procedure TDynamicModel.DoRun;
var
  ErrorMsg: String;
begin
  // quick check parameters
  ErrorMsg:=CheckOptions('h', 'help');
  if ErrorMsg<>'' then begin
    ShowException(Exception.Create(ErrorMsg));
    Terminate;
    Exit;
  end;

  // parse parameters
  if HasOption('h', 'help') then begin
    WriteHelp;
    Terminate;
    Exit;
  end;

  { add your program here }

  // stop program loop
  Terminate;
end;

constructor TDynamicModel.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor TDynamicModel.Destroy;
begin
  inherited Destroy;
end;

procedure TDynamicModel.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ', ExeName, ' -h');
end;

var
  Application: TDynamicModel;
begin
  Application:=TDynamicModel.Create(nil);
  Application.Title:='Dynamic Model';
  Application.Run;
  Application.Free;
end.

