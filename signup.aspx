<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="recipe7._0.signup" %>



<!DOCTYPE html>
<html>
    <head>
        <title>SignUp Page</title>
        <script src="https://kit.fontawesome.com/8a1c7f9a6d.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="main.css">
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
    </head>
    <body class="index">
        <p class="line">Learn, Cook, Share....</p>
        <div class="box">
            <div class="title">Sign Up To Explore Recipes!</div>
            <form id="SIGNUP"  runat="server" >
                <i class="fa-solid fa-user icon"></i>
                <asp:TextBox ID="username" runat="server" required="" placeholder="UserName"></asp:TextBox>
                <br>
                <i class="fa-solid fa-at icon"></i>
                <asp:TextBox ID="email" runat="server" required="" placeholder="Email"></asp:TextBox>
                <br>
                <i class="fa-solid fa-lock icon"></i>
                <asp:TextBox ID="pass" textmode="Password" runat="server" required="" placeholder="Password"></asp:TextBox>
                <br>
             
              

                <asp:Button ID="Button2" runat="server" Text="Sign Up" class="btn" OnClick="Button2_Click" />
            </form>
            <p style="color:white">a member? <a href="login.aspx" >Log In</a>
            </p>
        </div>
    </body>
</html>