<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Main menu.aspx.vb" Inherits="Update_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button7" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" /><br />
        Welcome
        <asp:Label ID="Label1" runat="server" Text="Label" Width="289px"></asp:Label>!<br />
        What do you want to do? &nbsp; &nbsp;
        <br />
        <table style="width: 724px; height: 360px">
            <tr>
                <td style="width: 100px">
        <asp:Button ID="Button2" runat="server" Text="Products" Height="140px" Width="300px" /></td>
                <td style="width: 100px">
        <asp:Button ID="Button1" runat="server" Text="Customers" Height="140px" Width="300px" /></td>
                <td style="width: 100px">
        <asp:Button ID="Button3" runat="server" Text="Salesperson" Height="140px" Width="300px" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
        <asp:Button ID="Button6" runat="server" Text="Invoice" Height="140px" Width="300px" /></td>
                <td style="width: 100px">
        <asp:Button ID="Button4" runat="server" Text="Report" Height="140px" Width="300px" /></td>
                <td style="width: 100px">
                    <asp:Button ID="Button5" runat="server" Text="Commission" Height="140px" Width="300px" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
