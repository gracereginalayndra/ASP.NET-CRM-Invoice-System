Partial Class Forgotpassword
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim x As Data.IDataReader = CType(AccessDataSource1.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f As Boolean = False
        While x.Read()
            If TextBox1.Text = x("Uname") Then 'checking username existence in the database
                f = True
            End If
        End While
        If f = True Then
            Panel2.Visible = True 'panel 2: security question
            Panel1.Visible = True 'panel 1: entering username
        Else
            MsgBox("Invalid username")
        End If
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim x As Data.IDataReader = CType(readlogin.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f As Boolean
        f = False
        While x.Read()
            If TextBox1.Text = x("Uname") And TextBox2.Text = x("Ans") Then
                Panel3.Visible = True 'panel 3: new password
                f = True
            End If
        End While
        If f = False Then
            MsgBox("Answer is incorrect")
        End If
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If TextBox3.Text = TextBox4.Text Then 'double entry verification
            AccessDataSource2.UpdateParameters("Pword").DefaultValue = TextBox3.Text
            AccessDataSource2.UpdateParameters("Uname").DefaultValue = TextBox1.Text
            AccessDataSource2.Update()
            MsgBox("Password successfully saved")
            Response.Redirect("Login.aspx")
        Else
            MsgBox("Password is not matching")
        End If
    End Sub
End Class
