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
    public partial class LeaveRequest : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeName"] != null)
            {
                if (!IsPostBack)
                {
                    SqlCommand cmd = new SqlCommand("select * from AddEmployee where Username='" + Session["EmployeeName"].ToString() + "'", conn);
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        string id = dr["EmployeeId"].ToString();
                        Session["EmployeeId"] = id;
                        string name = dr["EmployeeName"].ToString();
                        Session["Name"] = name;
                    }
                    conn.Close();
                    dropdown1.Items.Insert(0, new ListItem("select", "0"));
                }
            }
            else
            {
                Response.Redirect("EmployeeHome.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("insert into ApplyLeave(EmployeeId,EmployeeName,LeaveReason,Nofdays,statuss,Username) values('" + Session["EmployeeId"].ToString() + "','" + Session["Name"].ToString() + "','" + txt1.Text.Replace("'", "''") + "','" + dropdown1.SelectedItem.Text + "','pending','" + Session["EmployeeName"].ToString() + "')", conn);
            conn.Open();
            int i = cmd1.ExecuteNonQuery();
            conn.Close();
            if (i == 1)
            {
                Label1.Text = "Apply Leave Request successfully";
            }
            else
            {
                Label1.Text = "Apply leave request failed";
            }
            txt1.Text = "";
            dropdown1.SelectedValue = "0";
        }
    }
}