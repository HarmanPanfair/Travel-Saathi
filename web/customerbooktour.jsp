<%@include file="customerheader.jsp" %>
<h2 align="center" valign="top">BOOK TOUR</h2>
 <table width="700" border="0" valign="top" >
  <%
    ResultSet rs=DBJ.dblayer.getResult("select * from tour where tourid="+request.getParameter("id"));
    rs.next();
    int availableseats=Integer.parseInt(rs.getString(9))-Integer.parseInt(DBJ.dblayer.getScalar("select sum(noofseats)from booking where tourid="+request.getParameter("id"))==null?"0":(DBJ.dblayer.getScalar("select sum(noofseats)from booking where tourid="+request.getParameter("id"))));
    out.print("<tr><td align='center'>"+rs.getString(2).toUpperCase()+"</td></tr>");
    out.print("<tr><td align='center'>"+rs.getString(3).toUpperCase()+"</td></tr>");
 
  %>
    <tr><td align='center'>Price starting from <font style='color: orangered'<b><%=(Double.parseDouble(rs.getString(4))+Double.parseDouble(DBJ.dblayer.getScalar("select min(priceoftransport) from transportmode where tourid="+rs.getString(1)))) %>/-</b></font>PerPerson</td></tr>
  <%
    out.print("<tr><td align='center'><b>TRAVELLING &nbsp;TO&nbsp;"+rs.getString(5).toUpperCase()+"&nbsp; ON &nbsp; <u>"+rs.getString(7).toUpperCase()+"</u> &nbsp; AND &nbsp; RETURNING &nbsp;ON &nbsp; <u>"+rs.getString(8).toUpperCase()+"</u></td></tr>");
    out.print("<tr><td align='center'><b>Seats left:</b><font color=red>"+availableseats+"</font></td></tr>");
  %>

   <form action='bookingtransaction.jsp' method="post">
    
   <input type='hidden' name='tourid' value='<%=request.getParameter("id")%>'>
    <table border="1" align="center" valign="top" cellspacing="0" cellpadding="0">
        
        <br>
        <br>
        <tr>
            <th>Number of Seats</th>
            <td colspan="2"><input type="number" name="seats" onkeyup='xyz()' id="seats" min="1" max=<%=availableseats%> required></td>
        </tr>
        <tr>
            <th>Amount</th>
            <td><input type="number" name="amount" id=amount  readonly  min=<%=rs.getString(11)%> ></td>
         
        </tr>
        
        <tr>
            <th>Transport Mode</th>
            <td><select name="modeid">
                    <%
                        try{
                        ResultSet ts=DBJ.dblayer.getResult("Select modeid,source,transportmode,priceoftransport from transportmode where tourid="+request.getParameter("id"));
                        while(ts.next())
                        out.print("<option value='"+ts.getString(1)+"'>"+ts.getString(4).toUpperCase()+"("+ts.getString(3)+" from "+ts.getString(2)+")");
                        }
                        catch(Exception ex)
                           {
                                out.print("<option>Error</option>");
                             }
%>
                </select></td>
        </tr>
        <tr><td colspan="2" align="center"><input type="submit" value="Book" name="b" style="width:170px;height:50px;font-size: 30px "></td></tr>
    </table>
</form>
        <script lang="javascript">
            ba=<%=rs.getString(11)%>;
            function xyz()
            {
                a=parseInt(document.getElementById("seats").value);
                amount=ba*a;
                document.getElementById("amount").value=amount;
                document.getElementById("amount").min=amount;
            }
        </script>


<%@include file="customerfooter.jsp" %>