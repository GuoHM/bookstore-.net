<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="BookID" SortExpression="BookID" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />           
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopBooks %>" SelectCommand="SELECT * FROM [CartDetails]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Total cost"></asp:Label>

        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Button" />
</asp:Content>
