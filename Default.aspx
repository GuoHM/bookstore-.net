<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/bootstrap-table.js"></script>
    
    <script src="Scripts/initTable.js"></script>
    <div class="row clearfix">
        <div class="panel-body">
            <div class="panel panel-default">
                <div class="panel-heading">Searching</div>
                <div class="panel-body">
                    <form class="form-inline" role="form">
                        <div class="form-group">
                            <asp:TextBox ID="txtSearch" runat="server" placeholder="Searh the books by keywords/author" Width="37%" class="form"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="btnSearch_Click" class="btn btn-default" />
                        </div>
                    </form>                           
                </div>
            </div>
            <div>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table width="100%" id="tbResult">
                            <tr>
                                <th>Image </th>

                                <th>Book Title </th>
                                <th>Author </th>
                                <th>ISBN </th>
                                <th>Category </th>
                                <th>Quantity </th>
                                <th>Price </th>
                                <th>Publisher </th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <image src="images/<%# Eval("ISBN") %>.jpg" width="90" height="120"></image>
                            </td>

                            <td>
                                <%#Eval("BookTitle")%> </td>
                            <td>
                                <%#Eval("Author")%> </td>
                            <td>
                                <%#Eval("ISBN")%></td>
                            <td>
                                <%#Eval("Category")%> </td>
                            <td>
                                <%#Eval("Quantity")%> </td>
                            <td>
                                <%#Math.Round(Convert.ToDouble(Eval("Price")),2)%> $ </td>
                            <td>
                                <button type="button" id="btnAddToCart" class="btn btn-primary" OnClick="location.href='CartDetails.aspx?bookid=<%#Eval("bookid")%>'">
                                    <span class="glyphicon glyphicon-ok"></span>Add to Cart
                                </button>
                            </td>
                        </tr>

                    </ItemTemplate>

                </asp:Repeater>

                <br />

            </div>
        </div>
    </div>
</asp:Content>
