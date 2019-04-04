
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%
    
            
        String uid=request.getParameter("facn");
        
        String p1=request.getParameter("facp");
       
        
    
     
     
            uid=uid.replace("'","\\");
            p1=p1.replace("'","\\");
            
          
    
     String q = "select * from faculty where FID='"+uid+"' and password='"+p1+"'";
     
         Class.forName("com.mysql.jdbc.Driver");
         String u="jdbc:mysql://localhost:3306/stp7";
     Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(q);
     
     if (rs.next()){
         
        
             response.sendRedirect("facultyportal.html");
                      
         }
         else{
             
              out.println("<H1><FONT COLOR='RED'>INVALID LOGIN_ID OR PASSWORD");
         }
         
        
     
    
     
     

    
  
          
    %>