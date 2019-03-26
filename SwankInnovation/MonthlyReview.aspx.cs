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
    public partial class MonthlyReview1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                abc();
                pdrpbind();
            }
        }

        private void abc()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from AddEmployee", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["EmployeeName"] = dr["Username"].ToString();
            }
            conn.Close();
        }

        private void pdrpbind()
        {
            conn.Open();
            cmd = new SqlCommand("select Id,EmployeeId,EmployeeName,EmployeeId + '-' + EmployeeName as Emp from AddEmployee order by Id", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                dd1.DataSource = dt;
                dd1.DataTextField = "Emp";
                dd1.DataValueField = "EmployeeId";
                dd1.DataBind();
                dd1.Items.Insert(0, new ListItem("select", "0"));
                Label1.Text = "";
            }
            conn.Close();
        }
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            if (dd1.SelectedValue != "0")
            {
                int a = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
                int b = Convert.ToInt32(DropDownList2.SelectedItem.ToString());
                int c = Convert.ToInt32(DropDownList3.SelectedItem.ToString());
                int d = Convert.ToInt32(DropDownList4.SelectedItem.ToString());
                int k = Convert.ToInt32(DropDownList5.SelectedItem.ToString());
                int f = Convert.ToInt32(DropDownList6.SelectedItem.ToString());
                int g = Convert.ToInt32(DropDownList7.SelectedItem.ToString());
                int h = Convert.ToInt32(DropDownList8.SelectedItem.ToString());
                int i = Convert.ToInt32(DropDownList9.SelectedItem.ToString());
                int j = Convert.ToInt32(DropDownList10.SelectedItem.ToString());
                cmd = new SqlCommand("select * from MonthlyReview where EmpID='" + TextBox1.Text + "'and month='" + DropDownList11.SelectedItem.ToString() + "'", conn);
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count == 1)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Already Added')</script>");
                }
                else
                {
                    int totalcount = a + b + c + d + k + f + g + h + i + j;
                    cmd = new SqlCommand("insert into MonthlyReview(EmpID,Name,Dressing,Attitude,Attendence,Independentwork,Presentationskills,Communicationskills,TakesInitiative,LeadershipQualities,Groupwork,honesty,TotalReview,month,Username,Summary) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + a + "','" + b + "','" + c + "','" + d + "','" + k + "','" + f + "','" + g + "','" + h + "','" + i + "','" + k + "','" + totalcount + "','" + DropDownList11.SelectedItem.ToString() + "','" + Session["EmployeeName"].ToString() + "','"+txt7.Text+"')", conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label1.Text = totalcount.ToString();
                }
                conn.Close();
            }
            GridView1.DataBind();
            DropDownList1.SelectedValue = "-1";
            DropDownList2.SelectedValue = "-1";
            DropDownList3.SelectedValue = "-1";
            DropDownList4.SelectedValue = "-1";
            DropDownList5.SelectedValue = "-1";
            DropDownList6.SelectedValue = "-1";
            DropDownList7.SelectedValue = "-1";
            DropDownList8.SelectedValue = "-1";
            DropDownList9.SelectedValue = "-1";
            DropDownList10.SelectedValue = "-1";
            DropDownList11.SelectedValue = "-1";
            dd1.SelectedValue = "0";
            txt7.Text = "";
        }
        protected void dd1_TextChanged(object sender, EventArgs e)
        {
            if (dd1.SelectedValue != "0")
            {
                Label14.Text = "";
                string hhhh = dd1.SelectedItem.Text;
                string[] spliting = hhhh.Split('-');
                TextBox1.Text = spliting[0];
                TextBox2.Text = spliting[1];
            }
            else
            {
                Label14.Text = "select Employee";
            }
        }
    }
}