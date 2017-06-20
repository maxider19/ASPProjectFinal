<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CreateVendor.aspx.vb" Inherits="CreateVendor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

    
<body style="width: 1148px; margin:0 auto; background-color: burlywood" >
    <div>
    <img src="LOGO.png" style="width: 1000px; height:200px" />
            </div>
        <form id="form2" runat="server">

    <div style="margin-top:50px; margin-left:300px">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="VendorID" DataSourceID="ObjectDataSource1" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="VendorID" HeaderText="VendorID" ReadOnly="True" InsertVisible="False" SortExpression="VendorID"></asp:BoundField>
                <asp:BoundField DataField="VendorLoginName" HeaderText="VendorLoginName" SortExpression="VendorLoginName"></asp:BoundField>
                <asp:BoundField DataField="VendorPassword" HeaderText="VendorPassword" SortExpression="VendorPassword"></asp:BoundField>
                <asp:BoundField DataField="VendorName" HeaderText="VendorName" SortExpression="VendorName"></asp:BoundField>
                <asp:BoundField DataField="VendorMail" HeaderText="VendorMail" SortExpression="VendorMail"></asp:BoundField>
                <asp:BoundField DataField="OwnershipID" HeaderText="OwnershipID" SortExpression="OwnershipID"></asp:BoundField>
                <asp:CommandField ShowInsertButton="True"></asp:CommandField>
            </Fields>
        </asp:DetailsView>

        <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Team103DBTableAdapters.ASP_VendorTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="VendorLoginName" Type="String"></asp:Parameter>
                <asp:Parameter Name="VendorPassword" Type="String"></asp:Parameter>
                <asp:Parameter Name="VendorName" Type="String"></asp:Parameter>
                <asp:Parameter Name="VendorMail" Type="String"></asp:Parameter>
                <asp:Parameter Name="OwnershipID" Type="Int32"></asp:Parameter>
            </InsertParameters>
        </asp:ObjectDataSource>
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="Red"></asp:Label>

                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" NavigateUrl="~/VendorHomePage.aspx">Vendor Home</asp:HyperLink>


    </div>
        
    </form>
</body>
</html>
