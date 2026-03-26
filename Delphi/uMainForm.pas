unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxReport, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,  cxButtons,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, dxmdaset, dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl,
  dxBackend.Utils.WebBrowserForm, dxDashboard.Control, cxTextEdit, cxMaskEdit;


type
  TMainForm = class(TForm)
    dxReport1: TdxReport;
    btnNewDashboard: TcxButton;
    btnDesign: TcxButton;
    btnDelete: TcxButton;
    gvLayouts: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvLayoutsRecId: TcxGridDBColumn;
    gvLayoutsLayout: TcxGridDBColumn;
    gvLayoutsName: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxDashboardControl1: TdxDashboardControl;
    lgButtons: TdxLayoutGroup;
    liBtnNew: TdxLayoutItem;
    liBtnShowDesigner: TdxLayoutItem;
    liBtnDelete: TdxLayoutItem;
    liGrid: TdxLayoutItem;
    liDashboardControl: TdxLayoutItem;
    procedure btnNewDashboardClick(Sender: TObject);
    procedure btnDesignClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dxDashboardControl1LayoutChanged(ASender: TdxCustomDashboardControl);
    procedure dxDashboardControl1StateChanged(ASender: TdxCustomDashboardControl);
    procedure gvLayoutsFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure gvLayoutsEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure gvLayoutsNamePropertiesValidate(Sender: TObject;
      var DisplayValue: TcxEditValue; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
    procedure LoadLayoutAndState;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses uData;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  LoadLayoutAndState;
end;

procedure TMainForm.LoadLayoutAndState;
begin
  if (DataModule1.mdLayouts.RecordCount = 0) and (DataModule1.mdLayouts.State <> dsInsert)   then
  begin
    dxDashboardControl1.Clear;
    Exit;
  end;

  dxDashboardControl1.DashboardName := DataModule1.mdLayoutsName.AsString;
  dxDashboardControl1.Layout.Assign(DataModule1.mdLayoutsLayout);
  if not DataModule1.mdLayoutsState.IsNull then
    dxDashboardControl1.State.Assign(DataModule1.mdLayoutsState);
end;

procedure TMainForm.btnDeleteClick(Sender: TObject);
begin
  DataModule1.mdLayouts.Delete;
end;

procedure TMainForm.btnDesignClick(Sender: TObject);
begin
  dxDashboardControl1.ShowDesigner;
end;

procedure TMainForm.btnNewDashboardClick(Sender: TObject);
begin
  dxDashboardControl1.Clear;
  dxDashboardControl1.ShowDesigner;
end;

procedure TMainForm.gvLayoutsNamePropertiesValidate(Sender: TObject;
  var DisplayValue: TcxEditValue; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = '' then
  begin
    Error := True;
    ErrorText := 'Dashboard name cannot be blank.'
  end;
end;

procedure TMainForm.gvLayoutsEditValueChanged(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem);
begin
  if AItem = gvLayoutsName then
    dxDashboardControl1.DashboardName := AItem.EditValue;
end;

procedure TMainForm.gvLayoutsFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if AFocusedRecord = nil then
    dxDashboardControl1.Clear;

  if (AFocusedRecord <> APrevFocusedRecord) and (DataModule1.mdLayouts.State <> dsInsert) then
    LoadLayoutAndState;
end;

procedure TMainForm.dxDashboardControl1LayoutChanged(
  ASender: TdxCustomDashboardControl);
begin
  if DataModule1.mdLayoutsName.AsString <> dxDashboardControl1.DashboardName then
  begin
    DataModule1.mdLayouts.Append;
    DataModule1.mdLayoutsName.AsString := dxDashboardControl1.DashboardName;
  end
  else
    DataModule1.mdLayouts.Edit;

  DataModule1.mdLayoutsLayout.Assign(dxDashboardControl1.Layout);
  DataModule1.mdLayouts.Post;
end;

procedure TMainForm.dxDashboardControl1StateChanged(
  ASender: TdxCustomDashboardControl);
begin
  DataModule1.mdLayouts.Edit;
  DataModule1.mdLayoutsState.Assign(dxDashboardControl1.State);
  DataModule1.mdLayouts.Post;
end;

end.
