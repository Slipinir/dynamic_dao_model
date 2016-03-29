unit basic_type;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  type_enum,
  basic_type_int;

type

  { TBasicType }

  TBasicType = class (TInterfacedObject, IBasicType)
  private
    FName: String;
    FField: String;
    FPersist: Boolean;
    FKind: TType;
    function GetName: String;
    procedure SetField(AValue: String);
    function GetField: string;
    procedure SetName(AValue: String);
    procedure SetPersist(AValue: Boolean);
    function GetPersist: Boolean;
    procedure SetKind(AValue: TType);
    function GetKind: TType;
  protected
    FIntegerValue: Integer;
    FDoubleValue: Double;
    FBooleanValue: Boolean;
    FStringValue: String;
  public
    constructor Create(const AName, AField: String; const APersist: Boolean); virtual;
    property Name: String read GetName write SetName;
    property Kind: TType read GetKind write SetKind;
    property Field: String read GetField write SetField;
    property Persist: Boolean read GetPersist write SetPersist;
  end;

implementation

{ TBasicType }

procedure TBasicType.SetKind(AValue: TType);
begin
  if FKind=AValue then Exit;
  FKind:=AValue;
end;

function TBasicType.GetKind: TType;
begin
  Result := FKind;
end;

constructor TBasicType.Create(const AName, AField: String; const APersist: Boolean);
begin
  FName := AName;
  FField := AField;
  FPersist := APersist;
end;

procedure TBasicType.SetField(AValue: String);
begin
  if FField=AValue then Exit;
  FField:=AValue;
end;

function TBasicType.GetName: String;
begin
  Result := FName;
end;

function TBasicType.GetField: string;
begin
  Result := FField;
end;

procedure TBasicType.SetName(AValue: String);
begin
  FName := AValue;
end;

procedure TBasicType.SetPersist(AValue: Boolean);
begin
  if FPersist=AValue then Exit;
  FPersist:=AValue;
end;

function TBasicType.GetPersist: Boolean;
begin
  Result := FPersist;
end;

end.

