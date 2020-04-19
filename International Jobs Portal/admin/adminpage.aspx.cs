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

namespace International_Jobs_Portal.admin
{
    public partial class adminpage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populategridview();
                Label1.Text = "";
                Label2.Text = "";
            }
        }
        void populategridview()
        {
            DataTable dbl = new DataTable();

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("select * from Users", con);
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
                        string query = "insert into tblUserInfo (firstName, lastName, email) Values(@firstName, @lastName, @email)";
                        SqlCommand sqlCmd = new SqlCommand(query, con);
                        sqlCmd.Parameters.AddWithValue("@firstName", (GridView1.FooterRow.FindControl("TextBox1") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@lastName", (GridView1.FooterRow.FindControl("TextBox2") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@email", (GridView1.FooterRow.FindControl("TextBox3") as TextBox).Text.Trim());
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
                    string query = "Update Users SET firstName = @firstName, lastName=@lastName, email=@email where ID=@ID";
                    SqlCommand sqlCmd = new SqlCommand(query, con);
                    sqlCmd.Parameters.AddWithValue("@firstName", (GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@lastName", (GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@email", (GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox).Text.Trim());
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
                    string query = "Delete from tblUserInfo where ID=@ID";
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
    }
}