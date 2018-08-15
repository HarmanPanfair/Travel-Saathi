<%@page import="java.sql.*;"%>
<%@include file="adminheader.jsp" %>

    <form action="addtourdata" method='post'>
   <table  border="0">
       <tr> 
           <th>Tour-Name:</th>
           <td><input type="text" name="title" required ></td>
       </tr>
        <tr>
            <th>Destination:</th>
            <td><select name="dest" desc required>
                               <%
                                   ResultSet rs=DBJ.dblayer.getResult("Select placename from place");
                                   while(rs.next())
                                   out.print("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>");
                               %>
               </select></td>
        </tr>
       <tr>
           <th>Duration:</th>
           <td><input type="text" name='days' style='width:40px'required >Days&nbsp;&nbsp;
               <input type="text" name='nights' style="width: 40px" required >Nights</td>
       </tr>
       <tr> 
           <th>Cost:</th>
           <td><input type="text" name="cost" required></td>
       </tr>
       <tr> 
           <th>Description:</th>
           <td><textarea name="desc"  cols='20' required></textarea></td>
       </tr>
       <tr>
             <th>Departure-Date:</th>
             <td><input type="date" name="departure" placeholder="yyyy-mm-dd *" required></td>
       </tr>
       <tr> 
             <th>Arrival-Date:</th>
             <td><input type="date" name="arrival" placeholder="yyyy-mm-dd *" required></td>
       </tr>
       <tr> 
             <th>No.of Seats:</th>
             <td><input type="text" name="seats" required></td>
       </tr>
       <tr> 
             <th>Booking-Amount:</th>
             <td><input type="text" name="minba" required></td>
       </tr>
       <tr> 
             <th>LastdatetopayfullAmount:</th>
             <td><input type="date" name="ldtpfa" placeholder="yyyy-mm-dd *" required></td>
       </tr>
       <tr> 
            <td colspan="2"><center><input type="Submit" name="b1" value='Save'>&nbsp;&nbsp;<input type='reset'value='Reset' name='b2'></center></td>
       </tr>
    </table>
                <%
            if(request.getParameter("e")!=null)
            out.print("Tour Added Sucessfully");
        %>
    </form>
</center>






<%@include file="adminfooter.jsp" %>