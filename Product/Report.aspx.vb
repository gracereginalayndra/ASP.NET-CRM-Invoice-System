Partial Class Profitandloss
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Today.Date
        Label3.Text = Session("loginname")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Panel1.Visible = True
        Panel2.Visible = False
        Panel3.Visible = False
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Panel1.Visible = False
        Panel2.Visible = True
        Panel3.Visible = False
        Dim d1, d2 As Date
        d1 = New DateTime(Today.Date.Year, Today.Date.Month, 1) 'first day of the month
        d2 = d1.AddMonths(1).AddDays(-1) 'last day of the month
        Label4.Text = d1
        Label5.Text = d2
    End Sub
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = True
        GridView5.DataBind()
    End Sub
End Class
