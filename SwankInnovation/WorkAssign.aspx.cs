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
using System.Data.OleDb;
using System.Text;
namespace SwankInnovation
{
    public partial class WorkAssign : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
                GridView1.DataBind();
            }
        }
        private void bind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select Id,EmployeeId,EmployeeName,EmployeeId + '-' + EmployeeName as Emp from AddEmployee order by Id", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownList2.DataSource = dt;
                DropDownList2.DataTextField = "Emp";
                DropDownList2.DataValueField = "EmployeeId";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("select", "0"));
            }
            conn.Close();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand objCommand = new SqlCommand("insert into WorkAssign(EmpNo,EmpName,TLName,Assignment,Duration,Date,Username) values('" + Label2.Text + "','" + Label3.Text + "','" + txt5.Text + "','" + txt3.Text.Replace("'", "''") + "','" + txt4.Text + "','" + txt6.Text + "','" + Label4.Text + "')", conn);
            objCommand.ExecuteNonQuery();
            conn.Close();
            DropDownList2.SelectedValue = "0";
            txt3.Text = "";
            txt4.Text = "";
            txt5.Text = "";
            txt6.Text = "";
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue != "0")
            {
                string hhhh = DropDownList2.SelectedItem.Text;
                string[] spliting = hhhh.Split('-');
                Label2.Text = spliting[0];
                Label3.Text = spliting[1];
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("select * from AddEmployee where EmployeeId='" + Label2.Text + "'", conn);
                SqlDataReader dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    Label4.Text = dr["Username"].ToString();
                }
                conn.Close();
            }
            txt3.Text = "";
            txt4.Text = "";
            txt5.Text = "";
            txt6.Text = "";
        }
    }
}