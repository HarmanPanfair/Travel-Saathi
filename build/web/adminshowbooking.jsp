<%@page import="java.sql.*;"%>
<%@include file="adminheader.jsp" %>
   <h1 align="center">BOOKING INFORMATION</h1>
<table align="center" width="75%">
    <%
        String customername="";
        String transportmode="";
        try{
        ResultSet rs=DBJ.dblayer.getResult("select * from booking where tourid="+request.getParameter("id")+" order by dateofbooking desc");
        
        int c=0;
        out.print("<tr bgcolor=#a0a0a0 height='40' >");
        out.print("<th>BOOKING ID</th><th>DATE</th><th>CUSTOMER NAME</th><th>TOTAL SEATS</th><th>TRANSPORT MODE</th><th>AMOUNT PAID</th><th>STATUS</th><th>LOCKED</th><th>LOCK</th>");
        out.print("</tr>");
       while(rs.next())
       {
           customername=DBJ.dblayer.getScalar("select name from customers where customerid="+rs.getString(5));
           transportmode=DBJ.dblayer.getScalar("select transportmode from transportmode where modeid="+rs.getString(3))+"("+DBJ.dblayer.getScalar("select source from transportmode where modeid="+rs.getString(3))+")";
           c++;
           out.print("<tr Style:'Background-color="+(c%2==0?"white":"lightgrey")+"'>");
           out.print("<td align='center'>"+(rs.getString(1)==null?"":rs.getString(1).toUpperCase())+"</td>");
           out.print("<td align='center'>"+(rs.getString(4)==null?"":rs.getString(4).toUpperCase())+"</td>");
           out.print("<td align='center'>"+(customername==null?"":customername.toUpperCase())+"</td>");
           out.print("<td align='center'><a href='adminshowtouristinfo.jsp?id="+rs.getString(1)+"'>"+(rs.getString(6)==null?"":rs.getString(6).toUpperCase())+"</a></td>");
           out.print("<td align='center'>"+transportmode.toUpperCase()+"</td>");
           out.print("<td align='center'>"+(rs.getString(7)==null?"":rs.getString(7).toUpperCase())+"</td>");
           out.print("<td align='center'>"+(rs.getString(9)==null?"":rs.getString(9).toUpperCase())+"</td>");
           out.print("<td align='center'>"+(rs.getString(10)==null?"":(rs.getString(10).equals("1"))?"YES":"NO")+"</td>");
           out.print("<td align='center'><a href='adminshowbooking.jsp?id="+request.getParameter("id")+"&aa="+rs.getString(1)+"'>"+(DBJ.dblayer.getScalar("select booking.lock from booking where bookingid="+rs.getString(1)).equals("1")?"Click to Unlock":"Click to Lock")+"</a></td>");
               
            out.print("</tr>");
        }
        }catch(Exception ex)
         {
        }
        if(request.getParameter("aa")!=null)
        {
            DBJ.dblayer.executeq("update booking set booking.lock="+(DBJ.dblayer.getScalar("select booking.lock from booking where bookingid="+request.getParameter("aa")).equals("1")?"0":"1")+" where bookingid="+request.getParameter("aa"));
            response.sendRedirect("adminshowbooking.jsp?id="+request.getParameter("id"));
        }
       
    
    %>
</table>
   
<%@include file="adminfooter.jsp" %>