<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%

 try{
     String number=request.getParameter("number");
               String name=request.getParameter("name");
       String from=request.getParameter("from");
       String to=request.getParameter("to");
       String arrival=request.getParameter("arrival");
         String departure=request.getParameter("departure");
        String seats=request.getParameter("seats");
        String price=request.getParameter("price");
     String runsdays=request.getParameter("runsdays");
     String type=request.getParameter("type");
          
            Connection con=Dbconnection.getcon();
            PreparedStatement pst=con.prepareStatement("insert into railways values(null,'"+number+"','"+name+"','"+type+"','"+departure+"','"+arrival+"','"+runsdays+"','"+seats+"','"+seats+"','"+price+"')");
          
            int i=pst.executeUpdate();
            if(i>0){
                %>
                <script type="text/javascript">
                    window.alert("Successfully Added...!!");
                    window.location="AddRailwayDetails.jsp";
                </script>
                <%
            
            }else{
              %>
                <script type="text/javascript">
                    window.alert("Adding Failed");
                    window.location="AddRailwayDetails.jsp";
                </script>
                <%
            }
            
            
        
    }catch(Exception e){
    System.out.println(e);    
    }

%>