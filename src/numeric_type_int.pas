unit numeric_type_int;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  basic_type_int;

type

  { INumericType }

  INumericType = interface (IBasicType) ['{6AED7BE0-E996-4EE6-96EF-C5D86465C96B}']
  function GetValue: Double;
  procedure SetValue(const Value: Double);
  property Value: Double read GetValue write SetValue;
  end;
implementation

end.

