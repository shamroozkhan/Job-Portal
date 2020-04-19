using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace International_Jobs_Portal.profiles
{
    public partial class profiles : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //LoadImages();
            if (!IsPostBack)
            {
                FillData();
            }
        }
        protected void OpenDocument(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            GridViewRow gr = (GridViewRow)lnk.NamingContainer;
            int id = int.Parse(ListView1.DataKeys[gr.RowIndex].Value.ToString());
            Download(id);
        }
        private void Download(int id)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select userCV from tblUserInfo where Id = @Id", con);
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }
            string name = dt.Rows[0]["firstName"].ToString();
            byte[] documentBytes = (byte[])dt.Rows[0]["userCV"];
            Response.ClearContent();
            Response.ContentType = "application/octetstream";
            Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
            Response.AddHeader("Content-Length", documentBytes.Length.ToString());

            Response.BinaryWrite(documentBytes);
            Response.Flush();
            Response.Close();
        }
        private void FillData()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from Users", con);
                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }
            if (dt.Rows.Count > 0)
            {
                ListView1.DataSource = dt;
                ListView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string cnstr = "server=DESKTOP-6M2E1AB\\SQLEXPRESS; database=IJP; integrated security=SSPI";
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SearchEmployee";
                cmd.CommandType = CommandType.StoredProcedure;

                if (experience.SelectedValue != "")
                {
                    SqlParameter pram = new SqlParameter("@experience", experience.SelectedValue);
                    cmd.Parameters.Add(pram);
                }
                if (city.Value != "")
                {
                    SqlParameter pram = new SqlParameter("@city", city.Value);
                    cmd.Parameters.Add(pram);
                }
                if (functionalArea.SelectedValue != "")
                {
                    SqlParameter pram = new SqlParameter("@functionalArea", functionalArea.SelectedValue);
                    cmd.Parameters.Add(pram);
                }
                if (expectedSallery.SelectedValue != "")
                {
                    SqlParameter pram = new SqlParameter("@expectedSallery", expectedSallery.SelectedValue);
                    cmd.Parameters.Add(pram);
                }
                con.Open();
                SqlDataReader reed = cmd.ExecuteReader();
                ListView1.DataSource = reed;
                ListView1.DataBind();
            }
        }
        //private void LoadImages()
        //{
        //    string cs = "server=DESKTOP-6M2E1AB\\SQLEXPRESS; database=IJP; integrated security=SSPI";
        //    using (SqlConnection con = new SqlConnection(cs))
        //    {
        //        SqlCommand cmd = new SqlCommand("Select * from user_Info", con);
        //        con.Open();
        //        SqlDataReader rdr = cmd.ExecuteReader();
        //        GridView1.DataSource = rdr;
        //        GridView1.DataBind();
        //    }
        //}
    }
}