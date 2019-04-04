
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%

       String uid =request.getParameter("admu");
        
        String p1=request.getParameter("admp");
       
        
    
     
     
            uid=uid.replace("'","\\");
            p1=p1.replace("'","\\");
            
          
    
     String q = "select * from adm where AID='"+uid+"' and password='"+p1+"'";
     Class.forName("com.mysql.jdbc.Driver");
     String u="jdbc:mysql://localhost:3306/stp7";
     Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(q);
     
     if (rs.next()){
         
             response.sendRedirect("admportal.html");
                      
         }
         else{
             
              out.println("<H1><FONT COLOR='RED'>INVALID LOGIN_ID OR PASSWORD");
         }
    
     %>
     
