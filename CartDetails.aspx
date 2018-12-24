<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CartDetails.aspx.cs" Inherits="WebApplication2.CartDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .msgStyle
        {
           color:red;
           font-family:Algerian;
        }
        .headermsg{
            color:black;
            font-size:medium;
            text-align:center;
        }
    </style>
     <div>
       <br />
          <br />
          <br />
         <asp:Label ID="lbl" runat="server" CssClass="headermsg" Text="Cart Summary"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="OnRowEditing" OnRowUpdating="OnRowUpdating" DataKeyNames="BookID" OnRowCancelingEdit="OnRowCancelingEdit" OnRowDeleting="OnRowDeleting" OnRowDataBound="GridView1_RowDataBound" >
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <image src="images/<%# Eval("ISBN") %>.jpg" width="90" height="120"></image>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="BookID" SortExpression="BookID">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("BookID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BookTitle" SortExpression="BookTitle">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("BookTitle") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                    
                    <ItemTemplate>
                        <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserID" SortExpression="UserID" Visible="False">
                    
                    <ItemTemplate>
                        <asp:Label ID="lbluserID" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
         <asp:Label ID="lblMsg" runat="server" Text="Label" CssClass="msgStyle" Visible="false"></asp:Label>
        <br />
         <asp:TextBox ID="txtTotal" runat="server" ReadOnly="True" ></asp:TextBox>
         <asp:Label ID="lblTtotal" runat="server" Text="Total Price"></asp:Label> <br />
         <asp:Button ID="btnCheckout" runat="server" Text="Proceed Checkout" OnClick="btnCheckout_Click" />
          </div>
</asp:Content>
