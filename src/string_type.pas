unit string_type;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  basic_type,
  string_type_int;

type

  { TStringType }

  TStringType = class (TBasicType, IStringType)
  private
    function GetValue: String;
    procedure SetValue(const Value: String);
  public
    constructor Create(const AName, AField: String; const APersist: Boolean); override;
    property Value: String read GetValue write SetValue;
  end;

implementation

uses
  type_enum;

{ TStringType }

function TStringType.GetValue: String;
begin
  Result := FStringValue;
end;

procedure TStringType.SetValue(const Value: String);
begin
  FStringValue := Value;
end;

constructor TStringType.Create(const AName, AField: String; const APersist: Boolean);
begin
  inherited Create(AName, AField, APersist);
  Kind := tpString;
end;

end.

