<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="PetzPub.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table ID="TableProducts" runat="server" BorderStyle="Solid" CssClass="table-responsive" GridLines="Both" HorizontalAlign="Center" Width="1000px"></asp:Table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [product_name], [price], [category], [imageUrl] FROM [Products]"></asp:SqlDataSource>
</asp:Content>
