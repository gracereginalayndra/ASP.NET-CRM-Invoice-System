<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Report.aspx.vb" Inherits="Profitandloss" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" /><br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
        Hello, Welcome
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>!<br />
        Transaction tracking<br />
        <asp:Button ID="Button1" runat="server" Text="Daily report" />
        <asp:Button ID="Button2" runat="server" Text="Monthly report" />
        <asp:Button ID="Button6" runat="server" Text="Invoices due today" />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table>
                <tr>
                    <td style="width: 892px">
                        Daily
                        Transactions</td>
                </tr>
                <tr>
                    <td style="width: 892px">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DailyTransaction">
                            <Columns>
                                <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                                <asp:BoundField DataField="Invyear" HeaderText="Invoice year" SortExpression="Invyear" />
                                <asp:BoundField DataField="Invoicenumber" HeaderText="Invoice number" SortExpression="Invoicenumber" />
                                <asp:BoundField DataField="ProductID" HeaderText="Product ID" SortExpression="ProductID" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td style="width: 892px">
                        Daily Stock Purchases</td>
                </tr>
                <tr>
                    <td style="width: 892px">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="Dailystockpurchase">
                            <Columns>
                                <asp:BoundField DataField="Dateofpurchase" HeaderText="Date of purchase" SortExpression="Dateofpurchase" />
                                <asp:BoundField DataField="ProductID" HeaderText="Product ID" SortExpression="ProductID" />
                                <asp:BoundField DataField="Purchaseprice" HeaderText="Purchase price" SortExpression="Purchaseprice" />
                                <asp:BoundField DataField="Purchaseqtty" HeaderText="Purchase quantity" SortExpression="Purchaseqtty" />
                                <asp:BoundField DataField="Totalpurchase" HeaderText="Total purchase" SortExpression="Totalpurchase" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False" Height="596px" Width="1101px">
            <table>
                <tr>
                    <td style="width: 174px">
                        From
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        to
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 174px">
                        Monthly
                        Transaction</td>
                </tr>
                <tr>
                    <td style="width: 174px">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="Monthlytransaction">
                            <Columns>
                                <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                                <asp:BoundField DataField="Invyear" HeaderText="Invoice year" SortExpression="Invyear" />
                                <asp:BoundField DataField="Invoicenumber" HeaderText="Invoice number" SortExpression="Invoicenumber" />
                                <asp:BoundField DataField="ProductID" HeaderText="Product ID" SortExpression="ProductID" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td style="width: 174px">
                        Monthly
                        Stock Purchases</td>
                </tr>
                <tr>
                    <td style="width: 174px">
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="Monthlystockpurchase">
                            <Columns>
                                <asp:BoundField DataField="Dateofpurchase" HeaderText="Date of purchase" SortExpression="Dateofpurchase" />
                                <asp:BoundField DataField="ProductID" HeaderText="Product ID" SortExpression="ProductID" />
                                <asp:BoundField DataField="Purchaseprice" HeaderText="Purchase price" SortExpression="Purchaseprice" />
                                <asp:BoundField DataField="Purchaseqtty" HeaderText="Purchase quantity" SortExpression="Purchaseqtty" />
                                <asp:BoundField DataField="Totalpurchase" HeaderText="Total purchase" SortExpression="Totalpurchase" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="Invoicesduetoday">
                <Columns>
                    <asp:BoundField DataField="Dateoforder" HeaderText="Date of order" SortExpression="Dateoforder" />
                    <asp:BoundField DataField="Dateofdue" HeaderText="Date of due" SortExpression="Dateofdue" />
                    <asp:BoundField DataField="Invoicetable.Invyear" HeaderText="Invoice year" SortExpression="Invoicetable.Invyear" />
                    <asp:BoundField DataField="Invoicetable.Invoicenumber" HeaderText="Invoice number"
                        SortExpression="Invoicetable.Invoicenumber" />
                    <asp:BoundField DataField="ProductID" HeaderText="Product ID" SortExpression="ProductID" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
            </asp:GridView>
        </asp:Panel>
        <asp:AccessDataSource ID="Invoicesduetoday" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT Invoicedata.*, Invoicetable.*, Producttransaction.*, Invoicedata.Invyear AS Expr1, Invoicedata.InvoiceID AS Expr2, Invoicedata.CustomerID AS Expr3, Invoicedata.SalespersonID AS Expr4, Invoicetable.Dateoforder AS Expr5, Invoicetable.Dateofdue AS Expr6, Producttransaction.ProductID AS Expr7, Producttransaction.Quantity AS Expr8, Producttransaction.Price AS Expr9, Producttransaction.Discount AS Expr10, Producttransaction.Total AS Expr11 FROM ((Invoicedata INNER JOIN Invoicetable ON Invoicedata.Invyear = Invoicetable.Invyear AND Invoicedata.InvoiceID = Invoicetable.Invoicenumber) INNER JOIN Producttransaction ON Invoicetable.Invyear = Producttransaction.Invyear AND Invoicetable.Invoicenumber = Producttransaction.Invoicenumber) WHERE (Invoicetable.Dateofdue = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        <asp:AccessDataSource ID="Dailystockpurchase" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT Dateofpurchase, ProductID, Purchaseprice, Purchaseqtty, Totalpurchase FROM Stocks WHERE (Dateofpurchase = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="DailyTransaction" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT Invoicetable.Dateoforder, Producttransaction.Invyear, Producttransaction.Invoicenumber, Producttransaction.ProductID, Producttransaction.Quantity, Producttransaction.Price, Producttransaction.Discount, Producttransaction.Total, Invoicetable.Status FROM (Invoicetable INNER JOIN Producttransaction ON Invoicetable.Invoicenumber = Producttransaction.Invoicenumber AND Invoicetable.Invyear = Producttransaction.Invyear) WHERE (Invoicetable.Dateoforder = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Monthlytransaction" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT Invoicetable.Dateoforder, Producttransaction.Invyear, Producttransaction.Invoicenumber, Producttransaction.ProductID, Producttransaction.Quantity, Producttransaction.Price, Producttransaction.Discount, Producttransaction.Total, Invoicetable.Status FROM (Invoicetable INNER JOIN Producttransaction ON Invoicetable.Invoicenumber = Producttransaction.Invoicenumber AND Invoicetable.Invyear = Producttransaction.Invyear) WHERE (Invoicetable.Dateoforder >= ?) AND (Invoicetable.Dateoforder <= ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label4" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="Label5" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Monthlystockpurchase" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT Dateofpurchase, ProductID, Purchaseprice, Purchaseqtty, Totalpurchase FROM Stocks WHERE (Dateofpurchase >= ?) AND (Dateofpurchase <= ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label4" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="Label5" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        &nbsp;
    
    </div>
    </form>
</body>
</html>
