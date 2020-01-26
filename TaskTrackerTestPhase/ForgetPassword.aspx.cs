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
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string secSQLQuestion = "";
        string secSQLAnswer = "";
        string userid = "";
        string pw =  "";

        string scAnswer = "";


        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid = txtUserId.Text;
            string pw = txtPw1.Text;

            string scAnswer = txtSecAnswer.Text;

            string query = "select * from Users where userid='" + userid + "' ";

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
            
            if (dtusers.Rows.Count > 0)
            {

                secSQLQuestion = dtusers.Rows[0]["SecQuestion"].ToString();
                secSQLAnswer = dtusers.Rows[0]["SecAnswer"].ToString();
                Label1.Text = secSQLQuestion;

            }


           




        }
       

        private void update(string userid,string pw)
        {

            SqlConnection conn = new SqlConnection(DBClass.constring);

            string query = "UPDATE users SET password='"+pw+"' WHERE userid = '"+ userid + "'";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label2.Text = "Password has been changed seccessfully";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (scAnswer.Equals(secSQLAnswer))
            {

                update(userid, pw);
            }
            else
            {
                Label2.Text = "Secrete Answer is wrong. Try again";


            }





        }
    }
}