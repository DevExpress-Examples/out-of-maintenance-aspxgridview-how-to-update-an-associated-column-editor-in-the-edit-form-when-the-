<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128535967/15.2.7%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T359598)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [HiddenColumn.aspx](./CS/HiddenColumn.aspx) (VB: [HiddenColumn.aspx](./VB/HiddenColumn.aspx))
* [HiddenColumn.aspx.cs](./CS/HiddenColumn.aspx.cs) (VB: [HiddenColumn.aspx.vb](./VB/HiddenColumn.aspx.vb))
* [ServerSideCalculation.aspx](./CS/ServerSideCalculation.aspx) (VB: [ServerSideCalculation.aspx](./VB/ServerSideCalculation.aspx))
* [ServerSideCalculation.aspx.cs](./CS/ServerSideCalculation.aspx.cs) (VB: [ServerSideCalculation.aspx.vb](./VB/ServerSideCalculation.aspx.vb))
* **[SimplestApproach.aspx](./CS/SimplestApproach.aspx) (VB: [SimplestApproach.aspx](./VB/SimplestApproach.aspx))**
* [SimplestApproach.aspx.cs](./CS/SimplestApproach.aspx.cs) (VB: [SimplestApproach.aspx.vb](./VB/SimplestApproach.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to update an associated column editor in the Edit Form when the GridViewDataComboBoxColumn editor value is modified


This example illustrates several approaches to update the associated column editor when the <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebGridViewDataComboBoxColumntopic">GridViewDataComboBoxColumn</a> (ASPxComboBox) editor value is modified:<br><br>1) The simplest approach implies that the associated editor value can be calculated on the client side.<br><br>2) A more complex approach when it is necessary to make a server call in order to calculate this value. We use the <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxCallbacktopic">ASPxCallback</a> component for this purpose.<br><br>3) Some extended version of the previous approach. The associated editor value is calculated based on the hidden column of the GridViewDataComboBoxColumn in multi-column mode.<br><br>The first thing we do in all scenarios is a subscription to the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientComboBox_SelectedIndexChangedtopic">ASPxClientComboBox.SelectedIndexChanged</a> event. In this event handler we either calculate the resulting value immediately on the client side or initiate a server callback. Finally, we call the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientGridView_GetEditortopic">ASPxClientGridView.GetEditor</a> and <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientEditBase_SetValuetopic">ASPxClientEditBase.SetValue</a> methods to update an associated column editor value.<br><br><strong>See Also:</strong><br><a href="https://www.devexpress.com/Support/Center/p/KA18839">KA18839 - ASPxGridView - How to set column values in the Edit Form depending on another editor's value</a><br><br>MVC version: <a href="https://www.devexpress.com/Support/Center/p/T360468">T360468 - GridView - How to update an associated column editor in the Edit Form when the ComboBox column editor value is modified </a>

<br/>


