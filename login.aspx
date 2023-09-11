<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="recipe7._0.login" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <script src="https://kit.fontawesome.com/8a1c7f9a6d.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="main.css">
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
    </head>
    <body class="index">
        <p class="line">Learn, Cook, Share....</p>
        <div class="box">
            <form id="login" runat="server">
            <div class="title">Log In To Explore Recipes!</div>
                <i class="fa-solid fa-at icon"></i>
                <asp:TextBox ID="email" runat="server" required="" placeholder="Email"></asp:TextBox>
                <br>
                <i class="fa-solid fa-lock icon"></i>
                <asp:TextBox ID="pass" textmode="Password" runat="server" required="" placeholder="Password"></asp:TextBox>
                <br>
             <%--   <asp:CheckBox ID="chk" text="Remember me" CssClass="remember"  runat="server" checked />
              
                <label for="Forgot" ><a href="">Forgot password?</a></label>--%>
                <asp:Button ID="Button1" runat="server" Text="Log In" class="btn" OnClick="Button1_Click" /><br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </form>
            <p style="color:white">not a member? <a href="signup.aspx">Sign Up</a>
            </p>
        </div>
    </body>
</html>