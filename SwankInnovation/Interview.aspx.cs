﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
namespace SwankInnovation
{
    public partial class Interview : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Swank"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GridView1.DataBind();
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Swank/");
            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }
            if(fileupload1.HasFile)
            {
                fileupload1.SaveAs(folderPath + Path.GetFileName(fileupload1.FileName));
                //Image1.ImageUrl = "~/Swank/" + Path.GetFileName(fileupload1.FileName);

                SqlCommand cmd = new SqlCommand("insert into Interview1(Name,Qualification,Mobile,Gender,InterviewerName,Email,Address,Resume,Designation,Status) values('" + txt1.Text + "','" + txt2.Text + "','" + txt3.Text + "','" + radio1.SelectedItem.Text + "','" + txt4.Text + "','" + txt5.Text + "','" + txt6.Text.Replace("'", "''") + "','" + "~/Swank/" + fileupload1.FileName + "','" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                //Label2.Text = "EmployeeId is Already Taken";
                txt1.Text = "";
                txt2.Text = "";
                txt3.Text = "";
                txt4.Text = "";
                txt5.Text = "";
                txt6.Text = "";
                TextBox1.Text = "";
                GridView1.DataBind();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into Interview1(Name,Qualification,Mobile,Gender,InterviewerName,Email,Address,Designation,Status) values('" + txt1.Text + "','" + txt2.Text + "','" + txt3.Text + "','" + radio1.SelectedItem.Text + "','" + txt4.Text + "','" + txt5.Text + "','" + txt6.Text.Replace("'", "''") + "','" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                //Label2.Text = "EmployeeId is Already Taken";
                txt1.Text = "";
                txt2.Text = "";
                txt3.Text = "";
                txt4.Text = "";
                txt5.Text = "";
                txt6.Text = "";
                TextBox1.Text = "";
                GridView1.DataBind();
            }          
        }
        //private void autogenerated()
        //{
        //    string code = "ID";
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("Select count(id) from Interview1", conn);
        //    int i = Convert.ToInt32(cmd.ExecuteScalar());
        //    conn.Close();
        //    i++;
        //    TextBox2.Text = code + i.ToString();
        //}
    }
}