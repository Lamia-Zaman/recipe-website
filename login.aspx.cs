using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace recipe7._0
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=lamia-tia\\sqlexpress;Initial Catalog=recipelogin;Integrated Security=True");
            string check = "select count(*) from login where email= '" + email.Text + "' and password='" + pass.Text + "'";
            SqlCommand comm = new SqlCommand(check, con);
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            con.Open();
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Label1.Text ="";
                Response.Redirect("home.html");
            }
            else
            {
                Label1.Text = "Your Email Id or Password is Incorrect!!";
            }
            
        }
    }
}