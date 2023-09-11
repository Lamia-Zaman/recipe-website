using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace recipe7._0
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con= new SqlConnection("Data Source=lamia-tia\\sqlexpress;Initial Catalog=recipelogin;Integrated Security=True");
            SqlCommand comm = new SqlCommand("insert into login values('"+username.Text+ "','"+email.Text+ "','"+pass.Text+"')", con);
            con.Open();
            comm.ExecuteNonQuery();
            con.Close();
            Session["user"]=username.Text; 

            Response.Redirect("login.aspx");
        }
    }
}