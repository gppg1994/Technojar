<%@ Page Title="" Language="C#" MasterPageFile="~/Technojar.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="WebApplicationTechnojar.admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Login | Technojar</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Login as Administrator</h1>
    <div class="col-md-8 offset-md-4">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Width="300px" placeholder="Username"></asp:TextBox>
        <br />
        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Width="300px" placeholder="Password" type="password"></asp:TextBox>
        <br />
        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Login"/>
    </div>
</asp:Content>
