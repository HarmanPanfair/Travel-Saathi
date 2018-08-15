package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class adminreviewtour_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/adminheader.jsp");
    _jspx_dependants.add("/adminfooter.jsp");
  }

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

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Travel Sathi</title>\n");
      out.write("    </head>\n");
      out.write("    ");

           if(session.getAttribute("eml")==null)
               response.sendRedirect("index.jsp?s=exp");
           else
           {
        
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <table border=\"0\" bgcolor=\"lightgreen\" height=\"100%\"  width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" >\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <img src=\"images/main.jpg\" height=\"180\" width=\"100%\" >\n");
      out.write("                    \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("             <tr  >\n");
      out.write("                 <td colspan=\"2\">\n");
      out.write("                     <table bgcolor=\"lightpink\" width=\"100%\">\n");
      out.write("                         <tr>\n");
      out.write("                             <td width='200'>Welome:");
      out.print(session.getAttribute("name").toString().toUpperCase() );
      out.write("</td>\n");
      out.write("                             <td width='1100'><a href='loggedin.jsp'><img src=\"images/home.png\" height=\"35\" width=\"40\"></a></td>\n");
      out.write("                             <td align=\"right\"><a href=\"logout.jsp\"><img src=\"images/logout.png\" height=\"30\" width=\"60\"></a></td>\n");
      out.write("                        </tr></table> </td></tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td width=\"200\" height=\"400\" >\n");
      out.write("             <center>\n");
      out.write("                 <img src='images/adminphoto/");
      out.print(session.getAttribute("id"));
      out.write(".jpg' height='100' width='100' >\n");
      out.write("                     <br>\n");
      out.write("                     <a href=\"adminchangephoto.jsp\">Change...</a></center>\n");
      out.write("                     <hr>\n");
      out.write("                     <a href=\"adminaddtour.jsp\">Add Tour</a>\n");
      out.write("                     <hr>\n");
      out.write("                     <a href=\"adminaddplaces.jsp\">Add Place</a>\n");
      out.write("                     <hr>\n");
      out.write("                     <a href=\"adminreviewtour.jsp\">Review Tour</a>\n");
      out.write("                     <hr>\n");
      out.write("                     <a href=\"adminsendmessage.jsp\">Send Message</a>\n");
      out.write("                     <hr>\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                     ");
}
      out.write("      </td>\n");
      out.write("                 <td bgcolor=white valign=\"top\">");
      out.write("\n");
      out.write("<a href=\"loggedin.jsp\"><img src=\"images/11.png\" height=\"25\" width=\"25\"></a>\n");
      out.write("   <br>\n");
      out.write("   <br>\n");
      out.write("   \n");
      out.write("   <table>\n");

   out.print("<tr bgcolor=#a0a0a0>");
    String name;
    ResultSet rs=DBJ.dblayer.getResult("Select * from tour"); 
    int c=0;
    int a=rs.getMetaData().getColumnCount();
    for(int i=1;i<=a;i++)
     out.print("<th>"+rs.getMetaData().getColumnName(i).toUpperCase()+"</th>");
     out.print("<td><b>ITENARARY</b></td><td><b>EDIT</b></td><td><b>PHOTO</b></td><td><b>REMOVE</b></td></tr>");
    while(rs.next())
    { 
        name=DBJ.dblayer.getScalar("select name from admins where adminid="+rs.getString(10));
        c++;
        out.print("<tr bgcolor='"+(c%2==0?"#cccccc":"white")+"'>");
        for(int i=1;i<=a;i++)
            if(i==10)
                out.print("<td>"+name.toUpperCase()+"</td>");
            else
                out.print("<td> "+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"</td>");
          out.print("<td><a href='showitenerary.jsp?id="+rs.getString(1)+"'>Show</a></td><td><a href='edittour.jsp?d="+rs.getString(1)+"'><img src='images/5.jpg' align='center' width='100%' height='20'></a></td><td><a href='uploadtourphoto.jsp?u="+rs.getString(1)+"'><img src='images/upload.png' height='20' width='100%'></a></td><td><a href='deletetour.jsp?r="+rs.getString(1)+"'><img src='images/4.jpg' align='center' width='100%' height='20'></a></td>");  
          out.print("</tr>");
    }
    
    
      out.write("\n");
      out.write("       </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("</td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td colspan=\"2\" bgcolor=\"lightpink\"><center>Powered By <a href=\"http://www.slicksoftindia.com\">SlickSoft</a></center></td>\n");
      out.write("             </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Travel Sathi</title>\n");
      out.write("    </head>\n");
      out.write("    ");

           if(session.getAttribute("eml")==null)
               response.sendRedirect("index.jsp?s=exp");
           else
           {
        
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <table border=\"0\" bgcolor=\"lightgreen\" height=\"100%\"  width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" >\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <img src=\"images/main.jpg\" height=\"180\" width=\"100%\" >\n");
      out.write("                    \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("             <tr  >\n");
      out.write("                 <td colspan=\"2\">\n");
      out.write("                     <table bgcolor=\"lightpink\" width=\"100%\">\n");
      out.write("                         <tr>\n");
      out.write("                             <td width='200'>Welome:");
      out.print(session.getAttribute("name").toString().toUpperCase() );
      out.write("</td>\n");
      out.write("                             <td width='1100'><a href='loggedin.jsp'><img src=\"images/home.png\" height=\"35\" width=\"40\"></a></td>\n");
      out.write("                             <td align=\"right\"><a href=\"logout.jsp\"><img src=\"images/logout.png\" height=\"30\" width=\"60\"></a></td>\n");
      out.write("                        </tr></table> </td></tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td width=\"200\" height=\"400\" >\n");
      out.write("             <center>\n");
      out.write("                 <img src='images/adminphoto/");
      out.print(session.getAttribute("id"));
      out.write(".jpg' height='100' width='100' >\n");
      out.write("                     <br>\n");
      out.write("                     <a href=\"adminchangephoto.jsp\">Change...</a></center>\n");
      out.write("                     <hr>\n");
      out.write("                     <a href=\"adminaddtour.jsp\">Add Tour</a>\n");
      out.write("                     <hr>\n");
      out.write("                     <a href=\"adminaddplaces.jsp\">Add Place</a>\n");
      out.write("                     <hr>\n");
      out.write("                     <a href=\"adminreviewtour.jsp\">Review Tour</a>\n");
      out.write("                     <hr>\n");
      out.write("                     <a href=\"adminsendmessage.jsp\">Send Message</a>\n");
      out.write("                     <hr>\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                     ");
}
      out.write("      </td>\n");
      out.write("                 <td bgcolor=white valign=\"top\">");
      out.write("\n");
      out.write("    <td colspan=\"2\" valign=\"top\" style=\"background-color:lightyellow\">\n");
      out.write("<br><br>\n");
      out.write("<form name=\"frm\" action=\"adminshowTour.jsp\" method=\"post\">\n");
      out.write("    <center>\n");
      out.write("        <input type=\"radio\" name=\"r1\" value=\"name\" ");
      out.print( (request.getParameter("src")==null || request.getParameter("r1").equals("name")?"checked":"") );
      out.write(" >Name\n");
      out.write("       <input type=\"radio\" name=\"r1\" value=\"departuredate\" ");
      out.print( (request.getParameter("src")!=null && request.getParameter("r1").equals("departuredate")?"checked":"") );
      out.write(" >Departure Date\n");
      out.write("       <input type=\"radio\" name=\"r1\" value=\"arrivaldate\" ");
      out.print( (request.getParameter("src")!=null && request.getParameter("r1").equals("arrivaldate")?"checked":"") );
      out.write(" >Arrival Date\n");
      out.write("    </center>\n");
      out.write("    <br>\n");
      out.write("    <center><input type=\"text\" name=\"src\" value=\"");
      out.print( (request.getParameter("src")==null?"":request.getParameter("src")) );
      out.write("\">\n");
      out.write("        <input type=\"submit\" value=\"GO\"></center>\n");
      out.write("</form>\n");
      out.write("<br>\n");
      out.write("<div style=\"overflow-x:auto;width:100%\"  >\n");
      out.write("<table border=\"1\" align=\"center\">\n");
      out.write("    ");

        String mode="";
        ResultSet rs;
        if(request.getParameter("src")==null)
            rs=DBH.Dblayer.getResult("select * from tour order by tourid desc");
        else
             rs=DBH.Dblayer.getResult("select * from tour where "+request.getParameter("r1")+" like '%"+request.getParameter("src")+"%' order by tourid desc");
        int a=rs.getMetaData().getColumnCount();
        out.print("<tr bgcolor='#a0a0a0' >");
        out.print("<th>TOUR ID</th><th>NAME</th><th>DURATION</th><th>COST</th><th>DESTINATION</th><th>DESCRIPTION</th><th>DEPARTURE DATE</th><th>ARRIVAL DATE</th><th>TOTAL SEATS</th><th>BOOKING AMOUNT</th><th>LAST DAY TO PAY FULL AMOUNT</th>"+(request.getParameter("id")!=null?"<th>Update</th>":"")+"<th>NUMBER OF TRANSPORT MODE</th><th>SHOW ITENERARY</th><th>BOOKINGS</th><th>UPLOAD IMAGE</td><th>EDIT</th><th>REMOVE</th>");
        out.print("</tr>");
        int c=1;
        while(rs.next())
        {
            c++;
            mode=DBH.Dblayer.getScalar("select count(*) from transportmode where tourid="+rs.getString(1));
            out.print("<tr style='background-color:"+(c%2==0?"white":"#cccccc")+"' >");
            if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)))
                out.print("<form name='frm' action='updatetour?id="+request.getParameter("id")+"' method='post'>");
            for(int i=1;i<=a;i++)
                    if(i!=10)
                    {
                        if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)) &&i!=1)
                        {
                            if(i==5)
                            {
                                out.print("<td align='center'><select name='"+rs.getMetaData().getColumnName(i)+"'>");
                                ResultSet ts=DBH.Dblayer.getResult("select name from place");
                                while(ts.next())
                                    out.print("<option value='"+ts.getString(1)+"'"+(rs.getString(i).equals(ts.getString(1))?"selected":"")+" >"+ts.getString(1)+"</option>");
                                
                                out.print("</select></td>");
                            }
                            else
                            {
                                if(i==6)
                                    out.print("<td align='center'><textarea name='"+rs.getMetaData().getColumnName(i)+"'>"+(rs.getString(i)==null?"":rs.getString(i))+"</textarea></td>");
                                else
                                    out.print("<td align='center'><input type='"+(i==7||i==8||i==12?"date":"text")+"' value='"+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"' name='"+rs.getMetaData().getColumnName(i)+"'></td>");
                            }
                        }
                        else
                        {
                            if(i==6)
                                out.print("<td align='center'>"+(rs.getString(i)==null?"":(rs.getString(i).length()>20?rs.getString(i).substring(0,20).toUpperCase():rs.getString(i)))+"</td>");
                            else
                                out.print("<td align='center'>"+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"</td>");
                        }
                    }
            if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)))
                out.print("<td><input type='submit' value='Update'><br><input type='button' value='Cancel' onclick=location.href='adminshowTour.jsp'></td></form>");
                                                                                                                                                                             if(request.getParameter("id")!=null && (request.getParameter("id").equals(rs.getString(1))==false))
                out.print("<td></td>");
            out.print("<td align='center'><a href='adminshowTransportmode.jsp?id="+rs.getString(1)+"'>"+mode+"</a></td>");
            out.print("<td align='center'><a href='adminshowItenerary.jsp?id="+rs.getString(1)+"'>Show Itenerary</a></td>");
            out.print("<td align='center'><a href='adminShowbooking.jsp?id="+rs.getString(1)+"'>Show Bookings<br>("+DBH.Dblayer.getScalar("select count(bookingid) from booking where tourid="+rs.getString(1))+")</a></td>");
            out.print("<td align='center'><a href='adminuploadTourimage.jsp?id="+rs.getString(1)+"'>Upload Tour Image</a></td><td align='center'><a href='adminshowTour.jsp?id="+rs.getString(1)+"'><img src='image/edit.jpg' height='25' width='50'></a></td><td align='center'><a href='#'><img src='image/delete.jpg' height='25' width='50'></a></td>");
            out.print("</tr>");
        }
    
      out.write("\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("</td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td colspan=\"2\" bgcolor=\"lightpink\"><center>Powered By <a href=\"http://www.slicksoftindia.com\">SlickSoft</a></center></td>\n");
      out.write("             </tr>\n");
      out.write("        </table>\n");
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
