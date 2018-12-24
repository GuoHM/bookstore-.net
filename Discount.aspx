<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Discount.aspx.cs" Inherits="WebApplication2.Discount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
     <div>
            <asp:Label ID="Label1" runat="server" Text="BookID"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
             <asp:Label ID="Label2" runat="server" Text="Start Date"></asp:Label>
            
            <br />

            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Date Format: YYYY/MM/DD"></asp:Label>
            <br />
             <asp:Label ID="Label3" runat="server" Text="End Date"></asp:Label>
            
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Date Format: YYYY/MM/DD"></asp:Label>
            <br />
             <asp:Label ID="Label4" runat="server" Text="Discount"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br />
            
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

        </div>
</asp:Content>
