using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Hungry_Employee
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\HungryDB.mdf;Integrated Security = True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            //disp_data();
        }

        protected void login_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into login values('" + username.Value + "','" + password.Value + "')";
            cmd.CommandText = "select * from RegDetails where username= '"+username.Value+"' and password= '"+password.Value+"' ";
            cmd.ExecuteNonQuery();

            SqlDataReader rdr = cmd.ExecuteReader();
            

            DataTable dt = new DataTable();
            dt.Load(rdr);
            int numRows = dt.Rows.Count;
            if (numRows == 1)
            {

            }
                //Response.Redirect("https://www.google.com");
            else
                Response.Redirect("https://www.FACEBOOK.com");
            //DataTable dt = new DataTable();
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

        }
    }
}