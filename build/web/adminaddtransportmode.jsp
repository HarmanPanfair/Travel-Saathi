<%@page import="java.sql.*"%>
<%@include file="adminheader.jsp" %>


<form action='addtransportdata?id=<%=request.getParameter("id")%>' method="post">
    <center>
        <table>
            <tr><th>Tour ID:</th>
                <td><%
                    out.print(request.getParameter("id"));
                    %>
                </td>
            </tr>
            <tr>
                <th>Source:</th>
                <td><select name="s1" required>
                               <%
                                   ResultSet rs=DBJ.dblayer.getResult("Select placename from place");
                                   while(rs.next())
                                   out.print("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>");
                               %>
               </select></td>
            </tr>
            <tr>
                <th>Transport Mode:</th>
                <td><input type="text" name="t2" required></td>
            </tr>
            <tr>
                <th>Mode Description:</th>
                <td><textarea name="t3" cols="20" required ></textarea></td>
            </tr>
            <tr>
                <th>Price of Transport:</th>
                <td><input type="text" name="t4"  required></td>
            </tr>
            <tr><td colspan="2"><center><input type="submit"  name="b1" value="Update">&nbsp;&nbsp;<input type="reset"  name="b2" value="Reset"></center></td></tr>
        </table>
    </center>
</form>
               <div style=" padding-top: 221px"></div>




<%@include file="adminfooter.jsp" %>