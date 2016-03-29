unit integer_type;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  basic_type,
  integer_type_int;

type

  { TIntegerType }

  TIntegerType = class (TBasicType, IIntegerType)
  private
    function GetValue: Integer;
    procedure SetValue(const Value: Integer);
  public
    constructor Create; override;
    property Value: Integer read GetValue write SetValue;
  end;

implementation

uses
  type_enum;

{ TIntegerType }

function TIntegerType.GetValue: Integer;
begin
  Result := FIntegerValue;
end;

procedure TIntegerType.SetValue(const Value: Integer);
begin
  FIntegerValue := Value;
end;

constructor TIntegerType.Create;
begin
  Kind := tpInteger;
end;

end.

