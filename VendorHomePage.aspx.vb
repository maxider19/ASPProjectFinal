Option Strict On
Partial Class VendorHomePage
    Inherits System.Web.UI.Page

    Private Sub VendorGoods_Load(sender As Object, e As EventArgs) Handles Me.Load
        If HttpContext.Current.User.Identity.IsAuthenticated Then
            Label1.Text = String.Format("Welcome back {0}", HttpContext.Current.User.Identity.Name)

            Menu1.Items(0).ChildItems.RemoveAt(2)

            Dim aMenuItem As New MenuItem
            With aMenuItem
                .Text = "Sign Out"
                .NavigateUrl = "/VendorSignOut.aspx"
                .ToolTip = "Log Out"
            End With

            Menu1.Items(0).ChildItems.Add(aMenuItem)
        End If
    End Sub

End Class
