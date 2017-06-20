Option Strict On
Imports Team103DB
Imports Team103DBTableAdapters
Partial Class Search
    Inherits System.Web.UI.Page

    Private Sub LoginStatus1_LoggedOut(sender As Object, e As EventArgs) Handles LoginStatus1.LoggedOut
        Session.Remove("Visitor")
    End Sub

    Private Sub ObjectDataSource1_Load(sender As Object, e As EventArgs) Handles ObjectDataSource1.Load
        If HttpContext.Current.User.Identity.IsAuthenticated Then
            Label6.Text = String.Format("Welcome back {0}", HttpContext.Current.User.Identity.Name)




        End If
    End Sub

    Private Sub ObjectDataSource1_Selected(sender As Object, e As ObjectDataSourceStatusEventArgs) Handles ObjectDataSource1.Selected
        Dim aTable As ASP_GoodsDataTable

        aTable = CType(e.ReturnValue, ASP_GoodsDataTable)
        Label5.Text = aTable.Rows.Count & " Records Found "
    End Sub

    Private Sub ObjectDataSource1_Selecting(sender As Object, e As ObjectDataSourceSelectingEventArgs) Handles ObjectDataSource1.Selecting
        If Not Page.IsPostBack Then
            e.Cancel = True
        End If
    End Sub


End Class
