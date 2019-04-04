package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class editnoticeform_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <pre>\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write(" td:hover{\n");
      out.write("    background:orange;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<form action=\"editnotice.jsp\" method=\"post\">\n");
      out.write("    <TABLE border=\"2\" width=\"10%\"  height=\"10%\">\n");
      out.write("            <th> SRNO </TH>\n");
      out.write("            <TH>  TYPE </th>\n");
      out.write("            <TH> <FONT SIZE=3>NOTICE</FONT></TH>\n");
      out.write("            <tH> <FONT SIZE=3>DATE</FONT></tH>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </TR>\n");
      out.write("        <TR> \n");
      out.write("            <TD><input type=\"TEXT\"  name=\"srno\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.srno}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> </TD>\n");
      out.write("              <tH> <FONT SIZE=3></FONT>\n");
      out.write("                  <select name=\"type\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.type}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> \n");
      out.write("            <option>PUBLIC</option>\n");
      out.write("            <option>CSE</option>\n");
      out.write("            <option>ELECTRICAL</option>\n");
      out.write("            <option> ELECTRONICS</option>\n");
      out.write("            <option>MECHANICAL</option>\n");
      out.write("            <option> CIVIL</option>\n");
      out.write("          \n");
      out.write("        </select>\n");
      out.write("            <TD>  <textarea rows=\"30%\" cols=\"100%\" name=\"textarea\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.textarea}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></textarea></TD>\n");
      out.write("            <TD>  <input type=\"date\" name=\"date\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.date}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> </TD>\n");
      out.write("           \n");
      out.write("</td>\n");
      out.write("\n");
      out.write("        </tr>\n");
      out.write("          \n");
      out.write("    </TABLE>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("             <input type=\"submit\" value=\"UPDATE\" class=\"button GREEN\"/> \n");
      out.write("</form>\n");
      out.write("    </pre>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</center>>");
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
