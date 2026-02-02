<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Forgotpassword.aspx.vb" Inherits="Forgotpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button4" runat="server" PostBackUrl="~/Login.aspx" Text="Back" /><br />
        <asp:Panel ID="Panel1" runat="server" Height="46px" Width="888px">
            enter your username
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" /></asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="97px" Visible="False" Width="890px">
            Security questions what is the sum of your birthday (yy+mm+dd)?<br />
            Enter your answer
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="submit " /><br />
            </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Height="59px" Visible="False" Width="925px">
            enter new password
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox><br />
            confirm new password
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Save" /><br />
            </asp:Panel>
        <br />
        <br />
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [login]"></asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [login]" 
            UpdateCommand="update login set Pword=@Pword where Uname=@Uname">
            <UpdateParameters>
            <asp:Parameter Name="Pword" DefaultValue=""/>
            <asp:ControlParameter ControlID="Textbox1" PropertyName="Text"  Name="Uname" DefaultValue=""/>
            </UpdateParameters>
            </asp:AccessDataSource>
        <asp:AccessDataSource ID="readlogin" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [login]"></asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
