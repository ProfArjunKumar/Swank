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
    public partial class EmpDailyReport : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeName"]!=null)
            {
                if (!IsPostBack)
                {
                    string q1 = "select * from AddEmployee where Username='" + Session["EmployeeName"].ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(q1, conn);
                    cmd1.CommandType = CommandType.Text;
                    conn.Open();
                    SqlDataReader dr = cmd1.ExecuteReader();
                    while (dr.Read())
                    {
                        Label1.Text = dr["EmployeeID"].ToString();
                        Label2.Text = dr["EmployeeName"].ToString();
                        Label3.Text = dr["Designation"].ToString();
                    }
                    conn.Close();
                }
            }
            else
            {
                Response.Redirect("EmployeeHome.aspx");
            }
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            cmd = new SqlCommand("update WorkAssign set DailyWork='" + TextBox3.Text + "' where Username='" + Session["EmployeeName"].ToString() + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            TextBox3.Text = "";
        }
    }
}
