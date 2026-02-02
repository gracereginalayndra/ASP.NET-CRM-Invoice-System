Partial Class Monthlyreport
    Inherits System.Web.UI.Page
    Dim InvID1, Invyear1 As Integer
    Dim flag As Boolean
    Function invoicestatus()
        Dim h As Data.IDataReader = CType(Readcommission.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        While h.Read()
            If InvID1 = h("InvID") And Invyear1 = h("Invyear") Then
                flag = True
                Exit While
            End If
        End While
        h.Close()
        Return flag
    End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("loginname")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim revenue As Double
        Dim g As Boolean = False
        Dim salesid As Integer
        Dim c As Data.IDataReader = CType(Readinvoicedata.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        While c.Read()
            If c("SalespersonID") = DropDownList1.Text And c("Commissionstatus") = "No" Then 'check whether there is still commission left to be paid
                salesid = c("SalespersonID")
                Dim a As Data.IDataReader = CType(ReadsalesID.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                While a.Read()
                    If salesid = a("SalespersonID") Then
                        TextBox4.Text = a("Salesname")
                    End If
                End While
                a.Close()
                g = True
                Dim InvID2, Invyear2 As Integer
                InvID2 = c("InvoiceID")
                Invyear2 = c("Invyear")
                Dim d As Data.IDataReader = CType(Readproducttransaction.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                While d.Read()
                    If d("Invyear") = Invyear2 And d("Invoicenumber") = InvID2 Then
                        revenue = revenue + d("Total")
                    End If
                End While
                d.Close()
            End If
        End While
        c.Close()
        If g = True Then
            TextBox2.Text = revenue
        Else
            Dim p As Data.IDataReader = CType(ReadsalesID.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
            While p.Read()
                If p("SalespersonID") = DropDownList1.Text Then
                    TextBox4.Text = p("Salesname")
                End If
            End While
            p.Close()
            TextBox2.Text = 0
            MsgBox("The selected salesperson does not have any revenue")
        End If
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        'The percentages are agreed by the users
        If Val(TextBox2.Text) <= 2000000000 Then
            TextBox1.Text = 0.2
        ElseIf Val(TextBox2.Text) >= 2000000001 And Val(TextBox2.Text) <= 5000000000 Then
            TextBox1.Text = 0.5
        ElseIf Val(TextBox2.Text) >= 5000000001 And Val(TextBox2.Text) <= 8000000000 Then
            TextBox1.Text = 0.8
        ElseIf Val(TextBox2.Text) >= 8000000001 And Val(TextBox2.Text) <= 11000000000 Then
            TextBox1.Text = 1.1
        ElseIf Val(TextBox2.Text) >= 11000000001 Then
            TextBox1.Text = 1.5
        End If
        TextBox3.Text = Val(TextBox2.Text) * ((Val(TextBox1.Text)) / 100)
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If TextBox2.Text > 0 Then
            Insertcommission.InsertParameters("SalesID").DefaultValue = DropDownList1.Text
            Insertcommission.InsertParameters("Commission").DefaultValue = TextBox3.Text
            Insertcommission.InsertParameters("Received").DefaultValue = Today.Date
            Insertcommission.Insert()
            updateinvoicestatus.UpdateParameters("Commissionstatus").DefaultValue = "Yes"
            updateinvoicestatus.Update()
            MsgBox("Commission progress saved")
        Else
            MsgBox("All the salesperson commission has been paid")
        End If
        Response.Redirect("Commissions.aspx")
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim count, indexid, indexrev As Integer
        Dim salesid() As Integer
        Dim revenue(), rev As Double
        count = 0
        indexid = 0
        indexrev = 0
        Dim a As Data.IDataReader = CType(ReadsalesID.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        While a.Read()
            count = count + 1
        End While
        a.Close()
        rev = 0
        ReDim salesid(count)
        ReDim revenue(count)
        While indexid <= (count - 1) And indexrev <= (count - 1)
            Dim k As Data.IDataReader = CType(ReadsalesID.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
            While k.Read()
                salesid(indexid) = k("SalespersonID")
                rev = 0
                Dim c As Data.IDataReader = CType(Readinvoicedata.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                While c.Read()
                    If salesid(indexid) = c("SalespersonID") Then
                        Dim invyear1, invid1 As Integer
                        invyear1 = c("Invyear")
                        invid1 = c("InvoiceID")
                        Dim b As Data.IDataReader = CType(Readinvoicetable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                        While b.Read()
                            If invyear1 = b("Invyear") And invid1 = b("Invoicenumber") And b("Dateoforder") >= Calendar1.SelectedDate And b("Dateoforder") <= Calendar2.SelectedDate And b("Status") = "Paid" Then
                                Dim invyear2, invid2 As Integer
                                invyear2 = invyear1
                                invid2 = invid1
                                Dim d As Data.IDataReader = CType(Readproducttransaction.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                                While d.Read()
                                    If invyear2 = d("Invyear") And invid2 = d("Invoicenumber") Then
                                        rev = rev + d("Total")
                                    End If
                                End While
                                d.Close()
                            End If
                        End While
                        b.Close()
                    End If
                End While
                c.Close()
                revenue(indexrev) = rev
                indexrev = indexrev + 1
                indexid = indexid + 1
            End While
            k.Close()
        End While
        Dim i, j, temp As Integer
        i = 0
        j = 0
        For i = 0 To count - 2 'sorting
            For j = i To count - 1
                If revenue(i) < revenue(j) Then
                    temp = revenue(j)
                    revenue(j) = revenue(i)
                    revenue(i) = temp
                    temp = salesid(j)
                    salesid(j) = salesid(i)
                    salesid(i) = temp
                End If
            Next
        Next
        ListBox2.Items.Clear()
        ListBox1.Items.Clear()
        For i = 0 To 4
            ListBox2.Items.Add(revenue(i)) 'adding to list boxes
            Dim o As Data.IDataReader = CType(ReadsalesID.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
            While o.Read()
                If salesid(i) = o("SalespersonID") Then
                    ListBox1.Items.Add(o("Salesname"))
                End If
            End While
            o.Close()
        Next
    End Sub
    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Panel1.Visible = True 'top 5 salesperson
        Panel2.Visible = False 'top 5 products
        Panel3.Visible = False 'salesperson commission
    End Sub
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Panel2.Visible = True
        Panel1.Visible = False
        Panel3.Visible = False
    End Sub
    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        Dim count, indexid, indexrev As Integer
        Dim rev As Double
        count = 0
        indexid = 0
        indexrev = 0
        Dim a As Data.IDataReader = CType(Readproductid.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        While a.Read()
            count = count + 1
        End While
        a.Close()
        rev = 0
        Dim product(count, count) As Double
        While indexid <= (count - 1) And indexrev <= (count - 1)
            Dim k As Data.IDataReader = CType(Readproductid.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
            While k.Read()
                product(indexid, 0) = k("ProductID")
                rev = 0
                Dim b As Data.IDataReader = CType(Readprodtransaction.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                While b.Read()
                    If product(indexid, 0) = b("ProductID") Then
                        Dim Invyear1, invid1 As Integer
                        Invyear1 = b("Invyear")
                        invid1 = b("Invoicenumber")
                        Dim c As Data.IDataReader = CType(Readinvtable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                        While c.Read()
                            If Invyear1 = c("Invyear") And invid1 = c("Invoicenumber") And c("Dateoforder") >= Calendar3.SelectedDate And c("Dateoforder") <= Calendar4.SelectedDate Then
                                Dim invyear2, invid2 As Integer
                                invyear2 = Invyear1
                                invid2 = invid1
                                Dim d As Data.IDataReader = CType(Readprodtransaction.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
                                While d.Read()
                                    If invyear2 = d("Invyear") And invid2 = d("Invoicenumber") Then
                                        rev = rev + d("Total")
                                    End If
                                End While
                                d.Close()
                            End If
                        End While
                        c.Close()
                    End If
                End While
                b.Close()
                product(indexid, 1) = rev
                indexid = indexid + 1
            End While
            k.Close()
        End While
        Dim i, j, temp As Integer
        For i = 0 To count - 2
            For j = i To count - 1
                If product(i, 1) < product(j, 1) Then
                    temp = product(j, 1)
                    product(j, 1) = product(i, 1)
                    product(i, 1) = temp
                    temp = product(j, 0)
                    product(j, 0) = product(i, 0)
                    product(i, 0) = temp
                End If
            Next
        Next
        ListBox3.Items.Clear()
        ListBox4.Items.Clear()
        For i = 0 To 4 'to use this loop, must have at least 5 products
            ListBox4.Items.Add(product(i, 1))
            Dim o As Data.IDataReader = CType(Readproductid.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
            While o.Read()
                If product(i, 0) = o("ProductID") Then
                    ListBox3.Items.Add(o("Productname"))
                End If
            End While
            o.Close()
        Next
    End Sub
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = True
    End Sub
End Class
