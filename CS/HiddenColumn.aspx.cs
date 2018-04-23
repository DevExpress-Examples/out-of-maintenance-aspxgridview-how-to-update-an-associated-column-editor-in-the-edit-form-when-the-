using System;
using System.Data;
using System.Web.UI;
using DevExpress.Web;

public partial class HiddenColumn : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void ASPxCallback1_Callback(object source, CallbackEventArgs e) {
        string someConstant = " Test";
        string description = GetDescriptionById(e.Parameter);

        e.Result = description + someConstant;
    }

    private string GetDescriptionById(string id) {
        AccessDataSource3.SelectParameters["CategoryID"].DefaultValue = id;
        DataView result = (DataView)AccessDataSource3.Select(DataSourceSelectArguments.Empty);

        if (result.Count == 0)
            return string.Empty;

        return result[0]["Description"].ToString();
    }
}