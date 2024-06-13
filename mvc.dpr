program mvc;

uses
  Vcl.Forms,
  mvc.view.principal in 'view\mvc.view.principal.pas' {Form1},
  mvc.model.entity.interfaced in 'model\entity\mvc.model.entity.interfaced.pas',
  mvc.model.entity.interfaced.Cliente in 'model\entity\implementation\mvc.model.entity.interfaced.Cliente.pas',
  mvc.model.entity.interfaced.Produto in 'model\entity\implementation\mvc.model.entity.interfaced.Produto.pas',
  mvc.model.entity.interfaced.Pedido in 'model\entity\implementation\mvc.model.entity.interfaced.Pedido.pas',
  mvc.model.entity.interfaced.PedidoItem in 'model\entity\implementation\mvc.model.entity.interfaced.PedidoItem.pas',
  mvc.model.entity.interfaced.Entity in 'model\entity\implementation\mvc.model.entity.interfaced.Entity.pas',
  mvc.model.connection.interfaces in 'model\connection\mvc.model.connection.interfaces.pas',
  mvc.model.entity.interfaced.connection.impl.FireDac in 'model\connection\implementation\mvc.model.entity.interfaced.connection.impl.FireDac.pas',
  mvc.model.entity.interfaced.connection.impl.Query in 'model\connection\implementation\mvc.model.entity.interfaced.connection.impl.Query.pas',
  mvc.model.entity.interfaced.connection.impl.Config in 'model\connection\implementation\mvc.model.entity.interfaced.connection.impl.Config.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
