<%@include file="adminheader.jsp" %>
  <h1 align="center">TOURIST INFORMATION</h1>
<table align="center" width="75%">
    <%
        try
        {
           ResultSet rs=DBJ.dblayer.getResult("select * from touristinfo where bookingid="+request.getParameter("id"));
           int c=1;
           out.print("<tr bgcolor='#a0a0a0'>");
           out.print("<th align='center'>TOURIST ID</th><th>NAME</th><th>AGE</th><th>GENDER</th><th>LOCKED</th><th>LOCK</th>");
           out.print("</tr>");
           while(rs.next())
           {
           c++;
           out.print("<tr Style:'Background-color="+(c%2==0?"white":"lightgrey")+"'>");
           out.print("<td align='center'>"+rs.getString(1).toUpperCase()+"</td>");
           out.print("<td align='center'>"+(rs.getString(3)==null?"":rs.getString(3).toUpperCase())+"</td>");
           out.print("<td align='center'>"+(rs.getString(4)==null?"":rs.getString(4).toUpperCase())+"</td>");
           out.print("<td align='center'>"+(rs.getString(5)==null?"":rs.getString(5).toUpperCase())+"</td>");
           out.print("<td align='center'>"+(rs.getString(6).equals("1")?"YES":"NO")+"</td>");
           out.print("<td align='center'><a href='adminshowtouristinfo.jsp?id="+request.getParameter("id")+"&aa="+rs.getString(1)+"'>"+(DBJ.dblayer.getScalar("select touristinfo.lock from touristinfo where infoid="+rs.getString(1)).equals("1")?"Click to Unlock":"Click to Lock")+"</a></td>");
            
           out.print("</tr>");
           }
           }catch(Exception ex)
           {
            out.print("Erroe"+ex);
        
           }
           if(request.getParameter("aa")!=null)
           {
               DBJ.dblayer.executeq("update touristinfo set touristinfo.lock="+(DBJ.dblayer.getScalar("select touristinfo.lock from touristinfo where infoid="+request.getParameter("aa")).equals("1")?"0":"1")+" where infoid="+request.getParameter("aa"));
            response.sendRedirect("adminshowtouristinfo.jsp?id="+request.getParameter("id"));
        
               
              }
    
    %>
    
</table>
<%@include file="adminfooter.jsp" %>