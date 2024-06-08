unit mvc.model.entity.interfaced.Cliente;

interface

uses
   mvc.model.entity.interfaced;

type
   TCliente = class(TInterfacedObject, ICliente)
   private
     FCodigo : integer;
     FNome : string;
     FCidade : string;
     FEstado : string;

   public
     class function New: ICliente;
     function SetCodigo(const Value : integer): ICliente;
     function GetCodigo: integer;
     function SetNome(const Value : String): ICliente;
     function GetNome: string;
     function SetCidade(const Value : String): ICliente;
     function GetCidade: string;
     function SetEstado(const Value : String): ICliente;
     function GetEstado: string;
   end;

implementation

{ TCliente }

function TCliente.GetCidade: string;
begin
  Result := FCidade;
end;

function TCliente.GetCodigo: integer;
begin
  Result := FCodigo;
end;

function TCliente.GetEstado: string;
begin
  Result := FEstado;
end;

function TCliente.GetNome: string;
begin
  Result := FNome;
end;

class function TCliente.New: ICliente;
begin

end;

function TCliente.SetCidade(const Value : String): ICliente;
begin
  Result := Self;
  FCidade := Value;
end;

function TCliente.SetCodigo(const Value : integer): ICliente;
begin
  Result := Self;
  FCodigo := Value;
end;

function TCliente.SetEstado(const Value : String): ICliente;
begin
  Result := Self;
  FEstado := Value;
end;

function TCliente.SetNome(const Value : String): ICliente;
begin
  Result := Self;
  FNome := Value;
end;

end.
