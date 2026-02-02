Partial Class Login
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'To check whether inputted username and password are correct or matching with the database
        Dim x As Data.IDataReader = CType(Readlogin.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
        Dim f As Boolean = False
        While x.Read()
            If TextBox1.Text = x("Uname") And TextBox2.Text = x("Pword") Then
                Session("loginname") = x("Uname") 'session to store user's username to enhance user interface
                f = True
            End If
        End While
        If f = True Then
            MsgBox("You have logged in successfully")
            Response.Redirect("Main menu.aspx")
        Else
            MsgBox("Incorrect username or password")
        End If
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("Forgotpassword.aspx")
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("Login.aspx")
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("login registration.aspx")
    End Sub
End Class

