unit basic_type_int;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  type_enum;

type

  { IBasicType }

  IBasicType = interface ['{03318DC5-8AEE-42AB-9684-00EDBD7C475B}']
  procedure SetField(AValue: String);
  function GetField: string;
  procedure SetPersist(AValue: Boolean);
  function GetPersist: Boolean;
  procedure SetKind(AValue: TType);
  function GetKind: TType;
  property Kind: TType read GetKind write SetKind;
  property Field: String read GetField write SetField;
  property Persist: Boolean read GetPersist write SetPersist;
  end;

implementation

end.

