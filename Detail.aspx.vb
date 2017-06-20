Option Strict On
Imports Team103DB
Imports Team103DBTableAdapters
Partial Class Detail
    Inherits System.Web.UI.Page
    Protected Sub AddToCart()

        'Instantiate the CustomerCart object

        If Session("CustomerCart") Is Nothing Then
            Session("CustomerCart") = New ShopCart
        End If

        'Access the ProductPK from the DataKeys collection of the DataList

        Dim intID As Integer = Convert.ToInt32(DataList1.DataKeys(0))

        'Get details about the product from the database
        'Note: These details could have been obtained from the DataList too

        Using aAdapter As New ASP_GoodsTableAdapter
            Dim aTable As ASP_GoodsDataTable

            aTable = aAdapter.GetDataByGoodsID(intID)

            If aTable.Rows.Count = 1 Then

                Dim aRow As ASP_GoodsRow = CType(aTable.Rows(0), ASP_GoodsRow)

                With aRow

                    'Add the CartItem

                    Dim aCart As ShopCart = CType(Session("CustomerCart"), ShopCart)

                    aCart.AddCartItem(.GoodsID, .GoodsName, 1, .GoodsPrice)

                End With

            End If
        End Using

        Response.Redirect("~/CustomerCart.aspx")
    End Sub
End Class
