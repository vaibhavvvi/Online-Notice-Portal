
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%
    
            
        String uid=request.getParameter("HUID");
        
        String p1=request.getParameter("HPSS");
       
        
    
     
     
            uid=uid.replace("'","\\");
            p1=p1.replace("'","\\");
            
          
    
     String q = "select * from hod where HID='"+uid+"' and password='"+p1+"'";
     String u="jdbc:mysql://localhost:3306/stp7";
     Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(q);
     
     if (rs.next()){
         
        
             response.sendRedirect("hodportal.html");
                      
         }
         else{
             
              out.println("<H1><FONT COLOR='RED'>INVALID LOGIN_ID OR PASSWORD");
         }
         
        
     
    
     
     

    
  
          
    %>