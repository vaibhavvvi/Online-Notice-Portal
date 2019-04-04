<body background="img/notice.jpg">
<center><br><br><br>
    <h1><b><u><font face='algerian'>DELETE A NOTICE</font></u></b></h1>
              
           
              <pre>
    <form>
        <b> ENTER SRNO :<input type="text" name="srn"></b>
        
                  <input type ="submit" name="submit">
    </form>
              </pre>
</center>
</body>





<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%String Ename = request.getParameter("srn");
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stp7","root","qwerty");
            Statement st = con.createStatement();
            
            
            
            int i = st.executeUpdate("Delete from notice where srno='"+Ename+"'");
           if(Ename!=null){
            if(i>0){
                
                out.println("Deletion Successful !!!");
            }
            else{
                out.println("NOTICE-Id not found-Deletion failed");
            }
            
        
            
        }
       
        }
        catch(Exception e){
            out.println(e);
            
        }
   
   %>