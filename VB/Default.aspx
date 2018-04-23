<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>GridUpdateComboWeb</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>ASPxGridView - How to update an associated column editor in the Edit Form when the GridViewDataComboBoxColumn editor value is modified</h2>
        <asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="SimplestApproach.aspx" Text="Simplest approach" /><br />
        <asp:HyperLink id="HyperLink2" runat="server" NavigateUrl="ServerSideCalculation.aspx" Text="Server-side calculation" /><br />
        <asp:HyperLink id="HyperLink3" runat="server" NavigateUrl="HiddenColumn.aspx" Text="Hidden column" />
    </form>
</body>
</html>