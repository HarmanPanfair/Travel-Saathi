package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminloginpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Travel Sathi</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style_1.css\">\n");
      out.write("        \t<meta charset=\"utf-8\">\n");
      out.write("                <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\t\t<meta name=\"format-detection\" content=\"telephone=no\" />\n");
      out.write("\t\t<link rel=\"icon\" href=\"images/favicon.ico\">\n");
      out.write("\t\t<link rel=\"shortcut icon\" href=\"images/favicon.ico\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"booking/css/booking.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/camera.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/owl.carousel.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\t\t<script src=\"js/jquery.js\"></script>\n");
      out.write("\t\t<script src=\"js/jquery-migrate-1.2.1.js\"></script>\n");
      out.write("\t\t<script src=\"js/script.js\"></script>\n");
      out.write("\t\t<script src=\"js/superfish.js\"></script>\n");
      out.write("\t\t<script src=\"js/jquery.ui.totop.js\"></script>\n");
      out.write("\t\t<script src=\"js/jquery.equalheights.js\"></script>\n");
      out.write("\t\t<script src=\"js/jquery.mobilemenu.js\"></script>\n");
      out.write("\t\t<script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("\t\t<script src=\"js/owl.carousel.js\"></script>\n");
      out.write("\t\t<script src=\"js/camera.js\"></script>\n");
      out.write("\t\t<!--[if (gt IE 9)|!(IE)]><!-->\n");
      out.write("\t\t<script src=\"js/jquery.mobile.customized.min.js\"></script>\n");
      out.write("\t\t<!--<![endif]-->\n");
      out.write("\t\t<script src=\"booking/js/booking.js\"></script>\n");
      out.write("\t\t<script>\n");
      out.write("\t\t\t$(document).ready(function(){\n");
      out.write("\t\t\tjQuery('#camera_wrap').camera({\n");
      out.write("\t\t\t\tloader: false,\n");
      out.write("\t\t\t\tpagination: false ,\n");
      out.write("\t\t\t\tminHeight: '444',\n");
      out.write("\t\t\t\tthumbnails: false,\n");
      out.write("\t\t\t\theight: '48.375%',\n");
      out.write("\t\t\t\tcaption: true,\n");
      out.write("\t\t\t\tnavigation: true,\n");
      out.write("\t\t\t\tfx: 'mosaic'\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t/*carousel*/\n");
      out.write("\t\t\tvar owl=$(\"#owl\");\n");
      out.write("\t\t\t\towl.owlCarousel({\n");
      out.write("\t\t\t\titems : 2, //10 items above 1000px browser width\n");
      out.write("\t\t\t\titemsDesktop : [995,2], //5 items between 1000px and 901px\n");
      out.write("\t\t\t\titemsDesktopSmall : [767, 2], // betweem 900px and 601px\n");
      out.write("\t\t\t\titemsTablet: [700, 2], //2 items between 600 and 0\n");
      out.write("\t\t\t\titemsMobile : [479, 1], // itemsMobile disabled - inherit from itemsTablet option\n");
      out.write("\t\t\t\tnavigation : true,\n");
      out.write("\t\t\t\tpagination : false\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t$().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("\t\t\t});\n");
      out.write("\t\t</script>\n");
      out.write("\t\t<!--[if lt IE 8]>\n");
      out.write("\t\t<div style=' clear: both; text-align:center; position: relative;'>\n");
      out.write("\t\t\t<a href=\"http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode\">\n");
      out.write("\t\t\t\t<img src=\"http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg\" border=\"0\" height=\"42\" width=\"820\" alt=\"You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.\" />\n");
      out.write("\t\t\t</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\t\t<!--[if lt IE 9]>\n");
      out.write("\t\t<script src=\"js/html5shiv.js\"></script>\n");
      out.write("\t\t<link rel=\"stylesheet\" media=\"screen\" href=\"css/ie.css\">\n");
      out.write("\t\t<![endif]-->\n");
      out.write("                \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("      function googleTranslateElementInit()\n");
      out.write("      {\n");
      out.write("     new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');\n");
      out.write("      }\n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\" src=\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("  var _gaq = _gaq || [];\n");
      out.write("  _gaq.push(['_setAccount', 'UA-12397497-8']);\n");
      out.write("  _gaq.push(['_trackPageview']);\n");
      out.write("\n");
      out.write("  (function() {\n");
      out.write("    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;\n");
      out.write("    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';\n");
      out.write("    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);\n");
      out.write("  })();\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("     ");

                if(request.getParameter("p")!=null)
                {
                    out.print("<script language='javascript' > window.alert('invalid email or password');</script>");
                }
            
      out.write("\n");
      out.write("    <body style=\" background-color:  darkcyan\">\n");
      out.write("                  <!--==============================Content=================================-->\n");
      out.write("                                <div class=\"container_12\">\n");
      out.write("\t\t\t\t<div class=\"grid_12\">\n");
      out.write("                                <div class=\"menu_block\">\n");
      out.write("\t\t\t\t\t<nav class=\"horizontal-nav full-width horizontalNav-notprocessed\">\n");
      out.write("           \t\t\t\t<ul class=\"sf-menu\">\n");
      out.write("\t\t\t\t\t<li class=\"current\"><a href=\"index.jsp\">HOME</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"adminloginpage.jsp\">ADMIN LOGIN</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"customerloginpage.jsp\">CUSTOMER LOGIN</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"history.jsp\">HISTORY</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"index-4.html\">CONTACTS</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</nav>\n");
      out.write("                                          \n");
      out.write("\t\t\t\t<div class=\"clear\"></div>\n");
      out.write("                                </div>\n");
      out.write("\t\t\t\t</div><div id=\"google_translate_element\"></div>\n");
      out.write("                                <div class=\"caption fadeIn\" style=\"font-size:200% \"><font color=\"red\">ADMIN LOGIN</font></div>\n");
      out.write("                                </div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("         \n");
      out.write("                  <div class=\"container\">\n");
      out.write("          <form class=\"form\" action=\"checklogin\" method=\"post\" >\n");
      out.write("\t\t\t<input type=\"email\" name=\"t1\"  placeholder=\"Username\">\n");
      out.write("\t\t\t<input type=\"password\" name=\"t2\" placeholder=\"Password\">\n");
      out.write("                        <button  type=\"submit\" name=\"b1\" value=\"login\">Login</button>\n");
      out.write("                        \n");
      out.write("           </form>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("            \n");
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
