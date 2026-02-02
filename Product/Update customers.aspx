<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Update customers.aspx.vb" Inherits="Update_customers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" /><br />
        Hello, welcome
        <asp:Label ID="Label1" runat="server" Text="Label" Width="61px"></asp:Label>!<br />
        &nbsp;<asp:Button ID="Button5" runat="server" Text="Add Customer" />
        <asp:Button ID="Button6" runat="server" Text="Update Customer Status" /><br />
        <asp:Panel ID="Panel2" runat="server" Height="20px" Width="712px" Visible="False">
        UPDATE CUSTOMER STATUS<br />
            <table style="width: 891px; height: 67px">
                <tr>
                    <td style="width: 320px; height: 33px">
                        Customer ID</td>
                    <td style="width: 390px; height: 33px">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Button ID="Button7" runat="server" Text="Search" /></td>
                    <td style="width: 42px; height: 33px">
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <br />
            <table style="width: 891px; height: 500px">
                <tr>
                    <td style="width: 318px">
                        Name</td>
                    <td style="width: 390px">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px; height: 18px">
                        Gender</td>
                    <td style="width: 390px; height: 18px">
                        &nbsp;
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Gender1" Text="Male" />
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Gender1" Text="Female" /></td>
                    <td style="width: 42px; height: 18px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px">
                        Contact number 1</td>
                    <td style="width: 390px">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px; height: 33px;">
                        Contact number 2 </td>
                    <td style="width: 390px; height: 33px;">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    <td style="width: 42px; height: 33px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px; height: 29px">
                        Area</td>
                    <td style="width: 390px; height: 29px">
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="AreaSalespersontable"
                        DataTextField="Area" DataValueField="Area">
                        </asp:DropDownList></td>
                    <td style="width: 42px; height: 29px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px">
                        Address</td>
                    <td style="width: 390px">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px; height: 31px;">
                        ACC limit</td>
                    <td style="width: 390px; height: 31px;">
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                    <td style="width: 42px; height: 31px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px; height: 74px;">
                    </td>
                    <td style="width: 390px; height: 74px;">
                        &nbsp;
                    <asp:Button ID="Button9" runat="server" Text="Update" />
                    <asp:Button ID="Button10" runat="server" Text="Cancel" />
                        <asp:Button ID="Button1" runat="server" Text="Delete record" />&nbsp;
                    </td>
                <td style="width: 42px; height: 74px;">
                </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Height="685px" Visible="False" Width="1101px">
            ADD CUSTOMER<br />
            <table style="width: 891px; height: 500px">
                <tr>
                    <td style="width: 318px; height: 33px">
                        Customer ID</td>
                    <td style="width: 390px; height: 33px">
                        <asp:TextBox ID="TextBox13" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 42px; height: 33px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px">
                        Name</td>
                    <td style="width: 390px">
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px; height: 18px">
                        Gender</td>
                    <td style="width: 390px; height: 18px">
                        &nbsp;
                        <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Gender" Text="Female" /></td>
                    <td style="width: 42px; height: 18px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px">
                        Contact number 1</td>
                    <td style="width: 390px">
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px">
                        Contact number 2</td>
                    <td style="width: 390px">
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px; height: 29px">
                        Area</td>
                    <td style="width: 390px; height: 29px">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="AreaSalespersontable"
                        DataTextField="Area" DataValueField="Area">
                        </asp:DropDownList></td>
                    <td style="width: 42px; height: 29px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px">
                        Address</td>
                    <td style="width: 390px">
                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px">
                        ACC limit</td>
                    <td style="width: 390px">
                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></td>
                    <td style="width: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 318px">
                    </td>
                    <td style="width: 390px">
                        &nbsp;<asp:Button ID="Button8" runat="server" Text="Save" />&nbsp;
                        <asp:Button ID="Button11" runat="server" Text="Cancel" /></td>
                    <td style="width: 42px">
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        &nbsp;&nbsp;
        <br />
    
    </div>
        <asp:AccessDataSource ID="SetCustomertable" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Customertable]"
            
            InsertCommand = "insert into Customertable (CustID, Custname, Gender,  Contnum1, Contnum2, Area, Deliveryaddress, ACClimit) 
            values (@CustID, @Custname, @Gender,  @Contnum1, @Contnum2, @Area, @Deliveryaddress, @ACClimit)"
            >
            
             <InsertParameters>
                       <asp:Parameter Name= "CustID" DefaultValue = "" />                        
                       <asp:Parameter Name = "Custname" DefaultValue ="" />
                       <asp:Parameter Name = "Gender" DefaultValue ="" />
                       
                       
                       <asp:Parameter Name= "Contnum1" DefaultValue = "" />                        
                       <asp:Parameter Name = "Contnum2" DefaultValue ="" />
                       <asp:Parameter Name = "Area" DefaultValue ="" />
                       <asp:Parameter Name = "Deliveryaddress" DefaultValue ="" />
                     <asp:Parameter Name = "ACClimit" DefaultValue ="" />
                     
           
                        </InsertParameters>
            
            
            
            </asp:AccessDataSource>
        <asp:AccessDataSource ID="AreaSalespersontable" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT DISTINCT [Area] FROM [Salesperson] ORDER BY [Area]"></asp:AccessDataSource>
        <asp:AccessDataSource ID="ReadCustomertable" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Customertable]"
           
           
              UpdateCommand="update Customertable set Custname=@Custname, Gender=@Gender, 
              Contnum1=@Contnum1, Contnum2=@Contnum2, Area=@Area,  Deliveryaddress=@Deliveryaddress, ACClimit=@ACClimit where CustID=@CustID" 
            
            DeleteCommand="DELETE FROM [Customertable] WHERE [CustID] = @CustID">
         <DeleteParameters>
        <asp:Parameter Name="CustID" Type="Int32" />
    </DeleteParameters>
                     
             <UpdateParameters>
           
            <asp:Parameter Name="Custname" DefaultValue=""/>
            <asp:Parameter Name="Gender" DefaultValue=""/>  
                    
            
            <asp:Parameter Name="Contnum1" DefaultValue=""/>
            <asp:Parameter Name="Contnum2" DefaultValue=""/>  
            
             <asp:Parameter Name="Area" DefaultValue=""/>
            <asp:Parameter Name="Deliveryaddress" DefaultValue=""/>
            <asp:Parameter Name="ACClimit" DefaultValue=""/>   
            
            
            
              
            
            <asp:ControlParameter ControlID="Textbox3" PropertyName="Text"  Name="CustID" DefaultValue=""/>
            </UpdateParameters>
            
            
            
            
          
            
            
            
            </asp:AccessDataSource>
        &nbsp; &nbsp;<br />
        &nbsp;&nbsp;<br />
        &nbsp;
        &nbsp; &nbsp;
    </form>
</body>
</html>
