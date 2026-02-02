Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim x As Data.IDataReader = CType(readlogin.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f As Boolean = False
        While x.Read()
            If TextBox1.Text = x("Uname") Then
                f = True
                MsgBox("Entered username already existed, please enter a different one")
            End If
        End While
        If TextBox1.Text Is ("") Or TextBox3.Text Is ("") Then
            MsgBox("Please enter the username and password")
            f = True
        ElseIf TextBox2.Text <> TextBox4.Text Then 'Double entry verification
            MsgBox("Password not matching")
            f = True
        End If
        If TextBox1.Text <> ("") And TextBox3.Text <> ("") And f = False Then
            AccessDataSource1.InsertParameters("Uname").DefaultValue = TextBox1.Text
            AccessDataSource1.InsertParameters("Pword").DefaultValue = TextBox2.Text
            AccessDataSource1.InsertParameters("Ans").DefaultValue = TextBox3.Text
            AccessDataSource1.Insert()
            MsgBox("Username and password are successfully saved")
            Response.Redirect("Login.aspx")
        End If
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("login.aspx")
    End Sub
End Class
