unit mvc.model.entity.interfaced.PedidoItem;

interface

uses
   mvc.model.entity.interfaced;

type
   TPedidoItem = class(TInterfacedObject, IPedidoItem)
   private
      FID : Integer;
      FNumeroPedido : Integer;
      FCodigoProduto : Integer;
      FQtde : Currency;
      FValorUnitario : Currency;
      FValorTotal : Currency;
   public
      class function New: IPedidoItem;
      function SetID(const Value : Integer): IPedidoItem;
      function GetID: Integer;
      function SetNumeroPedido(const Value : integer): IPedidoItem;
      function GetNumeroPedido: integer;
      function SetCodigoProduto(const Value : Integer): IPedidoItem;
      function GetCodigoProduto: Integer;
      function SetQtde(const Value : Currency): IPedidoItem;
      function GetQtde: Currency;
      function SetValorUnitario(const Value : Currency): IPedidoItem;
      function GetValorUnitario: Currency;
      function SetValorTotal(const Value : Currency): IPedidoItem;
      function GetValorTotal: Currency;
   end;

implementation

{ TCliente }

{ TPedido }



{ TPedidoItem }

function TPedidoItem.GetCodigoProduto: Integer;
begin
  Result := FCodigoProduto;
end;

function TPedidoItem.GetID: Integer;
begin
  Result := FID;
end;

function TPedidoItem.GetNumeroPedido: integer;
begin
  Result := FNumeroPedido;
end;

function TPedidoItem.GetQtde: Currency;
begin
  Result := FQtde;
end;

function TPedidoItem.GetValorTotal: Currency;
begin
  Result := FValorTotal;
end;

function TPedidoItem.GetValorUnitario: Currency;
begin
  Result := FValorUnitario;
end;

class function TPedidoItem.New: IPedidoItem;
begin

end;

function TPedidoItem.SetCodigoProduto(const Value: Integer): IPedidoItem;
begin
  Result := Self;
  FCodigoProduto := Value;
end;

function TPedidoItem.SetID(const Value: Integer): IPedidoItem;
begin
  Result := Self;
  FID := Value;
end;

function TPedidoItem.SetNumeroPedido(const Value: integer): IPedidoItem;
begin
  Result := Self;
  FNumeroPedido := Value;
end;

function TPedidoItem.SetQtde(const Value: Currency): IPedidoItem;
begin
  Result := Self;
  FQtde := Value;
end;

function TPedidoItem.SetValorTotal(const Value: Currency): IPedidoItem;
begin
  Result := Self;
  FValorTotal := Value;
end;

function TPedidoItem.SetValorUnitario(const Value: Currency): IPedidoItem;
begin
  Result := Self;
  FValorUnitario := Value;
end;

end.

