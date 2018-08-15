<%@include file="customerheader.jsp" %>
   <h2 align="center">ADD TOURIST INFORMATION</h2>
<table width="70%" align="center">
   <%
        if(request.getParameter("id")==null)
            response.sendRedirect("customershowbooking.jsp");
        else
        {
             String customerid=DBJ.dblayer.getScalar("select customerid from booking where bookingid="+request.getParameter("id"));
             if(session.getAttribute("customerid").equals(customerid)==false)
                 response.sendRedirect("customershowbooking.jsp");
        }
       
       
       
       
       
   ResultSet gs=DBJ.dblayer.getResult("select * from touristinfo where bookingid="+request.getParameter("id"));
   int a=gs.getMetaData().getColumnCount();
   int c=1;
   int s=0;
   out.print("<tr bgcolor='#a0a0a0'>");
   out.print("<th>NAME</th><th>AGE</th><th>GENDER</th>"+(request.getParameter("s")!=null?"<th>UPDATE</th>":"")+"<th>EDIT</th>");
   out.print("</tr>");
   while(gs.next())
   {
    c++;
    s++;
    out.print("<tr style='background-color:"+(c%2==0?"white":"lightgrey")+"'>");
    if(request.getParameter("s")!=null)
    out.print("<form name='frm' action='updatetouristinfo' method='post'>");    
    if(request.getParameter("s")!= null )
    {
        out.print("<input type='hidden' name='id' value='"+request.getParameter("id")+"'>");
        out.print("<input type='hidden' name='infoid' value='"+gs.getString(1)+"'>");
        out.print("<td align='center'><input type='text' name='name' value='"+(gs.getString(3)==null?"":gs.getString(3))+"' </td>");
        out.print("<td align='center'><input type='number' name='age' value='"+(gs.getString(4)==null?"":gs.getString(4))+"'</td>");
        out.print("<td align='center'><select name='gender' ><option value='male' "+(gs.getString(5).equals("male")?"selected":"")+" > MALE </option><option value='female' "+(gs.getString(5).equals("female")?"selected":"")+">FEMALE</option> </select> </td>");
    }
    else
    { 
      out.print("<td align='center'>"+(gs.getString(3)==null?"":gs.getString(3).toUpperCase())+"</td>");
      out.print("<td align='center'>"+(gs.getString(4)==null?"":gs.getString(4).toUpperCase())+"</td>");
      out.print("<td align='center'>"+(gs.getString(5)==null?"":gs.getString(5).toUpperCase())+"</td>");
    }
    if(request.getParameter("s")!=null)
    out.print("<td align='center'><input type='Submit' value='update' name='b1'>&nbsp<input type='button' value='Cancel' onclick=location.href='customershowtouristinfo.jsp?id="+request.getParameter("id")+"'></td></form>");

    out.print("<td align='center'><a href='customershowtouristinfo.jsp?id="+request.getParameter("id")+"&s=s"+s+"'><img src='images/5.jpg' height='25' width='50'></a></td>");
    out.print("</tr>");
   }
   %>
</table>
<%@include file="customerfooter.jsp" %>