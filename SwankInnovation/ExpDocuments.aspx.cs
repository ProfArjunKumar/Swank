﻿using System;
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
    public partial class ExpDocuments : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into ExpDocuments(EId,Name,Designation,Fromyear,Toyear,PreviousPackage,RelievingDate) values('" + txt1.Text + "','" + txt2.Text + "','" + txt6.Text + "','" + txt3.Text + "','" + txt7.Text + "','" + txt8.Text + "','" + txt4.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";
            txt4.Text = "";
            txt7.Text = "";
            txt6.Text = "";
            txt8.Text = "";
        }
    }
}