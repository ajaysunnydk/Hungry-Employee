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
    public partial class home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\HungryDB.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into orders(cartvalue) values ('" + hidd.Value + "')";
            cmd.ExecuteNonQuery();

            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select Id from orders where cartvalue ='" + hidd.Value + "' ";

            SqlDataReader dr = cmd2.ExecuteReader();
            int disporder = 0;
            while (dr.Read())
            {
                disporder = dr.GetInt32(0);
            }


            hiddenid.InnerHtml = "Your Order Id is: " + disporder;
            hiddenid.Visible = true;
            //Response.Write(carttotal.InnerHtml);

        }

        protected void Checkout_btn(object sender, EventArgs e)
        {
            Response.Redirect("billpage.aspx");
        }
    }
}