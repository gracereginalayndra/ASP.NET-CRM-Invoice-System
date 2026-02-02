<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Update products.aspx.vb" Inherits="Update_products" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button5" runat="server" Text="Main Menu" PostBackUrl="~/Main menu.aspx" /><br />
        Hello, welcome
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>!<br />
        <asp:Button ID="Button6" runat="server" Text="Add Products" />
        <asp:Button ID="Button7" runat="server" Text="Update Products" />
        <asp:Button ID="Button10" runat="server" Text="Stocks" /><br />
        <asp:Panel ID="Panel1" runat="server" Height="333px" Width="984px" Visible="False">
            ADD PRODUCTS<br />
            <table style="width: 835px; height: 550px">
                <tr>
                    <td style="width: 701px; height: 79px;">
                        Product ID</td>
                    <td style="width: 601px; height: 79px;">
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 364px; height: 79px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                        Product name</td>
                    <td style="width: 601px">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                    <td style="width: 364px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                        Core size</td>
                    <td style="width: 601px">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>12 mm</asp:ListItem>
                            <asp:ListItem>21 mm</asp:ListItem>
                            <asp:ListItem>24 mm</asp:ListItem>
                            <asp:ListItem>25 mm</asp:ListItem>
                            <asp:ListItem>32 mm</asp:ListItem>
                            <asp:ListItem>40 mm</asp:ListItem>
                            <asp:ListItem>60 mm</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 364px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                        Length</td>
                    <td style="width: 601px">
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>12 m</asp:ListItem>
                            <asp:ListItem>21 m</asp:ListItem>
                            <asp:ListItem>40 m</asp:ListItem>
                            <asp:ListItem>60 m</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 364px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                        Price</td>
                    <td style="width: 601px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td style="width: 364px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                        Discounts (%)</td>
                    <td style="width: 601px">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    <td style="width: 364px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                    </td>
                    <td style="width: 601px">
                        &nbsp;<asp:Button ID="Button3" runat="server" Text="Save" />
                    <asp:Button ID="Button4" runat="server" Text="Cancel" /></td>
                <td style="width: 364px">
                </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="0px" Width="1002px" Visible="False">
            <br />
            UPDATE PRODUCTS<br />
            <table style="width: 800px; height: 100px">
                <tr>
                    <td style="width: 701px">
                        Product ID</td>
                    <td style="width: 601px">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    <td style="width: 359px">
                        <asp:Button ID="Button1" runat="server" Text="Search" /></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Height="409px" Visible="False" Width="920px">
            UPDATE PRODUCTS<br />
        <table style="width: 835px; height: 550px">
            <tr>
                <td style="width: 701px">
                    Product name</td>
                <td style="width: 601px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                <td style="width: 359px">
                </td>
            </tr>
            <tr>
                <td style="width: 701px">
                    Core size</td>
                <td style="width: 601px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>12 mm</asp:ListItem>
                        <asp:ListItem>21 mm</asp:ListItem>
                        <asp:ListItem>24 mm</asp:ListItem>
                        <asp:ListItem>25 mm</asp:ListItem>
                        <asp:ListItem>32 mm</asp:ListItem>
                        <asp:ListItem>40 mm</asp:ListItem>
                        <asp:ListItem>60 mm</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 359px">
                </td>
            </tr>
            <tr>
                <td style="width: 701px">
                    Length</td>
                <td style="width: 601px">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>12 m</asp:ListItem>
                        <asp:ListItem>21 m</asp:ListItem>
                        <asp:ListItem>40 m</asp:ListItem>
                        <asp:ListItem>60 m</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 359px">
                </td>
            </tr>
            <tr>
                <td style="width: 701px">
                    Price</td>
                <td style="width: 601px">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                <td style="width: 359px">
                </td>
            </tr>
            <tr>
                <td style="width: 701px">
                    Discounts</td>
                <td style="width: 601px">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                <td style="width: 359px">
                </td>
            </tr>
            <tr>
                <td style="width: 701px">
                </td>
                <td style="width: 601px">
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="Update" />
                    <asp:Button ID="Button8" runat="server" Text="Cancel" />
                    <asp:Button ID="Button9" runat="server" Text="Delete record" /></td>
                <td style="width: 359px">
                </td>
            </tr>
        </table>
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<br />
        <br />
        <asp:AccessDataSource ID="InsertStocks" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Stocks]"></asp:AccessDataSource>
    
    </div>
    
        <asp:AccessDataSource ID="Insertproducts" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Product]" 
            InsertCommand ="insert into Product (ProductID, Productname, Coresize, Length, Price, Discounts, Stocklevel)
                            values (@ProductID, @Productname, @Coresize, @Length, @Price, @Discounts, @Stocklevel)">
             <InsertParameters>
                      <asp:Parameter Name= "ProductID" DefaultValue = "" />                    
                      <asp:Parameter Name = "Productname" DefaultValue ="" />
                      <asp:Parameter Name = "Coresize" DefaultValue ="" />
                      <asp:Parameter Name = "Length" DefaultValue ="" />
                      <asp:Parameter Name = "Price" DefaultValue ="" />
                      <asp:Parameter Name = "Discounts" DefaultValue ="" />
                      <asp:Parameter Name = "Stocklevel" DefaultValue ="" />
                      </InsertParameters>          
            </asp:AccessDataSource>
            
            
        <asp:AccessDataSource ID="Readproducts" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Product] ORDER BY [ProductID]" DataSourceMode="DataReader"
            UpdateCommand="update Product 
                           set Productname=@Productname, Coresize=@Coresize, Length=@Length, Price=@Price, Discounts=@Discounts 
                           where ProductID=@ProductID"
            DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID">
         <DeleteParameters>
        <asp:Parameter Name="ProductID" Type="Int32" />
    </DeleteParameters>
            <UpdateParameters>
            <asp:Parameter Name="Productname" DefaultValue=""/>
            <asp:Parameter Name="Coresize" DefaultValue=""/>
            <asp:Parameter Name="Length" DefaultValue=""/>
            <asp:Parameter Name="Price" DefaultValue=""/>
            <asp:Parameter Name="Discounts" DefaultValue=""/>
            <asp:ControlParameter ControlID="Textbox5" PropertyName="Text"  Name="ProductID" DefaultValue=""/>
            </UpdateParameters>
            
         </asp:AccessDataSource>
         
         
         
        &nbsp; &nbsp;&nbsp;<br />
        &nbsp;&nbsp;
        <br />
    </form>
</body>
</html>
