<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/1103041064/25.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1318109)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# DevExpress VCL Dashboards — Store Dashboard Layouts in a Database

This sample app stores a [dashboard layout](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.Layout) (XML-based template) in the BLOB field of a memory-based dataset ([TdxMemData](https://docs.devexpress.com/VCL/dxmdaset.TdxMemData) inherited from the [TDataSet](https://docwiki.embarcadero.com/Libraries/Athens/en/Data.DB.TDataSet) class shipped with the standard VCL library).

![DevExpress VCL Dashboards - Database Layout Storage Example](/Images/vcl-dashboard-layout-database-sample-app.png)

## Prerequisites

* Microsoft Windows 10 or newer
* Embarcadero RAD Studio IDE 10.4 (Sydney) or newer (Community Edition is not supported)
* DevExpress VCL Components v25.2.3 or newer

## Test the Example

1. Run the sample app.
2. Click **New Dashboard** to create a new dashboard and a dataset record. Alternatively, you can click **Design Dashboard** to modify the existing dashboard.
3. Create or modify the dashboard layout using tools available within the UI.
4. Click the hamburger button, select the **Save** option, and close the dialog.
5. Close the app. The [TdxMemData](https://docs.devexpress.com/VCL/dxmdaset.TdxMemData) component will store layout data between sessions.
6. Run the sample again. Click on grid records to switch between loaded dashboards.

![DevExpress VCL Dashboards - Store Dashboard Layout Definitions in a Database](/Images/vcl-dashboards-store-layout-template-database.gif)

## Documentation

* [TdxCustomDashboardControl.Layout](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.Layout)
* [TdxBackendDataSetJSONConnection](https://docs.devexpress.com/VCL/dxBackend.ConnectionString.JSON.DataSet.TdxBackendDataSetJSONConnection)

<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-dashboards-store-layout-template-database&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-dashboards-store-layout-template-database&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
