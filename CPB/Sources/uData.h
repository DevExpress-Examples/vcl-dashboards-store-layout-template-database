//---------------------------------------------------------------------------

#ifndef uDataH
#define uDataH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include "dxmdaset.hpp"
#include <Data.DB.hpp>
#include "cxClasses.hpp"
#include "cxLookAndFeels.hpp"
#include "dxCore.h"
#include "dxSkinsForm.hpp"
#include "dxBackend.ConnectionString.SQL.hpp"
#include "dxBackend.hpp"
#include "dxBackend.ConnectionString.JSON.DataSet.hpp"
#include "dxBackend.ConnectionString.JSON.hpp"
//---------------------------------------------------------------------------
class TDataModule1 : public TDataModule
{
__published:	// IDE-managed Components
	TdxMemData *mdLayouts;
	TBlobField *mdLayoutsLayout;
	TWideStringField *mdLayoutsName;
	TBlobField *mdLayoutsState;
	TDataSource *dsLayouts;
	TdxBackendDataConnectionManager *dxBackendDataConnectionManager1;
	TdxBackendDataSetJSONConnection *RevenueByIndustryConnection;
	TdxBackendDataSetCollectionItem *RevenueByIndustryConnectionItem1;
	TdxMemData *mdRevenueByIndustry;
	TStringField *mdRevenueByIndustryCity;
	TStringField *mdRevenueByIndustryIndustry;
	TStringField *mdRevenueByIndustryState;
	TFloatField *mdRevenueByIndustryLatitude;
	TFloatField *mdRevenueByIndustryLongitude;
	TCurrencyField *mdRevenueByIndustryRevenue;
	void __fastcall DataModuleCreate(TObject *Sender);
	void __fastcall DataModuleDestroy(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TDataModule1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDataModule1 *DataModule1;
//---------------------------------------------------------------------------
#endif
