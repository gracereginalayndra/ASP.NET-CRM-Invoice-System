<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Invoicetable.aspx.vb" Inherits="Invoicetable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Date
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
        Invoice no
        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>-<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                    Date of due
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
        <asp:Panel ID="Panel4" runat="server" Height="617px" Width="1169px">
            <asp:Button ID="Button6" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Invoice.aspx" Text="Invoice" /><br />
        Welcome,
        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>!<br />
        <asp:Panel ID="Panel3" runat="server" Height="106px" Width="897px">
        <table style="width: 902px; height: 52px">
            <tr>
                <td style="width: 175px; height: 29px;">
                    CustomerID</td>
                <td style="width: 100px; height: 29px;">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
                    </td>
                <td style="width: 100px; height: 29px;">
                    <asp:Button ID="Button4" runat="server" Text="Search" Width="478px" /></td>
            </tr>
            <tr>
                <td style="width: 175px; height: 31px;">
                    Customer name</td>
                <td style="width: 100px; height: 31px;">
                    <asp:Label ID="Label5" runat="server"></asp:Label></td>
                <td style="width: 100px; height: 31px;">
                </td>
            </tr>
        </table>
        </asp:Panel>
            <table style="width: 1311px; height: 450px;">
                <tr>
                    <td style="width: 721px; height: 36px">
                        Salesperson ID</td>
                    <td style="width: 454px; height: 36px">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SetSalespersontable" DataTextField="SalespersonID" DataValueField="SalespersonID">
                        </asp:DropDownList></td>
                    <td style="width: 338px; height: 36px">
                        Product ID</td>
                    <td style="width: 62px; height: 36px">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    <td style="width: 452px; height: 36px">
                        <asp:Button ID="Button5" runat="server" Text="Search" /></td>
                    <td style="width: 452px; height: 36px">
                        Quantity</td>
                    <td style="width: 1356px; height: 36px">
                        <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 1424px; height: 36px">
                        <asp:Button ID="Button1" runat="server" Text="Calculate" /></td>
                </tr>
                <tr>
                    <td style="width: 721px; height: 33px">
                        Salesperson name</td>
                    <td style="width: 454px; height: 33px">
                        <asp:Label ID="Label13" runat="server"></asp:Label></td>
                    <td style="width: 338px; height: 33px;">
                        Product name</td>
                    <td style="width: 62px; height: 33px;">
                        <asp:Label ID="Label6" runat="server"></asp:Label></td>
                    <td style="width: 452px; height: 33px;">
                    </td>
                    <td style="width: 452px; height: 33px">
                        Total before discount</td>
                    <td style="width: 1356px; height: 33px">
                        <asp:Label ID="Label9" runat="server"></asp:Label></td>
                    <td style="width: 1424px; height: 33px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 721px; height: 33px">
                    </td>
                    <td style="width: 454px; height: 33px">
                    </td>
                    <td style="width: 338px; height: 33px">
                        Core size</td>
                    <td style="width: 62px; height: 33px">
                        <asp:Label ID="Label11" runat="server"></asp:Label></td>
                    <td style="width: 452px; height: 33px">
                    </td>
                    <td style="width: 452px; height: 33px">
                        Total after<br />
                        discount</td>
                    <td style="width: 1356px; height: 33px">
                        <asp:Label ID="Label10" runat="server"></asp:Label></td>
                    <td style="width: 1424px; height: 33px">
        <asp:Button ID="Button3" runat="server" Text="Add products" /></td>
                </tr>
                <tr>
                    <td style="width: 721px; height: 33px">
                    </td>
                    <td style="width: 454px; height: 33px">
                    </td>
                    <td style="width: 338px; height: 33px">
                        Length</td>
                    <td style="width: 62px; height: 33px">
                        <asp:Label ID="Label12" runat="server"></asp:Label></td>
                    <td style="width: 452px; height: 33px">
                    </td>
                    <td style="width: 452px; height: 33px">
                    </td>
                    <td style="width: 1356px; height: 33px">
                    </td>
                    <td style="width: 1424px; height: 33px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 721px; height: 29px">
                    </td>
                    <td style="width: 454px; height: 29px">
                    </td>
                    <td style="width: 338px; height: 29px">
                        Price
                    </td>
                    <td style="width: 62px; height: 29px">
                        <asp:Label ID="Label7" runat="server"></asp:Label></td>
                    <td style="width: 452px; height: 29px">
                    </td>
                    <td style="width: 452px; height: 29px">
                    </td>
                    <td style="width: 1356px; height: 29px">
                    </td>
                    <td style="width: 1424px; height: 29px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 721px; height: 38px">
                    </td>
                    <td style="width: 454px; height: 38px">
                    </td>
                    <td style="width: 338px; height: 38px">
                        Discount (%)</td>
                    <td style="width: 62px; height: 38px">
                        <asp:Label ID="Label8" runat="server"></asp:Label></td>
                    <td style="width: 452px; height: 38px">
                    </td>
                    <td style="width: 452px; height: 38px">
                    </td>
                    <td style="width: 1356px; height: 38px">
                    </td>
                    <td style="width: 1424px; height: 38px">
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TransactionID" DataSourceID="Invoiceview">
            <Columns>
                <asp:BoundField DataField="Invoicenumber" HeaderText="Invoice number" SortExpression="Invoicenumber" />
                <asp:BoundField DataField="ProductID" HeaderText="Product ID" SortExpression="ProductID" />
                <asp:BoundField DataField="Productname" HeaderText="Product Name" SortExpression="Productname" />
                <asp:BoundField DataField="Coresize" HeaderText="Core Size" SortExpression="Coresize" />
                <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
            </asp:Panel>
        &nbsp; &nbsp;
        <asp:Panel
            ID="Panel2" runat="server" Height="61px" Width="456px">
                        Grand total:
            <asp:Label ID="Label4" runat="server" Text="0" Width="113px" EnableTheming="True" EnableViewState="False"></asp:Label><br />
            Invoice
                    status:
            <asp:DropDownList ID="DropDownList2" runat="server"><asp:ListItem>-</asp:ListItem>
                <asp:ListItem>Not paid</asp:ListItem>
                <asp:ListItem>Paid</asp:ListItem>
            </asp:DropDownList></asp:Panel>
        &nbsp; &nbsp;&nbsp; &nbsp;
        <asp:Button ID="finish" runat="server"  Text="Finish" />
        <%--<asp:Button ID="Button2" runat="server" Text="Finish" Visible="False">--%>
            <asp:Button ID="Button8" runat="server" OnClientClick="javascript:window.print();"
                Text="Print" Visible="False" />&nbsp;<asp:Button ID="Button9" runat="server" Text="Close" Visible="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
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
        <br />
        <asp:AccessDataSource ID="ACClimit" runat="server" DataFile="~/CS database.mdb" DataSourceMode="DataReader"
            SelectCommand="SELECT * FROM [Customertable]"></asp:AccessDataSource>
        <br />
        &nbsp; &nbsp;&nbsp;<br />
        <asp:AccessDataSource ID="SetProductTransaction" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Producttransaction]"
             InsertCommand="insert into Producttransaction ( Invoicenumber,  ProductID , Quantity, Price, Discount, Total, Invyear) values (@Invoicenumber, @ProductID, @Quantity, @Price, @Discount, @Total, @Invyear)"> 
             
              <InsertParameters>
                       <asp:Parameter Name= "Invoicenumber" DefaultValue = "" />                        
                       <asp:Parameter Name = "ProductID" DefaultValue ="" />
                     
                       
                       <asp:Parameter Name = "Quantity" DefaultValue ="" />
                       <asp:Parameter Name = "Price" DefaultValue ="" />
                       
                         <asp:Parameter Name= "Discount" DefaultValue = "" />                        
                       <asp:Parameter Name = "Total" DefaultValue ="" />
  <asp:Parameter Name = "Invyear" DefaultValue ="" />
                      
                        </InsertParameters>
                        
           
      
           
            </asp:AccessDataSource>
        <asp:AccessDataSource ID="ReadCusttable" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Customertable]"></asp:AccessDataSource>
        &nbsp; &nbsp;&nbsp; &nbsp;<asp:AccessDataSource ID="AccessDataSource1" runat="server"
            DataFile="~/CS database.mdb" DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Invoicedata] ORDER BY [InvoiceID]">
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="CustomerSalespersonlink" runat="server">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:AccessDataSource ID="Invoicedata" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Invoicedata]" InsertCommand= "insert into Invoicedata (InvoiceID, CustomerID, SalespersonID, Invyear,Commissionstatus) values (@InvoiceID, @CustomerID, @SalespersonID, @Invyear,@Commissionstatus)">
            <InsertParameters>
                       <asp:Parameter Name= "InvoiceID" DefaultValue = "" />                        
                       <asp:Parameter Name = "CustomerID" DefaultValue ="" />
       
                       <asp:Parameter Name = "SalespersonID" DefaultValue ="" />
                       
                     <asp:Parameter Name = "Invyear" DefaultValue ="" />
           <asp:Parameter Name = "Commissionstatus" DefaultValue ="" />
                        </InsertParameters>
            
            
            
            </asp:AccessDataSource>
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:AccessDataSource ID="ReadInvoiceTable" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Invoicetable] ORDER BY [Dateoforder], [Invoicenumber]">
           
            </asp:AccessDataSource>
        <asp:AccessDataSource ID="Insertproducttransaction" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Producttransaction] WHERE ([Invoicenumber] = ?)"
           
            InsertCommand = "insert into Producttransaction (Invoicenumber, ProductID , Quantity, Price, Discount, Total) 
            values (@Invoicenumber, @ProductID , @Quantity, @Price, @Discount, @Total)" DataSourceMode="DataReader"
            >
            
             <InsertParameters>
                       <asp:Parameter Name= "Invoicenumber" DefaultValue = "" />                        
                       
                       <asp:Parameter Name = "ProductID" DefaultValue ="" />
                       
                       
                       <asp:Parameter Name= "Quantity" DefaultValue = "" />                        
                       <asp:Parameter Name = "Price" DefaultValue ="" />
                       <asp:Parameter Name = "Discount" DefaultValue ="" />
                       <asp:Parameter Name = "Total" DefaultValue ="" />
             
           
                        </InsertParameters>
            
           
           
           
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="Invoicenumber" PropertyName="Text"
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        &nbsp; &nbsp; &nbsp;
        <asp:AccessDataSource ID="Readproducts" runat="server" DataSourceMode="DataReader" DataFile="~/CS database.mdb" SelectCommand="SELECT * FROM [Product]"
        UpdateCommand="update Product set Stocklevel=@Stocklevel where ProductID=@ProductID">
        
         <UpdateParameters>
            <asp:Parameter Name="Stocklevel" DefaultValue=""/>
            <asp:ControlParameter ControlID="Textbox5" PropertyName="Text"  Name="ProductID" DefaultValue=""/>
            </UpdateParameters>
        
        </asp:AccessDataSource>
        <br />
        &nbsp; 
        <asp:AccessDataSource ID="AccessDataSource3" runat="server"></asp:AccessDataSource>
        &nbsp;<asp:AccessDataSource ID="Invoiceview" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT Producttransaction.TransactionID, Producttransaction.Invoicenumber, Producttransaction.ProductID, Producttransaction.Quantity, Producttransaction.Price, Producttransaction.Discount, Producttransaction.Total, Product.ProductID AS Expr2, Product.Productname, Product.Coresize, Product.Length, Product.Price AS Expr3, Product.Discounts, Producttransaction.Invoicenumber AS Expr1, Producttransaction.Invyear FROM (Producttransaction INNER JOIN Product ON Producttransaction.ProductID = Product.ProductID) WHERE (Producttransaction.Invoicenumber = ?) AND (Producttransaction.Invyear = ?)" DataSourceMode="DataReader"
            deletecommand ="DELETE from Producttransaction where TransactionID=@TransactionID"
            >
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="Label15" DefaultValue="" Name="?" PropertyName="Text" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        <asp:AccessDataSource ID="SetInvoicetable" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT * FROM [Invoicetable]">
            
        
        
        
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="InsertInvoiceTable" runat="server" DataFile="~/CS database.mdb"
            SelectCommand="SELECT * FROM [Invoicetable]"           
            
            InsertCommand = "insert into Invoicetable (Dateoforder, Invoicenumber , Status, Dateofdue,Invyear)
            values (@Dateoforder, @Invoicenumber , @Status, @Dateofdue,@Invyear)"
            >
            
             <InsertParameters>
                       <asp:Parameter Name= "Dateoforder" DefaultValue = "" />                        
                       
                       <asp:Parameter Name = "Invoicenumber" DefaultValue ="" />
                       
                       
                       <asp:Parameter Name= "Status" DefaultValue = "" />                        
                       <asp:Parameter Name = "Dateofdue" DefaultValue ="" />
                       <asp:Parameter Name = "Invyear" DefaultValue ="" />
                       
           
                        </InsertParameters>
            
            
            
            
            
            </asp:AccessDataSource>
        <asp:AccessDataSource ID="Readproducttransaction" runat="server" DataSourceMode="DataReader" DataFile="~/CS database.mdb" 
        SelectCommand="SELECT * FROM [Producttransaction]">
        </asp:AccessDataSource>
        &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
     <%--<asp:AccessDataSource ID="SetInvoiceTable" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT * FROM [Invoicetable]"
         InsertCommand="insert into Invoicetable ( Dateoforder, Invoicenumber, Customer, Salesperson, Discount, Grandtotal, Dateofdue) values (@Dateoforder, @Invoicenumber, @Customer, @Salesperson, @Discount, @Grandtotal, @Dateofdue)"> 
             
              <InsertParameters>
              
                       <asp:Parameter Name= "Dateoforder" DefaultValue = "" />                        
                       <asp:Parameter Name = "Invoicenumber" DefaultValue ="" />
                       <asp:Parameter Name = "Customer" DefaultValue ="" />
                       <asp:Parameter Name = "Salesperson" DefaultValue ="" />
                       
                         <asp:Parameter Name= "Discount" DefaultValue = "" />                        
                       <asp:Parameter Name = "Grandtotal" DefaultValue ="" />
                    <asp:Parameter Name = "Dateofdue" DefaultValue ="" />
                      
                        </InsertParameters>
        </asp:AccessDataSource>
        &nbsp;<br />
        <br />--%>
        <asp:AccessDataSource ID="SetSalespersontable" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT * FROM [Salesperson] ORDER BY [SalespersonID]" DataSourceMode="DataReader">
        
        
        
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Updaresalesperson" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Salesperson]"></asp:AccessDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
