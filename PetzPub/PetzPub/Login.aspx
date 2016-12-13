<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PetzPub.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-lg-6" >  <div class="jumbotron" style="background-color:black"><h1 style="color:white"><b>Login</b></h1> </div> </div>
            <div class="col-md-2"></div>
                
                
        </div>
    </div>
<asp:Login ID="Login1" runat="server" OnAuthenticate= "ValidateUser"></asp:Login>

</asp:Content>
