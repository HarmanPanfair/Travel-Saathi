                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <%@page language="java" import="java.sql.*" %>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <title>Travel Sathi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body  style="background-color: white">
        <img src="images/main.jpg" width="100%" height="200">
        <table width="100%">
            <tr>
                <td width="33%"><h4 align="left"><a href="customerloginpage.jsp"><font color='black'><u>CUSTOMER LOGIN</u> </font></a></h4></td>
                <td width="34%"><h4 align="center"><a href="history.jsp"><font color='black'><u>HISTORY</u></font></a></h4></td>
                <td width="33%"><h4 align="right"><a href="adminloginpage.jsp"><font color='black'><u>ADMIN LOGIN</u></font></a></h4></td>
               </tr>
        </table>
        <br>
        <h1 align="center" valign="top">TOUR PACKAGES</h1>
        <table align="center" valign="top" border="0">
            <tr>
                    <table align="center">
<%           
                    try{
                    ResultSet rs=DBJ.dblayer.getResult("select * from tour where departure>=Now()  order by departure desc");
                    int i=0;
                    while(rs.next())
                    {
                      i++;
                      if(i>3){
                          out.print("</tr><tr>");
                      i=1;
                      } 
                    
                     out.print("<td Style='color:black'>"+(rs.getString(2)==null?"":rs.getString(2).toUpperCase())+"<br><img src='images/tourphoto/"+rs.getString(1)+".jpg' height=400 width=300>&nbsp;&nbsp;&nbsp;<br>");
                     out.print("<a href='customerloginpage.jsp?id="+rs.getString(1)+"'><img src='images/book.gif' height=50 width=100></a>");
                     out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='detailpage.jsp?id="+rs.getString(1)+"'><img src='images/details.png' height=50 width=100></a><br>");
                     %>
                     Price starting from <font style='color: orangered'<b><%=(Double.parseDouble(rs.getString(4)==null?"":rs.getString(4))+Double.parseDouble(DBJ.dblayer.getScalar("select min(priceoftransport) from transportmode where tourid="+rs.getString(1)))) %>/-</b></font>PerPerson </td>
                     <%    
                      }
                    }catch(Exception ex)
                                        
                    {
                        out.print("error"+ex);
                    }
                    
%>
</table>
</body>
</html>
          