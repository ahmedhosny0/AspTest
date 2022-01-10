using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Unit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Erp"].ConnectionString);
            conn.Open();
            string insert = "insert into UnitCode(ArabicName,EnglishName,DescName,Description) values(@TxtName,@TxtEname,@TxtTitle,@TxtDesc)"; 
            SqlCommand cmd = new SqlCommand(insert, conn);
            cmd.Parameters.AddWithValue("@TxtName", TxtName.Text);
            cmd.Parameters.AddWithValue("@TxtEname", TxtEname.Text);
            cmd.Parameters.AddWithValue("@TxtTitle", TxtTitle.Text);
            cmd.Parameters.AddWithValue("@TxtDesc", TxtDesc.Text);
            cmd.ExecuteNonQuery();
            Msg.Text = "The Unit" + TxtName.Text + " Is Saved Sucessfully....!";
            TxtName.Text = "";
            TxtEname.Text = "";
            TxtTitle.Text = "";
            TxtDesc.Text = "";
            //  Response.Redirect("home.aspx");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}