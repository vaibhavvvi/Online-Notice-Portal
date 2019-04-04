
    
       <%@ page import="java.sql.*"%>
   <%@ page import="javax.sql.*"%>
   <%@page language="java" %>
   
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
    
                  
  



        <%
         String name=request.getParameter("NAME");
         String dept=request.getParameter("dept");
         String semes=request.getParameter("gender");
         String mob=request.getParameter("DATE");
         String email=request.getParameter("SALARY");
         String add=request.getParameter("MOBILE");
         String dob=request.getParameter("EMAIL");
         String gender=request.getParameter("ADDRESS");
       try {   
       String query="insert into hod(HNAME,HDEPT,GENDER,HDOB,SALARY,MOBILE,EMAIL,ADDRESS) values('"+name+"','"+dept+"','"+semes+"','"+mob+"','"+email+"','"+add+"','"+dob+"','"+gender+"')";
        
       Class.forName("com.mysql.jdbc.Driver"); 
       String u="jdbc:mysql://localhost:3306/stp7";
       Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
       int re= st.executeUpdate(query);
       
       String q= "select HID from hod where HNAME='"+name+"'";
       Class.forName("com.mysql.jdbc.Driver"); 
       String u1="jdbc:mysql://localhost:3306/stp7";
       Connection con1 = DriverManager.getConnection(u,"root","qwerty");
       Statement st1 = con.createStatement();

       ResultSet rs = st.executeQuery(q);
            if(rs.next()) { 
            String id = rs.getString("HID");
        out.print(" <font color='green'> <b><h3>Registration successful!!</h3></b></font>");
        out.println("<br><br><br><center><h1>your user_id is <font color='red'>"+rs.getString("HID"));
        out.println(" </font>and password is : <font color='red'>rcpl@123</font>");
        out.println("<br><br><a href='hodlogin.html'> Click here to login</a>");
       }
       }
       catch(Exception e) {
           out.println(e);
       } 
        
        
        %>
       
               
