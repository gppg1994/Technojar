<%@ Page Title="" Language="C#" MasterPageFile="~/Technojar.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplicationTechnojar.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="offset-md-4">

        <asp:TextBox ID="txtVendorName" runat="server" placeholder="Vendor" CssClass="form-group" Width="300"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtOfferTitle" runat="server" placeholder="Offer Title" CssClass="form-group" Width="300"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtOfferDetails" runat="server" placeholder="Offer Details" TextMode="MultiLine" CssClass="form-group" Height="100" Width="300" Rows="5" Columns="50"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtOfferLink" runat="server" placeholder="Offer Link" CssClass="form-group" Width="300"></asp:TextBox>
        <br />
        <asp:FileUpload ID="picUpload" runat="server" placeholder="Upload a sample picture" CssClass="form-group"/>
        <br />
        <asp:Button ID="btnAddToTable" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btnAddToTable_Click" />
    </div>
</asp:Content>
