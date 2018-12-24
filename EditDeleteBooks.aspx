<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditDeleteBooks.aspx.cs" Inherits="WebApplication2.EditDeleteBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
     <div>
            <asp:Label ID="Label1" runat="server" Text="Search Books by Title"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1"  runat="server" Text="Search" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Search Books by Category"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
                <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Search Books by Author"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" />
        </div>
        <br /><br /><br />
          <div>
            <asp:GridView ID="GridView1" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" OnRowDeleting="OnRowDeleting" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancellingEdit" OnRowUpdating="OnRowUpdating" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="1289px" >
                <Columns>

                    <asp:TemplateField HeaderText="Cover Picture">
                    <ItemTemplate>
                        <image src="images/<%# Eval("ISBN") %>.jpg" HeaderText="Cover page" Height="150 Width="150"></image>
                    </ItemTemplate>
                </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="BookID" SortExpression="BookID">
                        
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("BookID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="BookTitle" SortExpression="BookTitle">
                        
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("BookTitle") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Author" SortExpression="Author">
                        
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                        
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category" SortExpression="Category">
                        
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                        
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price" SortExpression="Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    
                 
                    
                </Columns>

                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />

            </asp:GridView>

        </div>
</asp:Content>
