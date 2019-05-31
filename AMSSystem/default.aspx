<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AMSSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        #acc_img {
            cursor:pointer;
            margin-left:10px;
            margin-top: 10%;
            margin-bottom:50%;
            margin-right:30%;
        }
        #vech_img {
            cursor:pointer;
            height:150px;
            width:180px;
            
        }
        #emp_img {
            cursor:pointer;
            height:150px;
            width:180px;
        }
        .auto-style2 {
            width: 180px;
            height: 13%;
            margin-left: 188px;
            margin-top: 0px;
        }
        .auto-style3 {
            width: 180px;
            margin-top: 55px;
        }
        .auto-style4 {
            margin-left: 109px;
        }
        #menu ul li a {
            color:white;
            text-decoration:none;
            text-align:center;
        }
    </style>
    <script>
        function myFunction() {
            window.location.assign("Accommodation.aspx")
        }

        function function_vec() {
            window.location.assign("Vehicle.aspx")
        }

        function function_emp() {
           window.location.assign("Employees.aspx")
        }
    </script>
     <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
</head>
   
<body style=" background-image:url('styles/logo_2.jpg'); margin-top:119px; width:1568px;">
    <form id="form1" runat="server">
         <div class="section-1">
            <div class="nav" id="menu">
               <ul>
                   <li><a href="default.aspx">Home</a></li>
				   <li>
					   <a href="Employees.aspx" >Employee</a>
                   </li>
				   <li><a href="Accommodation.aspx">Accommodation</a></li>
				   <li><a href="Vehicle.aspx">Vehicle</a></li>
				</ul>
            </div>
            <div class="logo">
                <img src="styles/logo.jpg" style="height: 82px; float: right; width: 20%; height: 92px; margin-left: 0px; margin-top: 0px;" />
            </div>
        </div>
        <div class="section-3">
            <div id="acc_img"> 
                <img src="styles/home.png" onclick ="myFunction()" style="border-radius:50px;" class="auto-style3"/>
                <img src="styles/vw.png" style="border-radius:75px;" onclick ="function_vec()" id="vech_img" class="auto-style2"/>&nbsp;
                <img src="styles/employee.png" style="border-radius:75px;" onclick="function_emp()" id="emp_img" class="auto-style4"/></div>

        </div>
    </form>
</body>
</html>
