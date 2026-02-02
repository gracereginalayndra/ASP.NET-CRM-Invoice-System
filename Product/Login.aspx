<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        Login Page<br />
        Welcome to PT. X
        <br />
        <br />
        <table style="width: 900px; height: 100px">
            <tr>
                <td style="width: 100px; height: 10px">
                    Username</td>
                <td style="width: 403px; height: 20px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 20px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px;">
                    Password</td>
                <td style="width: 403px; height: 26px;">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 100px; height: 26px;">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 6px;">
                </td>
                <td style="width: 403px; height: 6px;">
                    <asp:Button ID="Button1" runat="server" Text="Login" />
                    <asp:Button ID="Button2" runat="server" Text="Cancel" />
                    <asp:Button ID="Button4" runat="server" Text="Login registration" />
                    <asp:Button ID="Button3" runat="server" Text="Forgot password?" /><br />
                    </td>
                <td style="width: 100px; height: 6px;">
                </td>
            </tr>
        </table>
    
    </div>
        <asp:AccessDataSource ID="Readlogin" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [login]"></asp:AccessDataSource>
    </form>
</body>
</html>
