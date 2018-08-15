<%@include file="customerheader.jsp" %>
  <h2 align="center">TRANSACTIONS</h2>


<table align="center" border="0">
    <%
    
     String tourname="";
        ResultSet rs;
        int p=0;
        int c=1;
        rs=DBJ.dblayer.getResult("select * from transaction where customerid="+session.getAttribute("customerid")+" order by datetimeoftransaction desc");
        out.print("<tr bgcolor='#a0a0a0' >");
        out.print("<th>S.No.</th><th>DATE</th><th>TOUR</th><th>AMOUNT</th><th>MODE OF TRANSACTION</th><th>DESCRIPTION</th>");
        out.print("</tr>");
        while(rs.next())
        {
            tourname=DBJ.dblayer.getScalar("select title from tour where tourid in(select tourid from booking where bookingid="+rs.getString(5)+")");
            p++;
            c++;
            out.print("<tr height='25' style='background-color:"+(c%2==0?"white":"lightgrey")+"'>");
            out.print("<td align='center'>"+p+"</td>");
            out.print("<td align='center'>"+(rs.getString(4)==null?"":rs.getString(4).toUpperCase())+"</td>");
            out.print("<td align='center'>"+tourname.toUpperCase()+"</td>");
            out.print("<td align='center'>"+(rs.getString(3)==null?"":rs.getString(3).toUpperCase())+"</td>");
            out.print("<td align='center'>"+(rs.getString(7)==null?"":rs.getString(7).toUpperCase())+"</td>");
            out.print("<td align='center'>"+(rs.getString(6)==null?"":rs.getString(6).toUpperCase())+"</td>");
            out.print("</tr>");
        }
    
 %>
    
</table>
<%@include file="customerfooter.jsp" %>