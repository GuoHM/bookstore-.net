<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBooksAdmin.aspx.cs" Inherits="WebApplication2.AddBooksAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 324px;
        }
        .auto-style2 {
            height: 26px;
            text-align: left;
        }
        .auto-style3 {
            font-size: large;
            text-align: center;
        }
        .auto-style4 {
            width: 189px;
            height: 38px;
        }
        .auto-style5 {
            height: 26px;
            width: 189px;
            text-align: right;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 189px;
            text-align: right;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            text-align: center;
            height: 38px;
        }
    </style>
       <div class="auto-style3">
            <strong>Add Books</strong></div>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style7">Book Title:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtBookTitle" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a book title" ControlToValidate="txtBookTitle" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Author:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtAuthor" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Author" ControlToValidate="txtAuthor" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">ISBN:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtISBN" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter ISBN number" ControlToValidate="txtISBN" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Category:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownCategory" runat="server" Width="200px">
                        <asp:ListItem>finance</asp:ListItem>
                        <asp:ListItem>non-fiction</asp:ListItem>
                        <asp:ListItem>children</asp:ListItem>
                        <asp:ListItem>technical</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Quantity:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtQuantity" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter quantity" ControlToValidate="txtQuantity" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Price:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPrice" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter a price" ControlToValidate="txtPrice" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Publisher:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPublisher" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="BtnUpload" runat="server" OnClick="BtnUpload_Click" Text="Upload Image" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="lblUpdateStatus" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="BtnAddBook" runat="server" OnClick="Button1_Click" Text="Add book" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p class="auto-style6">
            <asp:Label ID="Label1" runat="server" ForeColor="#66FF33" Visible="False"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopBooks %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    
</asp:Content>
