unit mvc.model.entity.interfaced;

interface

 type
    ICliente = interface
      function SetCodigo(const Value : integer): ICliente;
      function GetCodigo: integer;
      function SetNome(const Value : String): ICliente;
      function GetNome: string;
      function SetCidade(const Value : String): ICliente;
      function GetCidade: string;
      function SetEstado(const Value : String): ICliente;
      function GetEstado: string;
      end;

    IProduto = interface
      function SetCodigo(const Value : integer): IProduto;
      function GetCodigo: integer;
      function SetDescricao(const Value : string): IProduto;
      function GetDescricao: string;
      function SetPrecoVenda(const Value : Currency): IProduto;
      function GetPrecoVenda: Currency;
      end;

    IPedido = interface
      function SetNumeroPedido(const Value : integer): IPedido;
      function GetNumeroPedido: integer;
      function SetDataEmissao(Value : TdateTime): IPedido;
      function GetDataEmissao: TDateTime;
      function SetCodigoCliente(const Value : Integer): IPedido;
      function GetCodigoCliente: Integer;
      function SetValorTotal(const Value : Currency): IPedido;
      function GetValorTotal: Currency;
      end;

    IPedidoItem = interface
      function SetID(const Value : Integer): IPedidoItem;
      function GetID: Integer;
      function SetNumeroPedido(const Value : Integer): IPedidoItem;
      function GetNumeroPedido: Integer;
      function SetCodigoProduto(const Value : Integer): IPedidoItem;
      function GetCodigoProduto: Integer;
      function SetQtde(const Value : Currency): IPedidoItem;
      function GetQtde: Currency;
      function SetValorUnitario(const Value : Currency): IPedidoItem;
      function GetValorUnitario: Currency;
      function SetValorTotal(const Value : Currency): IPedidoItem;
      function GetValorTotal: Currency;
    end;

    IEntity = interface
      function Cliente : ICliente;
      function Produto : IProduto;
      function Pedido  : IPedido;
      function PedidoItem : IPedidoItem;
    end;

implementation

end.
