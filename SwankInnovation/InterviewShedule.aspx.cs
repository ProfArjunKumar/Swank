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
    public partial class InterviewShedule : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into InterviewShedule(CandidateName,Gender,Qualification,Technology,Date) values('" + txt1.Text + "','" + radio1.SelectedItem.Text + "','" + txt2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txt3.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";
            DropDownList1.SelectedValue = "-1";
        }
    }
}