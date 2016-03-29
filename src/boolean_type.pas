unit boolean_type;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  basic_type;

type

  { TBooleanType }

  TBooleanType = class (TBasicType)
  private
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  public
    constructor Create; override;
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

constructor TBooleanType.Create;
begin
  Kind := tpBoolean;
end;

end.

