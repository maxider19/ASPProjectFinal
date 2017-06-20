Option Strict On
Imports Team103DB
Imports Team103DBTableAdapters
Partial Class CreateVendor
    Inherits System.Web.UI.Page

    Private Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Label1.Text = "You are signed up. Click Sign-In to go Vendor Home Page."
    End Sub

    Private Sub DetailsView1_ItemInserting(sender As Object, e As DetailsViewInsertEventArgs) Handles DetailsView1.ItemInserting
        Dim strNewName As String = e.Values("VendorLoginName").ToString

        Dim aTable As ASP_VendorDataTable

        Using aAdapter As New ASP_VendorTableAdapter
            aTable = aAdapter.GetDataByVendorLoginName(strNewName)
        End Using

        If aTable.Rows.Count > 0 Then
            Label1.Text = "Pick another Vendor Login Name."
            e.Cancel = True
        Else
            e.Values("VendorLoginName") = strNewName
        End If
    End Sub
End Class
