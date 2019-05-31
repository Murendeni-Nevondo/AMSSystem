using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMSSystem
{
    public partial class view_accommodation : System.Web.UI.Page
    {

        //    protected void Page_Load(object sender, EventArgs e)
        //    {
        //        if (!IsPostBack){
        //            DataTable dt = this.GetData();
        //            StringBuilder html = new StringBuilder();
        //            html.Append("<table border = '1'>");
        //            html.Append("<tr>");
        //            foreach (DataColumn column in dt.Columns)
        //            {
        //                html.Append("<th>");
        //               // html.Append(column.Accommodation);
        //            }
        //        }
        //    }
        //}
        //// public DataTable GetData() {
        //     string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //     using (SqlConnection con = new SqlConnection(constr)) {
        //         using (SqlCommand cmd = new SqlCommand(""))
        //         using (SqlDataAdapter sda = new SqlDataAdapter()) {
        //             cmd.Connection = con;
        //             sda.SelectCommand = cmd;
        //             using (DataTable dt = new DataTable())
        //             {
        //                 sda.Fill(dt);
        //                 return dt;
        //             }

        //         }
        //     }

        // }
    }
}