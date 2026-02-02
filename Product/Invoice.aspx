<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Invoice.aspx.vb" Inherits="Invoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button4" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" /><br />
        Hello, Welcome
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>!<br />
        <asp:Button ID="Button1" runat="server" Text="Invoice table" />
        <asp:Button ID="Button2" runat="server" Text="Invoice search" PostBackUrl="~/Search.aspx" />
        <asp:Button ID="Button3" runat="server" Text="Change invoice status" /></div>
    </form>
</body>
</html>
