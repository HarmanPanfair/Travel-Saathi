<%@include file="customerheader.jsp" %>



<%
session.setAttribute("savepath","images/customerphoto/"+session.getAttribute("customerid")+".jpg");
session.setAttribute("returnpage","customerchangephoto.jsp");
%>

<form name="fff" method="post" action="uploadphoto" enctype="multipart/form-data">
    <center>   <table width="200"  border="0"><center>
                <tr><td colspan="2">
            <img src="images/customerphoto/<%=session.getAttribute("customerid")%>.jpg" height="100" width="100">
            </td></tr>
<tr><td >
    <input type="file" name="filename" required>
    <input type="submit" name="submit" value="upload">
    </td></tr>
     </table>
    </center>
    
</form> 
  
<%@include file="customerfooter.jsp" %>