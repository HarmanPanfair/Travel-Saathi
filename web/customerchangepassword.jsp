<%@include file="customerheader.jsp" %>
    <br><br>
<%
    if(request.getParameter("p")==null)
    {
%>
        <form name="frm" method="post" action="customerchangepassword.jsp?p=12">
        Enter old Password
        &nbsp;&nbsp; <input type="password" name="password">
        <br><br>
        <input type="submit" value="next">
        </form>
        <br>
        <%=(request.getParameter("a")==null?"":"<font style='color:red'>Wrong Password</font>")%>
        <%=(request.getParameter("d")==null?"":"<font style='color:red'>Password not mached</font>")%>
<%
    }
    else
    {
      if(DBJ.dblayer.getScalar("select password from customers where customerid='"+session.getAttribute("customerid")+"'").equals(request.getParameter("password")))
      {
%>
        <form name='frm2' method='post' action='updatepassword' >
        <table border='0' align='center' >
        <tr height='70'>
        <td>New password</td>
        <td><input type='password' id='p1' name='p1' ></td>
        </tr>
        <tr height='70'>
        <td>Confirm password</td>
        <td><input type='password' style="color:red" id='p2' name='p2' onkeyup="pqr()" ></td>
        </tr>
        <script lang="java script">
            function pqr()
            {
                if(document.getElementById("p1").value===document.getElementById("p2").value)
                {
                    document.getElementById("p2").style="color:black";
                    document.getElementById("bb").disabled=false;
                }
                else
                {    
                    document.getElementById("p2").style="color:red";
                    document.getElementById("bb").disabled=true;
                }
                
            }
        </script>
        <tr>
            <td colspan='2' align=center ><input type='submit' id='bb' disabled value='update' ></td>
        </tr>
        </table>
        </form>
<%
      }
      else
        response.sendRedirect("customerchangepassword.jsp?a=2");
    }
%>
<%@include file="customerfooter.jsp" %>