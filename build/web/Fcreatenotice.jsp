<body background='img/notice.jpg'>
<center><br><br><br>
    <h1> <b><u><font face='algerian'>CREATE NOTICE </font></u>
        </b></h1>
    <HR>
      <pre><form>
    <TABLE border="2" width="10%"  height="10%">
            <TH>  TYPE </th>
            <TH> <FONT SIZE=5>NOTICE</FONT></TH>
            <tH> <FONT SIZE=5>DATE</FONT></tH>
            
        </TR>
        <TR> 
              <tH> <FONT SIZE=5></FONT>
                  <select name="type"> 
            <option>PUBLIC</option>
          
        </select>
            <TD>  <textarea rows="15%" cols="50%" name="textarea"></textarea></TD>
            <TD>  <input type="date" name="date"> </TD>
           
</td>
        </tr>
          
    </TABLE>
    
    
             <input type ="submit" name="submit" values="Login"> <input type ="RESET" name="RESET" values="RESET">
</form>
    </pre>
    
    
</center>

</body>
       <%@ page import="java.sql.*"%>
   <%@ page import="javax.sql.*"%>
   <%@page language="java" %>
   
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    
   

       
        
        String t=request.getParameter("textarea");
        
       
            String d=request.getParameter("date");
             String t2=request.getParameter("type");
         
     
     
            
   try{       
    Class.forName("com.mysql.jdbc.Driver"); 
       String u="jdbc:mysql://localhost:3306/stp7";
       Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
       
     String q ="insert into notice(type,notice,date) values('"+t2+"','"+t+"','"+d+"')";
     if(d!=null){
       int re= st.executeUpdate(q);
        
     
     if (re>0){
         
        
             response.sendRedirect("facultyportal.html");
                      
         }
         else{
             
              out.println("<H1><FONT COLOR='RED'>INVALID LOGIN_ID OR PASSWORD");
              
         }}
   }
   catch(Exception e){
    out.println(e);
}
      
    %>
    
