<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
        String query ="select * from notice";
   
        String u="jdbc:mysql://localhost:3306/stp7";
     Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
        
        out.println("<html><body background='img/notice.jpg'><center><br><br><br><h1><b><u><font face='algerian' size=7>ALL NOTICES</font></u></b></h1><table border=5>");
        
         
            out.println("<tr><th> SRNO </th>");
            out.println("<th> NOTICE </th>");
            out.println("<th> DATE </th>");
            out.println("<th> TYPE </th>");
   
  
            out.println("</tr>");
            
            while(rs.next()){
                
                out.println("<tr><td>"+rs.getString(1)+"</td>");
                out.println("<td>"+rs.getString(2)+"</td>");
                out.println("<td>"+rs.getString(3)+"</td>");
                out.println("<td>"+rs.getString(4)+"</td></TR>");
            }
        out.println("</table></center></body></html>");
            
        
    %>
    
    
    