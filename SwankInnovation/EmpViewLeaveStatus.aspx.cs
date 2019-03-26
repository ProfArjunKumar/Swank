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
    public partial class EmpViewLeaveStatus : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeName"]!= null)
            {
                if (!IsPostBack)
                {
                    Bind();
                }
            }
            else
            {
                Response.Redirect("EmployeeHome.aspx");
            }
        }
        private void Bind()
        {
            SqlCommand cmd = new SqlCommand("select * from ApplyLeave where Username='" + Session["EmployeeName"].ToString() + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}