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
    public partial class MeetingShedule : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] { new DataColumn("id"), new DataColumn("EmpName"), new DataColumn("DateOfMeeting"), new DataColumn("Timee"), new DataColumn("Discussion"), new DataColumn("Username") });
                ViewState["EmpName"] = dt;
                deepak();
                btnSubmit.Visible = false;
            }
        }

        private void abc()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from AddEmployee where EmployeeId='"+Label1.Text+"'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
               Session["EmployeeName"]= dr["Username"].ToString();
            }
            conn.Close();
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
            }
            conn.Close();
        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            abc();
            DataTable dt = (DataTable)ViewState["EmpName"];
            dt.Rows.Add(Label1.Text, Label3.Text, txt1.Text.Trim(), txt2.Text.Trim(), txt3.Text.Trim(),Session["EmployeeName"].ToString());
            ViewState["EmpName"] = dt;
            this.bindgrid();
            gridview2.Visible = false;
            btnSubmit.Visible = true;
            DropDownList1.SelectedValue = "0";
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow order in gridview1.Rows)
            {
                SqlCommand cmd = new SqlCommand("insert into MeetingSchedule1 values('" + order.Cells[0].Text + "','" + order.Cells[1].Text + "','" + order.Cells[2].Text + "','" + order.Cells[3].Text + "','" + order.Cells[4].Text + "','" + order.Cells[5].Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            DataTable dt = new DataTable();
            ViewState["EmpName"] = null;
            this.bindgrid();
            gridview1.Visible = false;
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[6] { new DataColumn("id"), new DataColumn("EmpName"), new DataColumn("DateOfMeeting"), new DataColumn("Timee"), new DataColumn("Discussion"), new DataColumn("Username") });
            ViewState["EmpName"] = dt1;
            this.bindgrid();
            gridbind();
            gridview2.Visible = true;
            btnSubmit.Visible = false;
            DropDownList1.SelectedValue = "0";
            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";
        }
        private void bindgrid()
        {
            gridview1.DataSource = (DataTable)ViewState["EmpName"];
            gridview1.DataBind();
        }
        private void gridbind()
        {
            cmd = new SqlCommand("select * from MeetingSchedule1", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Open();
            gridview2.DataSource = dt;
            gridview2.DataBind();
            conn.Close();
        }
        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue != "0")
            {
                string hhhh = DropDownList1.SelectedItem.Text;
                string[] spliting = hhhh.Split('-');
                Label1.Text = spliting[0];
                Label3.Text = spliting[1];
            }
        }
        protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            DataTable dt = ViewState["EmpName"] as DataTable;
            dt.Rows[index].Delete();
            ViewState["EmpName"] = dt;
            gridview1.DataSource = dt;
            gridview1.DataBind();
        }
    }
}