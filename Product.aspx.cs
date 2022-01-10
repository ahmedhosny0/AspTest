using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
                
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
      //  try{
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Erp"].ConnectionString);
        conn.Open();
        string insert = "insert into ItemCode(ArabicName,EnglishName,DescName,Description,SerialGroup,Unit1,StoreId,PricePurchase1Unit1,PriceSale1Unit1,Counts)  values(@TxtName,@TxtEname,@TxtTitle,@TxtDesc,@DropCat,@DropUnit,@StoreName,@PricePurchase,@PriceSale,@count)";                                                  
        //string insert = "insert into ItemCard ItemName,ItemEname,ItemDesc,ItemDescription,ItemCategory,ItemUnit1,ItemCodePurchasePrice1,ItemCodePrice1,StoreCodeName)values(@TxtName,@TxtEname,@TxtTitle,@TxtDesc,@DropCat,@DropUnit,@PricePurchase,@PriceSale,@DropStore)";            
            SqlCommand cmd = new SqlCommand(insert, conn);
            cmd.Parameters.AddWithValue("@TxtName", TxtName.Text);
            cmd.Parameters.AddWithValue("@TxtEname", TxtEname.Text);
            cmd.Parameters.AddWithValue("@TxtTitle", TxtTitle.Text);
            cmd.Parameters.AddWithValue("@TxtDesc", TxtDesc.Text);
            cmd.Parameters.AddWithValue("@DropCat", DropListCat.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@DropUnit", DropListUnit.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@StoreName", DropListStore.SelectedItem.Value); 
          cmd.Parameters.AddWithValue("@PricePurchase", TxtPurchasePrice.Text);
        cmd.Parameters.AddWithValue("@PriceSale", TxtSalePrice.Text);
        cmd.Parameters.AddWithValue("@count", TxtCount.Text);
            cmd.ExecuteNonQuery();
            Msg.Text = "The Item " + TxtName.Text + " Is Saved Sucessfully....!";
            TxtName.Text = "";
            TxtEname.Text = "";
            TxtTitle.Text = "";
            TxtDesc.Text="";
            TxtPurchasePrice.Text="";
            TxtSalePrice.Text="";
            TxtCount.Text = "";
            //  Response.Redirect("home.aspx");
            conn.Close();
        //}
        //catch (Exception ex)
        //{
        //    Response.Write(ex);
        //}
    }

    //protected void DropListStore_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["stock"].ConnectionString);
    //    string sqlquery = "select * from storecode where arabicname=@arabicname";
    //    conn.Open();
        
    //    //string insert = "insert into ItemCard ItemName,ItemEname,ItemDesc,ItemDescription,ItemCategory,ItemUnit1,ItemCodePurchasePrice1,ItemCodePrice1,StoreCodeName)values(@TxtName,@TxtEname,@TxtTitle,@TxtDesc,@DropCat,@DropUnit,@PricePurchase,@PriceSale,@DropStore)";            
    //    SqlCommand cmd = new SqlCommand(sqlquery, conn);
    //    cmd.Parameters.AddWithValue("@arabicname", DropListStore.SelectedItem.Text);
    //    SqlDataReader sdr = cmd.ExecuteReader();
    //    while (sdr.Read())
    //    {
    //        DropListStore.Text = sdr["Store_Name"].ToString();
    //    }
    //    conn.Close();

    //}
}