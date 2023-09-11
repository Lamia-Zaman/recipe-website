using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace recipe7._0
{
    public partial class contact : System.Web.UI.Page
    {
        SqlCommand cmd=new SqlCommand();
        SqlConnection con=new SqlConnection();
        SqlDataAdapter sda= new SqlDataAdapter();   
        DataSet ds= new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            show();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        
            SqlConnection con = new SqlConnection("Data Source=lamia-tia\\sqlexpress;Initial Catalog=recipelogin;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into comment " + "(comment,date) values(@comment,@date)", con);
            cmd.Parameters.AddWithValue("@comment", TextBox1.Text);
            cmd.Parameters.AddWithValue("@date",DateTime.Now);
            cmd.ExecuteNonQuery();
            Response.Redirect(Request.Url.AbsoluteUri);
            
        }
        protected void show()
        {
            SqlConnection con = new SqlConnection("Data Source=lamia-tia\\sqlexpress;Initial Catalog=recipelogin;Integrated Security=True");
            cmd.CommandText = "select * from comment";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "comment");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }


    }
}