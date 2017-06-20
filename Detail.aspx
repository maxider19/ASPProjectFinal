<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Detail.aspx.vb" Inherits="Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detail</title>
</head>
<body style="width: 1148px; margin:0 auto; background-color: burlywood" >
    <div>
        <img src="LOGO.png" style="width: 1000px; height:200px" />
    </div>
        <form id="form1" runat="server">

     <div>
            <a href="CustomerCart.aspx">View Cart</a> &nbsp;&nbsp;
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </div>

    <div style="margin-top:100px; margin-left:300px;">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="GoodsID" DataSourceID="ObjectDataSource1" Font-Size="X-Large" FooterStyle-BorderColor="Blue" BackColor="#CCFFFF" ForeColor="Black">
            <ItemTemplate>
                    <table style="border-width:0px;width:500px">
			        <tr class="MenuUnselected">
					  <td style="width:5px;"></td>
						<td style="width:500px;text-align:center;vertical-align:middle;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("GoodsName") %>' CssClass="MyStyleLeftBold"></asp:Label>
                 <br /><br />
                            </td>
                        </tr>

                   <tr>
						<td style="width:5px;"></td>
						<td style="width:500px;text-align:center;vertical-align:middle;">

                   <asp:Label ID="Label2" runat="server" CssClass="MyStyleLeftBold" Text="Price:"></asp:Label>                    
                    <asp:Label ID="GoodsPriceLabel" runat="server" CssClass="MyStyleLeft" Text='<%# Eval("GoodsPrice", "{0:c}") %>' /> 
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" CssClass="MyStyleLeftBold" Text="Release Data:" />
                    <br />   
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" CssClass="MyStyleLeftBold" Text="Product Introduction:" />
                    <br />
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br /><br />
                            <asp:Button ID="Button1" runat="server" Text="Add" OnClick= "AddToCart"/>
                    <br /><br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Search.aspx">Back to Store</asp:HyperLink>
<br />
                            </td>
                            </tr>
                            </table>
            </ItemTemplate>
        </asp:DataList>

        <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByGoodsID" TypeName="Team103DBTableAdapters.ASP_GoodsTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="GoodsID" Name="GoodsID" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>

    </form>
</body>
</html>
