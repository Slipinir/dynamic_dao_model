unit propriedade_numeric_class;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  propriedade_base_class;

type
  TPropriedadeNumeric = class (TPropriedadeBase)
  public
    constructor Create; override;
    function Value: Double;
  end;

implementation

uses
  propriedade_base_tipo_enum;

{ TPropriedadeNumeric }

constructor TPropriedadeNumeric.Create;
begin
  Tipo := pbtNumeric;
end;

function TPropriedadeNumeric.Value: Double;
begin
  Result := FDoubleValue;
end;

end.

