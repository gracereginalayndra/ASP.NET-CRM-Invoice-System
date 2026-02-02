<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Update salesperson.aspx.vb" Inherits="Update_salesperson" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button10" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" /><br />
        Welcome
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>!<br />
        <asp:Button ID="Button6" runat="server" Text="Add Salesperson" />
        <asp:Button ID="Button5" runat="server" Text="Update Salesperson" />&nbsp;
        <br />
        <asp:Panel ID="Panel4" runat="server" Height="102px" Width="782px" Visible="False">
        UPDATE SALESPERSON<br />
            <table style="width: 787px; height: 30px">
                <tr>
                <td style="width: 374px; height: 61px;">
                    Salesperson ID</td>
                <td style="width: 700px; height: 61px;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Search" /></td>
                <td style="width: 654px; height: 61px;">
                </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" Height="449px" Visible="False" Width="697px"><table style="width: 787px; height: 466px">
            <tr>
                <td style="width: 374px">
                    Name</td>
                <td style="width: 713px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                <td style="width: 654px">
                </td>
            </tr>
            <tr>
                <td style="width: 374px; height: 29px;">
                    Gender</td>
                <td style="width: 713px; height: 29px;">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Gender" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="Gender" ValidationGroup="Gender" /></td>
                <td style="width: 654px; height: 29px;">
                </td>
            </tr>
            <tr>
                <td style="width: 374px">
                    Contact number 1</td>
                <td style="width: 713px">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                <td style="width: 654px">
                </td>
            </tr>
            <tr>
                <td style="width: 374px">
                    Contact number 2</td>
                <td style="width: 713px">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                <td style="width: 654px">
                </td>
            </tr>
            <tr>
                <td style="width: 374px">
                    Address</td>
                <td style="width: 713px">
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                <td style="width: 654px">
                </td>
            </tr>
            <tr>
                <td style="width: 374px">
                    Customer
                    Area</td>
                <td style="width: 713px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td style="width: 654px">
                </td>
            </tr>
            <tr>
                <td style="width: 374px">
                </td>
                <td style="width: 713px">
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="Update" />&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Cancel" />
                    <asp:Button ID="Button8" runat="server" Text="Delete record" /></td>
                <td style="width: 654px">
                </td>
            </tr>
        </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="353px" Visible="False" Width="589px">
            ADD SALESPERSON<br />
            <table style="width: 787px; height: 466px">
                <tr>
                    <td style="width: 374px">
                        Salesperson ID</td>
                    <td style="width: 713px">
                        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 654px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 374px">
                        Name</td>
                    <td style="width: 713px">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    <td style="width: 654px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 374px">
                        Gender</td>
                    <td style="width: 713px">
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Male" GroupName="Gender" />
                        <asp:RadioButton ID="RadioButton4" runat="server" Text="Female" GroupName="Gender" /></td>
                    <td style="width: 654px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 374px">
                        Contact number 1</td>
                    <td style="width: 713px">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                    <td style="width: 654px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 374px">
                        Contact number 2</td>
                    <td style="width: 713px">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                    <td style="width: 654px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 374px">
                        Address</td>
                    <td style="width: 713px">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                    <td style="width: 654px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 374px">
                        Customer
                        Area</td>
                    <td style="width: 713px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td style="width: 654px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 374px">
                    </td>
                    <td style="width: 713px">
                        &nbsp;<asp:Button ID="Button3" runat="server" Text="Save" />&nbsp;
                        <asp:Button ID="Button7" runat="server" Text="Cancel" /></td>
                    <td style="width: 654px">
                    </td>
                </tr>
            </table>
        </asp:Panel>
        &nbsp;&nbsp;<br />
        &nbsp;
        
        <asp:AccessDataSource ID="ReadSalespersontable2" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Salesperson] ORDER BY [SalespersonID]" DataSourceMode="DataReader"
             DeleteCommand="DELETE FROM [Salesperson] WHERE [SalespersonID] = @SalespersonID"
             UpdateCommand="update Salesperson 
                           set Area=@Area, Salesname=@Salesname, Gender=@Gender, Contactnumber1=@Contactnumber1,
                           Contactnumber2=@Contactnumber2, Address=@Address 
                           where SalespersonID=@SalespersonID">
            <UpdateParameters>
            <asp:Parameter Name="Area" DefaultValue=""/>
            <asp:Parameter Name="Salesname" DefaultValue=""/>
            <asp:Parameter Name="Gender" DefaultValue=""/>
            <asp:Parameter Name="Contactnumber1" DefaultValue=""/>
            <asp:Parameter Name="Contactnumber2" DefaultValue=""/>
            <asp:Parameter Name="Address" DefaultValue=""/>
            <asp:ControlParameter ControlID="Textbox1" PropertyName="Text"  Name="SalespersonID" DefaultValue=""/>
            </UpdateParameters>            
            <DeleteParameters>
        <asp:Parameter Name="SalespersonID" Type="Int32" />
        </DeleteParameters>            
            </asp:AccessDataSource>
    
    </div>
    
        <asp:AccessDataSource ID="SetSalespersontable" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT DISTINCT * FROM [Salesperson] " 
            InsertCommand = "insert into Salesperson (SalespersonID, Salesname, Gender, Contactnumber1, Contactnumber2, Address, Area) 
            values (@SalespersonID, @Salesname, @Gender, @Contactnumber1, @Contactnumber2, @Address, @Area) " >
             <InsertParameters>             
                       <asp:Parameter Name= "SalespersonID" DefaultValue = "" />                        
                       <asp:Parameter Name = "Salesname" DefaultValue ="" />
                       <asp:Parameter Name = "Gender" DefaultValue ="" />
                       <asp:Parameter Name= "Contactnumber1" DefaultValue = "" />                        
                       <asp:Parameter Name = "Contactnumber2" DefaultValue ="" />
                       <asp:Parameter Name = "Address" DefaultValue ="" />
                       <asp:Parameter Name = "Area" DefaultValue ="" />             
                       </InsertParameters>
            </asp:AccessDataSource>
            
            
        &nbsp;<br />
        &nbsp; &nbsp; &nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
