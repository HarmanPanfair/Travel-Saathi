<%@include file="adminheader.jsp" %>

<form action="addplacesdata" method="post"><center>
                <table>
                    <tr><th>Place-Name:</th><td><input type='text' name='t1'></td></tr>
                    <tr><th>District:</th><td><input type='text' name='t2'></td></tr>
                    <tr><th>State:</th><td><input type='text' name='t3'></td></tr>
                    <tr><th>country:</th><td><input type='text' name='t4'></td></tr>
                    <tr><th>Pin-Code:</th><td><input type='text' name='t5'></td></tr>
                    <tr><td colspan="2"><center><input type='Submit' name='b1' value='Add'>&nbsp;&nbsp;<input type='reset' value="Reset" name="b2"></center></td></tr>
                    
                </table>
        <%
            if(request.getParameter("p")!=null)
            out.print("Place Added Sucessfully");
        %>
    </center></form>
<%@include file="adminfooter.jsp" %>