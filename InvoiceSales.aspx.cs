using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class InvoiceSales : System.Web.UI.Page
{
    /*
    static int i = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        TxtId.Text = "" + i.ToString().PadLeft(4, '0') + "";

    }
     */
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        // i++;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Erp"].ConnectionString);
        conn.Open();
        string insert = "insert into HSales(ItemSerial,UnitSerial,GroupSerial,StoreSerial,Quantity,Price,Total) values(@TxtItem,@TxtUnit,@TxtGroup,@TxtStore,@TxtQuantity,@TxtPrice,@Total)";
        SqlCommand cmd = new SqlCommand(insert, conn);
        cmd.Parameters.AddWithValue("@TxtItem", DropListItem.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@TxtUnit", DropListUnit.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@TxtGroup", DropListCat.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@TxtStore", DropListStore.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@TxtQuantity", TxtQuantity.Text);
        cmd.Parameters.AddWithValue("@TxtPrice", TxtPrice.Text);
        cmd.Parameters.AddWithValue("@Total", TxtTotal.Text);
        cmd.ExecuteNonQuery();
        Msg.Text = "Operation Done Sucessfully....!";
        TxtQuantity.Text = "";
        TxtPrice.Text = "";
        TxtTotal.Text = "";
        //  Response.Redirect("home.aspx");
        conn.Close();
    }
    /*
    public void GetProductID()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["stock"].ConnectionString);
        int Num1 = 0;
        string proid;
        string query = "select id from Hsales order by id desc";
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader dr= cmd.ExecuteReader();
        while (dr.Read())
        {
            Num1 = int.Parse(dr[0].ToString());
        }
        dr.Close();
        TxtId.Text = "C" + (Num1 + 1).ToString();
        //if (dr.Read())
        //{
        //    int id =Int32.Parse(dr[0].ToString()) + 1;
        //    proid=id.ToString("00000");
        //}
        //else if(Convert.IsDBNull(dr))
        //{
        //    proid=("00001");
        //}
        //else
        //{
        //    proid=("00001");
        //}
        conn.Close();
       // TxtId.Text=proid.ToString();
        
    }
     * */

    protected void TxtPrice_TextChanged(object sender, EventArgs e)
    {
        float one = float.Parse(TxtQuantity.Text);
        float two = float.Parse(TxtPrice.Text);
        double Total;

        if (one > 0 && two > 0)
        {
            Total = one * two;
            TxtTotal.Text = Total.ToString();
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}