using System;
using DevExpress.Web;

public partial class ServerSideCalculation : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void ASPxCallback1_Callback(object source, CallbackEventArgs e) {
        decimal someConstant = 10m;
        
        e.Result = (Convert.ToDecimal(e.Parameter) * someConstant).ToString();
    }
}