using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace International_Jobs_Portal.admin
{
    public partial class adminlogin : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand sqlcmd = new SqlCommand("Select COUNT(1) from Admin where Name=@Name AND Password=@Password", con);
            sqlcmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());


            int count = Convert.ToInt32(sqlcmd.ExecuteScalar());

            if (count == 1)
            {
                Session["Name"] = TextBox1.Text.Trim();
                Response.Redirect("adminpage.aspx");
            }
            else
            {
                lblErrormessage.Visible = true;
            }

        }
    }
}