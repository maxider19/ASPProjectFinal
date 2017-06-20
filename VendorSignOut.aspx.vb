Option Strict On
Partial Class VendorSignOut
    Inherits System.Web.UI.Page

    Private Sub VendorSignOut_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormsAuthentication.SignOut()
        Response.Clear()
        Session.Remove("VendorID")
        Session.Remove("VendorLoginName")
        Session.Remove("OwnershipID")
        Response.Redirect("~/VendorHomePage.aspx")
    End Sub
End Class
