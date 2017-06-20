Option Strict On
Partial Class LoggedIn_OrderSucceed
    Inherits System.Web.UI.Page
    Protected Sub btnLogOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogOut.Click

        FormsAuthentication.SignOut()
        Response.Clear()
        Session.Remove("Visitor")
        Response.Redirect("~/Search.aspx")

    End Sub

End Class
