<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default panel-default1">
                <div class="panel-heading">
                    <h3 style="text-align: center">login</h3>
                </div>
                <hr>
                <s:actionerror />
                <s:actionmessage />
                <div class="panel-body">
                    <div class="form-horizontal" role="form">
                        <div class="form-group">

                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <input class="form-control form-control1 form-control2" placeholder="Userid"
                                    id="txtUserID" name="userid" value="" required="required" runat="server">
                                <div class="help-block with-errors"></div>

                            </div>
                            <div class="col-md-1"></div>
                        </div>

                        <div class="form-group">
                            <!--label class="col-md-4 control-label">密码</label-->
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <input type="password" class="form-control form-control1 form-control2" placeholder="Password"
                                    id="txtPassword" name="password" required="required" runat="server">
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="col-md-1"></div>
                        </div>

                       <div class="form-group">
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                             <asp:Label ID="txtErrorMessage" runat="server"></asp:Label>
                            </div>
                            <div class="col-md-1"></div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <label class="checkbox-inline">
                                    <asp:Button type="submit" Text="Login" class="btn btn-primary btn-block btn-btn1" ID="btnLogin" runat="server" OnClick="btnLogin_Click" />
                                </label>

                                <label class="checkbox-inline">
                                    <input type="reset" value="Reset" class="btn btn-primary btn-block btn-btn1">
                                </label>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
