<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Railways Reservation</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="table.css" />
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
			<li class="first current_page_item"><a href="UserHome.jsp">Home</a></li>
			<li><a href="SearchTrains.jsp">Search Trains</a></li>
                        <li><a href="ViewBookings.jsp">View Bookings</a></li>
                       
                        <li><a href="User.jsp">Logout</a></li>
			
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/railways.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
	<center>
               <%
            
String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
String mobile=(String)session.getAttribute("mobile");
            %>
            
           <h2>View All Booking Details</h2>

                <table border="1">
                                
                    <tr>
                       <th>UserName</th>
                   
                    <th>Train Number</th>
                 
                 <th>Train Name</th>
                   <th>Train Type</th>
                   <th>Runs Days</th>
                   <th>Departure(Hrs)</th>
                   <th>Arrive(Hrs)</th>
                       <th>No.of Seats Booked</th>
                        <th>Date of Booked</th>
                    <th>Total Price </th>
                     <th>Accept </th></tr>
              <%
              try{
                  String query="select * from railways r,booking b, user u where u.id=b.user_id and r.id=b.r_id and b.user_id='"+id+"'";
                  ResultSet r=Queries.getExecuteQuery(query);
                  int c=0;
                  while(r.next()){
                      c=c+1;
                 int ss=Integer.parseInt(r.getString("b.selected_seats"));
                 int pp=Integer.parseInt(r.getString("b.price"));
                 int tt=ss*pp;
                 String statu=r.getString("b.status");
                      %>
                    <tr>
                       
                        <td><%=r.getString("u.name")%></td>
                       
                         <td><%=r.getString("r.number")%></td>
                        <td><%=r.getString("r.name")%></td>
                        <td><%=r.getString("r.stype")%></td>
                     <td><%=r.getString("r.runsdays")%></td>
                     <td><%=r.getString("r.departure")%></td>
                     <td><%=r.getString("r.arrival")%></td>
                        
                        <td><%=r.getString("b.selected_seats")%></td>
                           <td><%=r.getString("b.date")%></td>
                        <td><%=tt%></td>
                       <td><%=r.getString("b.status")%></td>
                    
                <%  }
                  
                  
              }catch(Exception e){
                  out.println(e);
              }
              
              
              
              %>      

                  
                </table>
            
         
        </center>
            
            
    

</p>
</body>
</html>