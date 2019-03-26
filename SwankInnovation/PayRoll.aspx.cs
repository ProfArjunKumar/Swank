using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;
namespace SwankInnovation
{
    public partial class PayRoll : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        int g, h;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Insert(0, new ListItem("select", "0"));
                //drp1.Items.Insert(0, new ListItem("select", "0"));
                for (int jLoop = 2000; jLoop <= DateTime.Now.Year; jLoop++)
                {
                    drp1.Items.Add(jLoop.ToString());
                }
                DateTimeFormatInfo Info = DateTimeFormatInfo.GetInstance(null);
                for (int i = 1; i < 13; i++)
                {
                    DropDownList1.Items.Add(new ListItem(Info.GetMonthName(i), i.ToString()));
                }
                btnSubmit.Visible = false;
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text != "select" && drp1.SelectedItem.Text!="select")
            {
                int month = DateTime.ParseExact(DropDownList1.SelectedItem.Text, "MMMM", CultureInfo.CurrentCulture).Month;
                int Year = Convert.ToInt32(drp1.SelectedItem.Text);
                int daysInMonth = System.DateTime.DaysInMonth(Year, month);
                txt2.Text = daysInMonth.ToString();
                int i = 1;
                DateTime start = new DateTime(Year, month, i);
                DateTime stop = new DateTime(Year, month, daysInMonth);
                int totalWorkingDays = GetNumberOfWorkingDays(start, stop);
                txt3.Text = totalWorkingDays.ToString();
                g = Convert.ToInt32(txt2.Text);
                h = Convert.ToInt32(txt3.Text);
                txt4.Text = (g - h).ToString();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('select Year')</script>");
            }
        }
        private static int GetNumberOfWorkingDays(DateTime start, DateTime stop)
        {
            TimeSpan interval = stop - start;
            int totalWeek = interval.Days / 7;
            int totalWorkingDays = 5 * totalWeek;
            int remainingDays = interval.Days % 7;
            for (int i = 0; i <= remainingDays; i++)
            {
                DayOfWeek test = (DayOfWeek)(((int)start.DayOfWeek + i) % 7);
                if (test >= DayOfWeek.Monday && test <= DayOfWeek.Friday)
                    totalWorkingDays++;
            }
            return totalWorkingDays;
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TextBox L = (e.Row.FindControl("txt") as TextBox);
                L.Text = txt2.Text;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (drp1.SelectedItem.Text != "select" && DropDownList1.SelectedItem.Text!="select")
            {
                conn.Open();
                int month = Convert.ToInt32(DateTime.ParseExact(DropDownList1.SelectedItem.Text, "MMMM", CultureInfo.CurrentCulture).Month);
                SqlCommand cmd3 = new SqlCommand("select * from Payrole where Year='" + drp1.SelectedItem.ToString() + "' and month='" + month + "'", conn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd3);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Already Added This Month')</script>");
                    GridView1.Visible = false;
                    btnSubmit.Visible = false;
                }
                else
                {
                    GridView1.Visible = true;
                    SqlCommand com = new SqlCommand("select * from AddEmployee", conn);
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    btnSubmit.Visible = true;
                }
                conn.Close();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Select Year and Month')</script>");
            }
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            TextBox txt12 = (TextBox)GridView1.Rows[((sender as TextBox).NamingContainer as GridViewRow).RowIndex].FindControl("TextBox1");
            TextBox txt11 = (TextBox)GridView1.Rows[((sender as TextBox).NamingContainer as GridViewRow).RowIndex].FindControl("txt");
            TextBox txt111 = (TextBox)GridView1.Rows[((sender as TextBox).NamingContainer as GridViewRow).RowIndex].FindControl("TextBox2");
            float total = (float.Parse(txt111.Text) / (float.Parse(txt11.Text)));
            TextBox score = (TextBox)GridView1.Rows[((sender as TextBox).NamingContainer as GridViewRow).RowIndex].FindControl("txttotal");
            score.Text = (float.Parse(txt12.Text) * (total)).ToString();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label txtid1 = row.FindControl("Label1") as Label;
                Label txtnamee = row.FindControl("Label2") as Label;
                TextBox basicsalary = row.FindControl("TextBox2") as TextBox;
                TextBox Presentdays = row.FindControl("TextBox1") as TextBox;
                TextBox Total = row.FindControl("txttotal") as TextBox;
                SqlCommand cmd = new SqlCommand("insert into Payrole(EmployeeId,EmployeeName,Year,Month,Totaldays,Weakdays,WeakOff,BasicSalary,Presentdays,Totalsalary) values('" + txtid1.Text + "','" + txtnamee.Text + "','" + drp1.SelectedValue.ToString() + "','" + DropDownList1.SelectedValue.ToString() + "','" + txt2.Text + "','" + txt3.Text + "','" + txt4.Text + "','" + basicsalary.Text + "','" + Presentdays.Text + "','" + Total.Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Label1.Text = "Data Is Inserted.";
            GridView1.Visible = false;
            btnSubmit.Visible = false;
            txt2.Text = "";
            txt3.Text = "";
            txt4.Text = "";
            drp1.SelectedValue = "0";
            DropDownList1.SelectedValue = "0";
        }
    }
}