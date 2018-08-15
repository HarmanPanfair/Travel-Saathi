<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Travel Sathi</title>
    </head>
    <body style="background-color: white">
        <a href="index.jsp"><img src="images/home.png" height="35" width="40"></a>
        <h2 align='center' valign='top'>HISTORY</h2>
        <table border="0" align="center" valign="top" >
            <%
            ResultSet rs=DBJ.dblayer.getResult("select * from tour where arrival<now() order by departure desc");
            int i=0;
           while(rs.next())
           {
              %>
              <tr>
                            <td>
                                <table style="background-color: whitesmoke" border="0"  width='100%' width="450">
                                    <tr> 
                                        <td  width='300' rowspan="3"><img src='images/tourphoto/<%=rs.getString(1)%>.jpg' height='250' width='300'></td>
                                        <td>
                                            <b><u><%=rs.getString(2).toUpperCase()%></u></b>
                                        </td>
                                        <td>
                                            <%=rs.getString(3).toUpperCase()%> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Starting from <b><%=(Double.parseDouble(rs.getString(4))+Double.parseDouble(DBJ.dblayer.getScalar("select min(priceoftransport) from transportmode where tourid="+rs.getString(1)))) %>/-</b><br>PerPerson </td>
                                        <td>
                                            <%
                                                String rcount=DBJ.dblayer.getScalar("select count(reviewid) from reviews where tourid="+rs.getString(1));
                                                
                                                double trate=0.0;
                                                if(DBJ.dblayer.getScalar("select avg(rating) from reviews where tourid="+rs.getString(1))==null)
                                                     trate=0.0;
                                                else
                                                     trate=Double.parseDouble(DBJ.dblayer.getScalar("select avg(rating) from reviews where tourid="+rs.getString(1)));
                                                
                                                for( i=1;i<=(int)trate;i++)  
                                                out.print("<img src='images/star.png' width='20' height='20' '>");
                                                if(trate-(int)trate>0)
                                                {
                                                   out.print("<img src='images/starhalf.png' width='20' height='20'>"); 
                                                   i++;
                                                }
                                                for(;i<=5;i++)  
                                                   out.print("<img src='images/starkhali.png' width='20' height='20'>");
                                                out.print ("&nbsp; &nbsp; &nbsp; <font size=5 ><b>"+trate+"</b></font>"); 
                                             %>
                                             <br>(Average Rating of <%=rcount%> people)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href='detailpage.jsp?id=<%=rs.getString(1)%>'>VIEW DETAIL</a>
                                        </td>
                                        <td></td>
                                    </tr>
                                </table>
                            </td>
                            </tr>
                    <% 
                        }
                    %>
            
        </table>
       
    </body>
</html>
