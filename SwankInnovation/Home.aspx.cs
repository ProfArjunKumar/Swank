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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        string abc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }

        private void Bind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select EmployeeId,EmployeeName,EmployeeId + '-' + EmployeeName as Emp from AddEmployee", conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count>0)
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

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            string hhhh = DropDownList1.SelectedItem.Text;
            string[] spliting = hhhh.Split('-');
            Label2.Text = spliting[0];
            Label3.Text = spliting[1];
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("select * from AddEmployee where EmployeeID='" + Label2.Text + "'", conn);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = dr["Designation"].ToString();
                Label7.Text = dr["Username"].ToString();
            }
            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime d = new DateTime();
            d = DateTime.Now;
            TextBox1.Text = d.ToString("HH:mm:ss");
            SqlCommand cmd = new SqlCommand("insert into DateNTime01(EmployeeId,EmployeeName,Designation,TodayInTime,Username) values('" + Label2.Text + "','" + Label3.Text + "','" + Label1.Text + "','" + TextBox1.Text + "','" +Label7.Text+ "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Label4.Text = TextBox1.Text;
            Button1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (abc == null && Session["TodayInTime"] != null)
            {
                DateTime d = new DateTime();
                d = DateTime.Now;
                TextBox2.Text = d.ToString("HH:mm:ss");
                SqlCommand cmd = new SqlCommand("update DateNTime01 set TidayOutTime='" + TextBox2.Text + "' where TodayDate='" + DateTime.Now.Date.ToString("yyyy-MM-dd") + "' and EmployeeID='" + Label2.Text + "'", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Label6.Text = TextBox2.Text;
                Button2.Visible = false;
                if (abc != null && Session["TodayInTime"] == null)
                {
                    Label6.Text = "plz enter start time";
                }

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string hhhh = DropDownList1.SelectedItem.Text;
            string[] spliting = hhhh.Split('-');
            Label2.Text = spliting[0];
            Label3.Text = spliting[1];

            SqlCommand cmd = new SqlCommand("select * from DateNTime01 where TodayDate='" + DateTime.Now.ToString("yyyy-MM-dd") + "' and EmployeeID='" + Label2.Text + "'", conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd2 = new SqlCommand("select * from DateNTime01 where TodayDate='" + DateTime.Now.ToString("yyyy-MM-dd") + "' and EmployeeID='" + Label2.Text + "'", conn);
                conn.Open();
                SqlDataReader dr2 = cmd2.ExecuteReader();
                while (dr2.Read())
                {
                    Label4.Text = dr2["TodayInTime"].ToString();
                    abc = dr2["TidayOutTime"].ToString();

                    Session["TodayInTime"] = txtdate.Text;
                    Session["TidayOutTime"] = abc;
                }

                conn.Close();
                if (Session["TodayInTime"] != null && abc == "")
                {
                    Button1.Visible = false;
                    Button2.Visible = true;
                    Label6.Text = "";

                }
                else if (abc != null && Session["TodayInTime"] != null)
                {
                    Button1.Visible = false;
                    Button2.Visible = false;
                    Label6.Text = abc;
                }
            }
            else
            {
                Button1.Visible = true;
                Button2.Visible = true;
                Label4.Text = "";
                Label6.Text = "";

            }
        }
        
    }
}