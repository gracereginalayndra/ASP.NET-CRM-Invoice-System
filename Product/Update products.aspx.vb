Partial Class Update_products
    Inherits System.Web.UI.Page
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        'add products
        Insertproducts.InsertParameters("ProductID").DefaultValue = TextBox1.Text
        Insertproducts.InsertParameters("Productname").DefaultValue = TextBox4.Text
        Insertproducts.InsertParameters("Coresize").DefaultValue = DropDownList3.Text
        Insertproducts.InsertParameters("Length").DefaultValue = DropDownList4.Text
        Insertproducts.InsertParameters("Price").DefaultValue = TextBox2.Text
        Insertproducts.InsertParameters("Discounts").DefaultValue = TextBox3.Text
        Insertproducts.InsertParameters("Stocklevel").DefaultValue = 0
        Insertproducts.Insert()
        MsgBox("Product details successfully saved")
        Response.Redirect("Update products.aspx")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("loginname")
        Dim x As Data.IDataReader = CType(Readproducts.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim prodid As Integer
        While x.Read()
            prodid = x("ProductID")
        End While
        x.Close()
        TextBox1.Text = prodid + 1 'automatically incremented ID read directly from the database to reduce human error
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim x As Data.IDataReader = CType(Readproducts.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f As Boolean
        f = False
        While x.Read()
            If TextBox5.Text IsNot ("") And TextBox5.Text = x("ProductID") Then 'search button to validate product ID (whether it is present in the database or not)
                f = True
                Panel3.Visible = True
                Panel2.Visible = False
                TextBox6.Text = x("Productname")
                DropDownList1.Text = x("Coresize")
                DropDownList2.Text = x("Length")
                TextBox7.Text = x("Price")
                TextBox8.Text = x("Discounts")
            End If
        End While
        x.Close()
        If f = False Then
            MsgBox("Please enter a correct product ID")
        End If
    End Sub
    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        Response.Redirect("Update products.aspx")
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim x As Data.IDataReader = CType(Readproducts.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        While x.Read()
            If TextBox5.Text = x("ProductID") Then
                Readproducts.UpdateParameters("Productname").DefaultValue = TextBox6.Text
                Readproducts.UpdateParameters("Coresize").DefaultValue = DropDownList1.Text
                Readproducts.UpdateParameters("Length").DefaultValue = DropDownList2.Text
                Readproducts.UpdateParameters("Price").DefaultValue = TextBox7.Text
                Readproducts.UpdateParameters("Discounts").DefaultValue = TextBox8.Text
                Readproducts.Update()
                MsgBox("Data successfully updated")
                Response.Redirect("Update products.aspx")
            End If
        End While
        x.Close()
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("Update products.aspx")
    End Sub
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        'button 6: add products, panel 1: add form, panel 2: search, panel 3: update form
        Panel2.Visible = False
        Panel1.Visible = True
        Panel3.Visible = False
    End Sub
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        'button 7: update products, panel 1: add form, panel 2: search, panel 3: update form
        Panel2.Visible = True
        Panel1.Visible = False
        Panel3.Visible = False
    End Sub
    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Panel3.Visible = False
        MsgBox("Delete record?", MsgBoxStyle.YesNo)
        If MsgBoxResult.Yes Then
            Readproducts.DeleteParameters("ProductID").DefaultValue = TextBox5.Text
            Readproducts.Delete()
            MsgBox("Record successfully deleted")
            Response.Redirect("Update products.aspx")
        End If
    End Sub
    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        'button 10: Stocks
        Response.Redirect("Update stocks.aspx")
    End Sub
End Class
