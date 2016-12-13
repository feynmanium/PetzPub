<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="PetzPub.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-lg-8" >  <div class="jumbotron" style="background-color:black"><h1 style="color:white"><b>Free shipping on orders above $50</b></h1> </div> </div>
            <div class="col-md-2"></div>
                
                
        </div>
    </div>
    <h2 id="productName" runat="server"></h2>
    <asp:Image ID="Image1" runat="server" Height="300px" Width="250px" />
    <h3 id="price" runat="server"></h3>
    <hr />
    <p runat="server" id="description"></p>
    <asp:Button ID="ButtonAdd" runat="server" Text="Add To Cart" />
</asp:Content>
