<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

    String id=request.getParameter("id");
    
    String query="update booking set status='Accepted' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
     

%>
      <script type='text/javascript'>
          window.alert("Accepted Successful...!!");
          window.location="BookingDetails.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Accepting Failed..!!");
          window.location="BookingDetails.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>