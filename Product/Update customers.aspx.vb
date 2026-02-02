Partial Class Update_customers
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("loginname")
        Dim x As Data.IDataReader = CType(ReadCustomertable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim customerid As Integer
        While x.Read()
            customerid = x("CustID")
        End While
        TextBox13.Text = customerid + 1 'automatically incremented ID
    End Sub
    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        SetCustomertable.InsertParameters("CustID").DefaultValue = TextBox13.Text
        SetCustomertable.InsertParameters("Custname").DefaultValue = TextBox14.Text
        SetCustomertable.InsertParameters("Contnum1").DefaultValue = TextBox15.Text
        SetCustomertable.InsertParameters("Contnum2").DefaultValue = TextBox16.Text
        SetCustomertable.InsertParameters("Deliveryaddress").DefaultValue = TextBox17.Text
        SetCustomertable.InsertParameters("Area").DefaultValue = DropDownList3.Text
        SetCustomertable.InsertParameters("ACClimit").DefaultValue = TextBox18.Text
        If RadioButton5.Checked = True Then
            SetCustomertable.InsertParameters("Gender").DefaultValue = "Male"
        Else
            SetCustomertable.InsertParameters("Gender").DefaultValue = "Female"
        End If
        SetCustomertable.Insert()
        MsgBox("Customer's details is successfully saved")
        Response.Redirect("Update customers.aspx")
    End Sub
    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        'button 5: add customer
        Panel2.Visible = False 'search
        Panel3.Visible = False 'update form
        Panel4.Visible = True 'add form
    End Sub
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Dim x As Data.IDataReader = CType(ReadCustomertable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f As Boolean
        f = False
        While x.Read()
            If TextBox3.Text IsNot ("") And TextBox3.Text = x("CustID") Then
                f = True
                Panel3.Visible = True
                TextBox4.Text = x("Custname")
                TextBox5.Text = x("Contnum1")
                TextBox6.Text = x("Contnum2")
                DropDownList5.Text = x("Area")
                TextBox10.Text = x("Deliveryaddress")
                TextBox12.Text = x("ACClimit")
                If x("Gender") = "Male" Then
                    RadioButton3.Checked = True
                End If
                If x("Gender") = "Female" Then
                    RadioButton4.Checked = True
                End If
            End If
        End While
        If f = False Then
            MsgBox("Please enter a correct customer ID")
        End If
    End Sub
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        'button 6: update customer
        Panel2.Visible = True 'search
        Panel3.Visible = False 'update form
        Panel4.Visible = False 'add form
    End Sub
    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Dim x As Data.IDataReader = CType(ReadCustomertable.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        While x.Read()
            If TextBox3.Text = x("CustID") Then
                ReadCustomertable.UpdateParameters("Custname").DefaultValue = TextBox4.Text
                ReadCustomertable.UpdateParameters("Contnum1").DefaultValue = TextBox5.Text
                ReadCustomertable.UpdateParameters("Contnum2").DefaultValue = TextBox6.Text
                ReadCustomertable.UpdateParameters("Area").DefaultValue = DropDownList5.Text
                ReadCustomertable.UpdateParameters("Deliveryaddress").DefaultValue = TextBox10.Text
                ReadCustomertable.UpdateParameters("ACClimit").DefaultValue = TextBox12.Text
                If RadioButton3.Checked = True Then
                    ReadCustomertable.UpdateParameters("Gender").DefaultValue = "Male"
                Else
                    ReadCustomertable.UpdateParameters("Gender").DefaultValue = "Female"
                End If
                ReadCustomertable.Update()
                MsgBox("Data successfully updated")
                Response.Redirect("Update customers.aspx")
            End If
        End While
    End Sub
    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button11.Click
        Response.Redirect("Update customers.aspx")
    End Sub
    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Response.Redirect("Update customers.aspx")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        MsgBox("Delete the selected data?", MsgBoxStyle.YesNo)
        If MsgBoxResult.Yes Then
            ReadCustomertable.DeleteParameters("CustID").DefaultValue = TextBox3.Text
            ReadCustomertable.Delete()
            MsgBox("Data successfully deleted")
            Response.Redirect("Update customers.aspx")
        End If
    End Sub
End Class





