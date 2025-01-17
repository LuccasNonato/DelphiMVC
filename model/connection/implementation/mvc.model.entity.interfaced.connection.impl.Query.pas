unit mvc.model.entity.interfaced.connection.impl.Query;

interface

uses
  system.SysUtils,
  Data.DB,
  mvc.model.connection.interfaces,
  FireDAC.Comp.Client;

type
    TQuery = class(TInterfacedObject, IQuery)
    private
      FQuery: TFDQuery;
      procedure AddInfoQuery(Value: string);
      procedure AddParams(Value: array of Variant);

      constructor Create(Connection:IConnection);
      destructor  destroy; override;
    public
      class function New(Connection:IConnection): IQuery;
      procedure Query(const Statement: string; Params: array of Variant); overload;
      function  Query(const Statement: Variant; Params: array of Variant): TDataSet; overload;
    end;
implementation


{ TMyclass }


{ TQuery }

procedure TQuery.AddInfoQuery(Value: string);
begin
   FQuery.Close;
   FQuery.SQL.Clear;
   FQuery.SQL.Add(Value);
end;

procedure TQuery.AddParams(Value: array of Variant);
begin
   for var I := Low(Value) to High(Value) do
   begin
     FQuery.Params.Add;
     FQuery.Params[I].Value := Value[I];
   end;

end;

constructor TQuery.Create(Connection:IConnection);
begin
  FQuery:= TFDQuery.create(nil);
  FQuery.Connection := TFDConnection(Connection.Connect);
end;

destructor TQuery.destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

class function TQuery.New(Connection:IConnection): IQuery;
begin
  Result := Self.Create(Connection);
end;

procedure TQuery.Query(const Statement: string; Params: array of Variant);
begin
  AddInfoQuery(Statement);
  AddParams(Params);

  FQuery.ExecSQL;
end;

function TQuery.Query(const Statement: Variant;
  Params: array of Variant): TDataSet;
begin
  AddInfoQuery(Statement);
  AddParams(Params);

  FQuery.Open;
  Result := FQuery;
end;

end.

