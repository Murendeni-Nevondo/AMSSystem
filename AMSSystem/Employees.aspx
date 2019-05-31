<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="AMSSystem.Employees"  UnobtrusiveValidationMode="None"%>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employees</title>
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
            <div class="navbar" id="menu">
               <ul>
                   <li><a href="default.aspx">Home</a></li>
                   <%--<li>Accommodation
                       <ul>
                           <li><a href="Accommodation.aspx">Add</a></li>
                           <li><a href="View_accommodation.aspx">View</a></li>
                           <li><a href="Book_accommodation.aspx">Book</a></li>
                       </ul>
                    </li>
                   <li>Vehicles
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
             <td class="auto-style1"><h2>Employee</h2></td>
            </tr>
         
          <tr>
            <td class="auto-style1"><label>Staff Number:</label></td>
            <td class="style1">
                <asp:TextBox ID="txt_staff" runat="server" Width="278px" maxlength="5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_staff" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_staff" ErrorMessage="Numerics only" ValidationExpression="^\d+$" style="color:Red"></asp:RegularExpressionValidator>
               </td>
          </tr>
         <tr>
             <td class="auto-style1"><label>First Name:</label> </td>
             <td class="style1"><asp:TextBox ID="txt_firstname" runat="server" Width="278px" maxlength="10"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_firstname" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_firstname" ErrorMessage="Letters only" ValidationExpression="\w+[a-zA-Z\s]+$" style="color:Red"></asp:RegularExpressionValidator>
              </td>
         </tr>
         <tr>
            <td class="auto-style1"><label>Last Name:</label></td>
            <td class="style1"><asp:TextBox ID="txt_lastname" runat="server" Width="278px"   maxlength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_lastname" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_lastname" ErrorMessage="Letters only" ValidationExpression="\w+[a-zA-Z\s]+$" style="color:Red"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
            <td class="auto-style1"><label>Passport No</label></td>
            <td class="style1">
                <asp:TextBox ID="txt_passportNO" runat="server" Width="278px" maxlength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_passportNO" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_passportNO" ErrorMessage="Alphanumerics only" ValidationExpression="\w+[a-zA-Z\s]+$" style="color:Red"></asp:RegularExpressionValidator>
                 </td>
          </tr>
          <tr>
              <td class="auto-style1"><label>Contact No:</label></td>
               <td class="style1">
                <asp:TextBox ID="txt_contactNo" runat="server" Width="278px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_contactNo" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txt_contactNo" ErrorMessage="Numerics only" ValidationExpression="^\d+$" style="color:Red"></asp:RegularExpressionValidator>
              </td>
          </tr>
           <tr>
              <td class="auto-style1"><label>Email:</label> </td>
              <td class="style3">
                   <asp:TextBox ID="email_txt" runat="server" Width="278px" ></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="email_txt" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="email_txt" ErrorMessage="Correct format eg. firstname.lastname@zensar.com" ValidationExpression="[a-z0-9][-a-z0-9._]+@([-a-z0-9]+[.])+[a-z]{2,5}$" style="color:Red"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
              <td class="auto-style1"><label>Client's Address:</label> </td>
              <td class="style3">
                  <asp:TextBox ID="txt_cAddress" runat="server" TextMode="MultiLine" Height="65px" Width="149px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_cAddress" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
               </td>
           </tr>
            <tr>
              <td class="auto-style1"><label>Employee's Address:</label> </td>
              <td class="style3">
                  <asp:TextBox ID="txt_emAddress" runat="server" TextMode="MultiLine" Height="65px" Width="149px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_emAddress" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
               </td>
           </tr>
            <tr>
              <td class="auto-style1"><label>Salary Model:</label> </td>
              <td class="style3">
                  <asp:DropDownList ID="txt_salary_model" runat="server" Height="16px" Width="148px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Livex</asp:ListItem>
                    <asp:ListItem>Payroll</asp:ListItem>
                  </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_salary_model" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>  
               </td>
           </tr>
           <tr>
              <td class="auto-style1">
                  <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" CssClass="btn btn-primary"/>
                  <asp:Label ID="lblErrorOrSuccess" runat="server" ForeColor="Red"></asp:Label>
               </td>
            </tr>
     </table>
          
    </form>
        

</body>
</html>
