using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMSSystem
{
    public partial class View_vehicles : System.Web.UI.Page
    {
        //    string connStr = ConnectionStrings["AMS_DataConnection"].ConnectionString;
        //    SqlConnection conn = new SqlConnection(connStr);
        //    StringBuilder htmlTable = new StringBuilder();
        //    protected void Page_Load(object sender, EventArgs e)
        //    {
        //        if (!IsPostBack)
        //        {
        //            using (SqlCommand cmd = new SqlCommand())
        //            {
        //                cmd.Connection = conn;
        //                cmd.CommandType = CommandType.Text;
        //                cmd.CommandText = "SELECT * FROM Booking_Vechicles JOIN Vehicles ON Booking_Vechicles.Vechicles_ID = Vehicles.ID JOIN Employees ON Booking_Vechicles.StaffId = Employees.ID WHERE Reserved = '1'";
        //                cmd.Open();
        //                SqlDataReader dr = cmd.ExecuteReader();

        //                htmlTable.Append("<table border='1'>");
        //                htmlTable.Append("<tr><th>Car Reg</th><th>Driver</th><th>Passenger Name</th><th>Additional Driver</th><th>Pick-up Date</th><th>Drop-off Date</th><th>Remarks</th></tr>");

        //                if (dr.HasRows)
        //                {
        //                    while (dr.Read())
        //                    {
        //                        htmlTable.Append("<tr>");
        //                        htmlTable.Append("<td>" + dr[0] + "" + dr[1] + "</td>");
        //                        htmlTable.Append("<td>" + dr[4] + "" + dr[5] + "</td>");
        //                        htmlTable.Append("<td>" + dr[4] + "" + dr[5] + "</td>");
        //                        htmlTable.Append("<td>" + dr[6] + "</td>");
        //                        htmlTable.Append("<td>" + dr[7] + "</td>");
        //                        htmlTable.Append("<td>" + dr[8] + "</td>");
        //                        htmlTable.Append("<td>" + "<img src= 'styles/iconfinder_cancel_48_10277.png'></img>" + "</td>");
        //                        htmlTable.Append("<td>" + "<img src= 'styles/iconfinder_cancel_48_10277.png'></img>" + "</td>");
        //                    }
        //                    htmlTable.Append("</table>");
        //                    reserved.Controls.Add(new Literal { Text = htmlTable.ToString() });
        //                    dr.Close();
        //                    dr.Dispose();
        //                }

        //            }
        //        }
        //    }
        //}
    }
}