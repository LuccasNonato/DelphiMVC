unit mvc.model.entity.interfaced.connection.impl.FireDac;

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
      FConf: IConfiguracao;

      constructor Create;
      destructor  destroy; override;
    public
      class function New: IConnection;
      function Connect: TCustomconnection;
    end;
implementation

uses
  mvc.model.entity.interfaced.connection.impl.Config;


{ TMyclass }

function TIConnectionFiredac.Connect: TCustomconnection;
begin
  Result := FConnection;
end;

constructor TIConnectionFiredac.Create;
begin
  FConnection := TFDConnection.Create(nil);
  FConf := TConfiguracao.New(ExtractFilePath(ParamStr(0)));
  try
    FConnection.Params.Clear;
    FConnection.Params.DriverID := FConf.GetDriverName;
    FConnection.Params.UserName := FConf.GetUsuario;
    FConnection.Params.Password := FConf.GetSenha;

    if FConf.GetDriverName.Equals('SQLite') then
       FConnection.Params.Add('Lockingmode=Normal');
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
