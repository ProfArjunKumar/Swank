using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace SwankInnovation
{
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnbutton_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from AddEmployee where Username COLLATE Latin1_general_CS_AS='" + txt1.Text + "'and Paassword COLLATE Latin1_general_CS_AS='" + txt2.Text + "'", conn);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Session["EmployeeName"] = txt1.Text;
                Session["EmployeeId"] = txt2.Text;
                Response.Redirect("EmployeeHome.aspx");
            }
            else
            {
                Label1.Text = "Invalid UserName and Password";
            }
            conn.Close();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}