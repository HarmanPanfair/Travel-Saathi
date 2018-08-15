<%@page import="java.sql.*"%>
<%@include file="adminheader.jsp" %>

<!--
<center><a href='adminadditenerary.jsp?s=<%=request.getParameter("id")%>'>Add New Itenerary</a></center>
-->
<br>
<br>
<table align="center" border="1" valign="top">
 
<%
    out.print("<tr bgcolor='#a0a0a0' >");
    int c=1;
    ResultSet rs=DBJ.dblayer.getResult("select * from itenerary where tourid="+request.getParameter("id"));
    int a=rs.getMetaData().getColumnCount();
    out.print("<tr bgcolor='#a0a0a0' >");
    out.print("<th>DAY NUMBER</th><th>TITLE</th><th>DESCRIPTION</th>"+(request.getParameter("day")!=null?"<th>Update</th>":"")+"<th><b>EDIT</b></th>");
    out.print("</tr>");
    while(rs.next())
    {      
        c++;
        out.print("<tr style='background-color:"+(c%2==0?"white":"lightgray")+"'>");
        if(request.getParameter("day")!=null && request.getParameter("day").equals(rs.getString(2)))
        out.print("<form name='frm' action='updateitenerarydata?id="+request.getParameter("id")+"&day="+request.getParameter("day")+"' method='post'>");
        for(int i=2;i<=a;i++)
        {
            if(request.getParameter("day")!=null && request.getParameter("day").equals(rs.getString(2)) &&i!=2)
               if(i==4)
                        out.print("<td align='center'><textarea name='"+rs.getMetaData().getColumnName(i)+"'>"+(rs.getString(i)==null?"":rs.getString(i))+"</textarea></td>");
                    else
                        out.print("<td align='center'><input type='text' value='"+(rs.getString(i)==null?"":rs.getString(i))+"' name='"+rs.getMetaData().getColumnName(i)+"'></td>");
               
                else
                    out.print("<td align='center'>"+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"</td>");
        }
              if(request.getParameter("day")!=null && request.getParameter("day").equals(rs.getString(2)))
        out.print("<td><input type='submit' value='Update'><br><input type='button' value='Cancel' onclick=location.href='showitenerary.jsp?id="+request.getParameter("id")+"'></td></form>");
        if(request.getParameter("day")!=null && (request.getParameter("day").equals(rs.getString(2))==false))
                out.print("<td></td>");
        out.print("<td><a href='showitenerary.jsp?id="+rs.getString(1) +"&day="+rs.getString(2)+"'><img src='images/5.jpg' align='center' width='100%' height='100%'></a></td> ");
        out.print("</tr>");
    }
%>
</table>

<%@include file="adminfooter.jsp" %>