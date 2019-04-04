<body background="img/notice.jpg" alt=""/>
<center><br><br>
   <h1>CREATE NOTICE </h1>

    <HR>
      <pre><form>
    <TABLE border="2" width="5%"  height="5%">
        <tr>
            <th>  <font size="5">TYPE</th>
            <TH> <FONT SIZE=5>NOTICE</FONT></TH>
           
            <tH> <FONT SIZE=5>DATE</FONT></tH>
            
        </TR>
        <TR> 
            <TD> <SELECT name="select">
                <option>PUBLIC</option>
                      
            
            <option>CSE</option>
            <option>ELECTRICAL</option>
            <option> ELECTRONICS</option>
            <option>MECHANICAL</option>
            <option> CIVIL</option>
            
            
            
            
            
           
          
        </select>
                </SELECT>
                </TD> 
            <TD>  <textarea  rows="20%" cols="70%" name="textarea" class="text"></textarea></TD>
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
    
    
    

        String type=request.getParameter("select");
        String name=request.getParameter("textarea");
        String date=request.getParameter("date");
       
        
    
     
     
            
   try{       
    Class.forName("com.mysql.jdbc.Driver"); 
       String u="jdbc:mysql://localhost:3306/stp7";
       Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
       
     String q ="insert into notice(type,notice,date) values('"+type+"','"+name+"','"+date+"')";
      if(date!=null){
       int re= st.executeUpdate(q);
       
     if (re>0){
         
        
             response.sendRedirect("managenoticeADM.jsp");
                      
         }
     out.println("updation fail!!!");
    
   }
   }
   catch(Exception e){
    out.println(e);
}
      
    %>
    
