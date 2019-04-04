
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%
    
            
        String uid=request.getParameter("STDU");
        
        String p1=request.getParameter("STDP");
       
        
    
     
     
            uid=uid.replace("'","\\");
            p1=p1.replace("'","\\");
            
          
     
     String q = "select * from student where SID='"+uid+"' and password='"+p1+"'";
     String u="jdbc:mysql://localhost:3306/stp7";
     Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(q);
        
     
     if (rs.next()){
         
                session.setAttribute("branch", rs.getString(3));
             response.sendRedirect("studentportal.jsp");
                      
         }
         else{
             
              out.println("<H1><FONT COLOR='RED'>INVALID LOGIN_ID OR PASSWORD");
              
         }
         
        
     
    
     
     

    
  
          
    %>