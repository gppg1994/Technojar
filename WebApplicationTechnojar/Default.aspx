<%@ Page Title="" Language="C#" MasterPageFile="~/Technojar.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationTechnojar.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Technojar | Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-md-8 offset-md-2">
            <asp:ListView ID="ListView1" runat="server" GroupItemCount="4" DataSourceID="SqlDataSource1">
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <div class="row" style="margin: 0">
                        <div class="card text-center" style="width: 150px; margin: 20px;">
                            <img src="<%# Eval("OfferImage") %>" class="card-img-top" height="100" width="60" />
                            <div class="card-body">
                                <a>
                                    <asp:Button ID="Button1" runat="server" Text="Avail Offer" class="btn btn-primary btn-sm" /></a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <%--<table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>

                        </tr>
                    </table>--%>
                    <div class="row" style="margin: 0" id="groupPlaceholderContainer" runat="server">
                        <div id="groupPlaceholder" runat="server"></div>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tblOffers]"></asp:SqlDataSource>
        </div>
</asp:Content>
