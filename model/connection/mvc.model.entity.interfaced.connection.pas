unit mvc.model.entity.interfaced.connection;

interface

uses
  Data.DB;

 type
    IConnection = interface
       function Connection: TCustomconnection;
    end;

    IQuery = interface
      procedure Query(const Statement: string; Params: array of Variant); overload;
      function  Query(const Statement: Variant; Params: array of Variant): TDataSet; overload;
    end;

implementation

end.
