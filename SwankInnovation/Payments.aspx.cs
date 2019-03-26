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
    public partial class Payments : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                deepak();
            }
        }

        private void deepak()
        {
            conn.Open();
            cmd = new SqlCommand("select Id,EmployeeId,EmployeeName,EmployeeId + '-' + EmployeeName as Emp from AddEmployee order by Id", conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "Emp";
                DropDownList1.DataValueField = "EmployeeId";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("select", "0"));
                //hf1.Value= dt.Rows[0]["EmpID"].ToString();
            }
            conn.Close();
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into Payments(EmployeeId,EmployeeName,TotalDaysPresent,TotalLeaves,TotalSalary,ProvidentFund,EmpSalary) values('" + Label2.Text + "','" + Label3.Text + "','" + txt3.Text + "','" + txt4.Text + "','" + txt5.Text + "','" + txt6.Text + "','" + txt7.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue != "0")
            {
                string hhhh = DropDownList1.SelectedItem.Text;
                string[] spliting = hhhh.Split('-');
                Label2.Text = spliting[0];
                Label3.Text = spliting[1];
            }
        }
    }
}