# DevExpress VCL Dashboards — Store Dashboard Layouts in a Database

This sample app stores a [dashboard layout](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.Layout) (XML-based template) in the BLOB field of a memory-based dataset ([TdxMemData](https://docs.devexpress.com/VCL/dxmdaset.TdxMemData) inherited from the [TDataSet](https://docwiki.embarcadero.com/Libraries/Athens/en/Data.DB.TDataSet) class shipped with the standard VCL library).

## Prerequisites

* Microsoft Windows 10 or newer
* Embarcadero RAD Studio IDE 10.4 (Sydney) or newer (Community Edition is not supported)
* DevExpress VCL Components v25.2.3 or newer

## Test the Example

1. Run the sample app.
2. Click **New Dashboard** to create a new dashboard and a dataset record. Alternatively, you can click **Design Dashboard** to modify the existing dashboard.
3. Create or modify the dashboard layout using tools available within the UI.
4. Click the hamburger button, select the **Save** option, and close the dialog.
5. Close the app. The [TdxMemData] component will store layout data between sessions.
6. Run the sample again. Click on grid records to switch between loaded dashboards.

## Documentation

* [TdxCustomDashboardControl.Layout](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.Layout)
* [TdxBackendDataSetJSONConnection](https://docs.devexpress.com/VCL/dxBackend.ConnectionString.JSON.DataSet.TdxBackendDataSetJSONConnection)
