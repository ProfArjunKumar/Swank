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
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["EmployeeName"]==null)
            {
                Response.Redirect("EmployeeHome.aspx");
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from AddEmployee where Username='" + Session["EmployeeName"].ToString() + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (txtusername.Text.ToString() == dt.Rows[0]["Paassword"].ToString())
            {
                conn.Open();
                cmd = new SqlCommand("update AddEmployee set Paassword=@password,confpass=@confpass where Username='" + Session["EmployeeName"].ToString() + "'", conn);
                cmd.Parameters.AddWithValue("@password", txtpwd.Text);
                cmd.Parameters.AddWithValue("@confpass", txtcpwd.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
                txtusername.Text = "";
                Label1.Text = "Password changed Successfully";
            }
            else
            {
                Label1.Text = "Please enter correct Current password";
            }
        }
    }
}