unit model_fields;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  integer_type_int,
  numeric_type_int,
  string_type_int,
  boolean_type_int;

var
  ProdutoCodigo: IIntegerType;
  ProdutoNome: IStringType;
  ProdutoPrecoVenda: INumericType;
  ProdutoAtivo: IBooleanType;

implementation

uses
  integer_type,
  numeric_type,
  string_type,
  boolean_type,
  dao_fields;

initialization
  ProdutoCodigo := TIntegerType.Create(
    'Codigo',
    'PRO_CODIGO',
    True
  );
  ProdutoNome := TStringType.Create(
    'Nome',
    'PRO_NOME',
    True
  );
  ProdutoPrecoVenda := TNumericType.Create(
    'PrecoVenda',
    'PRO_PRECO',
    True
  );
  ProdutoAtivo := TBooleanType.Create(
    'Ativo',
    'PRO_ATIVO',
    True
  );

finalization
  ProdutoCodigo := nil;
  ProdutoNome := nil;
  ProdutoPrecoVenda := nil;
  ProdutoAtivo := nil;

end.

