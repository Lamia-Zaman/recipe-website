using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace recipe7._0
{
    public partial class list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
        }
        SqlConnection con = new SqlConnection("Data Source=LAMIA-TIA\\SQLEXPRESS;Initial Catalog=\"shopping list\";Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("Insert into listtable values('" + name.Text + "', '" + quantity.Text + "')", con);
            con.Open();
            comm.ExecuteNonQuery();
            con.Close();
            load();
        }
        void load()
        {
            SqlCommand comm = new SqlCommand("select * from listtable", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete from listtable", con);

            comm.ExecuteNonQuery();
            con.Close();
          
            load();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete from listtable where [Ingredient Name]='" + name.Text + "' ", con);

            comm.ExecuteNonQuery();
            con.Close();
            load();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update listtable set Quantity= '" + quantity.Text + "' where [Ingredient Name]='" + name.Text + "' ", con);

            comm.ExecuteNonQuery();
            con.Close();
            load();
        }

        protected void add1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAMIA-TIA\\SQLEXPRESS;Initial Catalog=recipe;Integrated Security=True");
            SqlCommand comm;
            if (DropDownList1.SelectedValue == "Chicken Fry")
            {
                 comm = new SqlCommand("select * from chickenfry ", conn);
                SqlDataAdapter dd = new SqlDataAdapter(comm);
                DataTable ddt = new DataTable();
                dd.Fill(ddt);
                GridView2.DataSource = ddt;

            }

            else if (DropDownList1.SelectedValue == "French Fry")
            {
                comm = new SqlCommand("select * from frenchfry ", conn);
                SqlDataAdapter dd = new SqlDataAdapter(comm);
                DataTable ddt = new DataTable();
                dd.Fill(ddt);
                GridView2.DataSource = ddt;
            }
            
            GridView2.DataBind();
        }


    }
}