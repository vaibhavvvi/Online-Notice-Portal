package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class ADMcreatenotice_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<center>\n");
      out.write("   <h1> TO CREATE NOTICE </h1>\n");
      out.write("    <HR>\n");
      out.write("      <pre><form>\n");
      out.write("    <TABLE border=\"2\" width=\"5%\"  height=\"5%\">\n");
      out.write("        <tr>\n");
      out.write("            <th>  <font size=\"2\">TYPE</th>\n");
      out.write("            <TH> <FONT SIZE=2>NOTICE</FONT></TH>\n");
      out.write("           \n");
      out.write("            <tH> <FONT SIZE=2>DATE</FONT></tH>\n");
      out.write("            \n");
      out.write("        </TR>\n");
      out.write("        <TR> \n");
      out.write("            <TD> <SELECT name=\"select\">\n");
      out.write("                <option>PUBLIC</option>\n");
      out.write("                <option> DEPARTMENTAL</option>\n");
      out.write("                </SELECT>\n");
      out.write("                </TD>\n");
      out.write("            <TD>  <textarea rows=\"30%\" cols=\"100%\" name=\"textarea\"></textarea></TD>\n");
      out.write("            <TD>  <input type=\"date\" name=\"date\"> </TD>\n");
      out.write("           \n");
      out.write("</td>\n");
      out.write("        </tr>\n");
      out.write("          \n");
      out.write("    </TABLE>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("             <input type =\"submit\" name=\"submit\" values=\"Login\"> <input type =\"RESET\" name=\"RESET\" values=\"RESET\">\n");
      out.write("</form>\n");
      out.write("    </pre>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</center>\n");
      out.write("\n");
      out.write(" \n");
      out.write("       \n");
      out.write("   \n");
      out.write("   \n");
      out.write("   \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    
    
    

        String type=request.getParameter("select");
        String name=request.getParameter("textarea");
        String date=request.getParameter("date");
       
        
    
     
     
            
   try{       
    Class.forName("com.mysql.jdbc.Driver"); 
       String u="jdbc:mysql://localhost:3306/stp7";
       Connection con = DriverManager.getConnection(u,"root","qwerty");
       Statement st = con.createStatement();
       
     String q ="insert into notice(type,notice,date) values('"+type+"','"+name+"','"+date+"')";
     
       int re= st.executeUpdate(q);
        if(date!="null"){
     if (re>0){
         
        
             response.sendRedirect("managenoticeHOD.jsp");
                      
         }
     out.println("updation fail!!!");
    
   }
   }
   catch(Exception e){
    out.println(e);
}
      
    
      out.write("\n");
      out.write("    \n");
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
