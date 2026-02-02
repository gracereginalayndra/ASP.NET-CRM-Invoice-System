<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login registration.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%; height: 100%">
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                    <table style="width: 956px">
                        <tr>
                            <td style="width: 170px">
                    LOGIN REGISTRATION PAGE</td>
                            <td style="width: 124px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 170px">
                                Username:</td>
                            <td style="width: 124px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 170px">
                                Password:</td>
                            <td style="width: 124px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 170px; height: 39px">
                                Re-enter password:</td>
                            <td style="width: 124px; height: 39px">
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 170px; height: 39px;">
                    security question: What is the sum of your birthdate (dd+mm+yy)? &nbsp; &nbsp; &nbsp;
                    &nbsp; 
                            </td>
                            <td style="width: 124px; height: 39px;">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 170px">
                                Answer
                            </td>
                            <td style="width: 124px">
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 170px">
                            </td>
                            <td style="width: 124px">
                    <asp:Button ID="Button3" runat="server" Text="Save" />
                    <asp:Button ID="Button1" runat="server" Text="Cancel" />
                                &nbsp; 
                            </td>
                        </tr>
                    </table>
                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp;
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/CS database.mdb"
                        SelectCommand="SELECT * FROM [login]" InsertCommand="insert into login (Uname,Pword, Ans)values (@Uname,@Pword, @Ans)">
                        <InsertParameters>
                       <asp:Parameter Name= "Uname" DefaultValue = "" />                        
                       <asp:Parameter Name = "Pword" DefaultValue ="" />                                        
                       <asp:Parameter Name = "Ans" DefaultValue ="" />
                        </InsertParameters>
                        
                        
                        </asp:AccessDataSource>
                    <asp:AccessDataSource ID="readlogin" runat="server" DataFile="~/CS database.mdb"
                        DataSourceMode="DataReader" SelectCommand="SELECT * FROM [login]"></asp:AccessDataSource>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
