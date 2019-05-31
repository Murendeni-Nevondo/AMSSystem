<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_accommodation.aspx.cs" Inherits="AMSSystem.view_accommodation" UnobtrusiveValidationMode="None"%>

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
            display: block;
        }
        #menu ul li a {
            color:white;
            text-decoration:none;
            text-align:center;
        }
		
		
       
    </style>
</head>
    
<body style=" background-image:url('styles/logo_2.jpg'); margin-top:119px; width:1568px;">
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

		 <!-- Grig View Tables-->
		 <div class="container center">
		 <div class="row" " id="gridview1">
			 
             <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ROOMS&nbsp; </h3>
			 <p>&nbsp;</p>
			 <p>&nbsp;</p>
			 <p>&nbsp;</p>
			 <p>&nbsp;</p>
				 
					  <div style="text-align:center">
					 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="unitNo" Height="178px" Width="1300px">
						
						 <Columns>
							 <asp:BoundField DataField="UnitName" HeaderText="UnitName" SortExpression="UnitName" />
							 <asp:BoundField DataField="unitNo" HeaderText="unitNo" ReadOnly="True" SortExpression="unitNo" />
							 <asp:BoundField DataField="LandLord" HeaderText="LandLord" SortExpression="LandLord" />
							 <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
							 <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
							 <asp:BoundField DataField="UnitType" HeaderText="UnitType" SortExpression="UnitType" />
							 <asp:BoundField DataField="Adress" HeaderText="Adress" SortExpression="Adress" />
							 <asp:BoundField DataField="CurrentDate" HeaderText="CurrentDate" SortExpression="CurrentDate" />
							 <asp:CheckBoxField DataField="AccStatus" HeaderText="AccStatus" SortExpression="AccStatus" />
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
					 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMS_DataConnection %>" SelectCommand="SELECT * FROM [Accommodation]"></asp:SqlDataSource>
				</div>
				 <p>&nbsp;</p>
				 <p>&nbsp;</p>
        </div>
		 </div>

         
    </form>
</body>
</html>
