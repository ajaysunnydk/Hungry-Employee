//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;

//namespace Hungry_Employee
//{
//   public partial class WebForm1 : System.Web.UI.Page
//    {
//        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (con.State == ConnectionState.Open)
//                con.Close();
//            con.Open();
//            disp_data();
//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            SqlCommand cmd = con.CreateCommand();
//            cmd.CommandType = CommandType.Text;
//            cmd.CommandText = "insert into login values('"+name.Text+"','"+uname.Text+"','"+pass.Text+"')";
//            cmd.ExecuteNonQuery();

//            name.Text = "";
//            uname.Text = "";
//            pass.Text = "";

//            disp_data();
//        }

//        public void disp_data()
//        {
//            SqlCommand cmd = con.CreateCommand();
//            cmd.CommandType = CommandType.Text;
//            cmd.CommandText = "select * from login";
//            cmd.ExecuteNonQuery();

//            DataTable dt = new DataTable();
//            SqlDataAdapter da = new SqlDataAdapter(cmd);
//            da.Fill(dt);
//            GridView1.DataSource = dt;
//            GridView1.DataBind();

//        }
//}