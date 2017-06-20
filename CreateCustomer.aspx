<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CreateCustomer.aspx.vb" Inherits="CreateCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Customer</title>
</head>
<body style="width: 1148px; margin:0 auto; background-color: burlywood" >
    <div>
    <img src="LOGO.png" style="width: 1000px; height:200px" />
            </div>

        <form id="form1" runat="server">

    <div style="margin-top:30px; margin-left:300px">
        <br />
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" Text="Create A New Customer"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Customer Type ID must be 1 or 2." Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
        <br />
        <table style="font-family:Verdana;font-size:100%; background-color:#F7F7DE;border-color:#CCCC99; border-bottom-style:solid; border-width:1px; font-size: x-large">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CustomerID" DataSourceID="ObjectDataSource1" DefaultMode="Insert" Height="100px" Width="500px" BackColor="#CCFFFF" Font-Size="X-Large">
            <Fields>
                <asp:TemplateField HeaderText="Customer Login Name" SortExpression="CustomerLoginName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CustomerLoginName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CustomerLoginName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" Login Name Required" ControlToValidate="TextBox5" Display="dynamic"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("CustomerLoginName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Customer Password" SortExpression="CustomerPassword">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CustomerPassword") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CustomerPassword") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBox3" Display="dynamic"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CustomerPassword") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Customer Name" SortExpression="CustomerName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CustomerName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CustomerName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name Required" ControlToValidate="TextBox1" Display="dynamic"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("CustomerName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Customer Email" SortExpression="CustomerEmail">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CustomerEmail") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CustomerEmail") %>'></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ControlToValidate="TextBox4" Display="dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not a valid email." ControlToValidate="TextBox4" Display="dynamic" ValidationExpression="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"></asp:RegularExpressionValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("CustomerEmail") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Customer TypeID" SortExpression="CustomerTypeID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CustomerTypeID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CustomerTypeID") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Customer Type ID is required." ControlToValidate="TextBox2" Display="dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Customer Type ID must 1 and 2." MaximumValue="2" MinimumValue="1" Type="Integer" ControlToValidate="textbox2" Display="Dynamic"></asp:RangeValidator>

                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CustomerTypeID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

            <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Team103DBTableAdapters.ASP_CustomerTableAdapter">
                <InsertParameters>
                    <asp:Parameter Name="CustomerName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="CustomerTypeID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="CustomerPassword" Type="String"></asp:Parameter>
                    <asp:Parameter Name="CustomerEmail" Type="String"></asp:Parameter>
                    <asp:Parameter Name="CustomerLoginName" Type="String"></asp:Parameter>
                </InsertParameters>
            </asp:ObjectDataSource>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" NavigateUrl="~/Search.aspx">Home</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>

    </form>
</body>
</html>
