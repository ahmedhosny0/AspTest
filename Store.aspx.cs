using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Store : System.Web.UI.Page
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
            string insert = "insert into StoreCode(ArabicName,EnglishName,DescName,Description,AreaStock,Address,NumberOfLeans,StoreKeeper,Phone1,Phone2,Phone3) values(@TxtName,@TxtEname,@TxtTitle,@TxtDesc,@TxtArea,@TxtAddress,@TxtNumOfLeans,@TxtKeeper,@TxtTel1,@TxtTel2,@TxtTel3)";
            SqlCommand cmd = new SqlCommand(insert, conn);
            cmd.Parameters.AddWithValue("@TxtName", TxtName.Text);
            cmd.Parameters.AddWithValue("@TxtEname", TxtEname.Text);
            cmd.Parameters.AddWithValue("@TxtTitle", TxtTitle.Text);
            cmd.Parameters.AddWithValue("@TxtDesc", TxtDesc.Text);
            cmd.Parameters.AddWithValue("@TxtArea", TxtArea.Text);
            cmd.Parameters.AddWithValue("@TxtAddress", TxtAddress.Text);
            cmd.Parameters.AddWithValue("@TxtNumOfLeans", TxtNumOfLeans.Text);
            cmd.Parameters.AddWithValue("@TxtKeeper", TxtKeeper.Text);
            cmd.Parameters.AddWithValue("@TxtTel1", TxtTel1.Text);
            cmd.Parameters.AddWithValue("@TxtTel2", TxtTel2.Text);
            cmd.Parameters.AddWithValue("@TxtTel3", TxtTel3.Text);
            cmd.ExecuteNonQuery();
            Msg.Text = "The Store" + TxtName.Text + " Is Saved Sucessfully....!";
            TxtName.Text = "";
            TxtEname.Text = "";
            TxtTitle.Text = "";
            TxtDesc.Text = "";
            TxtArea.Text = "";
            TxtAddress.Text = "";
            TxtNumOfLeans.Text = "";
            TxtKeeper.Text = "";
            TxtTel1.Text = "";
            TxtTel2.Text = "";
            TxtTel3.Text = "";
          //  Response.Redirect("home.aspx");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}