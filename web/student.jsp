<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

        <%
         String name=request.getParameter("name");
         String dept=request.getParameter("department");
         String semes=request.getParameter("semester");
         String mob=request.getParameter("mobile");
         String email=request.getParameter("email");
         String add=request.getParameter("address");
         String dob=request.getParameter("dob");
         String gender=request.getParameter("Gender");
         
       try {   
       String query="insert into Student(name,department,semester,mobile,email,address,dob,gender) values('"+name+"','"+dept+"','"+semes+"','"+mob+"','"+email+"','"+add+"','"+dob+"','"+gender+"')";
        
       Class.forName("com.mysql.jdbc.Driver"); 
       String u="jdbc:mysql://localhost:3306/stp7";
       Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
       int re= st.executeUpdate(query);
       
       
       String q= "select SID from Student where name='"+name+"'";
       Class.forName("com.mysql.jdbc.Driver"); 
       String u1="jdbc:mysql://localhost:3306/stp7";
       Connection con1 = DriverManager.getConnection(u,"root","qwerty");
       Statement st1 = con.createStatement();

       ResultSet rs = st.executeQuery(q);
            if(rs.next()) { 
            
        out.print(" <font color='green'> <b><h3>Registration successful!!</h3></b></font>");
        out.println("<br><br><br><center><h1>your user_id is <font color='red'>"+rs.getString("SID"));
        out.println(" </font>and password is : <font color='red'>rcpl@123</font>");
        out.println("<br><br><a href='studentlogin.html'> Click here to login</a>");
       }
       }
       catch(Exception e) {
           out.println(e);
       } 
        
        
        %>