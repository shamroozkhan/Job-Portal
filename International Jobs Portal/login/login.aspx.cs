using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace International_Jobs_Portal.login
{
    public partial class login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        SqlCommand com;

        SqlDataAdapter sqlda;

        string str;

        DataTable dt;

        int RowCount;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string UserName = TextBox1.Text.Trim();

            string Password = TextBox2.Text.Trim();

            SqlConnection con = new SqlConnection(cs);

            con.Open();

            str = "Select * from Users";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);

            dt = new DataTable();

            sqlda.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)

            {

                UserName = dt.Rows[i]["email"].ToString();

                Password = dt.Rows[i]["pasword"].ToString();

                if (UserName == TextBox1.Text && Password == TextBox2.Text)

                {

                    Session["email"] = UserName;

                    Response.Redirect("userinfo.aspx");

                }

                else

                {

                    //lb1.Text = "Invalid User Name or Password! Please try again!";

                }
            }
                //    SqlConnection con = new SqlConnection(cs);
                //    con.Open();
                //    SqlCommand sqlcmd = new SqlCommand("Select COUNT(1) from user_Info where email=@email AND pasword=@pasword", con);
                //    sqlcmd.Parameters.AddWithValue("@email", TextBox1.Text.Trim());
                //    sqlcmd.Parameters.AddWithValue("@pasword", TextBox2.Text.Trim());


                //    int count = Convert.ToInt32(sqlcmd.ExecuteScalar());

                //    if (count == 1)
                //    {
                //        Session["email"] = TextBox1.Text.Trim();
                //        //Response.Redirect("userinfo.aspx");
                //        Response.Redirect("user_Info.aspx?ID=" + TextBox1.Text);
                //    }
        }
    }
}