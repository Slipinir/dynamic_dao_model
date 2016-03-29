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
    constructor Create(const AName, AField: String; const APersist: Boolean); override;
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

constructor TIntegerType.Create(const AName, AField: String;
  const APersist: Boolean);
begin
  inherited Create(AName, AField, APersist);
  Kind := tpInteger;
end;

end.

