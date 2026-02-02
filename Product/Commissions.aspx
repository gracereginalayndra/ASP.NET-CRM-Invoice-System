<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Commissions.aspx.vb" Inherits="Monthlyreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button9" runat="server" PostBackUrl="~/Main menu.aspx" Text="Main menu" /><br />
        Hello Welcome&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>!<asp:Label
            ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label><br />
        <asp:Button ID="Button5" runat="server" Text="Top 5 Salespersons" />
        <asp:Button ID="Button6" runat="server" Text="Top 5 Products" />
        <asp:Button ID="Button7" runat="server" Text="Salesperson Commission" /><br />
        <asp:Panel ID="Panel1" runat="server" Height="548px" Visible="False" Width="1074px">
            Top 5 Salesperson<br />
        <table>
            <tr>
                <td style="width: 170px">
                    From:<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td style="width: 100px">
                    To:<asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button4" runat="server" Text="OK" /></td>
            </tr>
            <tr>
                <td style="width: 170px">
                    Salesperson name</td>
                <td style="width: 100px">
                    Revenue</td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 170px; height: 119px">
                    <asp:ListBox ID="ListBox1" runat="server" Rows="5" Width="200px"></asp:ListBox></td>
                <td style="width: 100px; height: 119px">
                    <asp:ListBox ID="ListBox2" runat="server" Rows="5" Width="200px"></asp:ListBox></td>
                <td style="width: 100px; height: 119px">
                </td>
            </tr>
        </table>
            <br />
        <asp:AccessDataSource ID="ReadsalesID" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT  * FROM [Salesperson] ORDER BY [SalespersonID]">
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="Readinvoicetable" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Invoicetable]"></asp:AccessDataSource>
        <asp:AccessDataSource ID="Readinvoicedata" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Invoicedata]"></asp:AccessDataSource>
        <asp:AccessDataSource ID="Readproducttransaction" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Producttransaction]"></asp:AccessDataSource>
        <asp:AccessDataSource ID="Insertcommission" runat="server" DataFile="~/CS database.mdb" SelectCommand="SELECT * FROM [Commission]"
            InsertCommand = "insert into Commission (SalesID, Commission, Received) values (@SalesID, @Commission, @Received)" 
            >
            
             <InsertParameters>
                       <asp:Parameter Name= "SalesID" DefaultValue = "" />                        
                     
                       <asp:Parameter Name = "Commission" DefaultValue ="" />                       
                       <asp:Parameter Name= "Received" DefaultValue = "" />                       
                               
                        </InsertParameters>
            
            
            
            
            
            
            
            </asp:AccessDataSource>
        <asp:AccessDataSource ID="Readcommission" runat="server" DataFile="~/CS database.mdb"
            DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Commission]"></asp:AccessDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="341px" Visible="False" Width="1078px">
            Top 5 Products<br />
            <table>
                <tr>
                    <td style="width: 170px">
                        From:<asp:Calendar ID="Calendar3" runat="server"></asp:Calendar>
                    </td>
                    <td style="width: 100px">
                        To:<asp:Calendar ID="Calendar4" runat="server"></asp:Calendar>
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button8" runat="server" Text="OK" /></td>
                </tr>
                <tr>
                    <td style="width: 170px">
                        Product name</td>
                    <td style="width: 100px">
                        Revenue</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 119px">
                        <asp:ListBox ID="ListBox3" runat="server" Rows="5" Width="200px"></asp:ListBox></td>
                    <td style="width: 100px; height: 119px">
                        <asp:ListBox ID="ListBox4" runat="server" Rows="5" Width="200px"></asp:ListBox></td>
                    <td style="width: 100px; height: 119px">
                    </td>
                </tr>
            </table>
            <asp:AccessDataSource ID="Readinvtable" runat="server" DataFile="~/CS database.mdb"
                DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Invoicetable]"></asp:AccessDataSource>
            <asp:AccessDataSource ID="Readproductid" runat="server" DataFile="~/CS database.mdb"
                DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Product] ORDER BY [ProductID]">
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="Readprodtransaction" runat="server" DataFile="~/CS database.mdb"
                DataSourceMode="DataReader" SelectCommand="SELECT * FROM [Producttransaction]"></asp:AccessDataSource>
            <asp:AccessDataSource ID="updateinvoicestatus" runat="server" DataFile="~/CS database.mdb"
                SelectCommand="SELECT * FROM [Invoicedata]"
                UpdateCommand="update Invoicedata 
                           set Commissionstatus=@Commissionstatus where SalespersonID=@SalespersonID"
                >
                <UpdateParameters >
                <asp:Parameter Name="Commissionstatus" DefaultValue= ""/>
                <asp:ControlParameter Name="SalespersonID" DefaultValue="" ControlID="dropdownlist1" PropertyName="text" />
                                
                </UpdateParameters>
                
                
                
                
                
                </asp:AccessDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Visible="False">
        Salesperson Commission<br />
        <table>
            <tr>
                <td style="width: 279px">
                    Salesperson ID:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ReadsalesID"
                        DataTextField="SalespersonID" DataValueField="SalespersonID">
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" Text="Search" /></td>
                <td style="width: 202px">
                    Salesperson name:<asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 279px">
                    Revenue:<br />
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 202px">
                    Percentage:<asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 100px">
                    Commission:<asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Button ID="Button3" runat="server" Text="Calculate" /></td>
            </tr>
            <tr>
                <td style="width: 279px">
                </td>
                <td style="width: 202px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" Text="Pay" /></td>
            </tr>
        </table>
            <br />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp;
        <br />
    
    </div>
    </form>
</body>
</html>
