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

implementation

end.
