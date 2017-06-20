Option Strict On
Imports Team103DB
Imports Team103DBTableAdapters
Partial Class SignIn
    Inherits System.Web.UI.Page
    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate

        Using aAdapter As New ASP_CustomerTableAdapter

            Dim aTable As ASP_CustomerDataTable

            aTable = aAdapter.GetDataByCrdentials(Login1.UserName, Login1.Password)

            If aTable.Rows.Count = 1 Then

                Dim strLoginName As String = aTable.Rows(0).Item("CustomerLoginName").ToString

                Dim intCustomerID As Integer = Convert.ToInt32(aTable.Rows(0).Item("CustomerID"))

                Dim VisitorInfo As New Hashtable

                'Populate VisitorInfo

                With VisitorInfo
                    .Add("CustomerID", intCustomerID)
                    .Add("CustomerLoginName", strLoginName)
                End With

                'Add the hashtable object to the session collection

                Session.Add("Visitor", VisitorInfo)

                FormsAuthentication.RedirectFromLoginPage(strLoginName, False)

                If Request.QueryString("ReturnURL") <> String.Empty Then
                    FormsAuthentication.RedirectFromLoginPage(strLoginName, False)
                Else
                    FormsAuthentication.SetAuthCookie(strLoginName, False)
                    Response.Redirect("~/Search.aspx")
                End If


            End If
        End Using

    End Sub
End Class
