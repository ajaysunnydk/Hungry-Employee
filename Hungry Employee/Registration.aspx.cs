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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\HungryDB.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }


        protected void login_Click(object sender, EventArgs e)
        {
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "select username from regDetails where username= '" + username.Value + "' ";
            //cmd.ExecuteNonQuery();
            //SqlDataReader rdr = cmd.ExecuteReader();

            //DataTable dt = new DataTable();
            //dt.Load(rdr);
            //int numRows = dt.Rows.Count;
            //if (numRows==1)
            //{
            //    
            //}
            int count1 = 0;
            try
            {
                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "insert into RegDetails(name,phonenum,username,password) values ('" + name.Value + "','" + phone.Value + "','" + username.Value + "','" + password.Value + "')";
                count1 = cmd2.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Username Alreay Exists');", true);
                hiddenp.Visible = true;
            }
            if (password.Value != cnfpassword.Value)
            {
                //Response.Write("<script>alert('Password Mismatched!');</script>");
                //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Password Mismatched!');", true);
                hiddenp.InnerText = "Password Not Matched";
                hiddenp.Visible = true;
            }
            if(count1>0)
            {
                Response.Redirect("WebForm1.aspx");
            }
            
        }
    }
}