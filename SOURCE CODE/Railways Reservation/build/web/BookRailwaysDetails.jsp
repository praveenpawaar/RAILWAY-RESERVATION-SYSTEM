<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%
    String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
String mobile=(String)session.getAttribute("mobile");
            
    
    
String id1=request.getParameter("id");
String tno=request.getParameter("tno");
String aseat=request.getParameter("aseat");
String price=request.getParameter("price");

String seats=request.getParameter("seats");

int aseats=Integer.parseInt(seats);

try{
    ResultSet r=Queries.getExecuteQuery("select * from railways where id='"+id1+"'and number='"+tno+"'");
    int available=0;
    
    while(r.next()){
        available=Integer.parseInt(r.getString("available_seats"));
    }
    
   int cc=available-aseats;
   
   int i=Queries.getExecuteUpdate("insert into booking values(null,'"+id+"','"+id1+"','"+tno+"','"+seats+"','"+price+"','waiting',now())");
   if(i>0){
     Queries.getExecuteUpdate("update railways set available_seats='"+cc+"'where id='"+id1+"'");
     %>
     <script type="text/javascript">
         window.alert("Booking Request Sent to Railway Admin Wait for Accepts");
         window.location="SearchTrains.jsp";
         </script>
     
     <%
   }else{
%>
     <script type="text/javascript">
         window.alert("Booking Request Sending Failed");
         window.location="SearchTrains.jsp";
         </script>
     
     <%
}
   
   
    
}catch(Exception e){
  out.println(e);  
}



%>