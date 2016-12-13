<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PetzPub.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Style/StyleSheet.css" rel="stylesheet" />
    
        
    

    <div class="container-fluid">
  <div class="jumbotron" style="background-color:black"><h1 style="color:white">Happy holidays from all of us at PetzPub!</h1> </div>
 
  <div class="row">
   
  </div>
</div>




        <div class="container-fluid">
        <div class="row">
            <div class="col-lg-5">    <video autoplay="" loop="" preload="auto" poster="//s7d2.scene7.com/is/image/PetSmart/HP0101_HERO_FULL-GiftGuideDog-20161031?$HP0101$" class="_HP_hero__video vsc-initialized" data-vscid="czapeybpq">
      <source src="http://s7d2.scene7.com/is/content/PetSmart/Video/HomePage/HP0101_FEAT_VIDEO-GiftGuideDog-20161031_Flash9_Autox720_807K.mp4" type="video/mp4">
        
            <img src="http://s7d2.scene7.com/is/image/PetSmart/HP0101_HERO_FULL-GiftGuideDog-20161031?$HP0101$" alt="">
        
    </video></div>
            <div class="col-lg-2"></div>
            <div class="col-lg-5"><div class="jumbotron" style="background-color:dimgrey"><h1 style="color:white">Everything You Need Under One Woof.</h1> </div></div>
        </div>
    </div>


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-lg-8" >  <div class="jumbotron" style="background-color:black; text-align:center" ><b><h1 style="color:white">Featured products:</h1></b> </div>
            <div class="col-md-2"></div>
                
                
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton1" height="400px" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton2" height="400px" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton3" height="400px" runat="server" /></div>
    </div>
        <div class="row">
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton4" height="400px" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton5" height="400px" runat ="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton6" height="400px" runat="server" /></div>
    </div>   
    <div class="row">
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton7" height="400px" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton8" height="400px" runat="server" /></div>
        <div class="col-md-4">
            <asp:ImageButton ID="ImageButton9" height="400px" runat="server" /></div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [imageUrl], [Id] FROM [Products]"></asp:SqlDataSource>

    </div>
</asp:Content>
