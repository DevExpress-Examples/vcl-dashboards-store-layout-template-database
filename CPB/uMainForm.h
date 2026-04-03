//---------------------------------------------------------------------------

#ifndef uMainFormH
#define uMainFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxNavigator.hpp"
#include "cxStyles.hpp"
#include "dxDateRanges.hpp"
#include "dxReport.hpp"
#include "dxScrollbarAnnotations.hpp"
#include <Data.DB.hpp>
#include <Vcl.Menus.hpp>
#include "dxmdaset.hpp"
#include "uData.h"
#include "cxImageList.hpp"
#include "dxLayoutContainer.hpp"
#include "dxLayoutControl.hpp"
#include "dxLayoutControlAdapters.hpp"
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include "dxBackend.Utils.WebBrowserForm.hpp"
#include "dxDashboard.Control.hpp"
#include "dxAI.Commands.SmartPaste.hpp"
#include "dxAI.hpp"
#include "cxTextEdit.hpp"
#include "cxColorComboBox.hpp"
#include "cxContainer.hpp"
#include "cxDBColorComboBox.hpp"
#include "cxDropDownEdit.hpp"
#include "cxMaskEdit.hpp"
#include "dxLayoutcxEditAdapters.hpp"
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TdxLayoutControl *dxLayoutControl1;
	TcxButton *btnDesign;
	TcxGrid *cxGrid2;
	TcxGridDBTableView *gvLayouts;
	TcxGridDBColumn *gvLayoutsRecId;
	TcxGridDBColumn *gvLayoutsLayout;
	TcxGridDBColumn *gvLayoutsName;
	TcxGridLevel *cxGrid2Level1;
	TdxDashboardControl *dxDashboardControl1;
	TcxButton *btnNewDashboard;
	TcxButton *btnDelete;
	TdxLayoutGroup *dxLayoutControl1Group_Root;
	TdxLayoutItem *liBtnShowDesigner;
	TdxLayoutItem *liGrid;
	TdxLayoutItem *liDashboardControl;
	TdxLayoutItem *liBtnNew;
	TdxLayoutGroup *lgButtons;
	TdxLayoutItem *liBtnDelete;
	TcxGridDBColumn *gvLayoutsState;
	void __fastcall btnNewDashboardClick(TObject *Sender);
	void __fastcall btnDeleteClick(TObject *Sender);
	void __fastcall btnDesignClick(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall gvLayoutsFocusedRecordChanged(TcxCustomGridTableView *Sender, TcxCustomGridRecord *APrevFocusedRecord,
		  TcxCustomGridRecord *AFocusedRecord, bool ANewItemRecordFocusingChanged);
	void __fastcall dxDashboardControl1LayoutChanged(TdxCustomDashboardControl *ASender);
	void __fastcall dxDashboardControl1StateChanged(TdxCustomDashboardControl *ASender);
	void __fastcall gvLayoutsNamePropertiesValidate(TObject *Sender, TcxEditValue &DisplayValue,
          TCaption &ErrorText, bool &Error);
	void __fastcall gvLayoutsEditValueChanged(TcxCustomGridTableView *Sender, TcxCustomGridTableItem *AItem);






private:	// User declarations
	void LoadLayoutAndState();
public:		// User declarations
	__fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
