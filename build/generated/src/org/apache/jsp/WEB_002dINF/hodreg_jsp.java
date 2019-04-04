package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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

      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("    <h1>\n");
      out.write("        <FONT COLOR=\"red\"><U>WELCOME TO UNIVERSITY STUDENT REGISTRATION PAGE</u></FONT> \n");
      out.write("        <hr>\n");
      out.write("        <pre>\n");
      out.write("        <form action=\"#\" METHOD=\"POST\">\n");
      out.write("            NAME : <INPUT type=\"TEXT\" name=\"NAME\" placeholder=\"ENTER YOUR NAME HERE\">\n");
      out.write("            \n");
      out.write("            DEPARTMENT : <select>\n");
      out.write("                <option>CSE</option>\n");
      out.write("                <option>ELECTRICAL</option>\n");
      out.write("                <option>ELECTRONICS</option>\n");
      out.write("                <option>MECHANICAL</option>\n");
      out.write("                <option>CIVIL</option>\n");
      out.write("            </select>\n");
      out.write("            \n");
      out.write("      GENDER :    MALE <INPUT type=\"radio\" name=\"gender\" value=\"male\" id=\"male\">\n");
      out.write("                FEMALE <INPUT type=\"radio\" name=\"gender\" value=\"male\" id=\"male\">\n");
      out.write("                   \n");
      out.write("           D.O.B : <input TYPE=\"date\" NAME=\"DATE\">\n");
      out.write("           \n");
      out.write("          SALARY : <input type=\"text\" name=\"SALARY\">\n");
      out.write("                   \n");
      out.write("          MOBILE : <INPUT type=\"text\" name=\"MOBILE\" placeholder=\"ENTER YOUR MOBILE NUMBER\">\n");
      out.write("          \n");
      out.write("           EMAIL : <input type=\"text\" name=\"EMAIL\" placeholder=\"ENTER YOUR EMAIL ID\">\n");
      out.write("          \n");
      out.write("         ADDRESS : <input type=\"text\" name=\"ADDRESS\" placeholder=\"ENTER YOUR ADDRESS\">\n");
      out.write("                                   \n");
      out.write("                          \n");
      out.write("    </h1>\n");
      out.write("</center>\n");
      out.write("</body>\n");
      out.write("</html>");
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
