using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMSSystem
{
    public partial class Book_vechicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["AMS_DataConnection"].ConnectionString;

                // Check if the Vehicle is already booked

                SqlDataAdapter checkVehicleAdapter = new SqlDataAdapter("SELECT * FROM Reservation WHERE Car_Registration ='" +txt_CarReg.Text+ "'", connStr);
                var checkVehicleDt = new DataTable();
                checkVehicleAdapter.Fill(checkVehicleDt);

                if (checkVehicleDt.Rows.Count > 0)
                {
                    lblErrorOrSuccess.Text = "Vehicle already Reserved";

                }
                else
                {
                    string query = "INSERT INTO [dbo].[Reservation] ([CheckInDate], [CheckOutDate], [Car_Registration], [StaffId], [PassengerName], [AdditionalDriver], [Remarks]) VALUES ('"+txt_pick_up.Text+"', '"+txt_drop_date.Text+"', '"+txt_CarReg.Text+"', '"+txt_employee.Text+"', '"+txt_Psngr.Text+"', '"+txt_AddDriver.Text+"', '"+txt_remarks.Text+"')";
                    SqlConnection conn = new SqlConnection(connStr);
                    SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    ClearForm();
                    lblErrorOrSuccess.Text = "Vehicle succsefully Booked ";

                    // Update IsReserved attribute from Vehicle table

                    UpdateVehicleTable();


                }


            }
            catch (SqlException ex)
            {

                lblErrorOrSuccess.Text = ex.Message;
                ClearForm();

            }

        }

        void ClearForm()
        {
            txt_AddDriver.Text = "";
            txt_remarks.Text = "";
            txt_Psngr.Text = "";
            txt_pick_up.Text = "";
            txt_drop_date.Text = "";
           
        }

        public void UpdateVehicleTable()
        {
  
            string connStr = ConfigurationManager.ConnectionStrings["AMS_DataConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string query = "UPDATE Vehicle SET Vehicle.Car_Status = 1 FROM Vehicle  INNER JOIN  Reservation ON Vehicle.Car_Registration = Reservation.Car_Registration";


            SqlDataAdapter updateAdapter = new SqlDataAdapter(query, conn);
            DataTable updatedt = new DataTable();
            updateAdapter.Fill(updatedt);
            updateAdapter.Update(updatedt);
        }

    }
}