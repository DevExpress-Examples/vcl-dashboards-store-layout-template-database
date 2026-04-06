//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "uMainForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGraphics"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxNavigator"
#pragma link "cxStyles"
#pragma link "dxDateRanges"
#pragma link "dxReport"

#pragma link "dxScrollbarAnnotations"
#pragma link "dxmdaset"
#pragma link "cxImageList"
#pragma link "dxLayoutContainer"
#pragma link "dxLayoutControl"
#pragma link "dxLayoutControlAdapters"
#pragma link "dxBackend.Utils.WebBrowserForm"
#pragma link "dxDashboard.Control"
#pragma link "dxAI"
#pragma link "dxAI.Commands.SmartPaste"
#pragma link "cxTextEdit"
#pragma link "cxColorComboBox"
#pragma link "cxContainer"
#pragma link "cxDBColorComboBox"
#pragma link "cxDropDownEdit"
#pragma link "cxMaskEdit"
#pragma link "dxLayoutcxEditAdapters"
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FormCreate(TObject *Sender)
{
    LoadLayoutAndState();
}
 //---------------------------------------------------------------------------
void __fastcall TMainForm::LoadLayoutAndState()
{
	if ((DataModule1->mdLayouts->RecordCount == 0) &&
        (DataModule1->mdLayouts->State != dsInsert))
    {
        dxDashboardControl1->Clear();
        return;
    }

    dxDashboardControl1->DashboardName = DataModule1->mdLayoutsName->AsString;
    dxDashboardControl1->Layout->Assign(DataModule1->mdLayoutsLayout);

    if (!DataModule1->mdLayoutsState->IsNull)
        dxDashboardControl1->State->Assign(DataModule1->mdLayoutsState);

	dxDashboardControl1->Active = true;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::btnDeleteClick(TObject *Sender)
{
    DataModule1->mdLayouts->Delete();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::btnDesignClick(TObject *Sender)
{
    dxDashboardControl1->ShowDesigner();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::btnNewDashboardClick(TObject *Sender)
{
    dxDashboardControl1->Clear();
    dxDashboardControl1->ShowDesigner();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::gvLayoutsNamePropertiesValidate(TObject *Sender, TcxEditValue &DisplayValue,
		  TCaption &ErrorText, bool &Error)
{
	if (DisplayValue == "")
	{
		Error = true;
		ErrorText = L"Dashboard name cannot be blank.";
	}
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::gvLayoutsEditValueChanged(TcxCustomGridTableView *Sender,
		  TcxCustomGridTableItem *AItem)
{
    if (AItem == gvLayoutsName)
        dxDashboardControl1->DashboardName = AItem->EditValue;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::gvLayoutsFocusedRecordChanged(
    TcxCustomGridTableView *Sender,
    TcxCustomGridRecord *APrevFocusedRecord,
	TcxCustomGridRecord *AFocusedRecord,
    bool ANewItemRecordFocusingChanged)
{
    if (AFocusedRecord == nullptr)
        dxDashboardControl1->Clear();

    if ((AFocusedRecord != APrevFocusedRecord) &&
        (DataModule1->mdLayouts->State != dsInsert))
    {
        LoadLayoutAndState();
	}
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::dxDashboardControl1LayoutChanged(
	TdxCustomDashboardControl *ASender)
{
    dxDashboardControl1->Active = true;
	if (DataModule1->mdLayoutsName->AsString != dxDashboardControl1->DashboardName)
	{
		DataModule1->mdLayouts->Append();
		DataModule1->mdLayoutsName->AsString = dxDashboardControl1->DashboardName;
	}
	else
		DataModule1->mdLayouts->Edit();

	DataModule1->mdLayoutsLayout->Assign(dxDashboardControl1->Layout);
	DataModule1->mdLayouts->Post();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::dxDashboardControl1StateChanged(
	TdxCustomDashboardControl *ASender)
{
	DataModule1->mdLayouts->Edit();
	DataModule1->mdLayoutsState->Assign(dxDashboardControl1->State);
	DataModule1->mdLayouts->Post();
}

//---------------------------------------------------------------------------


//---------------------------------------------------------------------------
