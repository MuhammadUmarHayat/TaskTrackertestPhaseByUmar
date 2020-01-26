using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace TaskTrackerTestPhase
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          

            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);



            string query = "insert into Users (UserID,Name,FatherName,Gender,Password,UserType,Email,SecQuestion,secAnswer,Address,image) VALUES (@UserID,@Name,@FatherName,@Gender,@Password,@UserType,@Email,@SecQuestion,@secAnswer,@Address,@image)";
            SqlConnection connection = new SqlConnection(DBClass.constring);
            //Connection String  

            //Open The Connection  
            connection.Open();
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.Add("@UserID", SqlDbType.NVarChar, 50).Value = txtUserID.Text;
            cmd.Parameters.Add("@Name", SqlDbType.NVarChar, 50).Value = txtName.Text;

            cmd.Parameters.Add("@FatherName", SqlDbType.NVarChar, 50).Value = txtFName.Text;
            cmd.Parameters.Add("@Gender", SqlDbType.NVarChar, 50).Value = ddlGender.Text;


            cmd.Parameters.Add("@Password", SqlDbType.NVarChar,50).Value = txtPw.Text;


            cmd.Parameters.Add("@UserType", SqlDbType.NVarChar, 50).Value ="";
            cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 50).Value = txtEmail.Text;

            cmd.Parameters.Add("@SecQuestion", SqlDbType.NVarChar, 100).Value =txtQuestion.Text;
            cmd.Parameters.Add("@secAnswer", SqlDbType.NVarChar, 100).Value = txtAnswer.Text;

            cmd.Parameters.Add("@Address", SqlDbType.NVarChar,200).Value = txtAddress.Text;

            cmd.Parameters.Add("@image", SqlDbType.NVarChar, 50).Value = link;



            int count = cmd.ExecuteNonQuery();
            //Close The Connection  
            connection.Close();
            if (count == 1)
            {
                //BindGridData();  

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Record added successfully')", true);
                //call the method to bind the grid  

             


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}