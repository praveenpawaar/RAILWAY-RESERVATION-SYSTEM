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
            
            
       String searchname=request.getParameter("name");     
        

String id1=request.getParameter("id");
String tno=request.getParameter("tno");
String aseat=request.getParameter("aseat");
String price=request.getParameter("price");

if(id1!=null||tno!=null||aseat!=null||price!=null){
    %>
    <form action="BookRailwaysDetails.jsp" method="post">
        <table>
              <tr><th></th><td><input type="hidden" name="id" value="<%=id1%>"></tD></tr>
            <tr><th>Train Number</th><td><input type="text" name="tno" value="<%=tno%>" readonly=""></tD></tr>
            <tr><th>Available Seats</th><td><input type="number" name="aseat" value="<%=aseat%>" readonly=""></tD></tr>
            <tr><th>Price</th><td><input type="number" name="price" value="<%=price%>" readonly=""></tD></tr>
            <tr><th>No.of Seats</th><td><input type="number" name="seats"  required=""></tD></tr>
            <tr><th></th><td><input type="submit" value="Confirm Book"></tD></tr>
        </table>
    
        </form>
    <%
}
            %>
              
           <h2>Search Result</h2>

                <table border="1">
                                
                    <tr>
                      
                    <th>Train Number</th>
                 
                 <th>Train Name</th>
                   <th>Train Type</th>
                     <th>Run Days</th>
                     <th>Departure time(hrs)</th>
                       <th>Arrival Time(hrs)</th>
                     
                       <th>Available Seats</th>
                    <th>Price Each Seat </th>
                     <th>Book Ticket </th></tr>
              <%
              try{
                  String query="select * from railways where number like '%"+searchname+"%' or name like '%"+searchname+"%' or stype like '%"+searchname+"%' or stype like '%"+searchname+"%'";
                  ResultSet r=Queries.getExecuteQuery(query);
                  int c=0;
                  while(r.next()){
                      c=c+1;
                 
                      %>
                    <tr>
                        
                         <td><%=r.getString("number")%></td>
                        <td><%=r.getString("name")%></td>
                        <td><%=r.getString("stype")%></td>
                        <td><%=r.getString("runsdays")%></td>
                        <td><%=r.getString("departure")%></td>
                        <td><%=r.getString("arrival")%></td>
                        
                       
                        <td><%=r.getString("available_seats")%></td>
                        <td><%=r.getString("price")%> RS</td>
                        <td><a href="SearchAction.jsp?id=<%=r.getString("id")%>&tno=<%=r.getString("number")%>&aseat=<%=r.getString("available_seats")%>&price=<%=r.getString("price")%>">Book Ticket</a></td>
                       
                    <%
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