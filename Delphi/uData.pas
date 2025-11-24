unit uData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, dxmdaset, cxClasses,
  dxCore, cxLookAndFeels,
  dxSkinsForm, dxBackend, dxBackend.ConnectionString.SQL,
  dxBackend.ConnectionString.JSON, dxBackend.ConnectionString.JSON.DataSet;

type
  TDataModule1 = class(TDataModule)
    mdLayouts: TdxMemData;
    dsLayouts: TDataSource;
    mdLayoutsLayout: TBlobField;
    mdLayoutsName: TWideStringField;
    dxBackendDataConnectionManager1: TdxBackendDataConnectionManager;
    ReportsNWindConnectionString: TdxBackendDatabaseSQLConnection;
    dxSkinController1: TdxSkinController;
    mdRevenueByIndustry: TdxMemData;
    mdRevenueByIndustryCity: TStringField;
    mdRevenueByIndustryIndustry: TStringField;
    mdRevenueByIndustryState: TStringField;
    mdRevenueByIndustryLatitude: TFloatField;
    mdRevenueByIndustryLongitude: TFloatField;
    mdRevenueByIndustryRevenue: TCurrencyField;
    RevenueByIndustryConnection: TdxBackendDataSetJSONConnection;
    RevenueByIndustryConnectionItem1: TdxBackendDataSetCollectionItem;
    mdLayoutsState: TBlobField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
const
  DataFileName = '..\..\data.dat';

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  if FileExists(DataFileName) then
    mdLayouts.LoadFromBinaryFile(DataFileName)
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
  if mdLayouts.RecordCount > 0 then
    mdLayouts.SaveToBinaryFile(DataFileName)
end;

end.
