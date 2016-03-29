unit name_list;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const
  Codigo = 'Codigo';
  Nome = 'Nome';
  Custo = 'Custo';
  Ativo = 'Ativo';

  NameList: array[0..3] of String = (
    Codigo,
    Nome,
    Custo,
    Ativo
  );

implementation

end.

