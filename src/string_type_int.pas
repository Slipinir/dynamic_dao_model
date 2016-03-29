unit string_type_int;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  basic_type_int;

type

  { IStringType }

  IStringType = interface (IBasicType) ['{6AED7BE0-E996-4EE6-96EF-C5D86465C96B}']
  function GetValue: String;
  procedure SetValue(const Value: String);
  property Value: String read GetValue write SetValue;
  end;

implementation

end.

