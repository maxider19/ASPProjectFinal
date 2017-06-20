<%@ Page Language="VB" AutoEventWireup="false" CodeFile="OrderSucceed.aspx.vb" Inherits="LoggedIn_OrderSucceed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Succeed</title>
</head>
    <body style="width: 1148px; margin:0 auto; background-color: burlywood" >


        <img src="../LOGO.png" style="width: 1000px; height:200px" />


        <form id="form1" runat="server">
            <a href="../Search.aspx">Back Search</a> &nbsp;&nbsp;            


    <div style="margin-top:20px; margin-left:300px; font-size:large">
       Purchase Succeeded. Delivery of your product will be arranged soon.<br /><br />
       <a href="../Search.aspx"> Please keep shopping at our store</a><br /><br />
       <asp:Button ID="btnLogOut" runat="server" Font-Size="Large" Text="Log Out" Width="100px" />
    </div>

    </form>
</body>
</html>
