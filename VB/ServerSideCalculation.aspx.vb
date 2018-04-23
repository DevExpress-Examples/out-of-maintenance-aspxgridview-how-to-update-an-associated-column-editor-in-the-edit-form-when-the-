Imports System
Imports DevExpress.Web

Partial Public Class ServerSideCalculation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub ASPxCallback1_Callback(ByVal source As Object, ByVal e As CallbackEventArgs)
        Dim someConstant As Decimal = 10D

        e.Result = (Convert.ToDecimal(e.Parameter) * someConstant).ToString()
    End Sub
End Class