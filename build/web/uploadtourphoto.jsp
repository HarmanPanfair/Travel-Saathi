<%@include file="adminheader.jsp" %>

<a href="adminreviewtour.jsp" valign="top"><img src="images/11.png" height="25" width="25"></a>

<%
session.setAttribute("savepath","images/tourphoto/"+request.getParameter("u")+".jpg");
session.setAttribute("returnpage","uploadtourphoto.jsp?u="+request.getParameter("u"));
%>

<form name="ff" method="post" action="uploadphoto" enctype="multipart/form-data">
    <center>   <table width="200"  border="0"><center>
                <tr><td colspan="2">
            <img src="images/tourphoto/<%=request.getParameter("u")%>.jpg" height="100" width="100">
            </td></tr>
<tr><td >
    <input type="file" name="filename" required>
    <input type="submit" name="submit" value="upload">
    </td></tr>
     </table>
    </center>
    
</form> 
            


<%@include file="adminfooter.jsp" %>