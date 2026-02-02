Partial Class Search
    Inherits System.Web.UI.Page
    Dim f As Boolean = True
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox4.Text = "" Or TextBox5.Text = "" Then
            f = False
            MsgBox("Please enter filter criteria")
        End If
        If f = True Then
            Invview.DataBind()
            Calendar1.Enabled = False
            Calendar2.Enabled = False
            DropDownList1.Enabled = False
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            TextBox4.Enabled = False
            TextBox5.Enabled = False
        End If
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dateoforderview.DataBind()
        Calendar1.Enabled = False
        Calendar2.Enabled = False
        DropDownList1.Enabled = False
        TextBox1.Enabled = False
        TextBox2.Enabled = False
        TextBox3.Enabled = False
        TextBox4.Enabled = False
        TextBox5.Enabled = False
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dateofdueview.DataBind()
        Calendar1.Enabled = False
        Calendar2.Enabled = False
        DropDownList1.Enabled = False
        TextBox1.Enabled = False
        TextBox2.Enabled = False
        TextBox3.Enabled = False
        TextBox4.Enabled = False
        TextBox5.Enabled = False
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        If DropDownList1.Text = "" Then
            f = False
            MsgBox("Please enter filter criteria")
        End If
        If f = True Then
            Calendar1.Enabled = False
            Calendar2.Enabled = False
            DropDownList1.Enabled = False
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            TextBox4.Enabled = False
            TextBox5.Enabled = False
        End If
    End Sub
    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        If TextBox1.Text = "" Then
            f = False
            MsgBox("Please enter filter criteria")
        End If
        If f = True Then
            Salesview.DataBind()
            Calendar1.Enabled = False
            Calendar2.Enabled = False
            DropDownList1.Enabled = False
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            TextBox4.Enabled = False
            TextBox5.Enabled = False
        End If
    End Sub
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        If TextBox2.Text = "" Then
            f = False
            MsgBox("Please enter filter criteria")
        End If
        If f = True Then
            Customerview.DataBind()
            Calendar1.Enabled = False
            Calendar2.Enabled = False
            DropDownList1.Enabled = False
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            TextBox4.Enabled = False
            TextBox5.Enabled = False
        End If
    End Sub
    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        If TextBox3.Text = "" Then
            f = False
            MsgBox("Please enter filter criteria")
        End If
        If f = True Then
            Productview.DataBind()
            Calendar1.Enabled = False
            Calendar2.Enabled = False
            DropDownList1.Enabled = False
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            TextBox4.Enabled = False
            TextBox5.Enabled = False
        End If
    End Sub
    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        Response.Redirect("Search.aspx")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("loginname")
    End Sub
End Class
