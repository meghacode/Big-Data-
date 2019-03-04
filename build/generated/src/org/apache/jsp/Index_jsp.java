package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Interactive Cricket Analysis</title>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"try.jpg\"  background-size=\"cover\">\n");
      out.write("        <h1 style=\"background-color: black;color:limegreen;font-size: 300%;text-align:center\">\n");
      out.write("                Interactive Cricket Analytics Report\n");
      out.write("                <br>\n");
      out.write("                (Project Based Queries)\n");
      out.write("        </h1>\n");
      out.write("        <img src=\"cricket1.jpg\" width=\"500\" height=\"500\" style=\"float:right\">\n");
      out.write("            <h3>Description about data set:</h3>\n");
      out.write("            Match played between teams in tournament :\n");
      out.write("            <ul>\n");
      out.write("                <li>India vs Australia:1093</li>\n");
      out.write("                <li>England vs Australia:211028</li>\n");
      out.write("                <li>NZ vs Australia:211048</li>\n");
      out.write("                <li>SA vs India:1049</li>\n");
      out.write("                <li>SA vs NZ:222678</li>\n");
      out.write("            </ul>\n");
      out.write("            <form action = \"hive.jsp\" target=\"_blank\">\n");
      out.write("        <b>Select team's name in which you wish to find top 3 scorers</b>\n");
      out.write("         <input type=\"text\" name=\"t1\"/><br>\n");
      out.write("                <input type=\"submit\" value=\"Submit Query\">\n");
      out.write("    </form><br>\n");
      out.write("        <form action = \"hive1.jsp\" target=\"_blank\">\n");
      out.write("        <b>Select team's name in which you wish to find top 3 wicket takers in a match</b>\n");
      out.write("        <input type=\"text\" name=\"t1\"/><br>\n");
      out.write("        enter match id:\n");
      out.write("        <input type=int name=\"t2\"/><br>\n");
      out.write("                <input type=\"submit\" value=\"Submit Query\">\n");
      out.write("    </form><br>\n");
      out.write("    </form><br>\n");
      out.write("        <form action = \"hive2.jsp\" target=\"_blank\">\n");
      out.write("        <b>Total six in a match</b>\n");
      out.write("        enter match id:\n");
      out.write("        <input type=text name=\"t2\"/><br>\n");
      out.write("                <input type=\"submit\" value=\"Submit Query\">\n");
      out.write("    </form><br>\n");
      out.write("        <form action = \"hive3.jsp\" target=\"_blank\">\n");
      out.write("        <b>Total four in a match</b>\n");
      out.write("        enter match id:\n");
      out.write("        <input type=\"text\" name=\"t2\"/><br>\n");
      out.write("                <input type=\"submit\" value=\"Submit Query\">\n");
      out.write("    </form><br>\n");
      out.write("         <form action = \"hive4.jsp\" target=\"_blank\">\n");
      out.write("        <b>Players who scored century in tournament</b>\n");
      out.write("                <input type=\"submit\" value=\"Submit Query\">\n");
      out.write("    </form><br>\n");
      out.write("     <form action = \"hive5.jsp\" target=\"_blank\">\n");
      out.write("        <b>Players who scored half century in tournament</b>\n");
      out.write("                <input type=\"submit\" value=\"Submit Query\">\n");
      out.write("    </form><br>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
