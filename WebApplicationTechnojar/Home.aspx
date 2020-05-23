<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplicationTechnojar.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Technojar | Home</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>

    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Pricing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br />
        <br />
        <br />
        <%--<div class="row" style="margin:0">--%>
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
        
            <nav class="navbar navbar-inverse">
                <ul class="nav navbar-nav">
                    <li><a>&copy;Tecnhojar.com</a></li>
                    
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a>Developed by: Gaurav Paul</a></li>                    
                </ul>
            </nav>
        
    </form>
    
</body>
</html>
