<%@include file="customerheader.jsp" %>
   <h2 align="center">CURRENT BOOKINGS</h2>
<table align="center" border="0">
<%

ResultSet rt;
String tourname="";
String transportmode="";
String departuredate="";
String arrivaldate="";
String lastdate="";
Double left=0.0;
String bookingdate="";
int c=1;
int p=0;
rt=DBJ.dblayer.getResult("select * from booking where tourid in(select tourid from tour where departure>NOW())  and customerid="+session.getAttribute("customerid")+" order by dateofbooking desc");
int a=rt.getMetaData().getColumnCount();
out.print("<tr bgcolor='#cccccc'>");
out.print("<th >S.No.</th><th>DATE</th><th>TOUR</th><th>DEPARTURE DATE</th><th>ARRIVAL DATE</th><th>TRANSPORT MODE</th><th>NUMBER OF SEATS</th><th>TOTAL AMOUNT</th><th>AMOUNT PAID</th><th>CLICK TO PAY REST AMOUNT<br>(last date)</th><th>STATUS</th><th>CANCEL BOOKING</th>");
out.print("</tr>");

while(rt.next())
{
    p++;
    c++;
    bookingdate=rt.getString(4);
    tourname=DBJ.dblayer.getScalar("select title from tour where tourid="+rt.getString(2))+"("+DBJ.dblayer.getScalar("select duration from tour where tourid="+rt.getString(2))+")";
    transportmode=DBJ.dblayer.getScalar("select source from transportmode where modeid="+rt.getString(3))+"("+DBJ.dblayer.getScalar("select transportmode from transportmode where modeid="+rt.getString(3))+")";
    departuredate=DBJ.dblayer.getScalar("select departure from tour where tourid="+rt.getString(2));
    arrivaldate=DBJ.dblayer.getScalar("select arrival from tour where tourid="+rt.getString(2));
    lastdate=DBJ.dblayer.getScalar("select ldtpfa from tour where tourid="+rt.getString(2));
    left=Double.parseDouble(rt.getString(8))-Double.parseDouble(rt.getString(7));
      out.print("<tr style='background-color:"+(c%2==0?"white":"lightgrey")+"'>");
    
      out.print("<td>"+p+"</td>");
      //out.print("<td align='center'>"+rt.getString(4)==null?"":rt.getString(4).toUpperCase()+"</td>");
      out.print("<td align='center'>"+bookingdate+"</td>");
      out.print("<td align='center'>"+tourname.toUpperCase()+"</td>");
      out.print("<td align='center'>"+departuredate.toUpperCase()+"</td>");
      out.print("<td align='center'>"+arrivaldate.toUpperCase()+"</td>");
      out.print("<td align='center'>"+transportmode.toUpperCase()+"</td>");
      out.print("<td align='center'><a href='customershowtouristinfo.jsp?id="+rt.getString(1)+"'>"+(rt.getString(6)==null?"":rt.getString(6).toUpperCase())+"</a></td>");
      out.print("<td align='center'>"+(rt.getString(8)==null?"":rt.getString(8).toUpperCase())+"</td>");
      out.print("<td align='center'>"+(rt.getString(7)==null?"":rt.getString(7).toUpperCase())+"</td>");
      out.print("<td align='center'>"+(left==0.0?"FULL AMOUNT PAID":"<a href='paytmtransaction.jsp?id="+rt.getString(1)+"&left="+left+"'>PAY AMOUNT<br>("+lastdate+")</a>")+"</td>");
      out.print("<td align='center'>"+(rt.getString(9)==null?"":rt.getString(9).toUpperCase())+"</td>");
    
        out.print("<td align='center'><a href='#'><img src='images/4.jpg'  height='25' width='50'></a></td>");
        
    out.print("</tr>");


}



%>


</table>
<%@include file="customerfooter.jsp" %>