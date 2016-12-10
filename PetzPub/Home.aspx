<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PetzPub.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><u>Featured Products</u></h2>
    <div class="row">
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton1" height="400px" onClick="onImageClick" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton2" height="400px" onClick="onImageClick" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton3" height="400px" onClick="onImageClick" runat="server" /></div>
    </div>
        <div class="row">
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton4" height="400px" onClick="onImageClick" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton5" height="400px" onClick="onImageClick" runat ="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton6" height="400px" onClick="onImageClick" runat="server" /></div>
    </div>   
    <div class="row">
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton7" height="400px" onClick="onImageClick" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton8" height="400px" onClick="onImageClick" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton9" height="400px" onClick="onImageClick" runat="server" /></div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [imageUrl], [Id] FROM [Products]"></asp:SqlDataSource>
</asp:Content>
