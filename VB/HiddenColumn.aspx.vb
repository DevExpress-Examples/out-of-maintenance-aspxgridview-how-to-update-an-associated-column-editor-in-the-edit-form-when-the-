Imports System
Imports System.Data
Imports System.Web.UI
Imports DevExpress.Web

Partial Public Class HiddenColumn
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub ASPxCallback1_Callback(ByVal source As Object, ByVal e As CallbackEventArgs)
        Dim someConstant As String = " Test"
        Dim description As String = GetDescriptionById(e.Parameter)

        e.Result = description & someConstant
    End Sub

    Private Function GetDescriptionById(ByVal id As String) As String
        AccessDataSource3.SelectParameters("CategoryID").DefaultValue = id
        Dim result As DataView = DirectCast(AccessDataSource3.Select(DataSourceSelectArguments.Empty), DataView)

        If result.Count = 0 Then
            Return String.Empty
        End If

        Return result(0)("Description").ToString()
    End Function
End Class