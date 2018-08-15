<%@include file="adminheader.jsp" %>
   
    <form name="frm" action="adminreviewcustomer.jsp" method="post">
    <center>
        <input type="radio" name="r1" value="customerid" <%= (request.getParameter("src")==null || request.getParameter("r1").equals("customerid")?"checked":"") %> >Id
       <input type="radio" name="r1" value="name" <%= (request.getParameter("src")!=null && request.getParameter("r1").equals("name")?"checked":"") %> >Name
       <input type="radio" name="r1" value="email" <%= (request.getParameter("src")!=null && request.getParameter("r1").equals("email")?"checked":"") %> >Email
    </center>
    <br>
    <center><input type="text" name="src" value="<%= (request.getParameter("src")==null?"":request.getParameter("src")) %>">
        <input type="submit" value="GO"></center>
</form>
        <br><br>
        <div style="overflow-x:auto; width:100% "  >
    <table class="table" table-striped" border="0" cellpading="0" cellspacing="0" >
        <tr bgcolor='#a0a0a0' >
            <th>ID</th><th>NAME</th><th>DOB</th><th>GENDER</th><th>EMAIL</th><th>PHONE NO.</th><th>ADRESS</th><th>CITY</th><th>STATE</th><th>COUNTRY</th><th>PINCODE</th><th>ACTIVE</th><th>ACTIVATE/ DEACTIVATE</th>
        </tr>
            <%
                ResultSet rs;
                if(request.getParameter("src")==null)
                    rs=DBJ.dblayer.getResult("select * from customers");
                else
                    rs=DBJ.dblayer.getResult("select * from customers where "+request.getParameter("r1")+" like '%"+request.getParameter("src")+"%'");
              while(rs.next())
              {
                  out.print("<tr align=center  >");
                  
                  out.print("<td>"+rs.getString(1).toUpperCase()+"</td>");
                  out.print("<td>"+rs.getString(2).toUpperCase()+"</td>");
                  out.print("<td>"+DT.date.getUserDateFormat(rs.getString(3).substring(0,10))+"</td>");
                  out.print("<td>"+rs.getString(4).toUpperCase()+"</td>");
                  out.print("<td>"+rs.getString(11)+"</td>");
                  out.print("<td>"+rs.getString(10).toUpperCase()+"</td>");
                  out.print("<td>"+rs.getString(5).toUpperCase()+"</td>");
                  out.print("<td>"+rs.getString(6).toUpperCase()+"</td>");
                  out.print("<td>"+rs.getString(7).toUpperCase()+"</td>");
                  out.print("<td>"+rs.getString(8).toUpperCase()+"</td>");
                  out.print("<td>"+rs.getString(9).toUpperCase()+"</td>");
                  out.print("<td>"+(rs.getString(13).equals("0")?"NO":"YES")+"</td>");
                  out.print("<td><a href='adminreviewcustomer.jsp?aa="+rs.getString(1)+(request.getParameter("src")==null?"":"&src="+request.getParameter("src")+"&r1="+request.getParameter("r1"))+"'>"+(rs.getString(13).equals("1")?"DEACTIVATE":"ACTIVATE")+"</a></td>");
                  
                  out.print("</tr>");
              }
              if(request.getParameter("aa")!=null)
                {
                    DBJ.dblayer.executeq("update customers set customers.lock="+(DBJ.dblayer.getScalar("select customers.lock from customers where customerid="+request.getParameter("aa")).equals("1")?"0":"1")+" where customerid="+request.getParameter("aa"));
                    if(request.getParameter("src")==null)
                        response.sendRedirect("adminreviewcustomer.jsp");
                    else
                        response.sendRedirect("adminreviewcustomer.jsp?src="+request.getParameter("src")+"&r1="+request.getParameter("r1"));
                }
            %>
    </table>
        </div>

<%@include file="adminfooter.jsp" %>