using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace AMSSystem
{
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["AMS_DataConnection"].ConnectionString;

                // Check if the Employee is already in the database

                SqlDataAdapter checkEmployeeAdapter = new SqlDataAdapter("SELECT * FROM Employees WHERE StaffNumber ='" + txt_staff.Text+"'",connStr);
                var checkEmployeeDt = new DataTable();
                checkEmployeeAdapter.Fill(checkEmployeeDt);

                if(checkEmployeeDt.Rows.Count>0)
                {
                    lblErrorOrSuccess.Text = "Employee already Registerd";
                    
                }
                else
                {
                    string query = "INSERT INTO [dbo].[Employees] ([StaffNumber], [FirstName], [LastName], [PassportNo], [ContactNo], [Email], [ClientAddress], [EmployeeAddress], [SalaryModel]) VALUES ('" + txt_staff.Text + "', '" + txt_firstname.Text + "', '" + txt_lastname.Text + "', '" + txt_passportNO.Text + "', '" + txt_contactNo.Text + "','" + txt_emAddress.Text + "','" + txt_cAddress.Text + "','" + txt_emAddress.Text + "','" + txt_salary_model.Text + "')";
                    SqlConnection conn = new SqlConnection(connStr);
                    SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    ClearForm();
                    lblErrorOrSuccess.Text = "Employee succsefully Registered!";
                }


            }
            catch (SqlException ex)
            {

                lblErrorOrSuccess.Text = ex.Message;
                ClearForm();
                
            }

            // Clear The Form

             void ClearForm()
            {
                txt_staff.Text = "";
                txt_firstname.Text = "";
                txt_lastname.Text = "";
                txt_passportNO.Text = "";
                txt_contactNo.Text = "";
                email_txt.Text = "";
                txt_salary_model.Text = "";
                txt_cAddress.Text = "";
                txt_emAddress.Text = "";
            }
        }

    }
}
