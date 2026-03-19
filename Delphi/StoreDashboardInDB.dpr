program StoreDashboardInDB;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uData in 'uData.pas' {DataModule1: TDataModule},
  StoreDashboardInDB.dxSettings in 'StoreDashboardInDB.dxSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'DevExpress VCL: Store Dashboard Layout in a Database';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
