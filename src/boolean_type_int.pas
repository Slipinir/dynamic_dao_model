unit boolean_type_int;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  basic_type_int;

type

  { IBooleanType }

  IBooleanType = interface (IBasicType) ['{6AED7BE0-E996-4EE6-96EF-C5D86465C96B}']
  function GetValue: Boolean;
  procedure SetValue(const Value: Boolean);
  property Value: Boolean read GetValue write SetValue;
  end;

implementation

end.

