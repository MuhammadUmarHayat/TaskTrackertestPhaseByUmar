using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaskTrackerTestPhase
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            viewAllUsers();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid = TextBox2.Text;
            viewUser(userid);
        }


        private void viewAllUsers()
        {

            string query = "select UserID,Name,FatherName,Gender from Users ";

            SqlConnection con = new SqlConnection(DBClass.constring);
            //Open database connection to connect to SQL Server
            con.Open();
            //Data table is used to bind the resultant data
            DataTable dtusers = new DataTable();
            // Create a new data adapter based on the specified query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            //SQl command builder is used to get data from database based on query
            SqlCommandBuilder cmd = new SqlCommandBuilder(da);
            //Fill data table
            da.Fill(dtusers);
            con.Close();
            GridView1.DataSource = dtusers;
            GridView1.DataBind();

        }


        private void viewUser(string userID)
        {

            string query = "select UserID,Name,FatherName,Gender from Users where userid='" + userID + "'";

            SqlConnection con = new SqlConnection(DBClass.constring);
            //Open database connection to connect to SQL Server
            con.Open();
            //Data table is used to bind the resultant data
            DataTable dtusers = new DataTable();
            // Create a new data adapter based on the specified query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            //SQl command builder is used to get data from database based on query
            SqlCommandBuilder cmd = new SqlCommandBuilder(da);
            //Fill data table
            da.Fill(dtusers);
            con.Close();
            GridView1.DataSource = dtusers;
            GridView1.DataBind();

        }
    }
}