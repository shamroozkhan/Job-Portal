using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace International_Jobs_Portal.signup
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submitbtn_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = upload_userPic.PostedFile;
            string userPicName = Path.GetFileName(postedFile.FileName);
            string userPicExtension = Path.GetExtension(userPicName);
            int userPicSize = postedFile.ContentLength;

            HttpPostedFile postedFile2 = upload_userCV.PostedFile;
            string userCVName = Path.GetFileName(postedFile2.FileName);
            string userCVExtension = Path.GetExtension(userCVName);
            int userCVSize = postedFile2.ContentLength;
            
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("InsertUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramfName = new SqlParameter()
                {
                    ParameterName = "@firstName",
                    Value = firstName.Text
                };
                cmd.Parameters.Add(paramfName);

                SqlParameter paramlName = new SqlParameter()
                {
                    ParameterName = "@lastName",
                    Value = lastName.Text
                };
                cmd.Parameters.Add(paramlName);

                SqlParameter paramGender = new SqlParameter()
                {
                    ParameterName = "@gender",
                    Value = gender.Text
                };
                cmd.Parameters.Add(paramGender);

                SqlParameter paramEmail = new SqlParameter()
                {
                    ParameterName = "@email",
                    Value = email.Text
                };
                cmd.Parameters.Add(paramEmail);

                SqlParameter paramContact = new SqlParameter()
                {
                    ParameterName = "@contact",
                    Value = contact.Text
                };
                cmd.Parameters.Add(paramContact);

                SqlParameter paramAdress = new SqlParameter()
                {
                    ParameterName = "@address",
                    Value = address.Text
                };
                cmd.Parameters.Add(paramAdress);

                SqlParameter paramCity = new SqlParameter()
                {
                    ParameterName = "@city",
                    Value = city.Text
                };
                cmd.Parameters.Add(paramCity);

                SqlParameter paramCountry = new SqlParameter()
                {
                    ParameterName = "@country",
                    Value = country.Text
                };
                cmd.Parameters.Add(paramCountry);

                if (userPicExtension.ToLower() == ".jpg" || userPicExtension.ToLower() == ".png")
                {
                    Stream stream = postedFile.InputStream;
                    BinaryReader binaryReader = new BinaryReader(stream);
                    byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                    SqlParameter paramUserPic = new SqlParameter()
                    {
                        ParameterName = "@userPic",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramUserPic);
                }

                SqlParameter paramQualification = new SqlParameter()
                {
                    ParameterName = "@qualification",
                    Value = qualification.Text
                };
                cmd.Parameters.Add(paramQualification);

                SqlParameter paramFunctionalArea = new SqlParameter()
                {
                    ParameterName = "@functionalArea",
                    Value = functionalArea.Text
                };
                cmd.Parameters.Add(paramFunctionalArea);

                SqlParameter paramexperience = new SqlParameter()
                {
                    ParameterName = "@experience",
                    Value = experience.Text
                };
                cmd.Parameters.Add(paramexperience);

                SqlParameter paramExpectedSallery = new SqlParameter()
                {
                    ParameterName = "@expectedSallery",
                    Value = expectedSallery.Text
                };
                cmd.Parameters.Add(paramExpectedSallery);

                if (userCVExtension.ToLower() == ".pdf" || userCVExtension.ToLower() == ".txt" || userCVExtension.ToLower() == ".docx")
                {
                    Stream stream2 = postedFile2.InputStream;
                    BinaryReader binaryReader2 = new BinaryReader(stream2);
                    byte[] bytes2 = binaryReader2.ReadBytes((int)stream2.Length);
                    SqlParameter paramUserCV = new SqlParameter()
                    {
                        ParameterName = "@userCV",
                        Value = bytes2
                    };
                    cmd.Parameters.Add(paramUserCV);
                }

                SqlParameter paramPasword = new SqlParameter()
                {
                    ParameterName = "@password",
                    Value = pasword.Text
                };
                cmd.Parameters.Add(paramPasword);

                SqlParameter paramNewId = new SqlParameter()
                {
                    ParameterName = "@userId",
                    Value = -1,
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(paramNewId);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void expectedSallery_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}