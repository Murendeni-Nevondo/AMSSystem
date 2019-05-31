<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_vehicles.aspx.cs" Inherits="AMSSystem.View_vehicles" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View accommodatiom</title>
    <link rel="stylesheet" type="text/css" href="styles/styles.css" />
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
        
         .fake-input { position: relative; width:240px;}
         .fake-input input {
                 border: none;
                 background: #fff;
                 display: block;
                 width: 98%;
                 box-sizing: border-box;
                 height: 2%;
             }
         .fake-input img {
            position:absolute; top: 0px; right:5px; width: 25px; height: 15px;
         }
        
         .auto-style3 {
             width: 25px;
             height: 17px;
             right: 5px;
             top: 2px;
         }
         .auto-style4 {
             width: 97%; 
         }
        
    </style>
</head>
    
<body style=" background-image:url('styles/logo_2.jpg'); margin-top:119px; width:1568px;">
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
         <div>
            <%--<div class="fake-input">
                <input type="text" class="auto-style4" /> 
                <img src="styles/search_2.png" class="auto-style3" />
            </div><br />--%>
             <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VEHICLES</h3>
			 <p>&nbsp;</p>
			 <p>&nbsp;</p>
        </div>
			 
		 <div class="container center">
		 <div class="row" " id="gridview1">
            <h3>
				<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Car_Registration" DataSourceID="SqlDataSource1">
					<Columns>
						<asp:BoundField DataField="Car_Registration" HeaderText="Car_Registration" ReadOnly="True" SortExpression="Car_Registration" />
						<asp:BoundField DataField="Car_Policy" HeaderText="Car_Policy" SortExpression="Car_Policy" />
						<asp:BoundField DataField="Car_Model" HeaderText="Car_Model" SortExpression="Car_Model" />
						<asp:BoundField DataField="Brand_name" HeaderText="Brand_name" SortExpression="Brand_name" />
						<asp:CheckBoxField DataField="Car_Status" HeaderText="Car_Status" SortExpression="Car_Status" />
					</Columns>
					<FooterStyle BackColor="White" ForeColor="#000066" />
					<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
					<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
					<RowStyle ForeColor="#000066" />
					<SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
					<SortedAscendingCellStyle BackColor="#F1F1F1" />
					<SortedAscendingHeaderStyle BackColor="#007DBB" />
					<SortedDescendingCellStyle BackColor="#CAC9C9" />
					<SortedDescendingHeaderStyle BackColor="#00547E" />
				</asp:GridView>
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMS_DataConnection %>" SelectCommand="SELECT * FROM [Vehicle]"></asp:SqlDataSource>
			</h3>
       </>
			 </div>
			 </div>
    </form>
</body>
</html>

