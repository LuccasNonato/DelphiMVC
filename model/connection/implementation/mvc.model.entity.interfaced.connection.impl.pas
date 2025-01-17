unit mvc.model.entity.interfaced.connection.impl;

interface

uses
  system.SysUtils,
  mvc.model.connection.interfaces,
  Data.DB,
  Datasnap.DBClient,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat;

type
    TIConnectionFiredac = class(TInterfacedObject, IConnection)
    private
      FConnection: TFDConnection;

      constructor Create;
      destructor  destroy; override;
    public
      class function New: IConnection;
      function Connection: TCustomconnection;
    end;
implementation


{ TMyclass }

function TIConnectionFiredac.Connection: TCustomconnection;
begin

end;

constructor TIConnectionFiredac.Create;
begin
  FConnection := TFDConnection.Create(nil);

  try

  Except
    raise Exception.Create('Error ao tentar conectar com o BD');
  end;
end;

destructor TIConnectionFiredac.destroy;
begin
  FreeAndNil(FConnection);
  inherited;
end;

class function TIConnectionFiredac.New: IConnection;
begin
   Result := Self.Create;
end;

end.
