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
    public partial class WorkAssignDisplay : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeName"] != null)
            {
                if (!IsPostBack)
                {
                    abc();
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
            cmd = new SqlCommand("select * from WorkAssign where Username='" + Label1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        private void abc()
        {
            SqlCommand cmd2 = new SqlCommand("select * from WorkAssign where Username='" + Session["EmployeeName"].ToString() + "'", conn);
            conn.Open();
            SqlDataReader dr1 = cmd2.ExecuteReader();
            while (dr1.Read())
            {
                Label1.Text = dr1["Username"].ToString();
            }
            conn.Close();
        }
    }
}