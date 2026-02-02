<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Updateinvoicestatus.aspx.vb" Inherits="Updateinvoicestatus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" />
        <asp:Button ID="Button4" runat="server" PostBackUrl="~/Invoice.aspx" Text="Invoice" /><br />
        Hello, Welcome
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>!&nbsp;<br />
        <table>
            <tr>
                <td style="width: 10139px">
                    Invoice year</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 10139px">
                    Invoice no.</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Text="Search" /></td>
            </tr>
            <tr>
                <td style="width: 10139px">
                </td>
                <td style="width: 100px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Producttransaction.Invyear" HeaderText="Invyear" SortExpression="Producttransaction.Invyear" />
                            <asp:BoundField DataField="Producttransaction.Invoicenumber" HeaderText="Invoicenumber"
                                SortExpression="Producttransaction.Invoicenumber" />
                            <asp:BoundField DataField="Custname" HeaderText="Custname" SortExpression="Custname" />
                            <asp:BoundField DataField="Salesname" HeaderText="Salesname" SortExpression="Salesname" />
                            <asp:BoundField DataField="Productname" HeaderText="Productname" SortExpression="Productname" />
                            <asp:BoundField DataField="Product.Price" HeaderText="Price" SortExpression="Product.Price" />
                            <asp:BoundField DataField="Discounts" HeaderText="Discounts" SortExpression="Discounts" />
                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:BoundField DataField="Dateofdue" HeaderText="Dateofdue" SortExpression="Dateofdue" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 10139px">
                    Invoice status</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Paid</asp:ListItem>
                        <asp:ListItem>Not paid</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button2" runat="server" Text="Update" /></td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/CS database.mdb" DataSourceMode="DataReader"
            SelectCommand="SELECT Customertable.*, Invoicedata.*, Salesperson.*, Product.*, Producttransaction.*, Invoicetable.*, Invoicetable.Invyear AS Expr1, Invoicetable.Invoicenumber AS Expr2 FROM (((Producttransaction INNER JOIN Product ON Producttransaction.ProductID = Product.ProductID) INNER JOIN Invoicetable ON Producttransaction.Invyear = Invoicetable.Invyear AND Producttransaction.Invoicenumber = Invoicetable.Invoicenumber) INNER JOIN ((Customertable INNER JOIN Invoicedata ON Customertable.CustID = Invoicedata.CustomerID) INNER JOIN Salesperson ON Invoicedata.SalespersonID = Salesperson.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) WHERE (Invoicetable.Invyear = ?) AND (Invoicetable.Invoicenumber = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Updateinv" runat="server" DataSourceMode="DataReader" DataFile="~/CS database.mdb" SelectCommand="SELECT * FROM [Invoicetable]" 
        UpdateCommand="update Invoicetable set Status=@Status where Invyear=@Invyear and Invoicenumber=@Invoicenumber" 
        >
        
        <UpdateParameters>
           
            <asp:Parameter Name="Status" DefaultValue=""/>
            
            <asp:ControlParameter ControlID="Textbox1" PropertyName="Text"  Name="Invyear" DefaultValue=""/>
             <asp:ControlParameter ControlID="Textbox2" PropertyName="Text"  Name="Invoicenumber" DefaultValue=""/>
            </UpdateParameters>
        
        </asp:AccessDataSource>
    </form>
</body>
</html>
