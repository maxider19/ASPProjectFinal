<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HomePage.aspx.vb" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Home Page</title>
</head>
<body style="width: 1148px; margin:0 auto; background-color: burlywood" >
    <div>
    <img src="LOGO.png" style="width: 1000px; height:200px" />
            </div>
        <form id="form1" runat="server">


    <div>
        <asp:Menu ID="Menu1" runat="server" Font-Size="X-Large" StaticDisplayLevels="2">
            <Items>
                <asp:MenuItem NavigateUrl="~/HomePage.aspx" Text="Home Page" Value="Home Page">
                    <asp:MenuItem NavigateUrl="~/VendorHomePage.aspx" Text="Vendor Home" Value="Vendor Login"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Search.aspx" Text="Customer Home" Value="Customer Login"></asp:MenuItem>
                    <asp:MenuItem Text="Administrator Home" Value="Administrator Login"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
    </form>
      <img src="welcome.jpg" style="width: 1000px; height:200px " />
</body>
</html>
