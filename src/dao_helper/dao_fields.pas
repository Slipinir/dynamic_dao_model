unit dao_fields;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  field_name_list,
  name_list;

type
  TField = array[0..1] of String;
  TFieldList = array of TField;

const
  ProdutoCodigo: TField = (
    PRO_CODIGO,
    Codigo
  );
  ProdutoNome: TField = (
    PRO_NOME,
    Nome
  );

var
  FieldList: TFieldList;

implementation

procedure Add(Field: TField);
begin
  SetLength(FieldList, Length(FieldList) + 1);
  FieldList[Length(FieldList) - 1] := Field;
end;

function FindByFieldName(const FieldName: String): TField;
var
  I: Integer;
begin
  for I := Low(FieldList) to High(FieldList) do
    if (FieldList[I][0] = FieldName) then
      Result := FieldList[I];
end;

initialization
  Add(ProdutoCodigo);
  Add(ProdutoNome);

end.

