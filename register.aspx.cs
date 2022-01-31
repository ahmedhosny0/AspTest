using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TopSoft"].ConnectionString);
        conn.Open();
        string insert = ("insert into userinfo (FirstName,MiddleName,LastName,Email,Password,Repassword) values(@Fname,@Mname,@Lname,@email,@password,@repassword)");
        SqlCommand cmd = new SqlCommand(insert, conn);
        cmd.Parameters.AddWithValue("@fname", TxtFname.Text);
        cmd.Parameters.AddWithValue("@Mname", TxtMname.Text);
        cmd.Parameters.AddWithValue("@lname", TxtLname.Text);
        cmd.Parameters.AddWithValue("@email", TxtEmail.Text);
        cmd.Parameters.AddWithValue("@password", TxtPassword.Text);
        cmd.Parameters.AddWithValue("@repassword", TxtRePassword.Text);
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("login.aspx");

    }
}