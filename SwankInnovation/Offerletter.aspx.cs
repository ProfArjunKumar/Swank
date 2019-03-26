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
    public partial class Offerletter : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropdownbind();
                GridView1.DataBind();
            }
        }
        private void dropdownbind()
        {
            SqlCommand cmd = new SqlCommand("select * from Interview1 where Status='Accept' order by id", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            drp1.DataSource = ds;
            drp1.DataTextField = "id";
            drp1.DataValueField = "id";
            drp1.DataBind();
            drp1.Items.Insert(0, new ListItem("select", "0"));
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into OfferLetter(Name,Mobile,Email,Designation,Reporting,Joining,Relieving) values('" + TextBox4.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + txtreport.Text + "','" + txtjoin.Text + "','" + txtrelieving.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            txtreport.Text = "";
            txtjoin.Text = "";
            txtrelieving.Text = "";
            drp1.SelectedValue = "0";
            GridView1.DataBind();
        }
        protected void drp1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Interview1", conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr["Mobile"].ToString();
                TextBox2.Text = dr["Email"].ToString();
                TextBox3.Text = dr["Designation"].ToString();
                TextBox4.Text = dr["Name"].ToString();
            }
            conn.Close();
        }
    }
}