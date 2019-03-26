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
    public partial class TrainingShedule : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                abc();
                bind();
                GridView1.DataBind();
            }
        }

        private void abc()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from AddEmployee",conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Session["EmployeeName"] = dr["Username"].ToString();
            }
            conn.Close();
        }

        private void bind()
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
            }
            conn.Close();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into TrainingSchedule1(EmployeeId,EmployeeName,TrainingUnder,Remarks,Username) values('" + Label2.Text + "','" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text.Replace("'", "''") + "','" + Session["EmployeeName"].ToString() + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            DropDownList1.SelectedValue = "0";
            TextBox2.Text = "";
            TextBox1.Text = "";
            GridView1.DataBind();
        }
        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue != "0")
            {
                string hhhh = DropDownList1.SelectedItem.Text;
                string[] spliting = hhhh.Split('-');
                Label2.Text = spliting[0];
                Label3.Text = spliting[1];
            }
            else
            {
                Label1.Text = "";
            }
        }
    }
}