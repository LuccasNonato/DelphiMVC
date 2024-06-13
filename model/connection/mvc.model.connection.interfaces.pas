unit mvc.model.connection.interfaces;

interface

uses
  Data.DB;

 type
    IConnection = interface
       function Connect: TCustomConnection;
    end;

    IQuery = interface
      procedure Query(const Statement: string; Params: array of Variant); overload;
      function  Query(const Statement: Variant; Params: array of Variant): TDataSet; overload;
    end;

    IConfiguracao = interface
      function GetProtocol: string;
      function SetServidor(const Value: string): IConfiguracao;
      function GetServidor: string;

      function SetPorta(const Value: integer): IConfiguracao;
      function GetPorta: Integer;

      function SetUsuario(const Value: string): IConfiguracao;
      function GetUsuario: string;

      function SetSenha(const Value: string): IConfiguracao;
      function GetSenha: string;

      function SetCaminho(const Value: string): IConfiguracao;
      function GetCaminho: string;

      function SetDriveName(const Value: string): IConfiguracao;
      function GetDriverName: string;
    end;

implementation

end.
