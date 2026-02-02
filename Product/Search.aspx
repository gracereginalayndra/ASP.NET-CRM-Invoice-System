<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button9" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" />
        <asp:Button ID="Button10" runat="server" PostBackUrl="~/Invoice.aspx" Text="Invoice" /><br />
        Hello, Welcome
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>!<br />
        <table>
            <tr>
                <td style="width: 169px">
                    Date of order</td>
                <td style="width: 100px">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" Text="Filter" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 169px">
                    Date of due</td>
                <td style="width: 100px">
                    <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button3" runat="server" Text="Filter" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 169px">
                    Invoice status</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Paid</asp:ListItem>
                        <asp:ListItem>Not paid</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    <asp:Button ID="Button4" runat="server" Text="Filter" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 169px">
                    Salesperson</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Button ID="Button5" runat="server" Text="Filter" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 169px">
                    Customer</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Button ID="Button6" runat="server" Text="Filter" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 169px">
                    Product</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Button ID="Button7" runat="server" Text="Filter" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 169px; height: 33px">
                    Invoice year</td>
                <td style="width: 100px; height: 33px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 33px">
                </td>
                <td style="width: 100px; height: 33px">
                </td>
            </tr>
            <tr>
                <td style="width: 169px">
                    Invoice number</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Text="Filter" /></td>
                <td style="width: 100px">
                    <asp:Button ID="Button8" runat="server" Text="Done" /></td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="Dateoforderview" runat="server" AutoGenerateColumns="False" DataSourceID="Dateoforder">
            <Columns>
                <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                <asp:BoundField DataField="Dateofdue" HeaderText="Date of due" SortExpression="Dateofdue" />
                <asp:BoundField DataField="Invoicetable.Invyear" HeaderText="Invoice year" SortExpression="Invoicetable.Invyear" />
                <asp:BoundField DataField="Invoicetable.Invoicenumber" HeaderText="Invoice number"
                    SortExpression="Invoicetable.Invoicenumber" />
                <asp:BoundField DataField="Custname" HeaderText="Customer name" SortExpression="Custname" />
                <asp:BoundField DataField="Salesname" HeaderText="Salesperson name" SortExpression="Salesname" />
                <asp:BoundField DataField="Productname" HeaderText="Product name" SortExpression="Productname" />
                <asp:BoundField DataField="Product.Price" HeaderText="Price" SortExpression="Product.Price" />
                <asp:BoundField DataField="Discounts" HeaderText="Discounts" SortExpression="Discounts" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="Dateofdueview" runat="server" AutoGenerateColumns="False" DataSourceID="Dateofdue">
            <Columns>
                <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                <asp:BoundField DataField="Dateofdue" HeaderText="Date of due" SortExpression="Dateofdue" />
                <asp:BoundField DataField="Invoicetable.Invyear" HeaderText="Invoice year" SortExpression="Invoicetable.Invyear" />
                <asp:BoundField DataField="Invoicetable.Invoicenumber" HeaderText="Invoice number"
                    SortExpression="Invoicetable.Invoicenumber" />
                <asp:BoundField DataField="Custname" HeaderText="Customer name" SortExpression="Custname" />
                <asp:BoundField DataField="Salesname" HeaderText="Salesperson name" SortExpression="Salesname" />
                <asp:BoundField DataField="Productname" HeaderText="Product name" SortExpression="Productname" />
                <asp:BoundField DataField="Product.Price" HeaderText="Price" SortExpression="Product.Price" />
                <asp:BoundField DataField="Discounts" HeaderText="Discounts" SortExpression="Discounts" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="Invoicestatusview" runat="server" AutoGenerateColumns="False" DataSourceID="Invoicestatus">
            <Columns>
                <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                <asp:BoundField DataField="Dateofdue" HeaderText="Date of due" SortExpression="Dateofdue" />
                <asp:BoundField DataField="Invoicetable.Invyear" HeaderText="Invoice year" SortExpression="Invoicetable.Invyear" />
                <asp:BoundField DataField="Invoicetable.Invoicenumber" HeaderText="Invoice number"
                    SortExpression="Invoicetable.Invoicenumber" />
                <asp:BoundField DataField="Custname" HeaderText="Customer name" SortExpression="Custname" />
                <asp:BoundField DataField="Salesname" HeaderText="Salesperson name" SortExpression="Salesname" />
                <asp:BoundField DataField="Productname" HeaderText="Product name" SortExpression="Productname" />
                <asp:BoundField DataField="Product.Price" HeaderText="Price" SortExpression="Product.Price" />
                <asp:BoundField DataField="Discounts" HeaderText="Discounts" SortExpression="Discounts" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="Salesview" runat="server" AutoGenerateColumns="False" DataSourceID="Sales">
            <Columns>
                <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                <asp:BoundField DataField="Dateofdue" HeaderText="Date of due" SortExpression="Dateofdue" />
                <asp:BoundField DataField="Invoicetable.Invyear" HeaderText="Invoice year" SortExpression="Invoicetable.Invyear" />
                <asp:BoundField DataField="Invoicetable.Invoicenumber" HeaderText="Invoice number"
                    SortExpression="Invoicetable.Invoicenumber" />
                <asp:BoundField DataField="Custname" HeaderText="Customer name" SortExpression="Custname" />
                <asp:BoundField DataField="Salesname" HeaderText="Salesperson name" SortExpression="Salesname" />
                <asp:BoundField DataField="Productname" HeaderText="Product name" SortExpression="Productname" />
                <asp:BoundField DataField="Product.Price" HeaderText="Price" SortExpression="Product.Price" />
                <asp:BoundField DataField="Discounts" HeaderText="Discounts" SortExpression="Discounts" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:GridView ID="Customerview" runat="server" AutoGenerateColumns="False" DataSourceID="Customer">
            <Columns>
                <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                <asp:BoundField DataField="Dateofdue" HeaderText="Date of due" SortExpression="Dateofdue" />
                <asp:BoundField DataField="Invoicetable.Invyear" HeaderText="Invoice year"
                    SortExpression="Invoicetable.Invyear" />
                <asp:BoundField DataField="Invoicetable.Invoicenumber" HeaderText="Invoice number"
                    SortExpression="Invoicetable.Invoicenumber" />
                <asp:BoundField DataField="Custname" HeaderText="Customer name" SortExpression="Custname" />
                <asp:BoundField DataField="Salesname" HeaderText="Salesperson name" SortExpression="Salesname" />
                <asp:BoundField DataField="Productname" HeaderText="Product name" SortExpression="Productname" />
                <asp:BoundField DataField="Product.Price" HeaderText="Price" SortExpression="Product.Price" />
                <asp:BoundField DataField="Discounts" HeaderText="Discounts" SortExpression="Discounts" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="Productview" runat="server" AutoGenerateColumns="False" DataSourceID="Product" Height="476px" Width="1133px">
            <Columns>
                <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                <asp:BoundField DataField="Dateofdue" HeaderText="Date of due" SortExpression="Dateofdue" />
                <asp:BoundField DataField="Invoicetable.Invyear" HeaderText="Invoice year"
                    SortExpression="Invoicetable.Invyear" />
                <asp:BoundField DataField="Invoicetable.Invoicenumber" HeaderText="Invoice number"
                    SortExpression="Invoicetable.Invoicenumber" />
                <asp:BoundField DataField="Custname" HeaderText="Customer name" SortExpression="Custname" />
                <asp:BoundField DataField="Salesname" HeaderText="Salesperson name" SortExpression="Salesname" />
                <asp:BoundField DataField="Productname" HeaderText="Product name" SortExpression="Productname" />
                <asp:BoundField DataField="Product.Price" HeaderText="Price" SortExpression="Product.Price" />
                <asp:BoundField DataField="Discounts" HeaderText="Discounts" SortExpression="Discounts" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="Invview" runat="server" AutoGenerateColumns="False" DataSourceID="Inv">
            <Columns>
                <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                <asp:BoundField DataField="Dateofdue" HeaderText="Date of due" SortExpression="Dateofdue" />
                <asp:BoundField DataField="Invoicetable.Invyear" HeaderText="Invoice year" SortExpression="Invoicetable.Invyear" />
                <asp:BoundField DataField="Invoicetable.Invoicenumber" HeaderText="Invoice number"
                    SortExpression="Invoicetable.Invoicenumber" />
                <asp:BoundField DataField="Custname" HeaderText="Customer name" SortExpression="Custname" />
                <asp:BoundField DataField="Salesname" HeaderText="Salesperson name" SortExpression="Salesname" />
                <asp:BoundField DataField="Productname" HeaderText="Product name" SortExpression="Productname" />
                <asp:BoundField DataField="Product.Price" HeaderText="Price" SortExpression="Product.Price" />
                <asp:BoundField DataField="Discounts" HeaderText="Discounts" SortExpression="Discounts" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:AccessDataSource ID="Dateoforder" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT Invoicetable.*, Product.*, Producttransaction.*, Customertable.*, Invoicedata.*, Salesperson.*, Invoicetable.Dateoforder AS Expr1 FROM (((Product INNER JOIN (Invoicetable INNER JOIN Producttransaction ON Invoicetable.Invoicenumber = Producttransaction.Invoicenumber AND Invoicetable.Invyear = Producttransaction.Invyear) ON Product.ProductID = Producttransaction.ProductID) INNER JOIN (Salesperson INNER JOIN Invoicedata ON Salesperson.SalespersonID = Invoicedata.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) INNER JOIN Customertable ON Invoicedata.CustomerID = Customertable.CustID) WHERE (Invoicetable.Dateoforder = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="?" PropertyName="SelectedDate" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Dateofdue" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT Invoicetable.*, Product.*, Producttransaction.*, Customertable.*, Invoicedata.*, Salesperson.*, Invoicetable.Dateoforder AS Expr1 FROM (((Product INNER JOIN (Invoicetable INNER JOIN Producttransaction ON Invoicetable.Invoicenumber = Producttransaction.Invoicenumber AND Invoicetable.Invyear = Producttransaction.Invyear) ON Product.ProductID = Producttransaction.ProductID) INNER JOIN (Salesperson INNER JOIN Invoicedata ON Salesperson.SalespersonID = Invoicedata.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) INNER JOIN Customertable ON Invoicedata.CustomerID = Customertable.CustID) WHERE (Invoicetable.Dateofdue = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar2" Name="?" PropertyName="SelectedDate" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Invoicestatus" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT Invoicetable.*, Product.*, Producttransaction.*, Customertable.*, Invoicedata.*, Salesperson.*, Invoicetable.Dateoforder AS Expr1 FROM (((Product INNER JOIN (Invoicetable INNER JOIN Producttransaction ON Invoicetable.Invoicenumber = Producttransaction.Invoicenumber AND Invoicetable.Invyear = Producttransaction.Invyear) ON Product.ProductID = Producttransaction.ProductID) INNER JOIN (Salesperson INNER JOIN Invoicedata ON Salesperson.SalespersonID = Invoicedata.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) INNER JOIN Customertable ON Invoicedata.CustomerID = Customertable.CustID) WHERE (Invoicetable.Status = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Sales" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT Invoicetable.*, Product.*, Producttransaction.*, Customertable.*, Invoicedata.*, Salesperson.*, Invoicetable.Dateoforder AS Expr1 FROM (((Product INNER JOIN (Invoicetable INNER JOIN Producttransaction ON Invoicetable.Invoicenumber = Producttransaction.Invoicenumber AND Invoicetable.Invyear = Producttransaction.Invyear) ON Product.ProductID = Producttransaction.ProductID) INNER JOIN (Salesperson INNER JOIN Invoicedata ON Salesperson.SalespersonID = Invoicedata.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) INNER JOIN Customertable ON Invoicedata.CustomerID = Customertable.CustID) WHERE (Salesperson.SalespersonID= ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Customer" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT Invoicetable.*, Product.*, Producttransaction.*, Customertable.*, Invoicedata.*, Salesperson.*, Invoicetable.Dateoforder AS Expr1 FROM (((Product INNER JOIN (Invoicetable INNER JOIN Producttransaction ON Invoicetable.Invoicenumber = Producttransaction.Invoicenumber AND Invoicetable.Invyear = Producttransaction.Invyear) ON Product.ProductID = Producttransaction.ProductID) INNER JOIN (Salesperson INNER JOIN Invoicedata ON Salesperson.SalespersonID = Invoicedata.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) INNER JOIN Customertable ON Invoicedata.CustomerID = Customertable.CustID) WHERE (Customertable.CustID= ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Product" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT Invoicetable.*, Product.*, Producttransaction.*, Customertable.*, Invoicedata.*, Salesperson.*, Invoicetable.Dateoforder AS Expr1 FROM (((Product INNER JOIN (Invoicetable INNER JOIN Producttransaction ON Invoicetable.Invoicenumber = Producttransaction.Invoicenumber AND Invoicetable.Invyear = Producttransaction.Invyear) ON Product.ProductID = Producttransaction.ProductID) INNER JOIN (Salesperson INNER JOIN Invoicedata ON Salesperson.SalespersonID = Invoicedata.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) INNER JOIN Customertable ON Invoicedata.CustomerID = Customertable.CustID) WHERE (Product.ProductID = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Inv" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT Invoicetable.*, Product.*, Producttransaction.*, Customertable.*, Invoicedata.*, Salesperson.*, Invoicetable.Dateoforder AS Expr1 FROM (((Product INNER JOIN (Invoicetable INNER JOIN Producttransaction ON Invoicetable.Invoicenumber = Producttransaction.Invoicenumber AND Invoicetable.Invyear = Producttransaction.Invyear) ON Product.ProductID = Producttransaction.ProductID) INNER JOIN (Salesperson INNER JOIN Invoicedata ON Salesperson.SalespersonID = Invoicedata.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) INNER JOIN Customertable ON Invoicedata.CustomerID = Customertable.CustID) WHERE (Producttransaction.Invyear = ?) AND (Producttransaction.Invoicenumber=?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox4" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Filter" runat="server" DataFile="~/CS database.mdb" DataSourceMode="DataReader"
            SelectCommand="SELECT Invoicetable.Dateoforder, Invoicetable.Dateofdue, Salesperson.Salesname, Customertable.Custname, Product.Productname, Producttransaction.Invyear, Producttransaction.Invoicenumber, Producttransaction.Price, Producttransaction.Discount, Producttransaction.Quantity, Producttransaction.Total, Salesperson.SalespersonID, Customertable.CustID, Product.ProductID, Producttransaction.Invyear AS Expr1, Producttransaction.Invoicenumber AS Expr2 FROM (Producttransaction INNER JOIN Product ON Producttransaction.ProductID = Product.ProductID), ((Customertable INNER JOIN Invoicedata ON Customertable.CustID = Invoicedata.CustomerID) INNER JOIN Salesperson ON Customertable.SalespersonID = Salesperson.SalespersonID), Invoicetable WHERE (Invoicetable.Dateoforder = ?) OR ((Producttransaction.Invyear = ?) AND (Producttransaction.Invoicenumber = ?)) OR (Invoicetable.Dateofdue = ?) OR(Salesperson.SalespersonID = ?) OR (Customertable.CustID = ?) OR (Product.ProductID = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="?" PropertyName="SelectedDate" />
                <asp:ControlParameter ControlID="TextBox4" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="Calendar2" Name="?" PropertyName="SelectedDate" />
                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT Invoicetable.*, Producttransaction.*, Invoicedata.*, Customertable.*, Product.*, Salesperson.*, Invoicetable.Dateoforder AS Expr1, Invoicetable.Dateofdue AS Expr2, Invoicetable.Status AS Expr3, Invoicetable.Invyear AS Expr4, Invoicetable.Invoicenumber AS Expr5, Producttransaction.ProductID AS Expr6, Producttransaction.Quantity AS Expr7, Producttransaction.Price AS Expr8, Producttransaction.Discount AS Expr9, Producttransaction.Total AS Expr10, Invoicedata.CustomerID AS Expr11, Invoicedata.SalespersonID AS Expr12, Customertable.Custname AS Expr13, Salesperson.Salesname AS Expr14 FROM (((Producttransaction INNER JOIN Product ON Producttransaction.ProductID = Product.ProductID) INNER JOIN Invoicetable ON Producttransaction.Invyear = Invoicetable.Invyear AND Producttransaction.Invoicenumber = Invoicetable.Invoicenumber) INNER JOIN ((Customertable INNER JOIN Invoicedata ON Customertable.CustID = Invoicedata.CustomerID) INNER JOIN Salesperson ON Customertable.SalespersonID = Salesperson.SalespersonID AND Invoicedata.SalespersonID = Salesperson.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) WHERE (Invoicetable.Dateoforder = ?) OR (Invoicetable.Dateofdue = ?) OR (Invoicetable.Status = ?) OR ((Invoicetable.Invyear = ?) AND (Invoicetable.Invoicenumber = ?)) OR (Producttransaction.ProductID = ?) OR (Invoicedata.CustomerID = ?) OR (Invoicedata.SalespersonID = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="?" PropertyName="SelectedDate" />
                <asp:ControlParameter ControlID="Calendar2" Name="?" PropertyName="SelectedDate" />
                <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBox4" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="test" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT Invoicetable.*, Producttransaction.*, Invoicedata.*, Customertable.*, Product.*, Salesperson.*, Invoicetable.Dateoforder AS Expr1, Invoicetable.Dateofdue AS Expr2, Invoicetable.Status AS Expr3, Invoicetable.Invyear AS Expr4, Invoicetable.Invoicenumber AS Expr5, Producttransaction.ProductID AS Expr6, Producttransaction.Quantity AS Expr7, Producttransaction.Price AS Expr8, Producttransaction.Discount AS Expr9, Producttransaction.Total AS Expr10, Invoicedata.CustomerID AS Expr11, Invoicedata.SalespersonID AS Expr12, Customertable.Custname AS Expr13, Salesperson.Salesname AS Expr14 FROM (((Producttransaction INNER JOIN Product ON Producttransaction.ProductID = Product.ProductID) INNER JOIN Invoicetable ON Producttransaction.Invyear = Invoicetable.Invyear AND Producttransaction.Invoicenumber = Invoicetable.Invoicenumber) INNER JOIN ((Customertable INNER JOIN Invoicedata ON Customertable.CustID = Invoicedata.CustomerID) INNER JOIN Salesperson ON Customertable.SalespersonID = Salesperson.SalespersonID AND Invoicedata.SalespersonID = Salesperson.SalespersonID) ON Producttransaction.Invyear = Invoicedata.Invyear AND Producttransaction.Invoicenumber = Invoicedata.InvoiceID) WHERE (Invoicetable.Invyear = ?) AND (Invoicetable.Invoicenumber = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox4" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
    </form>
</body>
</html>
