unit boolean_type;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  basic_type,
  boolean_type_int;

type

  { TBooleanType }

  TBooleanType = class (TBasicType, IBooleanType)
  private
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  public
    constructor Create(const AName, AField: String; const APersist: Boolean); override;
    property Value: Boolean read GetValue write SetValue;
  end;

implementation

uses
  type_enum;

{ TBooleanType }

function TBooleanType.GetValue: Boolean;
begin
  Result := FBooleanValue;
end;

procedure TBooleanType.SetValue(const Value: Boolean);
begin
  FBooleanValue := Value;
end;

constructor TBooleanType.Create(const AName, AField: String;
  const APersist: Boolean);
begin
  inherited Create(AName, AField, APersist);
  Kind := tpBoolean;
end;

end.

