using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Configuration;

namespace International_Jobs_Portal.login
{
    public partial class userinfo : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populategridview();
            }
        }
        void populategridview()
        {
            DataTable dbl = new DataTable();

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("select * from Users where email='" + Session["email"] + "'", con);
                sqlDa.Fill(dbl);
            }
            if (dbl.Rows.Count > 0)
            {
                GridView1.DataSource = dbl;
                GridView1.DataBind();
            }
            else
            {
                dbl.Rows.Add(dbl.NewRow());
                GridView1.DataSource = dbl;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dbl.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = "No Data Found";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        con.Open();
                        string query = "insert into Users (firstName, lastName,gender, email, contact, addres, city, country, qualification, functionalArea, experience, expectedSallery, paswrod) Values(@firstName, @lastName,gender, @email, @contact, @address, @city, @country, @qualification, @functionalArea, @experience, @expectedSallery, @password)";

                        SqlCommand sqlCmd = new SqlCommand(query, con);
                        sqlCmd.Parameters.AddWithValue("@firstName", (GridView1.FooterRow.FindControl("TextBox1") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@lastName", (GridView1.FooterRow.FindControl("TextBox2") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@gender", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@email", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@contact", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@address", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@city", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@country", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@qualification", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@functionalArea", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@experience", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@expectedSallery", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@password", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        populategridview();
                        Label1.Text = "New Record Added";
                        Label2.Text = "";
                    }
                }
            }
            catch (Exception cs)
            {
                Label2.Text = "New Record Added";
                Label1.Text = cs.Message;
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            populategridview();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            populategridview();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    string query = "Update user_Info SET firstName = @firstName, lastName=@lastName, gender=@gender email=@email, contact=@contact, addres=@addres, city=@city, country=@country, qualification=@qualification, functionalArea=@functionalArea, experience=@experience, expectedSallery=@expectedSallery, paswrod=@pasword  where ID=@ID";
                    SqlCommand sqlCmd = new SqlCommand(query, con);
                    sqlCmd.Parameters.AddWithValue("@firstName", (GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@lastName", (GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@gender", (GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@email", (GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@contact", (GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@addres", (GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@city", (GridView1.Rows[e.RowIndex].FindControl("TextBox7") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@country", (GridView1.Rows[e.RowIndex].FindControl("TextBox8") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@qualification", (GridView1.Rows[e.RowIndex].FindControl("TextBox9") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@functionalArea", (GridView1.Rows[e.RowIndex].FindControl("10") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@experience", (GridView1.Rows[e.RowIndex].FindControl("TextBox11") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@expectedSallery", (GridView1.Rows[e.RowIndex].FindControl("TextBox12") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@paswrod", (GridView1.Rows[e.RowIndex].FindControl("TextBox13") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@ID", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                    populategridview();
                    Label1.Text = "Selected Record Updated";
                    Label2.Text = "";
                }
            }
            catch (Exception cs)
            {
                Label2.Text = "New Record Added";
                Label1.Text = cs.Message;
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    string query = "Delete from user_Info where ID=@ID";
                    SqlCommand sqlCmd = new SqlCommand(query, con);
                    sqlCmd.Parameters.AddWithValue("@ID", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    populategridview();
                    Label1.Text = "Selected Record Deleted";
                    Label2.Text = "";
                }
            }
            catch (Exception cs)
            {
                Label2.Text = "New Record Added";
                Label1.Text = cs.Message;
            }
        }
        //void populategridview()
        //{
        //    Label1.Text = "<b><font color=Brown>" + "WELLCOME:: " + "</font>" + "<b><font color=red>" + Session["firstName"] + "</font>";

        //    SqlConnection con = new SqlConnection(conStr);

        //    con.Open();

        //    str = "select * from user_Info where email='" + Session["email"] + "'";

        //    com = new SqlCommand(str, con);

        //    SqlDataAdapter da = new SqlDataAdapter(com);

        //    DataSet ds = new DataSet();

        //    da.Fill(ds);

        //    Label4.Text = ds.Tables[0].Rows[0]["firstName"].ToString();
        //    Label5.Text = ds.Tables[0].Rows[0]["lastName"].ToString();
        //    Label6.Text = ds.Tables[0].Rows[0]["gender"].ToString();
        //    Label2.Text = ds.Tables[0].Rows[0]["email"].ToString();
        //    Label3.Text = ds.Tables[0].Rows[0]["contact"].ToString();
        //    Label7.Text = ds.Tables[0].Rows[0]["addres"].ToString();
        //    Label8.Text = ds.Tables[0].Rows[0]["city"].ToString();
        //    Label9.Text = ds.Tables[0].Rows[0]["country"].ToString();
        //    Label10.Text = ds.Tables[0].Rows[0]["qualification"].ToString();
        //    Label11.Text = ds.Tables[0].Rows[0]["functionalArea"].ToString();
        //    Label12.Text = ds.Tables[0].Rows[0]["experience"].ToString();
        //    Label13.Text = ds.Tables[0].Rows[0]["expectedSallery"].ToString();
        //    Label14.Text = ds.Tables[0].Rows[0]["pasword"].ToString();
        //}
    }
}