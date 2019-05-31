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
    public partial class Book_accommodation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["AMS_DataConnection"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);

                SqlDataAdapter checkRoomAdapter = new SqlDataAdapter("select *from BookAccommodation where EmployeeName='" + txt_employee.SelectedItem+ "'", conn);
                DataTable tb = new DataTable();
                checkRoomAdapter.Fill(tb);

                if (tb.Rows.Count > 0)
                {
                    LBLmssge.Text = "You already allocated this person";
                    clearForm();
               }else
                {
                    //string connStr = ConfigurationManager.ConnectionStrings["AMS_DataConnection"].ConnectionString;

                    string query = "INSERT INTO [dbo].[BookAccommodation] ([AvailableUnits], [EmployeeName], [CheckInDate], [CheckOutDate], [Remarks], [UnitNo] ) VALUES ('"+drplist.SelectedValue+"','" + txt_employee.SelectedValue + "','" + txtCheckinDate.Text + "','" + txtCheckoutDate.Text + "','" + txt_remarks.Text + "','" + txt_avail_units.SelectedItem + "')";
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(query, connStr);
                    var dataTable = new DataTable();
                    dataAdapter.Fill(dataTable);
                    LBLmssge.Text = "You successful allocated";
                   

                    // updating table status [AccStatus to 1 or true]
                    

                    status();
                    clearForm();
                   
                }
            }
            catch (Exception ex)
            {
                //LBLmssge.Text = ex.Message;
            }
        }

        public void clearForm()
        {
            txt_remarks.Text = "";
            txt_avail_units.Text = "";
            txt_employee.Items.Remove(txt_employee.SelectedItem);
            txtCheckoutDate.Text = "";
            txtCheckinDate.Text = "";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public void status()
        {
            string connStr = ConfigurationManager.ConnectionStrings["AMS_DataConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            string query = "UPDATE Accommodation SET Accommodation.AccStatus = 1 FROM Accommodation INNER JOIN  BookAccommodation ON Accommodation.unitNo = BookAccommodation.unitNo";
            SqlDataAdapter updateAdapter = new SqlDataAdapter(query, conn);
            DataTable updatedt = new DataTable();
            updateAdapter.Fill(updatedt);
            updateAdapter.Update(updatedt);
          

        }

    }
}