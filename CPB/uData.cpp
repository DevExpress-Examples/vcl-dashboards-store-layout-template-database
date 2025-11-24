//---------------------------------------------------------------------------


#pragma hdrstop

#include "uData.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma classgroup "Vcl.Controls.TControl"
#pragma link "dxmdaset"
#pragma link "cxClasses"
#pragma link "cxLookAndFeels"
#pragma link "dxCore"
#pragma link "dxSkinsForm"
#pragma link "dxBackend"

#if defined(_WIN64)
  #pragma link "dxBackend.ConnectionString.SQL.O"
#else
  #pragma link "dxBackend.ConnectionString.SQL.OBJ"
#endif

#pragma link "dxBackend.ConnectionString.JSON"
#pragma link "dxBackend.ConnectionString.JSON.DataSet"
#pragma resource "*.dfm"
TDataModule1 *DataModule1;
//---------------------------------------------------------------------------
const String DataFileName = "..\\..\\data.dat";


__fastcall TDataModule1::TDataModule1(TComponent* Owner)
	: TDataModule(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TDataModule1::DataModuleCreate(TObject *Sender)
{
    if (FileExists(DataFileName))
		mdLayouts->LoadFromBinaryFile(DataFileName);
}
//---------------------------------------------------------------------------

void __fastcall TDataModule1::DataModuleDestroy(TObject *Sender)
{
    if (mdLayouts->RecordCount > 0)
        mdLayouts->SaveToBinaryFile(DataFileName);
}
//---------------------------------------------------------------------------

