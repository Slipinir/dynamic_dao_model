unit propriedade_string_class;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  propriedade_base_class;

type

  { TPropriedadeString }

  TPropriedadeString = class (TPropriedadeBase)
  public
    constructor Create; override;
    function Value: String;
  end;

implementation

uses
  propriedade_base_tipo_enum;

{ TPropriedadeString }

constructor TPropriedadeString.Create;
begin
  Tipo := pbtString;
end;

function TPropriedadeString.Value: String;
begin
  Result := FStringValue;
end;

end.

