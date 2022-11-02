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
    public partial class billpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\HungryDB.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void Coupon_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select cartvalue from orders  where Id = '" + orderid.Value + "' ";
            SqlDataReader dr = cmd.ExecuteReader();

            int oldprice = 0;
            while (dr.Read())
            {
                oldprice = dr.GetInt32(0);
            }
            dr.Close();

            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select discountvalue from coupontable where cid = '" + coupon.Value + "' ";
            SqlDataReader dr2 = cmd2.ExecuteReader();

            int discount = 0;
            while (dr2.Read())
            {
                discount = dr2.GetInt32(0);
            }

            P11.InnerHtml = "Item Total  :    ₹" + oldprice;
            P22.InnerHtml = "Delivery Fee:    ₹" + 30;
            P33.InnerHtml = "Discount    :    ₹" + discount;
            P44.InnerHtml = "To Pay      :    ₹" + (oldprice + 30 - discount);
            P11.Visible = true;
            P22.Visible = true;
            P33.Visible = true;
            P44.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.paytm.com");
        }

        
    }
}