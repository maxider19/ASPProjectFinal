<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Search Page</title>
</head>

<body style="width: 1148px; margin:0 auto; background-color: burlywood" >
            
    <div>
    <img src="LOGO.png" style="width: 1000px; height:200px" />
        
        </div>

                <form id="form1" runat="server">
                <div>
             <a href="http://www.business.colostate.edu/CIS665/SP17Ma.mahf1/Project/Homepage.aspx">Home</a> &nbsp;&nbsp;   
             <a href="CustomerCart.aspx">View Cart</a> &nbsp;&nbsp;      
            <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="Customer Login" />
        
    </div>

    <div style="margin-top:5px; margin-left:100px">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="Welcome"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Search Goods" Font-Size="XX-Large" ForeColor="#0066FF"></asp:Label>
            <br />
            <br />
        <asp:Label ID="Label2" runat="server" Text="Goods Name: " Font-Size="Large"></asp:Label>&nbsp;&nbsp;            
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox>
            &nbsp;
            &nbsp;
            <asp:Label ID="Label3" runat="server" Text="Low Price:" Font-Size="Large"></asp:Label>&nbsp;&nbsp;         
            <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large"></asp:TextBox>
            &nbsp;
            &nbsp;
            <asp:Label ID="Label4" runat="server" Text="High Price:" Font-Size="Large"></asp:Label>&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="Button1" runat="server" Text="Search" />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="GoodsID" DataSourceID="ObjectDataSource1" EnableViewState="False" Font-Size="x-Large" RepeatColumns="3" BackColor="#CCFFFF" >
            <ItemTemplate>
                <table>
            <tr>             
              <td style="width:900px; color: black">
                <b><a href='Detail.aspx?GoodsID=<%# Eval("GoodsID") %>'>
								<%#Eval("GoodsName")%>
									</a></b>
								<br />
								<i>Price: </i>
								<%#Eval("GoodsPrice", "{0:c}")%>
							<br />
						</td>
            </tr>
          </table>
                    <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByNameAndPrice" TypeName="Team103DBTableAdapters.ASP_GoodsTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" DefaultValue="%" Name="GoodsName" Type="String"></asp:ControlParameter>
                <asp:ControlParameter ControlID="TextBox2" PropertyName="Text" DefaultValue="0" Name="LowPrice" Type="Decimal"></asp:ControlParameter>
                <asp:ControlParameter ControlID="TextBox3" PropertyName="Text" DefaultValue="500" Name="HighPrice" Type="Decimal"></asp:ControlParameter>
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
