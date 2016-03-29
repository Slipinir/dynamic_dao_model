unit propriedade_boolean_class;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  propriedade_base_class;

type
  TPropriedadeBoolean = class (TPropriedadeBase)
  public
    constructor Create; override;
    function Value: Boolean;
  end;

implementation

uses
  propriedade_base_tipo_enum;

{ TPropriedadeBoolean }

constructor TPropriedadeBoolean.Create;
begin
  Tipo := pbtBoolean;
end;

function TPropriedadeBoolean.Value: Boolean;
begin
  Result := FBooleanValue;
end;

end.

