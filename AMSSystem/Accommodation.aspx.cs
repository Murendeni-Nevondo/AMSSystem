using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class Accommodation : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string connStr = ConfigurationManager.ConnectionStrings["AMS_DataConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            SqlDataAdapter checkRoomAdapter = new SqlDataAdapter("SELECT * FROM Accommodation where unitNo='"+txt_unitNo.Text+"'",conn);
            DataTable tb = new DataTable();
            checkRoomAdapter.Fill(tb);

            if(tb.Rows.Count>0)
            {
                lblErrorOrSuccess.Text = "Accommodation already Registered";
            }
            else
            {
                string query = "INSERT INTO[dbo].[Accommodation] ([UnitName], [unitNo], [LandLord], [ContactNo], [Amount], [UnitType], [Adress], [CurrentDate]) VALUES ('" + txt_unitname.Text + "','" + txt_unitNo.Text + "','" + txt_landlord.Text + "', '" + txt_landLordContact.Text + "', '" + txt_amount.Text + "','" + txt_unitType.Text + "', '" + txt_location.Text + "', '" + DateTime.Now + "')";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connStr);
                var dataTable = new DataTable();
                adapter.Fill(dataTable);
                ClearForm();
                lblErrorOrSuccess.Text = "Accommodation successfully registered";


                
            }
        }
        catch (SqlException ex)
        {

            lblErrorOrSuccess.Text = ex.Message;
            ClearForm();
        }
    }

    public void ClearForm()
    {
        txt_amount.Text = "";
        txt_current_date.Text = "";
        txt_landlord.Text = "";
        txt_landLordContact.Text = "";
        txt_unitname.Text = "";
        txt_unitNo.Text = "";
        txt_unitType.Text = "";
        txt_location.Text = "";
    }
}







