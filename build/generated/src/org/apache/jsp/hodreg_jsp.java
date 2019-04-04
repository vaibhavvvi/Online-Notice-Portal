package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class hodreg_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("    \n");
      out.write("       \n");
      out.write("   \n");
      out.write("   \n");
      out.write("   \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("                  \n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

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
        
        
        
      out.write("\n");
      out.write("       \n");
      out.write("               \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
