unit mvc.model.entity.interfaced.Pedido;

interface

uses
   mvc.model.entity.interfaced;

type
   TPedido = class(TInterfacedObject, IPedido)
   private
      FNumeroPedido : Integer;
      FDataemissao : TDateTime;
      FCodigoCliente : Integer;
      FValorTotal : Currency;
   public
      class function New: IPedido;
      function SetNumeroPedido(const Value : integer): IPedido;
      function GetNumeroPedido: integer;
      function SetDataEmissao(Value : TdateTime): IPedido;
      function GetDataEmissao: TDateTime;
      function SetCodigoCliente(const Value : Integer): IPedido;
      function GetCodigoCliente: Integer;
      function SetValorTotal(const Value : Currency): IPedido;
      function GetValorTotal: Currency;
   end;

implementation

{ TCliente }

{ TPedido }

function TPedido.GetNumeroPedido: integer;
begin
  Result := FNumeroPedido;
end;

function TPedido.GetCodigoCliente: Integer;
begin
  Result := FCodigoCliente;
end;

function TPedido.GetDataEmissao: TDateTime;
begin
  Result := FDataEmissao;
end;

function TPedido.GetValorTotal: Currency;
begin
  Result := FValorTotal;
end;

class function TPedido.New: IPedido;
begin

end;

function TPedido.SetCodigoCliente(const Value: Integer): IPedido;
begin
   Result := Self;
   FCodigoCliente := Value;
end;

function TPedido.SetDataEmissao(Value: TdateTime): IPedido;
begin
   Result := Self;
   FDataEmissao := Value;
end;

function TPedido.SetNumeroPedido(const Value: integer): IPedido;
begin
   Result := Self;
   FNumeroPedido := Value;
end;

function TPedido.SetValorTotal(const Value: Currency): IPedido;
begin
   Result := Self;
   FValorTotal := Value;
end;

end.

