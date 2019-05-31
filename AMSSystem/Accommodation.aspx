<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accommodation.aspx.cs" Inherits="Accommodation" UnobtrusiveValidationMode="None" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accommodation</title>
    <style type="text/css">
        #form1 {
            height: 457px;
        }
    </style>

    <style type="text/css">
        #accommodation
        {
            height: 465px;
        }
        .auto-style1 {
            width: 107px;
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
    </style>
    <script>

    </script>
    <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
</head>
    <body style=" background-image:url('styles/logo_2.jpg'); margin-top:119px; width:1568px;">
    
    <form id="form2" runat="server">
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

   
            
  <table id="accommodation"  style =" width: 40%  ; margin: 0 auto;">
            <tr>
             <td class="auto-style1"><h2>Accommodation</h2></td>
            </tr>
         
          <tr>
            <td class="auto-style1"><label>Unit Name:</label></td>
            <td class="style1">
                <asp:TextBox ID="txt_unitname" runat="server" Width="278px" maxlength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_unitname" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_unitname" ErrorMessage="Letters only" ValidationExpression="\w+[a-zA-Z\s]+$" style="color:Red"></asp:RegularExpressionValidator>
               </td>
          </tr>
         <tr>
             <td class="auto-style1"><label>Unit No:</label> </td>
             <td class="style1"><asp:TextBox ID="txt_unitNo" runat="server" Width="278px" maxlength="20"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_unitNo" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_unitNo" ErrorMessage="Alphanumerics only" ValidationExpression="\w+[a-zA-Z\s]+$" style="color:Red"></asp:RegularExpressionValidator>
              </td>
         </tr>
         <tr>
            <td class="auto-style1"><label>Landlord:</label></td>
            <td class="style1"><asp:TextBox ID="txt_landlord" runat="server" Width="278px"   maxlength="25"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_landlord" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_landlord" ErrorMessage="Letters only" ValidationExpression="\w+[a-zA-Z\s]+$" style="color:Red"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
            <td class="auto-style1"><label>Contact No</label></td>
            <td class="style1">
                <asp:TextBox ID="txt_landLordContact" runat="server" Width="278px" maxlength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_landLordContact" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_landLordContact" ErrorMessage="Numerics only" ValidationExpression="\d{10}" style="color:Red"></asp:RegularExpressionValidator>
                 </td>
          </tr>
          <tr>
              <td class="auto-style1"><label>Amount:</label></td>
               <td class="style1">
                <asp:TextBox ID="txt_amount" runat="server" Width="278px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_amount" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txt_amount" ErrorMessage="Numerics only" ValidationExpression="^\d+$" style="color:Red"></asp:RegularExpressionValidator>
              </td>
          </tr>
           <tr>
              <td class="auto-style1"><label>Unit Type:</label> </td>
              <td class="style3">
                  <asp:DropDownList ID="txt_unitType" runat="server" Height="16px" Width="148px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1BHK</asp:ListItem>
                    <asp:ListItem>2BHK</asp:ListItem>
                    <asp:ListItem>3BHK</asp:ListItem>
                  </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_unitType" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
               </td>
           </tr>
           <tr>
              <td class="auto-style1"><label>Address:</label> </td>
              <td class="style3">
                  <asp:TextBox ID="txt_location" runat="server" TextMode="MultiLine" Height="65px" Width="149px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_location" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
               </td>
           </tr>
            <tr>
              <td class="auto-style1"><label>Current Date:</label> </td>
              <td class="style3">
                  <asp:TextBox ID="txt_current_date" runat="server" TextMode="Date" Enabled="False"></asp:TextBox>
               </td>
           </tr>
           <tr>
              <td class="auto-style1">
                  <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="height: 29px" />
               </td>
            </tr>
	  <tr>
		 <td>
		 <asp:Label ID="lblErrorOrSuccess" runat="server"></asp:Label>
		</td>
	  </tr>
     </table>
          
    </form>
        

</body>
</html>
