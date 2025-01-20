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
            
            
           <h2>View All Booking Details</h2>

                <table border="1">
                                
                    <tr> <th>Sr.No</th>
                       <th>UserName</th>
                   <th>Email</th>
                     <th>Mobile</th>
                    <th>Train Number</th>
                 
                 <th>Train Name</th>
                   <th>Train Type</th>
                   
                       <th>No.of Seats Booked</th>
                        <th>Date Of Booked</th>
                    <th>Total Price </th>
                     <th>Accept </th></tr>
              <%
              try{
                  String query="select * from railways r,booking b, user u where u.id=b.user_id and r.id=b.r_id";
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
                        <td><%=c%></tD>
                        <td><%=r.getString("u.name")%></td>
                        <td><%=r.getString("u.email")%></td>
                        <td><%=r.getString("u.mobile")%></td>
                         <td><%=r.getString("r.number")%></td>
                        <td><%=r.getString("r.name")%></td>
                        <td><%=r.getString("r.stype")%></td>
                     
                        
                        <td><%=r.getString("b.selected_seats")%></td>
                          <td><%=r.getString("b.date")%></td>
                        <td><%=tt%></td>
                        <%if(statu.equals("waiting")){%>
                        <td><a href="AcceptDetails.jsp?id=<%=r.getString("b.id")%>">Accept</a></td>
                       <%}else{
%>
 <td><%=r.getString("b.status")%></td>
<%
}
                    
                  }
                  
                  
              }catch(Exception e){
                  out.println(e);
              }
              
              
              
              %>      

                  
                </table>
            
         
        </center>
            
            
    

</p>
</body>
</html>