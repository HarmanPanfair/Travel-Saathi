package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newcustomer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html >\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <title>Travel Sathi</title>\n");
      out.write("        \n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">       \n");
      out.write("    </head>\n");
      out.write("        <body style=\" background-color: white\">\n");
      out.write("                     <img src=\"images/main.jpg\" width=\"100%\" height=\"200\">\n");
      out.write("                      <h1 align=\"left\" valign=\"top\"><a href=\"index.jsp\"><img src=\"images/home.png\" height=\"35\" width=\"40\"></a></h1>\n");
      out.write("                      <h2 align=\"center\">REGISTRATION FORM</h2>\n");
      out.write("                \n");
      out.write("            \n");
      out.write("                    <form  action=\"addcustomer\" method=\"Post\">\n");
      out.write("                        <table align=\"center\"  style=\"background-color: white\" cellspacing=\"0\" cellpadding=\"0\" width='250' >\n");
      out.write("                <tr>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <td><input type=\"text\" name=\"t1\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>DOB</th>\n");
      out.write("                    <td><input type=\"date\" name=\"t10\"  placeholder=\"yyyy-mm-dd\" ></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Gender</th>\n");
      out.write("                    <td><select name=\"s1\">\n");
      out.write("                            <option value=\"male\">Male</option>\n");
      out.write("                            <option value=\"female\">Female</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Address</th>\n");
      out.write("                    <td><input type=\"text\" name=\"t2\" required></td>\n");
      out.write("                </tr><tr>\n");
      out.write("                    <th>City</th>\n");
      out.write("                    <td><input type=\"text\" name=\"t3\" required></td>\n");
      out.write("                </tr><tr>\n");
      out.write("                    <th>State</th>\n");
      out.write("                    <td><input type=\"text\" name=\"t4\" required></td>\n");
      out.write("                </tr><tr>\n");
      out.write("                    <th>Country</th>\n");
      out.write("                    <td><input type=\"text\" name=\"t5\" required></td>\n");
      out.write("                </tr><tr>\n");
      out.write("                    <th>Pincode</th>\n");
      out.write("                    <td><input type=\"text\" name=\"t6\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Phone No.</th>\n");
      out.write("                    <td><input type=\"text\" name=\"t7\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Email</th>\n");
      out.write("                    <td><input type=\"email\" name=\"t8\" required></td>\n");
      out.write("                </tr><tr>\n");
      out.write("                    <th>Password</th>\n");
      out.write("                    <td><input type=\"password\" name=\"t9\" required></td>\n");
      out.write("                   \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\"><center><input type=\"submit\" name=\"b1\" value=\"Submit\" class=\"\">&nbsp;<input type=\"reset\" name=\"t1\"  value=\"Reset\" > </center></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td colspan=\"2\"><center>\n");
      out.write("                ");

                    if(request.getParameter("p")!=null)
                    out.print("Customer Added");
                    
      out.write("\n");
      out.write("                </center></td></tr>\n");
      out.write("               </table>\n");
      out.write("               </form>\n");
      out.write("                \n");
      out.write("                       \n");
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
