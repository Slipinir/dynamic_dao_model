unit propriedade_integer_class;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  propriedade_base_class;

type

  { TPropriedadeInteger }

  TPropriedadeInteger = class(TPropriedadeBase)
  public
    constructor Create; override;
    function Value: Integer;
  end;

implementation

uses
  propriedade_base_tipo_enum;

{ TPropriedadeInteger }

constructor TPropriedadeInteger.Create;
begin
  Tipo := pbtInteger;
end;

function TPropriedadeInteger.Value: Integer;
begin
  Result := FIntegerValue;
end;

end.

