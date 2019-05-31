<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehicle.aspx.cs" Inherits="Vehicle" UnobtrusiveValidationMode="None" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 457px;
        }
    </style>

    <style type="text/css">
        #vechicles
        {
            height: 465px;
        }
        
        #menu ul {
            list-style: none;
        }
        #menu ul li{
            float: left;
            text-align: center;
            font-size: 20px;
            height: 64px;
            width: 170px;
            line-height:64px;
            background-color: #e5096f;
        }
        #menu ul li:hover {
            background-color:grey;
        }
        #menu ul ul {
            display: none;
        }
        * {
            margin:0px;
            padding: 0px;
        }
        #menu ul li:hover > ul {
            display: block;
        }
        #menu ul li ul li a {
            color:white;
            text-decoration:none;
            text-align:center;
        }
        #menu ul li a {
            color:white;
            text-decoration:none;
            text-align:center;
        }

        .auto-style1 {
			width: 158px;
		}
		.auto-style2 {
			width: 44%;
		}

        </style>

    <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
</head>
    <body style=" background-image:url('styles/logo_2.jpg'); margin-top:119px; width:1568px;">
   
<form id="form2" runat="server">
    <div class="section-1">
            <div class="nav" id="menu">
               <ul>
                   <li><a href="default.aspx">Home</a></li>
                   <%--<li>Accommodation
                       <ul>
                           <li><a href="Accommodation.aspx">Add</a></li>
                           <li><a href="View_accommodation.aspx">View</a></li>
                           <li><a href="Book_accommodation.aspx">Book</a></li>
                       </ul>
                    </li>--%>
                   <li>Vehicles
                        <ul>
                           <li><a href="Vehicle.aspx">Add</a></li>
                           <li><a href="View_vehicles.aspx">View</a></li>
                           <li><a href="Book_vechicle.aspx">Book</a></li>
                       </ul>
                   </li>
               </ul>
            </div>
            <div class="logo">
                <img src="styles/logo.jpg" style="height: 82px; float: right; width: 20%; height: 92px; margin-left: 0px; margin-top: 0px;" />
            </div>
        </div>

   
<%--<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>--%>
       
  <div class="section-3" id="main-table">      
 <table id="accommodation"  style =" margin: 0 auto;" class="auto-style2">
            <tr>
             <td class="auto-style1"><h2>Vehicle</h2></td>
            </tr>
         
          <tr>
            <td class="auto-style1"><label>Car Registration:</label></td>
            <td class="style1">
                <asp:TextBox ID="txt_car_reg" runat="server" Width="278px" maxlength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_car_reg" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_car_reg" ErrorMessage="Alphanumerics only" ValidationExpression="\w+[a-zA-Z\s]+$" style="color:Red"></asp:RegularExpressionValidator>
               </td>
          </tr>
           <tr>
              <td class="auto-style1"><label>Car Policy:</label> </td>
              <td class="style3">
                  <asp:TextBox ID="txt_car_policy" runat="server" Width="277px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_car_policy" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
               </td>
           </tr>
	 <tr>
              <td class="auto-style1"><label>Car Model:</label> </td>
              <td class="style3">
                  <asp:TextBox ID="Car_Model" runat="server" Width="277px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_car_policy" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
               </td>
           </tr>
	 <tr>
              <td class="auto-style1">Brand Name<label>:</label> </td>
              <td class="style3">
                  <asp:TextBox ID="Brand_name" runat="server" Width="276px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_car_policy" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
               </td>
           </tr>
           <tr>
              <td class="auto-style1">
                  <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                  <asp:Label ID="lbltext" runat="server"></asp:Label>
               </td>
            </tr>
     </table>
    </div>    
    </form>
</body>
</html>


