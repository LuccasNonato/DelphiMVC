unit mvc.model.entity.interfaced.Entity;

interface

uses
   mvc.model.entity.interfaced;

type
   TEntity = class(TInterfacedObject, IEntity)
   private
    FCliente : ICliente;
    FProduto : IProduto;
    FPedido  : IPedido;
    FPedidoItem : IPedidoItem;
   public
      class function New: IEntity;
      function Cliente : ICliente;
      function Produto : IProduto;
      function Pedido  : IPedido;
      function PedidoItem : IPedidoItem;
   end;

implementation

uses
  mvc.model.entity.interfaced.Cliente, mvc.model.entity.interfaced.Pedido,
  mvc.model.entity.interfaced.PedidoItem, mvc.model.entity.interfaced.Produto;

{ TCliente }

{ TPedido }

function TEntity.Cliente: ICliente;
begin
  if not Assigned(FCliente) then
     FCliente := TCliente.new;
  Result := FCliente;
end;

class function TEntity.New: IEntity;
begin

end;

function TEntity.Pedido: IPedido;
begin
   if not Assigned(FPedido) then
      FPedido := TPedido.New;
  Result := FPedido;
end;

function TEntity.PedidoItem: IPedidoItem;
begin
   if not Assigned(FPedidoItem) then
      FPedidoItem := TPedidoItem.New;
   Result := FPedidoItem;
end;

function TEntity.Produto: IProduto;
begin
   if not Assigned(FProduto) then
      FProduto := TProduto.New;
   Result := FProduto;
end;

end.

