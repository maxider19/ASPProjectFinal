<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VendorHomePage.aspx.vb" Inherits="VendorHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 1148px; margin:0 auto; background-color: burlywood" >
            
    <div>
    <img src="LOGO.png" style="width: 1000px; height:200px" />
        </div>

                <form id="form1" runat="server">
                <div>
        <asp:Menu ID="Menu1" runat="server" StaticDisplayLevels="2" Font-Size="X-Large">
            <Items>
                <asp:MenuItem NavigateUrl="~/VendorHomePage.aspx" Text="Vendor Home Page" Value="Vendor Home Page">
                    <asp:MenuItem NavigateUrl="~/Search.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/VendorSignIn.aspx" Text="Vendor Sign In" Value="Vendor Sign In"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>

    <div style="margin-top:5px; margin-left:500px">
        <asp:Label ID="Label1" runat="server" Text="Welcome" Font-Size="XX-Large"></asp:Label>
    </div>

    </form>
</body>
</html>
