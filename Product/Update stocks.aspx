<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Update stocks.aspx.vb" Inherits="Update_stocks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button4" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" />
        <br />
        Welcome
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>!<br />
        <asp:Button ID="Button5" runat="server" Text="Products" /><br />
        <asp:Panel ID="Panel2" runat="server" Height="0px" Width="1002px">
            ADD STOCK<br />
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
            <table style="width: 835px; height: 550px">
                <tr>
                    <td style="width: 701px">
                        Product name</td>
                    <td style="width: 601px">
                        <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 359px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                        Date of purchase</td>
                    <td style="width: 601px">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                    <td style="width: 359px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                        Purchase price</td>
                    <td style="width: 601px">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td style="width: 359px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                        Purchase quantity</td>
                    <td style="width: 601px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td style="width: 359px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 701px">
                        Total purchase</td>
                    <td style="width: 601px">
                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 359px">
                        <asp:Button ID="Button3" runat="server" Text="Calculate" /></td>
                </tr>
                <tr>
                    <td style="width: 701px">
                    </td>
                    <td style="width: 601px">
                        &nbsp;<asp:Button ID="Button2" runat="server" Text="Save" />
                        <asp:Button ID="Button8" runat="server" Text="Cancel" />
                        </td>
                    <td style="width: 359px">
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:AccessDataSource ID="Readproducts" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Product]"
             UpdateCommand=
        "UPDATE [Product] SET [Stocklevel] = @Stocklevel
         WHERE [ProductID] = @ProductID">
           
            <UpdateParameters>
           <asp:Parameter Name="Stocklevel" DefaultValue=""/>
            <asp:ControlParameter ControlID="Textbox5" PropertyName="Text"  Name="ProductID" DefaultValue=""/>
            </UpdateParameters>
            
            
           
            </asp:AccessDataSource>
        <br />
        <asp:AccessDataSource ID="InsertStocks" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Stocks]"
            
            InsertCommand = "insert into Stocks (Dateofpurchase, ProductID, Purchaseprice, Purchaseqtty, Totalpurchase)values (@Dateofpurchase, @ProductID, @Purchaseprice, @Purchaseqtty, @Totalpurchase)" >

            
             <InsertParameters>
                       <asp:Parameter Name= "Dateofpurchase" DefaultValue = "" />                        
                       <asp:Parameter Name = "ProductID" DefaultValue ="" />
                       <asp:Parameter Name = "Purchaseprice" DefaultValue ="" />
                       <asp:Parameter Name = "Purchaseqtty" DefaultValue ="" />
                       
                       <asp:Parameter Name= "Totalpurchase" DefaultValue = "" />                        
                       
                     
           
                        </InsertParameters>
            
            
            
            </asp:AccessDataSource>
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
