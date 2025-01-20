<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%

 try{
     String id=request.getParameter("id");
     
               String name=request.getParameter("name");
    
       String timings=request.getParameter("timings");
        String seats=request.getParameter("seats");
        String price=request.getParameter("price");
     
          
            Connection con=Dbconnection.getcon();
            PreparedStatement pst=con.prepareStatement("update railways set seats='"+seats+"',price='"+price+"' where id='"+id+"'");
          
            int i=pst.executeUpdate();
            if(i>0){
                %>
                <script type="text/javascript">
                    window.alert("Updated Successfully...!!");
                    window.location="ViewRailwayDetails.jsp";
                </script>
                <%
            
            }else{
              %>
                <script type="text/javascript">
                    window.alert("Updation Failed");
                    window.location="ViewRailwayDetails.jsp";
                </script>
                <%
            }
            
            
        
    }catch(Exception e){
    System.out.println(e);    
    }

%>