
<body background="img/notice.jpg"/>
<center><br><br>
    <h1> <b><u><font face="algerian" size=7>CREATE NOTICE</face></u></b> </h1>

    <pre>
<form action="HODcreatenotice.jsp">
    <TABLE border="2" width="5%"  height="5%">
        <tr>
            <TH> <FONT SIZE=5>ENTER YOUR<BR>HID</FONT></TH>
            <TH> <FONT SIZE=5>NOTICE</FONT></TH>
           <tH> <FONT SIZE=5>DATE</FONT></tH>
          </TR>
        <TR> 
            <TD>  <input type="TEXT" name="H"> </TD>
            <TD>  <textarea rows="20%" cols="70%" name="textarea"></textarea></TD>
            <TD>  <input type="date" name="date"> </TD><td></tr></TABLE>
    <input type ="submit" name="submit" values="Login"> <input type ="RESET" name="RESET" values="RESET">
</form>
    </pre>
 </center>

 
       <%@ page import="java.sql.*"%>
   <%@ page import="javax.sql.*"%>
   <%@page language="java" %>
   
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    
    String hid=request.getParameter("H");
        String dept=request.getParameter("dept");
       
        String name=request.getParameter("textarea");
        String date=request.getParameter("date");
       
        
    
     
     
            
   try{       
       String q1 = "select HDEPT from hod where HID='"+hid+"'";
     Class.forName("com.mysql.jdbc.Driver");
     String u1="jdbc:mysql://localhost:3306/stp7";
     Connection con1 = DriverManager.getConnection(u1,"root","qwerty");
       Statement st1 = con1.createStatement();
        ResultSet rs = st1.executeQuery(q1);
     
     if (rs.next()){
         
       
       
       
       
    Class.forName("com.mysql.jdbc.Driver"); 
       String u="jdbc:mysql://localhost:3306/stp7";
       Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
       
       
       
     String q ="insert into notice(type,notice,date) values('"+rs.getString(1)+"','"+name+"','"+date+"')";
      if(date!=null){
       int re= st.executeUpdate(q);
       
     if (re>0){
         
        
             response.sendRedirect("managenoticeHOD.jsp");
                      
         }
     out.println("updation fail!!!");
    
   }
   }
   }
   catch(Exception e){
    out.println(e);
}
      
    %>
    
</body>