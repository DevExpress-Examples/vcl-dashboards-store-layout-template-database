program DashboardTemplate;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uData in 'uData.pas' {DataModule1: TDataModule},
  DashboardTemplate.dxSettings in 'DashboardTemplate.dxSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
