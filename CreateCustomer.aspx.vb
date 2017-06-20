Option Strict On
Imports Team103DB
Imports Team103DBTableAdapters
Partial Class CreateCustomer
    Inherits System.Web.UI.Page
    Private Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Label1.Text = "You are signed up. Click Sign-In to enjoy shpping."
    End Sub

    Private Sub DetailsView1_ItemInserting(sender As Object, e As DetailsViewInsertEventArgs) Handles DetailsView1.ItemInserting
        Dim strNewName As String = e.Values("CustomerLoginName").ToString

        Dim aTable As ASP_CustomerDataTable

        Using aDapter As New ASP_CustomerTableAdapter
            aTable = aDapter.GetDataByCustomerLoginName(strNewName)
        End Using

        If aTable.Rows.Count > 0 Then
            Label1.Text = "Pick another Customer Login Name."
            e.Cancel = True
        Else
            e.Values("CustomerName") = strNewName
        End If
    End Sub

End Class
