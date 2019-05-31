using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vehicle : System.Web.UI.Page
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

            SqlDataAdapter checkRoomAdapter = new SqlDataAdapter("select *from Vehicle where Car_Registration ='" + txt_car_reg.Text + "'", conn);
            DataTable tb = new DataTable();
            checkRoomAdapter.Fill(tb);

            if (tb.Rows.Count > 0)
            {
                lbltext.Text = "The Car is already registered";

            }
            else
            {
              //  string connStr = ConfigurationManager.ConnectionStrings["AMS_DataConnection"].ConnectionString;
               // using (SqlConnection conn = new SqlConnection(connStr))
                

                    string sQuery = ("INSERT INTO Vehicle(Car_Registration,Car_Policy,Car_Model,Brand_name) VALUES ('" + txt_car_reg.Text + "','" + txt_car_policy.Text + "','" + Car_Model.Text + "','" + Brand_name.Text + "')");
                    SqlCommand sqlCmd = new SqlCommand(sQuery, conn);
                    conn.Open();
                    sqlCmd.ExecuteNonQuery();
                    conn.Close();
                    conn.Dispose();
                    lbltext.Text = "Succeefully Registered to the system";

                    txt_car_reg.Text = "";
                
            }
        }
        catch (Exception ex)
        {
            lbltext.Text = "Unsucceefully Registered to the system";
            
        }

    }


}