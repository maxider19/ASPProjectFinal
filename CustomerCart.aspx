<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerCart.aspx.vb" Inherits="CustomerCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Cart</title>
</head>
<body style="width: 1148px; margin:0 auto; background-color: burlywood" >
    <div>
        <img src="LOGO.png" style="width: 1000px; height:200px" />
    </div>

        <form id="form1" runat="server">

    <div>
            <a href="Search.aspx">Back Search</a> &nbsp;&nbsp;            
    </div>

    <div style="margin-top:30px; margin-left:200px">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GoodsID" ShowFooter="True" BackColor="#CCFFFF" Font-Size="X-Large" >
                <Columns>        
          <asp:BoundField DataField="GoodsName" HeaderText="Goods Name" ReadOnly="True" />
          <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
              <asp:Label ID="Label2" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Quantity is Required" ControlToValidate="txtQuantity" Display="None"></asp:RequiredFieldValidator>
              <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Quantity should be between 1 and 20" ControlToValidate="txtQuantity" Type="Integer" MinimumValue="1" MaximumValue="20" Display="None"></asp:RangeValidator>
            </EditItemTemplate>
              <ItemStyle HorizontalAlign="Right" />
            </asp:TemplateField>
            <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Extended Price">
              <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Format$(Eval("Quantity") * Eval("Price"),"Currency") %>'>
                </asp:Label>
                </ItemTemplate>
                    <ItemStyle HorizontalAlign="Right" />
                
                <FooterTemplate>
                  <asp:Label ID="Label2" runat="server" Text='<%# OrderTotal() %>'></asp:Label>
                </FooterTemplate>

              </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>

            <EmptyDataTemplate>
                There is nothing in your shopping cart. <br />
                Please shop at our <a href="Search.aspx">Store</a>
            </EmptyDataTemplate>

            </asp:GridView>

         <div style="margin-top:30px; font-size:large">
            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
          </div>

    </div>

    </form>
</body>
</html>
