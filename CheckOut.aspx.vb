Option Strict On
Imports Team103DB
Imports Team103DBTableAdapters
Partial Class CheckOut
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Session("CustomerCart") Is Nothing Then
            Session("CustomerCart") = New ShopCart
        End If

        If CType(Session("CustomerCart"), ShopCart).GetCartItems.Count = 0 Then

            btnPlaceOrder.Visible = False

        End If

        If Not Page.IsPostBack Then
            BindGrid()
        End If

    End Sub

    Private Sub BindGrid()
        'Bind the contents of the cart to the GridView

        GridView1.DataSource = CType(Session("CustomerCart"), ShopCart).GetCartItems.Values
        GridView1.DataBind()
    End Sub

    Protected Sub btnPlaceOrder_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPlaceOrder.Click

        Dim newOrderID As Integer

        Using aAdapt As New ASP_OrderTableAdapter

            'get userpk

            Dim intCustomerID As Integer = Convert.ToInt32(CType(Session("Visitor"), Hashtable).Item("CustomerID"))

            'Insert new order

            newOrderID = Convert.ToInt32(aAdapt.InsertOrder(intCustomerID))

        End Using

        Using aAdapt As New ASP_OrderDetailTableAdapter
            'Insert order details for the new order
            For Each aItem As CartItem In CType(Session("CustomerCart"), ShopCart).GetCartItems.Values
                aAdapt.Insert(aItem.GoodsID, newOrderID, aItem.Quantity)
            Next
        End Using
        'Remove all items from the cart

        CType(Session("CustomerCart"), ShopCart).DeleteAllCartItems()

        If Request.Cookies.Get("SearchCriteria") IsNot Nothing Then
            'Delete the SearchCriteria Cookie
            Response.Cookies("SearchCriteria").Expires = Date.Now.AddDays(-1)

        End If
        Server.Transfer("OrderSucceed.aspx")
    End Sub

    Protected Function OrderTotal() As String
        Return String.Format("Your Order Total is: {0:c}", CType(Session("CustomerCart"), ShopCart).TotalForCartItems)
    End Function

End Class
