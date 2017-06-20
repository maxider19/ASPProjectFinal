Option Strict On
Imports Team103DB
Imports Team103DBTableAdapters
Partial Class VendorSignIn
    Inherits System.Web.UI.Page
    Protected Sub Login1_Authenticate(sender As Object, e As AuthenticateEventArgs) Handles Login1.Authenticate
        Using aAdapter As New ASP_VendorTableAdapter
            Dim aTable As ASP_VendorDataTable

            aTable = aAdapter.GetDataByVCrdentials(Login1.UserName, Login1.Password)

            If aTable.Rows.Count = 1 Then
                Dim intVendorID As Integer = Convert.ToInt32(aTable.Rows(0).Item("VendorID"))
                Dim strVendorLoginName As String = aTable.Rows(0).Item("VendorLoginName").ToString
                Dim intOwnershipID As Integer = Convert.ToInt32(aTable.Rows(0).Item("OwnershipID"))

                Session.Add("VendorID", intVendorID)
                Session.Add("VendorLoginName", strVendorLoginName)
                Session.Add("OwnershipID", intOwnershipID)

                If Request.QueryString("ReturnURL") <> String.Empty Then
                    FormsAuthentication.RedirectFromLoginPage(strVendorLoginName, False)
                Else
                    FormsAuthentication.SetAuthCookie(strVendorLoginName, False)
                    Response.Redirect("http://www.business.colostate.edu/CIS665/SP17Ma.mahf1/AspHOE10/Edit.aspx")
                End If
            End If
        End Using

    End Sub
End Class
