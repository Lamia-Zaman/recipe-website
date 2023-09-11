<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="recipe7._0.contact" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jost&family=Playfair:wght@300&display=swap" rel="stylesheet">
        <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <script src="https://kit.fontawesome.com/8a1c7f9a6d.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="home1.css">
</head>
<body>
    <div class="navbar">
        <div class="navlogo">
            <img src="logo.png" height="70px">
        </div>
        <div class="navcenter"></div>
        <div class="navlinks" id="menu">
            <a href="home.html" class="link">Home</a>
            <a href="about.html" class="link">About</a>
            <a href="list.aspx" class="link">List</a>
            <a href="contact.aspx" class="link"><u>Contact</u></a>
            <a href="login.aspx" class="link">Logout</a>
        </div>
        <div class="mobile-menu" onclick="foldMenu();">
            <i class="fa fa-solid fa-bars"></i>
        </div>
    </div>
    <div class="contactcontainer">
        
        <div class="txt">
            <h1>Questions? Comments? I would love to hear from you!</h1>

You can contact me via email at: <i>lamia@gmail.com</i><br><br>

If you have a question about a specific recipe, please take a look at the comments on that post to see if your question has already been answered by me or another commenter.

If the question has not been asked before, please ask your question as a comment so others can benefit from the question and answer. I see all the comments that come through and will answer as soon as I can!<br><br>

If you are interested in discussing ways to collaborate, I would love to discuss! 
Just shoot me an email.
Connect with me on <br><br>
<div class="contacticon">
    <a href=""><i class="fa-brands fa-facebook"></i></a>
    <a href=""><i class="fa-brands fa-instagram"></i></a> 
    <a href=""><i class="fa-brands fa-pinterest"></i></a> 
    <a href=""><i class="fa-regular fa-envelope"></i></a> 
</div>

        </div>
        <div class="img">
            <img src="about.jpeg">
        </div>
    </div>
    
<div class="qa">
    <h1>Here are a few FAQs, maybe your question is already answered!</h1>
    <h3>Can I contribute an article or recipe?</h3>
    Thanks, I am flattered you would want to contribute but at this time, the only content published is what I create myself.<br><br>
    
<h3>Can I use your photos and/or recipe on my blog?</h3>
I kindly ask that you do not publish the recipes on your personal page, but if you want, you are welcome to use one photo along with a clear link back to the recipe on myrecipes.com
<br><br>
<h3>Can I buy ad space on Running to the Kitchen?</h3>
I currently work with an ad network that provides all the ads on this site and I am not interested in pursuing any others at this time.<br><br>

<h3>What camera do you use?</h3>
As of November 2020, I shoot with a Canon 6D. I rotate between Canon 100mm f/2.8, Canon 50mm f/1.8 and a Tamron 28-75mm f/2.8 lenses. You can see more about my photography and blogging gear on my facebook page.
<br><br><h1>Comment Section</h1>
    
<form class="listitem" runat="server" >
    

    <asp:TextBox ID="TextBox1" runat="server" Height="86px"  Width="424px" Placeholder="Write A Comment" TextMode="MultiLine" CssClass="comment"></asp:TextBox><br />
    

    <asp:Button ID="Button1" runat="server" Text="Comment" OnClick="Button1_Click"/>
    
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            
           <h3>
                 
           <i style="margin-right:20px"><%Response.Write(Session["user"]); %></i> 
               <asp:Label runat="server" Text='<%#Eval("date") %>'></asp:Label>
            <br />
           </h3>
            <div runat="server" innerText='<%#Eval("comment") %>'></div>
            <hr />
        </ItemTemplate>
    </asp:Repeater>


</form>
</div>
    <div class="footer">
        <p>©2023 <span style="color:#951a1d">MyRecipes</span>  by <span style="color:#f15b2b">Lamia 1909020</span></p>
    </div>
    <script>
        function foldMenu(){
            let menu = document.getElementById('menu');
                menu.classList.toggle('active');
        }
    </script>
</body>
</html>