<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PetzPub.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>     
        <a href="ProductEditor.aspx">Edit Existing Products-></a>
        <h2>Add a product:</h2>
        <br />
        <br />
        <asp:Label ID="Label2" class="control-label" runat="server" Text="Product Name: "></asp:Label>
        <asp:TextBox ID="TextBoxProductName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBoxProductName"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" class="control-label" runat="server" Text="Price: $"></asp:Label>
        <asp:TextBox ID="TextBoxPrice" runat="server" TextMode="Number" step=".01"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBoxPrice"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Product Description: "></asp:Label>
        <asp:TextBox ID="TextBoxDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBoxDescription"></asp:RequiredFieldValidator>
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
        <asp:Image ID="ImageOutput" runat="server" Height="150px" Width="100px" />
        <asp:Label ID="LabelOutput" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        <br />
    </div>

</asp:Content>
