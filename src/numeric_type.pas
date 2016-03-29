unit numeric_type;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  basic_type,
  numeric_type_int;

type

  { TNumericType }

  TNumericType = class (TBasicType, INumericType)
  private
    function GetValue: Double;
    procedure SetValue(const Value: Double);
  public
    constructor Create; override;
    property Value: Double read GetValue write SetValue;
  end;

implementation

uses
  type_enum;

{ TNumericType }

function TNumericType.GetValue: Double;
begin
  Result := FDoubleValue;
end;

procedure TNumericType.SetValue(const Value: Double);
begin
  FDoubleValue := Value;
end;

constructor TNumericType.Create;
begin
  Kind := tpNumeric;
end;

end.

