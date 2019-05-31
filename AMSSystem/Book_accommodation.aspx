<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_accommodation.aspx.cs" Inherits="AMSSystem.Book_accommodation"   UnobtrusiveValidationMode="None" %>

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
        /** {
            margin:12px 0px 0px 0px;
            padding: 0px;
        }*/
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
			height: 89px;
			width: 115px;
		}
    	.auto-style3 {
			height: 38px;
			width: 115px;
		}
		.auto-style4 {
			text-align: left;
		}
		.auto-style5 {
			height: 38px;
			text-align: left;
		}
		.auto-style6 {
			height: 89px;
			text-align: left;
		}
    	.auto-style7 {
			width: 115px;
		}
		.auto-style8 {
			width: 46%;
		}
		.auto-style9 {
			width: 85%;
			float: right;
			height: 470px;
			margin-left: 175px;
		}
    </style>
</head>

<body style="background-image: url('styles/logo_2.jpg'); margin-top: 119px; width: 1568px;">
    <form id="form1" runat="server">
      <div class="section-1">
            <div class="nav" id="menu">
               <ul>
                   <li><a href="default.aspx">Home</a></li>
                   <li>Accommodation
                       <ul>
                           <li><a href="Accommodation.aspx">Add</a></li>
                           <li><a href="View_accommodation.aspx">View</a></li>
                           <li><a href="Book_accommodation.aspx">Book</a></li>
                       </ul>
                    </li>
                   <%--<li>Vehicles
                        <ul>
                           <li><a href="Vehicle.aspx">Add</a></li>
                           <li><a href="View_vehicles.aspx">View</a></li>
                           <li><a href="Book_vechicle.aspx">Book</a></li>
                       </ul>
                   </li>--%>
               </ul>
            </div>
            <div class="logo">
                <img src="styles/logo.jpg" style="height: 82px; float: right; width: 20%; height: 92px; margin-left: 0px; margin-top: 0px;" />
            </div>
        </div>
		<h2>BOOKING THE ROOM</h2>
        <div class="auto-style9" id="main-table">
            <table id="insert_vec" style="margin-left: auto; margin-right: auto; margin-top: 0;" class="auto-style8">
                <tr>
                    <td class="auto-style2">
                        <label>Available Room:</label></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="drplist" runat="server" DataSourceID="SqlDataSource3" DataTextField="UnitName" DataValueField="UnitName" Height="28px" Width="278px">
						</asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AMS_DataConnection %>" SelectCommand="SELECT [UnitName] FROM [Accommodation]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_avail_units" ErrorMessage="*" Style="color: Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;
                    	<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <label>&nbsp;Units No:</label></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="txt_avail_units" runat="server" DataSourceID="SqlDataSource1" DataTextField="UnitNo" DataValueField="UnitNo" Height="28px" Width="278px">
						</asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_avail_units" ErrorMessage="*" Style="color: Red"></asp:RequiredFieldValidator>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMS_DataConnection %>" SelectCommand="SELECT [unitNo] FROM [Accommodation]"></asp:SqlDataSource>
                    &nbsp;&nbsp;
                    	<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <label>Employee's name:</label></td>
                    <td class="auto-style4">
                    	&nbsp;<asp:DropDownList ID="txt_employee" runat="server" DataSourceID="SqlDataSource2" DataTextField="FirstName" DataValueField="FirstName" Height="36px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="278px">
						</asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_employee" ErrorMessage="*" Style="color: Red"></asp:RequiredFieldValidator>
                    	&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMS_DataConnection %>" SelectCommand="SELECT [FirstName] FROM [Employees]" ></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <label>Check-in Date:</label></td>
                    <td class="auto-style5">
                        &nbsp;
                        <asp:TextBox ID="txtCheckinDate" runat="server" TextMode="Date" Height="16px" Width="277px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCheckinDate" ErrorMessage="*" Style="color: Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <label>Check-out Date:</label></td>
                    <td class="auto-style4">
                        &nbsp;
                        <asp:TextBox ID="txtCheckoutDate" runat="server" TextMode="Date" Height="16px" Width="278px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCheckoutDate" ErrorMessage="*" Style="color: Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                  <td class="auto-style7"><label>Remarks:</label> </td>
                  <td class="auto-style4">&nbsp; <asp:TextBox ID="txt_remarks" runat="server" Height="64px" Width="277px" MaxLength="100" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
						
                    </td>
                </tr>
				<tr>
					<td class="auto-style7">
						<asp:Label ID="LBLmssge" runat="server"></asp:Label>
					</td>
				</tr>
            </table>
        </div>
    </form>
</body>
</html>
