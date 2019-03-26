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
    public partial class LeaveReports : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        internal void Bind()
        {
            cmd = new SqlCommand("select * from ApplyLeave", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            DropDownList dropdown1 = (DropDownList)row.FindControl("dropdown1");
            TextBox abc = (TextBox)row.FindControl("txt9");
            GridView1.EditIndex = -1;
            cmd = new SqlCommand("update ApplyLeave set Statuss='" + dropdown1.SelectedItem.Text + "', Reason='" + abc.Text + "' where id='" + id + "'", conn);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Label3.Text = "record is updated";
                Bind();
            }
            else
            {
                Label3.Text = "record is not updated";
            }
            conn.Close();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind();
        }
    }
}