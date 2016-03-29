unit integer_type_int;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  basic_type_int;

type

  { IIntegerType }

  IIntegerType = interface (IBasicType) ['{6AED7BE0-E996-4EE6-96EF-C5D86465C96B}']
  function GetValue: Integer;
  procedure SetValue(const Value: Integer);
  property Value: Integer read GetValue write SetValue;
  end;

implementation

end.

