package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class deletenotice_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<body background=\"img/notice.jpg\">\n");
      out.write("<center>\n");
      out.write("              DELETE A NOTICE\n");
      out.write("              \n");
      out.write("              <hr>\n");
      out.write("              <pre>\n");
      out.write("    <form>\n");
      out.write("        ENTER SRNO :<input type=\"text\" name=\"srn\">\n");
      out.write("        \n");
      out.write("                  <input type =\"submit\" name=\"submit\">\n");
      out.write("    </form>\n");
      out.write("              </pre>\n");
      out.write("</center>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
String Ename = request.getParameter("srn");
        
        
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
