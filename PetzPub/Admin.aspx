<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PetzPub.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" class="control-label" runat="server" Text="Add a product:"></asp:Label>
        <br />
        <asp:Label ID="Label2" class="control-label" runat="server" Text="Product Name: "></asp:Label>
        <asp:TextBox ID="TextBoxProductName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" class="control-label" runat="server" Text="Price: $"></asp:Label>
        <asp:TextBox ID="TextBoxPrice" runat="server" TextMode="Number"></asp:TextBox>
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
        <asp:Label ID="Label7" runat="server" Text="Image URL: "></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Label ID="LabelOutput" runat="server" Text=""></asp:Label>
        <asp:Image ID="ImageOutput" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
</asp:Content>
