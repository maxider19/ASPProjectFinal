Option Strict On

Public Class ShopCart

    Private Property CartItems As Dictionary(Of Integer, CartItem)

    Public Sub New()

        'instantiate cartitems object

        CartItems = New Dictionary(Of Integer, CartItem)

    End Sub

    Public Sub AddCartItem(GoodsID As Integer, GoodsName As String, Quantity As Integer, Price As Decimal)

        'If it is a new item

        If Not CartItems.ContainsKey(GoodsID) Then

            'Instantiate a new cartitem object

            Dim aItem As New CartItem(GoodsID, GoodsName, Quantity, Price)

            'add it to the cartitems collection

            CartItems.Add(GoodsID, aItem)

            'If the item is already in the cart
        Else

            'Increase quantity by 1 if the current quantity is less than 20

            If CartItems.Item(GoodsID).Quantity < 20 Then
                CartItems.Item(GoodsID).Quantity += 1
            End If
        End If

    End Sub

    Public Function GetCartItems() As Dictionary(Of Integer, CartItem)

        Return CartItems

    End Function

    Public Sub UpdateCartItem(GoodsID As Integer, Quantity As Integer)

        If Quantity = 0 Then
            DeleteCartItem(GoodsID)
        Else
            CartItems.Item(GoodsID).Quantity = If(Quantity <= 20, Quantity, 20)
        End If
    End Sub

    Public Sub DeleteCartItem(GoodsID As Integer)

        CartItems.Remove(GoodsID)

    End Sub

    Public Sub DeleteAllCartItems()

        CartItems.Clear()

    End Sub

    Public Function TotalForCartItems() As Double

        Dim Total As Double

        For Each aItem As CartItem In CartItems.Values
            Total += aItem.Price * aItem.Quantity
        Next

        Return Total
    End Function
End Class
