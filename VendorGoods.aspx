<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VendorGoods.aspx.vb" Inherits="LoggedIn_VendorGoods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="http://ae.wolfbound.com/wiki/images/0/05/Bonesnarl.png" Style="float:left" Height="595px" Width="241px" />
            <asp:Image ID="Image2" runat="server" ImageUrl="https://gamedealdaily.com/wp-content/uploads/2016/08/gamedealdailybanner.png" Height="237px" Width="1287px" />
    </div>

    <div style="margin-top:20px; margin-left:500px">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="GoodsID" DataSourceID="ObjectDataSource1" AllowPaging="True">
            <Fields>
                <asp:BoundField DataField="GoodsID" HeaderText="GoodsID" ReadOnly="True" InsertVisible="False" SortExpression="GoodsID"></asp:BoundField>
                <asp:BoundField DataField="GoodsName" HeaderText="GoodsName" SortExpression="GoodsName"></asp:BoundField>
                <asp:BoundField DataField="GoodsTypeID" HeaderText="GoodsTypeID" SortExpression="GoodsTypeID"></asp:BoundField>
                <asp:BoundField DataField="GoodsPrice" HeaderText="GoodsPrice" SortExpression="GoodsPrice"></asp:BoundField>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date"></asp:BoundField>
                <asp:BoundField DataField="OwnershipID" HeaderText="OwnershipID" SortExpression="OwnershipID"></asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
                <asp:CommandField ShowInsertButton="True"></asp:CommandField>
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Team103DBTableAdapters.ASP_GoodsTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="GoodsName" Type="String"></asp:Parameter>
                <asp:Parameter Name="GoodsTypeID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="GoodsPrice" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="_Date" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="OwnershipID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Description" Type="String"></asp:Parameter>
            </InsertParameters>
        </asp:ObjectDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" NavigateUrl="~/VendorHomePage.aspx">Vendor Home</asp:HyperLink>
    </div>

    </form>
</body>
</html>
