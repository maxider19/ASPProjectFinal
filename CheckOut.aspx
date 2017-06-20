<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CheckOut.aspx.vb" Inherits="CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check Out</title>
</head>
<body style="width: 1148px; margin:0 auto; background-color: burlywood" >
    <div>
    <img src="../LOGO.png" style="width: 1000px; height:200px" />
        <a href="../Search.aspx">Back Search</a> &nbsp;&nbsp;
            </div>
        <form id="form1" runat="server">
                        


    <div style="margin-top:20px; margin-left:200px">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GoodsID" ShowFooter="True" BackColor="#CCFFFF" Font-Size="X-Large" >
            
          <Columns>        
            <asp:BoundField DataField="GoodsName" HeaderText="Goods Name" ReadOnly="True" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>

          <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True" >
            <ItemStyle HorizontalAlign="Right" />
          </asp:BoundField>

            <asp:TemplateField HeaderText="Extended Price">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Format$(Eval("Quantity") * Eval("Price"), "Currency") %>'>
                    </asp:Label>
                </ItemTemplate>
                    <ItemStyle HorizontalAlign="Right" />

                <FooterTemplate>
                  <asp:Label ID="Label2" runat="server" Text='<%# OrderTotal() %>'></asp:Label>
                </FooterTemplate>

              </asp:TemplateField>

            </Columns>

            <EmptyDataTemplate>
                There is nothing in your shopping cart. <br />
                Please shop at our <a href="../Search.aspx">Store</a>
            </EmptyDataTemplate>

        </asp:GridView>

        <div style="margin-top:30px; font-size:large">
            <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" />
        </div>

    </div>

    </form>
</body>
</html>
