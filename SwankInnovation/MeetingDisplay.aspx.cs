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
    public partial class MeetingDisplay : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        internal void Bind()
        {
            cmd = new SqlCommand("select * from MeetingSchedule1 where Username='" +Session["EmployeeName"]+ "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["EmployeeName"]!=null)
            {
                if (!IsPostBack)
                {
                    Bind();
                }
            }
            else
            {
                Response.Redirect("MeetingDisplay.aspx");
            }
        }
    }
}