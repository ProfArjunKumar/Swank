using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
namespace SwankInnovation
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeName"]!=null)
            {
                string q1 = "select * from AddEmployee where Username='" + Session["EmployeeName"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(q1, conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                //int Total = Convert.ToInt32(dt.Rows[0]["rollno"]);
                Label1.Text = dt.Rows[0]["EmployeeId"].ToString();
                Label2.Text = dt.Rows[0]["EmployeeName"].ToString();
                Label4.Text = dt.Rows[0]["Designation"].ToString();
                Image1.ImageUrl = dt.Rows[0]["Photo"].ToString();
                Label3.Text = dt.Rows[0]["Email"].ToString();
                Label5.Text = dt.Rows[0]["Mobile"].ToString();
                Label6.Text = dt.Rows[0]["Gender"].ToString();
                Label7.Text = dt.Rows[0]["Qualification"].ToString();
                Label8.Text = dt.Rows[0]["city"].ToString();
                if (!IsPostBack)
                {
                    SqlCommand cmd1 = new SqlCommand("select * from AddEmployee where Username='" + Session["EmployeeName"].ToString() + "'", conn);
                    conn.Open();
                    SqlDataReader dr = cmd1.ExecuteReader();
                    conn.Close();
                }
            }
            else
            {
                Response.Redirect("EmployeeHome.aspx");
            }
        }
        protected void btnAbout_Click(object sender, EventArgs e)
        {

        }
    }
}