<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_vechicle.aspx.cs" Inherits="AMSSystem.Book_vechicle" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
      <style type="text/css">
        #accommodation
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
    	  .auto-style2 {
			  width: 147px;
		  }
		  .auto-style3 {
			  width: 40%;
			  height: 375px;
		  }
    </style>
</head>
<body style="background-image: url('styles/logo_2.jpg'); margin-top: 119px; width: 1568px;">
    <form id="form1" runat="server">
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
        <div class="section-2"></div>
        <div class="section-3" id="main-table">
        </div>

            <table id="insert_vec" style="margin: 0 auto;" class="auto-style3">
                
                  <tr>
                    <td class="auto-style2">
                        Car Registration<label>:</label></td>
                    <td class="style1">
                        <asp:DropDownList ID="txt_CarReg" runat="server" DataSourceID="SqlDataSource1" DataTextField="Car_Registration" DataValueField="Car_Registration" Width="280px">
						</asp:DropDownList>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMS_DataConnection %>" SelectCommand="SELECT [Car_Registration] FROM [Vehicle]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_employee" ErrorMessage="*" Style="color: Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <label>Employee&#39;s Staff ID:</label></td>
                    <td class="style1">
                        <asp:DropDownList ID="txt_employee" runat="server" DataSourceID="SqlDataSource2" DataTextField="StaffNumber" DataValueField="StaffNumber" Height="27px" Width="281px">
						</asp:DropDownList>
						<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMS_DataConnection %>" SelectCommand="SELECT [StaffNumber] FROM [Employees]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_employee" ErrorMessage="*" Style="color: Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <label>Passenger's name:</label></td>
                    <td class="style1">
                        <asp:TextBox ID="txt_Psngr" runat="server" Height="19px" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <label>Additional Driver's name:</label></td>
                    <td class="style1">
                        <asp:TextBox ID="txt_AddDriver" runat="server" Height="18px" Width="282px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <label>Pick-up Date:</label></td>
                    <td class="style3">
                        <asp:TextBox ID="txt_pick_up" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_pick_up" ErrorMessage="*" Style="color: Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <label>Drop-off Date:</label></td>
                    <td class="style3">
                        <asp:TextBox ID="txt_drop_date" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_drop_date" ErrorMessage="*" Style="color: Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                  <td class="auto-style2"><label>Remarks:</label> </td>
                  <td><asp:TextBox ID="txt_remarks" runat="server" Height="65px" Width="278px" MaxLength="100" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" Width="103px" /> 
						<br />
						<asp:Label ID="lblErrorOrSuccess" runat="server" Text="Label"></asp:Label>
						<br />
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>