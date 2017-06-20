Option Strict On

Public Class CartItem

    Public Property GoodsID As Integer
    Public Property GoodsName As String
    Public Property Quantity As Integer
    Public Property Price As Decimal

    'Constructor

    Public Sub New(intGoodsID As Integer, strGoodsName As String, intQuantity As Integer, decPrice As Decimal)

        GoodsID = intGoodsID
        GoodsName = strGoodsName
        Quantity = intQuantity
        Price = decPrice

    End Sub

End Class
