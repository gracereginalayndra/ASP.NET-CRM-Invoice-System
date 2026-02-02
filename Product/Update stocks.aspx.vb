Partial Class Update_stocks
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim x As Data.IDataReader = CType(Readproducts.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f As Boolean
        f = False
        While x.Read()
            If TextBox5.Text IsNot ("") And TextBox5.Text = x("ProductID") Then 'validate product ID
                f = True
                Panel3.Visible = True 'update form
                Panel2.Visible = False 'search
                TextBox6.Text = x("Productname")
            End If
        End While
        If f = False Then
            MsgBox("Please enter a correct product ID")
        End If
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim x As Data.IDataReader = CType(Readproducts.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim stock As Integer
        While x.Read()
            If TextBox5.Text = x("ProductID") Then
                stock = x("Stocklevel")
                Readproducts.UpdateParameters("Stocklevel").DefaultValue = stock + Val(TextBox2.Text)
                Readproducts.Update() 'update stock level in product table which is initially set to be 0
                InsertStocks.InsertParameters("Dateofpurchase").DefaultValue = Calendar1.SelectedDate
                InsertStocks.InsertParameters("ProductID").DefaultValue = TextBox5.Text
                InsertStocks.InsertParameters("Purchaseprice").DefaultValue = TextBox1.Text
                InsertStocks.InsertParameters("Purchaseqtty").DefaultValue = TextBox2.Text
                InsertStocks.InsertParameters("Totalpurchase").DefaultValue = TextBox3.Text
                InsertStocks.Insert() 'insert stock details into the stock table
                MsgBox("Stocks updated")
                Response.Redirect("Update stocks.aspx")
            End If
        End While
    End Sub
    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        Response.Redirect("Update stocks.aspx")
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        TextBox3.Text = Val(TextBox1.Text) * Val(TextBox2.Text) 'calculation of the total stock purchases
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("loginname")
    End Sub
    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Response.Redirect("Update products.aspx")
    End Sub
End Class
