Partial Class Invoicetable
    Inherits System.Web.UI.Page
    Dim prodname, slname, csize, length As String
    Dim price, discount, limit As Double
    Dim f As Boolean
    Dim q2 As Integer
    Dim q1 As Integer
    Dim prod As Integer
    Public Function ACC() 'function to read the customer's account limit
        Dim a As Data.IDataReader = CType(ACClimit.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        limit = 0
        While a.Read()
            If TextBox1.Text = a("CustID") Then
                limit = a("ACClimit")
            End If
        End While
        a.Close()
        Return limit
    End Function
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        'button 3: add products
        Dim exceed As Boolean = False
        ACC()
        If Val(Label10.Text) + Val(Label4.Text) >= limit Then 'total (quantity*price) + grand total (directly calculated from the gridview
            exceed = True
            finish.Visible = False
            MsgBox("Transaction exceeds the account limit, please delete some items. Account limit = Rp." & limit)
        End If
        If exceed = False Then
            Dim l As Data.IDataReader = CType(AccessDataSource1.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
            Dim invfound As Boolean = False
            While l.Read()
                If Label1.Text = l("InvoiceID") And Label15.Text = l("Invyear") Then
                    invfound = True 'to check whether the invoice data is saved in the data base
                End If
            End While
            l.Close()
            If invfound = False Then
                Invoicedata.InsertParameters("Invyear").DefaultValue = Label15.Text
                Invoicedata.InsertParameters("InvoiceID").DefaultValue = Label1.Text
                Invoicedata.InsertParameters("CustomerID").DefaultValue = TextBox1.Text
                Invoicedata.InsertParameters("SalespersonID").DefaultValue = DropDownList1.Text
                Invoicedata.InsertParameters("Commissionstatus").DefaultValue = "No"
                Invoicedata.Insert()
            End If
            Panel2.Visible = True
            SetProductTransaction.InsertParameters("Invoicenumber").DefaultValue = Label1.Text
            SetProductTransaction.InsertParameters("ProductID").DefaultValue = TextBox5.Text
            SetProductTransaction.InsertParameters("Quantity").DefaultValue = TextBox8.Text
            SetProductTransaction.InsertParameters("Total").DefaultValue = Label10.Text
            SetProductTransaction.InsertParameters("Price").DefaultValue = Label7.Text
            SetProductTransaction.InsertParameters("Discount").DefaultValue = Label8.Text
            SetProductTransaction.InsertParameters("Invyear").DefaultValue = Today.Year
            SetProductTransaction.Insert()
            MsgBox("Data successfully saved")
            GridView1.DataBind()
            finish.Visible = True
            Response.Redirect("invoicetable.aspx")
        End If
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'TO CALCULATE DUE DATE AUTOMATICALLY
        Label14.Text = Session("loginname")
        Label2.Text = Today.Date
        Label3.Text = DateAdd("d", 30, Today.Date)
        Dim a As Integer
        a = Today.Year
        'TO INCREMENT INVOICE NUMBER EACH TIME A TRANSACTION IS FINISHED. HOWEVER EVERY YEAR, THE INVOICE NUMBER SHOULD START FROM 1 AGAIN.
        Dim x As Data.IDataReader = CType(ReadInvoiceTable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim invoicenumber As Integer
        Dim yrdate As Date
        Dim year As Integer
        While x.Read()
            yrdate = x("Dateoforder")
            year = yrdate.Year
            If year < Today.Year Then
                Label1.Text = "1"
                Label15.Text = a
            Else
                invoicenumber = x("Invoicenumber")
                Label1.Text = invoicenumber + 1
                Label15.Text = a
            End If
        End While
        x.Close()
        'RETRIEVE THE CUSTOMER ID AND SALESPERSON ID ONCE AN INVOICE IS CREATED BUT NOT FINISHED / ONCE THE ADD PRODUCTS BUTTON IS CLICKED.
        Dim y As Data.IDataReader = CType(AccessDataSource1.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim sid As Integer
        While y.Read()
            If Label1.Text = y("InvoiceID") And Label15.Text = y("Invyear") Then
                TextBox1.Text = y("CustomerID")
                DropDownList1.Text = y("SalespersonID")
                DropDownList1.Enabled = False
                sid = y("SalespersonID")
                Dim z As Data.IDataReader = CType(ReadCusttable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                While z.Read()
                    If TextBox1.Text = z("CustID") Then
                        Label5.Text = z("Custname")
                    End If
                End While
                z.Close()
            End If
        End While
        y.Close()
        Dim y1 As Data.IDataReader = CType(SetSalespersontable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        While y1.Read()
            If sid = y1("SalespersonID") Then
                Label13.Text = y1("Salesname")
            End If
        End While
        y1.Close()
        If Not (TextBox1.Text = "") Then
        End If
        Dim h As Data.IDataReader = CType(AccessDataSource1.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim invfound As Boolean = False
        While h.Read()
            If Label1.Text = h("InvoiceID") And Label15.Text = h("Invyear") Then
                TextBox1.ReadOnly = True
                invfound = True
            End If
        End While
        h.Close()
        GridView1.DataBind()
        'CALCULATE THE TOTAL TRANSACTION DIRECTLY FROM THE GRID VIEW
        Dim total, total1 As Double
        For i As Integer = 0 To GridView1.Rows.Count - 1
            total = Convert.ToInt32(GridView1.Rows(i).Cells(8).Text)
            total1 = total1 + total
        Next
        Label4.Text = total1
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim z As Data.IDataReader = CType(ReadCusttable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f As Boolean = False
        While z.Read()
            If TextBox1.Text = z("CustID") Then
                Label5.Text = z("Custname")
                f = True
            End If
        End While
        z.Close()
        If f = False Then
            MsgBox("Please enter the correct customer ID")
        End If
    End Sub
    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Dim x As Data.IDataReader = CType(Readproducts.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim y As Data.IDataReader = CType(SetSalespersontable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f1 As Boolean
        f1 = False
        While x.Read()
            If TextBox5.Text = x("ProductID") Then
                f1 = True
                prodname = x("Productname")
                csize = x("Coresize")
                length = x("Length")
                price = x("Price")
                discount = x("Discounts")
            End If
        End While
        x.Close()
        While y.Read()
            If DropDownList1.Text = y("SalespersonID") Then
                slname = y("Salesname")
            End If
        End While
        y.Close()
        If f1 = True Then
            TextBox8.ReadOnly = False
            Label6.Text = prodname
            Label11.Text = csize
            Label12.Text = length
            Label7.Text = price
            Label8.Text = discount
            Label13.Text = slname
        End If
        If f1 = False Then
            MsgBox("Please enter the correct Product ID")
        End If
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim total, totalb4 As Double
        Dim a As Data.IDataReader = CType(Readproducts.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim d As Boolean
        Dim num As Integer
        If TextBox8.Text <> "" Then
            While a.Read()
                If TextBox5.Text = a("ProductID") Then
                    num = a("Stocklevel")
                End If
                If Val(TextBox8.Text) <= a("Stocklevel") And TextBox5.Text = a("ProductID") Then
                    d = True
                    num = a("Stocklevel")
                End If
            End While
            a.Close()
            If d = False Then
                MsgBox("Sorry, quantity is not enough. Stock available: " & num)
            End If
            If d = True Then
                totalb4 = 0
                total = 0
                Label9.Text = totalb4 + (Val(Label7.Text) * Val(TextBox8.Text))
                Label10.Text = total + ((((100 - Val(Label8.Text)) / 100) * Val(Label7.Text)) * Val(TextBox8.Text))
            End If
        Else
            MsgBox("Please enter the quantity of order")
        End If
    End Sub
    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Response.Redirect("Invoicetable.aspx")
    End Sub
    Protected Sub GridView1_RowDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeletedEventArgs) Handles GridView1.RowDeleted
        Response.Redirect("invoicetable.aspx")
    End Sub
    Protected Sub finish_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles finish.Click
        'button 2: finish
        Dim g As Boolean = False
        Dim f As Boolean = True
        If DropDownList2.Text = "-" Then
            MsgBox("Please enter the invoice status")
            f = False
        End If
        If f = True Then
            InsertInvoiceTable.InsertParameters("Dateoforder").DefaultValue = Label2.Text
            InsertInvoiceTable.InsertParameters("Invoicenumber").DefaultValue = Label1.Text
            InsertInvoiceTable.InsertParameters("Status").DefaultValue = DropDownList2.Text
            InsertInvoiceTable.InsertParameters("Dateofdue").DefaultValue = Label3.Text
            InsertInvoiceTable.InsertParameters("Invyear").DefaultValue = Today.Year
            InsertInvoiceTable.Insert()
            Dim b As Data.IDataReader = CType(Readproducttransaction.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
            While b.Read()
                If Label1.Text = b("Invoicenumber") And Label15.Text = b("Invyear") Then
                    q1 = b("Quantity")
                    prod = b("ProductID")
                    TextBox5.Text = prod
                    Dim c As Data.IDataReader = CType(Readproducts.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                    While c.Read()
                        If TextBox5.Text = c("ProductID") Then
                            q2 = c("Stocklevel")
                            q2 = q2 - q1 'minus the demand from the stock level
                            Readproducts.UpdateParameters("Stocklevel").DefaultValue = q2
                            Readproducts.Update()
                        End If
                    End While
                    c.Close()
                End If
            End While
            b.Close()
            MsgBox("Invoice successfully created")
            g = True
            DropDownList2.Enabled = False
        End If
        If g = True Then
            Panel4.Visible = False 'panel 4: data entry form
            finish.Visible = False 'finish button
            Button8.Visible = True 'print button
            Button9.Visible = True 'close button
        End If
        Panel1.Visible = True 'invoice table
    End Sub
End Class

