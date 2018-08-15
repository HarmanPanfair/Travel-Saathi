<%-- 
    Document   : detailpage.jsp
    Created on : 15 Mar, 2018, 5:23:01 PM
    Author     : IT
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Travel Sathi</title>
        <style>
            .vis
            {
                visibility:visible;
            }
            .invis
            {
                visibility:hidden;
            }
            </style>
    </head>
    <body style="background-color: white">
        
                    <a href="index.jsp" ><img src="images/home.png" height="35" width="40"></a>
    <table width="100%" border="0">
            <tr>
        <%
            ResultSet rs=DBJ.dblayer.getResult("select * from tour where tourid="+request.getParameter("id"));
          
           if(rs.next())
           {
            out.print("<td align='center' colspan='2' valign='top'><h2>"+rs.getString(2).toUpperCase()+"</h2></td></tr>");
            out.print("<tr><td align='center'><b>"+rs.getString(3).toUpperCase()+"</b></td></tr>");
            
            %>
            <tr><td align='center'>Price starting from <font style='color: orangered'<b><%=(Double.parseDouble(rs.getString(4))+Double.parseDouble(DBJ.dblayer.getScalar("select min(priceoftransport) from transportmode where tourid="+rs.getString(1)))) %>/-</b></font>PerPerson</td></tr>
              
        <%
            out.print("<tr><td align='center'><b>TRAVELLING &nbsp;&nbsp;TO &nbsp;&nbsp;"+rs.getString(5).toUpperCase()+"&nbsp;&nbsp; ON&nbsp;&nbsp; <u>"+rs.getString(7).toUpperCase()+"</u>&nbsp;&nbsp; AND &nbsp;&nbsp;RETURNING &nbsp;&nbsp;ON &nbsp;&nbsp;<u>"+rs.getString(8).toUpperCase()+"</u>&nbsp;&nbsp;</td></tr>");
         
              out.print("<tr><td align='center'><input type='button' id=b1 value='Book Tour' style='width:170px;height:50px;font-size:30px' onclick=location.href='customerloginpage.jsp?id="+request.getParameter("id")+"'></td></tr>");
   //OR
   
            }
        %>
        <script language="javascript">
            d=new Date();
              dd=new Date("<%= rs.getString(7)%>");
             
           if(d>dd)
          
               //alert("he "+dd);
                  document.getElementById("b1").className="invis";
          else        
                  document.getElementById("b1").className="vis";
              
              </script>
            </tr>
    </table>
                    <table align="right" valign="top">
                        <tr>
                         <%
            out.print("<td><img src='images/tourphoto/"+rs.getString(1)+".jpg' width='400' height='250' ></td>");
                         %></tr>
                    </table>
    <table width="100%" border="0">
        <tr>
       
            <td align='left' valign='top' width='160'  style='color:blue'>
                <u><b>Departure Locations:</b></u>
            </td>
           
            <td align='left' valign='top'><br>
                <%
                     rs=DBJ.dblayer.getResult("select * from transportmode where tourid="+request.getParameter("id"));
                    while(rs.next())
                    {
                %>
                        <b>From <%=rs.getString(3).toUpperCase()%>&nbsp;&nbsp;BY&nbsp;&nbsp;<%=rs.getString(4).toUpperCase()%>(<%=rs.getString(6).toUpperCase()%>/- Price Added)</b><br><br>
                <%
                    }
                %>
            </td>
          
              </tr>
    </table>
        <br><br><br>
            <table width="100%" border="0"><tr>
                <%
                    rs=DBJ.dblayer.getResult("select * from itenerary where tourid="+request.getParameter("id"));
                    while(rs.next())
                        out.print("<tr><td align='left' valign='top' width='50'  style='color:blue'><u><b>Day:"+rs.getString(2)+"</b></u></td><td align='left' valign='top'><b>"+rs.getString(3).toUpperCase()+"</b></td></tr><tr height='200' valign='top'><td></td><td><p>"+rs.getString(4)+"</p></td>");
                %>
                
            </tr>
        </table>
        </body>
</html>
