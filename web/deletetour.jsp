<%@page import="java.sql.*"%>
<%
    DBJ.dblayer.executeq("delete from tour where tourid="+request.getParameter("r"));
    // out.print("delete from tour where tourid="+request.getParameter("r"));
    response.sendRedirect("adminreviewtour.jsp");



%>