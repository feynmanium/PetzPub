﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ProductEditor.aspx.cs" Inherits="PetzPub.ProductEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Current Products:</h2>
    <br />
    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="product_name" DataValueField="Id" Height="84px" Width="330px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
    <asp:Button ID="ButtonRemove" runat="server" Text="Remove" OnClick="ButtonRemove_Click" />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <br />
    <h2>Edit Product:</h2>

        <asp:Label ID="Label2" class="control-label" runat="server" Text="Product Name: "></asp:Label>
        <asp:TextBox ID="TextBoxProductName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" class="control-label" runat="server" Text="Price: $"></asp:Label>
        <asp:TextBox ID="TextBoxPrice" runat="server" TextMode="Number" step=".01"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Product Description: "></asp:Label>
        <asp:TextBox ID="TextBoxDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Animal: "></asp:Label>
        <asp:DropDownList ID="DropDownListAnimal" runat="server">
            <asp:ListItem>Dog</asp:ListItem>
            <asp:ListItem>Cat</asp:ListItem>
            <asp:ListItem>Bird</asp:ListItem>
            <asp:ListItem>Small Animal</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Category: "></asp:Label>
        <asp:DropDownList ID="DropDownListCategory" runat="server">
            <asp:ListItem>Food</asp:ListItem>
            <asp:ListItem>Accessory</asp:ListItem>
            <asp:ListItem>Toy</asp:ListItem>
            <asp:ListItem>Treat</asp:ListItem>
            <asp:ListItem>Apparel</asp:ListItem>
        </asp:DropDownList>
        <br />
    <asp:Button ID="ButtonUpdate" runat="server" Text="Update" OnClick="ButtonUpdate_Click" />
</asp:Content>
