<%@include file="adminheader.jsp" %>



<%
session.setAttribute("savepath","images/adminphoto/"+session.getAttribute("id")+".jpg");
session.setAttribute("returnpage","adminchangephoto.jsp");
%>

<form name="ff" method="post" action="uploadphoto" enctype="multipart/form-data">
    <center>   <table width="200"  border="0"><center>
                <tr><td colspan="2">
            <img src="images/adminphoto/<%=session.getAttribute("id")%>.jpg" height="100" width="100">
            </td></tr>
<tr><td >
    <input type="file" name="filename" required>
    <input type="submit" name="submit" value="upload">
    </td></tr>
     </table>
    </center>
    
</form> 
   

            <div  style=" padding-top: 252px"></div>

<%@include file="adminfooter.jsp" %>