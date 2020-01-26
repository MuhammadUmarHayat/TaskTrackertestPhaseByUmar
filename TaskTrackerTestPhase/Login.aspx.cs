using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TaskTrackerTestPhase
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid = TextBox1.Text;
            string pw = TextBox2.Text;
            string query = "select * from Users where userid='" + userid + "' and password='" + pw + "'";

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

            if (dtusers.Rows.Count>0)
            {

                Response.Redirect("Home.aspx");
            }
            

        }
    }
}