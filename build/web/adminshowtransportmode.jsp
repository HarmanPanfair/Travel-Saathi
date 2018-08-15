<%@page import="java.sql.*;"%>
<%@include file="adminheader.jsp" %>
<table align="center" ><tr>
        <td colspan="6" align="center"> <a href='adminaddtransportmode.jsp?id=<%=request.getParameter("id")%>' >Add More Transport Mode </a></td></tr><br>
<%
     ResultSet rs=DBJ.dblayer.getResult("select * from transportmode where tourid="+request.getParameter("id"));
     int a=rs.getMetaData().getColumnCount();
     int c=0;
     for(int i=3;i<=a;i++)
     out.print("<th bgcolor='#cccccc' align='center'>"+rs.getMetaData().getColumnName(i).toUpperCase()+"</th>");
     out.print(""+(request.getParameter("a")!=null?"<th>UPDATE":"")+"</th><th>EDIT</th>");
     while(rs.next())
     {
      c++;
      out.print("<tr bgcolor='"+(c%2==0?"#cccccc":"white")+"'>");
       if(request.getParameter("a")!=null && request.getParameter("a").equals(rs.getString(1)))
        out.print("<form name='frm' action='updatetransportdata?id="+request.getParameter("id")+"&modeid="+rs.getString(1)+"' method='post'>");
       for(int i=3;i<=a;i++)
           {
            if(request.getParameter("a")!=null && request.getParameter("a").equals(rs.getString(1)))
               if(i==5)
                        out.print("<td align='center'><textarea name='"+rs.getMetaData().getColumnName(i)+"'>"+(rs.getString(i)==null?"":rs.getString(i))+"</textarea></td>");
                    else
                        out.print("<td align='center'><input type='text' value='"+(rs.getString(i)==null?"":rs.getString(i))+"' name='"+rs.getMetaData().getColumnName(i)+"'></td>");
               
                else
                    out.print("<td align='center'>"+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"</td>");
           }
       if(request.getParameter("a")!=null && request.getParameter("a").equals(rs.getString(1)))
        out.print("<td align='center'><input type='submit' value='Update'><br><input type='button' value='Cancel' onclick=location.href='adminshowtransportmode.jsp?id="+request.getParameter("id")+"'></td></form>");
        if(request.getParameter("a")!=null && (request.getParameter("a").equals(rs.getString(1))==false))
                out.print("<td></td>");
      out.print("<td align='center'><a href='adminshowtransportmode.jsp?id="+request.getParameter("id")+"&a="+rs.getString(1)+" '><img src='images/5.jpg' align='center' width='100%' height='100%'></a></td> ");
        out.print("</tr>");
     }
%>

</table>
<div style="padding-top: 137px"></div>
<%@include file="adminfooter.jsp" %>