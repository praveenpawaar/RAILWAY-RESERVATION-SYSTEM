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
            <%String id=request.getParameter("id");
            if(id!=null){
              try{
                 String query="select * from railways where id='"+id+"'";
                  ResultSet r=Queries.getExecuteQuery(query);
                 
                  while(r.next()){
                %>
                <form action="UpdateAction.jsp" method="post">
                <table>
                    <tr>Note: Seats o price we can able to update here</tr>
                  <tr> 
                      <th>ID</th><td><input type="text" name="id" value="<%=id%>" style="width:200px;" readonly=""></tD></tr>
                    
                        <tr>  <th>Seats</th><td><input type="text" name="seats" value="<%=r.getString("seats")%>" style="width:200px;" required=""></tD></tr>
                 
                      <tr>  <th>Price</th><td><input type="number" name="price" value="<%=r.getString("price")%>" style="width:200px;" required=""></tD></tr>
                 
                     <tr>  <th></th><td><input type="submit" value="Update" ></tD></tr>
                 
                </table>
                    </form>
                <%
                    }
            }catch(Exception e){
out.println(e);
}
}
            %>
            
            
            
            
            
            
           <h2>View All Railway Details</h2>

                <table border="1">
                                
                    <tr> <th>Sr.No</th>
                      
                    <th>Train Number</th>
                 
                 <th>Train Name</th>
                   <th>Train Type</th>
                     <th>Run Days</th>
                     <th>Departure time(hrs)</th>
                       <th>Arrival Time(hrs)</th>
                       <th>No.of Seats</th>
                       <th>Available Seats</th>
                    <th>Price Each Seat </th>
                     <th>Update </th></tr>
              <%
              try{
                  String query="select * from railways";
                  ResultSet r=Queries.getExecuteQuery(query);
                  int c=0;
                  while(r.next()){
                      c=c+1;
                 
                      %>
                    <tr>
                        <td><%=c%></tD>
                         <td><%=r.getString("number")%></td>
                        <td><%=r.getString("name")%></td>
                        <td><%=r.getString("stype")%></td>
                        <td><%=r.getString("runsdays")%></td>
                        <td><%=r.getString("departure")%></td>
                        <td><%=r.getString("arrival")%></td>
                        
                        <td><%=r.getString("seats")%></td>
                        <td><%=r.getString("available_seats")%></td>
                        <td><%=r.getString("price")%> RS</td>
                        <td><a href="ViewRailwayDetails.jsp?id=<%=r.getString("id")%>">Update</a></td>
                       
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