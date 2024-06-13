unit mvc.model.entity.interfaced.connection.impl.Config;

interface

uses
  mvc.model.connection.interfaces,
  System.SysUtils,
  IniFiles;

type
  TConfiguracao = class(TInterfacedObject, IConfiguracao)
  const
     SECTION = 'CONFIG';
     CAMINHO = 'CAMINHO';
     PORTA = 'PORTA';
     SERVIDOR = 'SERVIDOR';
     USUARIO = 'USERNAME';
     SENHA = 'PASSWORD';
     DRIVER = 'DRIVERNAME';
  private
         FArquivo: TIniFile;

         constructor Create(FileName: string);
         destructor  Destroy; override;
      public
        class function New(FileName: string): IConfiguracao;
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

{ TConfiguracao }

constructor TConfiguracao.Create(FileName: string);
begin
  FArquivo := TIniFile.Create(FileName);
end;

destructor TConfiguracao.Destroy;
begin
  FreeAndNil(FArquivo);
  inherited;
end;

function TConfiguracao.GetCaminho: string;
begin
   Result := FArquivo.ReadString(SECTION, CAMINHO, '');
end;

function TConfiguracao.GetDriverName: string;
begin
   Result := FArquivo.ReadString(SECTION, DRIVER,'');
end;

function TConfiguracao.GetPorta: Integer;
begin
   Result := FArquivo.ReadInteger(SECTION, PORTA, 0);
end;

function TConfiguracao.GetProtocol: string;
begin
   Result := 'LOCAL';
   if not FArquivo.Readstring(SECTION, SERVIDOR,  '').Equals('LOCALHOST') or
      FArquivo.Readstring(SECTION, SERVIDOR,  '').Equals('127.0.0.1') then
      Result := 'TCP';
end;

function TConfiguracao.GetSenha: string;
begin
  Result := FArquivo.ReadString(SECTION, SENHA, '');
end;

function TConfiguracao.GetServidor: string;
begin
  Result := FArquivo.ReadString(SECTION, SERVIDOR, '');
end;

function TConfiguracao.GetUsuario: string;
begin
  Result := FArquivo.ReadString(SECTION, USUARIO, '');
end;

class function TConfiguracao.New(FileName: string): IConfiguracao;
begin
   Result := Self.Create(FileName);
end;

function TConfiguracao.SetCaminho(const Value: string): IConfiguracao;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, CAMINHO, VALUE);
end;

function TConfiguracao.SetDriveName(const Value: string): IConfiguracao;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, DRIVER, VALUE);
end;

function TConfiguracao.SetPorta(const Value: integer): IConfiguracao;
begin
  Result := Self;
  FArquivo.WriteInteger(SECTION, PORTA, VALUE);
end;

function TConfiguracao.SetSenha(const Value: string): IConfiguracao;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, SENHA, VALUE);
end;

function TConfiguracao.SetServidor(const Value: string): IConfiguracao;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, SERVIDOR, VALUE);
end;

function TConfiguracao.SetUsuario(const Value: string): IConfiguracao;
begin
  Result := Self;
  FArquivo.WriteString(SECTION, USUARIO, VALUE);
end;

end.
