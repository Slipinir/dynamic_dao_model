unit field_name_list;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const
  PRO_CODIGO = 'PRO_CODIGO';
  PRO_NOME = 'PRO_NOME';
  PRO_CUSTO = 'PRO_CUSTO';
  PRO_ATIVO = 'PRO_ATIVO';

  FieldNameList: array[0..3] of String = (
    PRO_CODIGO,
    PRO_NOME,
    PRO_CUSTO,
    PRO_ATIVO
  );

implementation

end.

