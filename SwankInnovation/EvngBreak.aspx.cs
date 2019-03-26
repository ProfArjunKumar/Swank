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
    public partial class EvngBreak : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        string abc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string q1 = "select * from AddEmployee where Username='" + Session["EmployeeName"].ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(q1, conn);
                cmd1.CommandType = CommandType.Text;
                conn.Open();
                SqlDataReader dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    Label3.Text = dr["EmployeeId"].ToString();
                    Label4.Text = dr["EmployeeName"].ToString();
                    Label5.Text = dr["Designation"].ToString();
                    Session["Id"] = Label3.Text;
                }
                conn.Close();
                SqlCommand cmd = new SqlCommand("select * from EvngBreak where EmployeeID='" + Session["Id"].ToString() + "'and TodayDate='" + DateTime.Now.ToString("yyyy-MM-dd") + "'", conn);
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                conn.Close();
                if (dt.Rows.Count == 1)
                {
                    SqlCommand cmd2 = new SqlCommand("select * from EvngBreak where EmployeeID='" + Session["Id"].ToString() + "'and TodayDate='" + DateTime.Now.ToString("yyyy-MM-dd") + "'", conn);
                    conn.Open();
                    SqlDataReader dr2 = cmd2.ExecuteReader();
                    while (dr2.Read())
                    {
                        Label1.Text = dr2["starttime"].ToString();
                        abc = dr2["endtime"].ToString();

                        Session["starttime"] = Label1.Text;
                        Session["endtime"] = abc;
                    }

                    conn.Close();
                    if (Session["starttime"] != null && abc == "")
                    {
                        Button1.Visible = false;
                        Button2.Visible = true;

                    }
                    else if (Session["endtime"] != null && Session["starttime"] != null)
                    {
                        Button1.Visible = false;
                        Button2.Visible = false;
                        Label2.Text = Session["endtime"].ToString();
                    }
                }
               

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime d = new DateTime();
            d = DateTime.Now;
            TextBox1.Text = d.ToString("HH:mm:ss");
            cmd = new SqlCommand("insert into EvngBreak(EmployeeID,EmployeeName,Designation,starttime,Username) values('" + Label3.Text + "','" + Label4.Text + "','" + Label5.Text + "','" + TextBox1.Text + "','" + Session["EmployeeName"] + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Label1.Text = TextBox1.Text;
            Button1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (abc == null && Session["starttime"] != null)
            {
                DateTime d = new DateTime();
                d = DateTime.Now;
                TextBox2.Text = d.ToString("HH:mm:ss");
                cmd = new SqlCommand("update EvngBreak set endtime='" + TextBox2.Text + "' where TodayDate='" + DateTime.Now.Date.ToString("yyyy-MM-dd") + "' and EmployeeID='" + Session["Id"].ToString() + "'", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Label2.Text = TextBox2.Text;
                Button2.Visible = false;
            }
            if (abc != null && Session["starttime"] == null)
            {
                Label2.Text = "plz enter start time";
            }
        }
    }
}