<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="recipe7._0.list" %>



<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <script src="https://kit.fontawesome.com/8a1c7f9a6d.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jost&family=Playfair:wght@300&display=swap" rel="stylesheet">
        <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    
        <link rel="stylesheet" href="home1.css">
    </head>
    <body>
        <div class="navbar">
            <img src="logo.png" height="70px">
            
            <div class="navlinks">
                <a href="home.html" class="link">Home</a>
                <a href="about.html" class="link">About</a>
                <a href="list.aspx" class="link"><u>List</u></a>
                <a href="contact.aspx" class="link">Contact</a>
                <a href="login.aspx" class="link">Logout</a>
            </div>
            
        </div>
        
        <div class="listcontain"> 
            <h1>Shopping List <%Response.Write("for "+Session["user"]); %></h1>   
            <div >
                <form id="form2" class="listform" runat="server">
                    <div class="listitem">
                        <asp:TextBox ID="name" runat="server" placeholder="Ingredient Name"></asp:TextBox><br />
                        <asp:TextBox ID="quantity" runat="server" Placeholder="Quantity"></asp:TextBox><br />
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" runat="server" Text="Delete All" OnClick="Button4_Click" />
                        <h3>Or Print ingredients of the recipe you want to try!</h3>
                       
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White" CssClass=".listitem input" ForeColor="Red" Height="50px" Width="323px" >
                            <asp:ListItem>Chicken Fry</asp:ListItem>
                            <asp:ListItem>French Fry</asp:ListItem>
                            <asp:ListItem>Begun Vaja</asp:ListItem>
                        </asp:DropDownList><br/>
                    <asp:Button ID="add1" runat="server" Text="Add" OnClick="add1_Click" />
                    </div>
                    <div class="listitem">
                      <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" GridLines="Horizontal"  Width="458px">
                        <AlternatingRowStyle BackColor="Silver" />
                        <HeaderStyle BackColor="Silver" ForeColor="Black" />
                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                    </asp:GridView> <br />
                        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="White" GridLines="Horizontal"  Width="458px">
                        <AlternatingRowStyle BackColor="Silver" />
                        <HeaderStyle BackColor="Silver" ForeColor="Black" />
                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                    </asp:GridView>
                        <button onclick="window.print()" >Print</button>
                    </div>
                    
                </form>
                
            </div>
        </div>
         <div class="footer">
            <p>©2023 <span style="color:#951a1d">MyRecipes</span>  by <span style="color:#f15b2b">Lamia 1909020</span></p>
        </div>
    </body>
</html>