Partial Class Updateinvoicestatus
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("loginname")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim f As Boolean = False
        If TextBox1.Text = "" Or TextBox2.Text = "" Then
            MsgBox("Please enter the invoice year and number")
        Else
            Dim x As Data.IDataReader = CType(Updateinv.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
            While x.Read()
                If TextBox1.Text = x("Invyear") And TextBox2.Text = x("Invoicenumber") Then
                    f = True
                    GridView1.DataBind()
                End If
            End While
            If f = False Then
                MsgBox("Please enter correct invoice year and number") 'valid invoice year and number
            End If
        End If
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If DropDownList1.Text = "" Then
            MsgBox("Please enter invoice status")
        Else
            Dim x As Data.IDataReader = CType(Updateinv.Select(DataSourceSelectArguments.Empty), Data.IDataReader)
            While x.Read()
                If TextBox1.Text = x("Invyear") And TextBox2.Text = x("Invoicenumber") Then
                    Updateinv.UpdateParameters("Status").DefaultValue = DropDownList1.Text
                    Updateinv.Update()
                    MsgBox("Data successfully updated")
                    Response.Redirect("Updateinvoicestatus.aspx")
                End If
            End While
            x.Close()
        End If
    End Sub
End Class
