program mvc;

uses
  Vcl.Forms,
  mvc.view.principal in 'view\mvc.view.principal.pas' {Form1},
  mvc.model.entity.interfaced in 'model\entity\mvc.model.entity.interfaced.pas',
  mvc.model.entity.interfaced.Cliente in 'model\entity\implementation\mvc.model.entity.interfaced.Cliente.pas',
  mvc.model.entity.interfaced.Produto in 'model\entity\implementation\mvc.model.entity.interfaced.Produto.pas',
  mvc.model.entity.interfaced.Pedido in 'model\entity\implementation\mvc.model.entity.interfaced.Pedido.pas',
  mvc.model.entity.interfaced.PedidoItem in 'model\entity\implementation\mvc.model.entity.interfaced.PedidoItem.pas',
  mvc.model.entity.interfaced.Entity in 'model\entity\implementation\mvc.model.entity.interfaced.Entity.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
