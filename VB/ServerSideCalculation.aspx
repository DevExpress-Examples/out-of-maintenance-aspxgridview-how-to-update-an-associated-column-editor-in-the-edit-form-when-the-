<%@ Page Language="vb" AutoEventWireup="true" CodeFile="ServerSideCalculation.aspx.vb" Inherits="ServerSideCalculation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function OnSelectedIndexChanged(s, e) {
            clb.PerformCallback(s.GetValue());
        }

        function OnCallbackComplete(s, e) {
            grid.GetEditor('UnitsOnOrder').SetValue(e.result);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" ClientInstanceName="grid"
            DataSourceID="AccessDataSource1" KeyFieldName="ProductID" AutoGenerateColumns="False">
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="true">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn FieldName="CategoryID" VisibleIndex="2">
                    <PropertiesComboBox DataSourceID="AccessDataSource2" TextField="CategoryName" ValueField="CategoryID" ValueType="System.Int32">
                        <ClientSideEvents SelectedIndexChanged="OnSelectedIndexChanged" />
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>

        <dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="clb" OnCallback="ASPxCallback1_Callback">
            <ClientSideEvents CallbackComplete="OnCallbackComplete" />
        </dx:ASPxCallback>

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [ProductID], [CategoryID], [ProductName], [UnitPrice], [UnitsOnOrder] FROM [Products]">
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]">
        </asp:AccessDataSource>
    </form>
</body>
</html>