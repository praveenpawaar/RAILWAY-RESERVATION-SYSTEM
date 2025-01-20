<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Railways Reservation</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h3><font size="5" color="white">Railways Reservation</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="AdminHome.jsp">Home</a></li>
			<li><a href="AddRailwayDetails.jsp">Add Railway Details</a></li>
                        <li><a href="ViewRailwayDetails.jsp">View Railway Details</a></li>
                        <li><a href="BookingDetails.jsp">Booking Details</a></li>
                        <li><a href="Admin.jsp">Logout</a></li>
			
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/railways.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
	<center>
            
           <h2>Add Railways Details</h2>
          
              <form action="AddAction.jsp" method="post">
                <table>
                    <tr><th>Service Number</th><td><input type="number" name="number" required=""></td></tr>
                    <tr><th>Service Name</th><td><input type="text" name="name" required=""></td></tr>
                    <tr><th>Service Type</th><td><input type="text" name="type" required=""></td></tr>
                     <tr><th>DEPARTURE TIME(HRS)</th><td><input type="text" name="departure" required=""></td></tr>
                    <tr><th>ARRIVAL TIME(HRS)</th><td><input type="text" name="arrival" required=""></td></tr>
                    <tr><th>RUN DAYS</th><td><input type="text" name="runsdays" required=""></td></tr>
                     <tr><th>No.of Seats</th><td><input type="text" name="seats" required=""></td></tr>
                     <tr><th>Price</th><td><input type="text" name="price" required=""></td></tr>
                        
<tr><th></th><td><input type="submit" value="Add Details" required="">
<input type="reset" value="Reset"></td></tr>
                  
                </table>
            
            </form>  
            
            
            
        </center>


</p>
</body>
</html>