<%
    session.removeAttribute("name");
    session.removeAttribute("eml");
    response.sendRedirect("adminloginpage.jsp");
%>