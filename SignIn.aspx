<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SignIn.aspx.vb" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Sign In</title>
</head>
<body style="width: 1148px; margin:0 auto; background-color: burlywood" >
    <div>
    <img src="LOGO.png" style="width: 1000px; height:200px" />
            </div>
        <form id="form1" runat="server">

    <div style="margin-top:20px; margin-left:200px">
        <asp:Login ID="Login1" runat="server" ackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" CreateUserText="Create New Customer" CreateUserUrl="~/CreateCustomer.aspx" DisplayRememberMe="False" Font-Names="Verdana" Font-Size="X-Large" RememberMeText="" FailureText="Invalid credentials" BackColor="#CCFFFF">
        <LoginButtonStyle Font-Size="Large" />
        <TextBoxStyle Font-Size="Large" />
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>

      <br />
      <br />
      <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" 
            NavigateUrl="~/Search.aspx">Home</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
