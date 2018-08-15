<%@include  file="customerheader.jsp" %>

<%
    ResultSet rs=DBJ.dblayer.getResult("Select * from customers where customerid="+session.getAttribute("customerid"));
    rs.next();
    {
%>

    

<table width="60%" height="496" border="0">
    <tr>
    <td colspan="4" align="center" >
        <img src="images/customerphoto/<%=rs.getString(1)%>.jpg" width="167" height="146"  alt=""/>
    <br>
    <a href='customerchangephoto.jsp'>Change Picture</a><hr><br></td>
  </tr>
  <%=(request.getParameter("a")==null?"":"<form name='frm' action='updateprofile' method='post' >")%>
  <tr>
      <td width="60"><b>NAME</b></td>
    <td width="60"><%=(request.getParameter("a")==null?rs.getString(2).toUpperCase():"<input type='text' name='name' value='"+rs.getString(2)+"' >")%><hr align="left" WIDTH="150"></td>
    <td width="60"><b>DOB</b></td>
    <td width="60"><%=(request.getParameter("a")==null?rs.getString(3).toUpperCase():"<input type='date' name='dob' value='"+rs.getString(3)+"' >")%><hr align="left" WIDTH="150"></td>
  </tr>
  <tr>
      <td><b>GENDER</b></td>
    <td><%=(request.getParameter("a")==null?rs.getString(4).toUpperCase():"<select name='gender'><option value='male' "+(rs.getString(4).equals("male")?"selected":"")+" >MALE</option><option value='female' "+(rs.getString(4).equals("female")?"selected":"")+" >FEMALE</option</select>")%><hr align="left" WIDTH="150"></td>
    <td><b>EMAIL</b></td>
    <td><%=rs.getString(11)%><hr align="left" WIDTH="150"></td>
  </tr>
  <tr>
      <td><b>ADDRESS</b></td>
    <td><%=(request.getParameter("a")==null?rs.getString(5).toUpperCase():"<input type='text' name='address' value='"+rs.getString(5)+"' >")%><hr align="left" WIDTH="150"></td>
    <td><b>CITY</b></td>
    <td><%=(request.getParameter("a")==null?rs.getString(6).toUpperCase():"<input type='text' name='city' value='"+rs.getString(6)+"' >")%><hr align="left" WIDTH="150"></td>
  </tr>
  <tr>
      <td><b>STATE</b></td>
    <td><%=(request.getParameter("a")==null?rs.getString(7).toUpperCase():"<input type='text' name='state' value='"+rs.getString(7)+"' >")%><hr align="left" WIDTH="150"></td>
    <td><b>COUNTRY</b></td>
    <td><%=(request.getParameter("a")==null?rs.getString(8).toUpperCase():"<input type='text' name='country' value='"+rs.getString(8)+"' >")%><hr align="left" WIDTH="150"></td>
  </tr>
  <tr>
      <td><b>PINCODE</b></td>
    <td><%=(request.getParameter("a")==null?rs.getString(9).toUpperCase():"<input type='text' name='pincode' value='"+rs.getString(9)+"' >")%><hr align="left" WIDTH="150"></td>
    <td><b>PHONE NO</b></td>
    <td><%=(request.getParameter("a")==null?rs.getString(10).toUpperCase():"<input type='text' name='phoneno' value='"+rs.getString(10)+"' >")%><hr align="left" WIDTH="150"></td>
  </tr>
  <tr>
      <td colspan="4" align="center"><br><hr><%=(request.getParameter("a")==null?"<input type='button' value='Edit' onclick=location.href='customerprofile.jsp?a=edit' >":"<input type='submit' value='Update' >&nbsp;&nbsp;&nbsp;&nbsp;<input type='button' value='Cancel' onclick=location.href='customerprofile.jsp' >")%><hr></td>
  </tr>
  <%=(request.getParameter("a")==null?"":"</form>")%>
  <tr>
      <td colspan="4" height="50">
          
      </td>
  </tr>
  <tr>
      <td colspan="4" align="center">
          <a href="customerchangepassword.jsp" >Change Password</a>
      </td>
  </tr>
</table>
<% }%>    </form>
<%@include  file="customerfooter.jsp" %>