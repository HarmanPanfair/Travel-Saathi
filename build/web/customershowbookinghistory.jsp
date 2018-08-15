<%@include file="customerheader.jsp" %>
<h2 align='center'>BOOKING HISTORY</h2>
<table align='center' border='1'>
    <%
        ResultSet rs;
        String tourname="";
        String departuredate="";
        String arrivaldate="";
        String transportmode="";
        String bookingdate="";
        int rating=0;
        int p=0;
        int c=1;
        rs=DBJ.dblayer.getResult("select * from booking where tourid in(select tourid from tour where departure<=NOW()) and customerid="+session.getAttribute("customerid")+" order by dateofbooking desc");
        int a=rs.getMetaData().getColumnCount();
        out.print("<tr bgcolor='#a0a0a0' >");
        out.print("<th>S.No.</th><th>DATE</th><th>TOUR</th><th>DEPARTURE DATE</th><th>ARRIVAL DATE</th><th>TRANSPORT MODE</th><th>NUMBER OF SEATS</th><th>TOTAL AMOUNT</th><th>AMOUNT PAID</th><th>REVIEW</th><th>STATUS</th>");
        out.print("</tr>");
        while(rs.next())
        {
            p++;
           c++;
           bookingdate=rs.getString(4);
           tourname=DBJ.dblayer.getScalar("select title from tour where tourid="+rs.getString(2))+"("+DBJ.dblayer.getScalar("select duration from tour where tourid="+rs.getString(2))+")";
           transportmode=DBJ.dblayer.getScalar("select source from transportmode where modeid="+rs.getString(3))+"("+DBJ.dblayer.getScalar("select transportmode from transportmode where modeid="+rs.getString(3))+")";
           departuredate=DBJ.dblayer.getScalar("select departure from tour where tourid="+rs.getString(2));
           arrivaldate=DBJ.dblayer.getScalar("select arrival from tour where tourid="+rs.getString(2));
           
            out.print("<tr style='background-color:"+(c%2==0?"white":"lightgrey")+"'>");
            out.print("<td>"+p+"</td>");
            out.print("<td align='center'>"+bookingdate+"</td>");
            out.print("<td align='center'>"+tourname.toUpperCase()+"</td>");
            out.print("<td align='center'>"+departuredate.toUpperCase()+"</td>");
            out.print("<td align='center'>"+arrivaldate.toUpperCase()+"</td>");
            out.print("<td align='center'>"+transportmode.toUpperCase()+"</td>");
            out.print("<td align='center'>"+(rs.getString(6)==null?"":rs.getString(6).toUpperCase())+"</td>");
            out.print("<td align='center'>"+(rs.getString(8)==null?"":rs.getString(8).toUpperCase())+"</td>");
            out.print("<td align='center'>"+(rs.getString(7)==null?"":rs.getString(7).toUpperCase())+"</td>");
            out.print("<td align='center'>");
                    if(rating!=0 && rs.getString(9).equals("visited"))
                    {
                        for(int i=1;i<=rating;i++)  
                            out.print("<img src='images/star.png' id='s"+i+"' width='20' height='20'>");
                        for(int i=rating+1;i<=5;i++)  
                            out.print("<img src='images/starkhali.png' id='s"+i+"' width='20' height='20'>");
                    }
                    else
                        out.print((rs.getString(9).equals("visited")?"<a href='customeraddreview.jsp?id="+rs.getString(2)+"'>Review</a>":"<a href='#'><font color='gray'>Review</font></a>"));
                    out.print("</td>");
           out.print("<td align='center'>"+(rs.getString(9)==null?"":rs.getString(9).toUpperCase())+"</td>");
           out.print("</tr>");      
    
        }
    
    
    %>
    
    
    
</table>




<%@include file="customerfooter.jsp" %>