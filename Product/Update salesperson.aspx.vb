Partial Class Update_salesperson
    Inherits System.Web.UI.Page
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        SetSalespersontable.InsertParameters("SalespersonID").DefaultValue = TextBox4.Text
        SetSalespersontable.InsertParameters("Salesname").DefaultValue = TextBox6.Text
        SetSalespersontable.InsertParameters("Contactnumber1").DefaultValue = TextBox7.Text
        SetSalespersontable.InsertParameters("Contactnumber2").DefaultValue = TextBox8.Text
        SetSalespersontable.InsertParameters("Address").DefaultValue = TextBox9.Text
        SetSalespersontable.InsertParameters("Area").DefaultValue = TextBox2.Text
        If RadioButton3.Checked = True Then
            SetSalespersontable.InsertParameters("Gender").DefaultValue = "Male"
        Else
            SetSalespersontable.InsertParameters("Gender").DefaultValue = "Female"
        End If
        SetSalespersontable.Insert()
        MsgBox("Data successfully saved")
        Response.Redirect("Update Salesperson.aspx")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim x As Data.IDataReader = CType(ReadSalespersontable2.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f As Boolean
        f = False
        While x.Read()
            If TextBox1.Text IsNot ("") And TextBox1.Text = x("SalespersonID") Then
                f = True
                Panel1.Visible = True
                TextBox5.Text = x("Salesname")
                TextBox10.Text = x("Contactnumber1")
                TextBox11.Text = x("Contactnumber2")
                TextBox12.Text = x("Address")
                TextBox3.Text = x("Area")
                If x("Gender") = "Male" Then
                    RadioButton1.Checked = True
                End If
                If x("Gender") = "Female" Then
                    RadioButton2.Checked = True
                End If
            End If
        End While
        x.Close()
        If f = False Then
            MsgBox("Please enter a correct salesperson ID")
        End If
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim x As Data.IDataReader = CType(ReadSalespersontable2.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        While x.Read()
            If TextBox1.Text = x("SalespersonID") Then
                ReadSalespersontable2.UpdateParameters("Salesname").DefaultValue = TextBox5.Text
                ReadSalespersontable2.UpdateParameters("Contactnumber1").DefaultValue = TextBox10.Text
                ReadSalespersontable2.UpdateParameters("Contactnumber2").DefaultValue = TextBox11.Text
                ReadSalespersontable2.UpdateParameters("Address").DefaultValue = TextBox12.Text
                ReadSalespersontable2.UpdateParameters("Area").DefaultValue = TextBox3.Text
                If RadioButton1.Checked = True Then
                    ReadSalespersontable2.UpdateParameters("Gender").DefaultValue = "Male"
                End If
                If RadioButton2.Checked = True Then
                    ReadSalespersontable2.UpdateParameters("Gender").DefaultValue = "Female"
                End If
                ReadSalespersontable2.Update()
                MsgBox("Data successfully updated")
                Response.Redirect("Update Salesperson.aspx")
            End If
        End While
        x.Close()
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("Update salesperson.aspx")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("loginname")
        Dim x As Data.IDataReader = CType(ReadSalespersontable2.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim salesid As Integer
        While x.Read()
            salesid = x("SalespersonID")
        End While
        x.Close()
        TextBox4.Text = salesid + 1
    End Sub
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        'button 6: add salesperson
        Panel2.Visible = True 'add form
        Panel1.Visible = False 'update form
        Panel4.Visible = False 'search
    End Sub
    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Panel2.Visible = False
        Panel1.Visible = False
        Panel4.Visible = True
    End Sub
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Response.Redirect("Update salesperson.aspx")
    End Sub
    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        MsgBox("Delete record?", MsgBoxStyle.YesNo)
        If MsgBoxResult.Yes Then
            ReadSalespersontable2.DeleteParameters("SalespersonID").DefaultValue = TextBox1.Text
            ReadSalespersontable2.Delete()
            MsgBox("Record successfully deleted")
            Response.Redirect("Update salesperson.aspx")
        End If
    End Sub
End Class
