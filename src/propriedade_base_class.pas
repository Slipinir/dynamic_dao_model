unit propriedade_base_class;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  propriedade_base_tipo_enum;

type

  { TPropriedadeBase }

  TPropriedadeBase = class (TInterfacedObject)
  private
    FCampo: String;
    FPersistir: Boolean;
    FTipo: TPropriedadeBaseTipo;
    procedure SetCampo(AValue: String);
    procedure SetPersistir(AValue: Boolean);
    procedure SetTipo(AValue: TPropriedadeBaseTipo);
  protected
    FIntegerValue: Integer;
    FDoubleValue: Double;
    FBooleanValue: Boolean;
    FStringValue: String;
  public
    constructor Create; virtual; abstract;
    property Tipo: TPropriedadeBaseTipo read FTipo write SetTipo;
    property Campo: String read FCampo write SetCampo;
    property Persistir: Boolean read FPersistir write SetPersistir;
  end;

implementation

{ TPropriedadeBase }

procedure TPropriedadeBase.SetTipo(AValue: TPropriedadeBaseTipo);
begin
  if FTipo=AValue then Exit;
  FTipo:=AValue;
end;

procedure TPropriedadeBase.SetCampo(AValue: String);
begin
  if FCampo=AValue then Exit;
  FCampo:=AValue;
end;

procedure TPropriedadeBase.SetPersistir(AValue: Boolean);
begin
  if FPersistir=AValue then Exit;
  FPersistir:=AValue;
end;

end.

