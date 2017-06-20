Option Strict On
Partial Class CustomerCart
    Inherits System.Web.UI.Page
    Private Sub CustomerCart_Load(sender As Object, e As EventArgs) Handles Me.Load

        'instantiate a shopcart object, if it doesn't exist

        If Session("CustomerCart") Is Nothing Then
            Session("CustomerCart") = New ShopCart
        End If

        'if the shopcart doesn't have any items, hide the checkout button

        If CType(Session("CustomerCart"), ShopCart).GetCartItems.Count = 0 Then

            btnCheckOut.Visible = False

        End If

        'if it is not a postback, call the BindGrid method

        If Not Page.IsPostBack Then
            BindGrid()
        End If

    End Sub

    Private Sub BindGrid()

        'Bind the contents of the cart to the GridView

        GridView1.DataSource = CType(Session("CustomerCart"), ShopCart).GetCartItems.Values
        GridView1.DataBind()

    End Sub

    Protected Sub GridView1_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit

        'cancel edit

        GridView1.EditIndex = -1
        BindGrid()

    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

        'get the key for the item to be deleted and delete it from the shopcart
        'e.RowIndex is used to identify the row that is to be deleted

        CType(Session("CustomerCart"), ShopCart).DeleteCartItem(Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Value))
        BindGrid()

    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing

        'Get the row ready for editing

        GridView1.EditIndex = e.NewEditIndex
        BindGrid()

    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

        'Find the new value for quantity in the GridView

        'e.RowIndex is used to identify the row that is being updated

        Dim aTextBox As TextBox = CType(GridView1.Rows(e.RowIndex).FindControl("txtQuantity"), TextBox)

        Dim intNewQuantity As Integer = Convert.ToInt32(aTextBox.Text)

        CType(Session("CustomerCart"), ShopCart).UpdateCartItem(Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Value), intNewQuantity)

        GridView1.EditIndex = -1
        BindGrid()

    End Sub

    Protected Sub btnCheckOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCheckOut.Click

        Response.Redirect("~/LoggedIn/CheckOut.aspx")

    End Sub

    Protected Function OrderTotal() As String

        Return String.Format("Total is: {0:c}", CType(Session("CustomerCart"), ShopCart).TotalForCartItems)

    End Function

End Class
