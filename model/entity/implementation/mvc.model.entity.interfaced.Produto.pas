unit mvc.model.entity.interfaced.Produto;

interface

uses
   mvc.model.entity.interfaced;

type
   TProduto = class(TInterfacedObject, IProduto)
   private
     FCodigo : integer;
     FDescricao : string;
     FPrecoVenda : Currency;

   public
     class function New: IProduto;
     function SetCodigo(const Value : integer): IProduto;
     function GetCodigo: integer;
     function SetDescricao(const Value : string): IProduto;
     function GetDescricao: string;
     function SetPrecoVenda(const Value : Currency): IProduto;
     function GetPrecoVenda: Currency;
   end;

implementation

{ TCliente }



function TProduto.GetCodigo: integer;
begin
  Result := FCodigo;
end;

function TProduto.GetDescricao: string;
begin
  Result := FDescricao;
end;

function TProduto.GetPrecoVenda: Currency;
begin
  Result := FPrecoVenda;
end;

class function TProduto.New: IProduto;
begin

end;

function TProduto.SetCodigo(const Value: integer): IProduto;
begin
  Result := Self;
  FCodigo := Value;
end;

function TProduto.SetDescricao(const Value: string): IProduto;
begin
  Result := Self;
  FDescricao := Value;
end;

function TProduto.SetPrecoVenda(const Value: Currency): IProduto;
begin
  Result := Self;
  FPrecoVenda := Value;
end;

end.

