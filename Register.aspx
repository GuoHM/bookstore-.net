<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
           <h1>Sign Up</h1>
        
        <p>
            Email</p>
        <p>
            <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please input a correct email address" ValidationExpression="\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}"></asp:RegularExpressionValidator>
        </p>
        <p>
            Password</p>
        <p>
            <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="A minimum 6 characters password contains a combination of uppercase and lowercase letter and number are required." ValidationExpression="^(?!([a-zA-Z]+|\d+)$)[a-zA-Z\d]{6,20}$"></asp:RegularExpressionValidator>
        </p>
        <p>
            Re-Enter passwod</p>
        <p>
            <asp:TextBox ID="TextBoxReEnter" TextMode="Password" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxReEnter" ErrorMessage="please re-enter the same password"></asp:CompareValidator>
        </p>
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
        </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
     </p>
    
    </div>
</asp:Content>
