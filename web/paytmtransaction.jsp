<%@include file="customerheader.jsp" %>

     <h2 align="center">Transaction</h2>
     <br>
    <form action="pgRedirect.jsp" method="post">
  <table border="0" cellspacing="2">
      <tr>
        <td>
            Amount Left:
        </td>
        <td style="color:red">
            <%=request.getParameter("left")%>
        </td>
    </tr>
    <tr>
        <%
            session.setAttribute("bookingid",request.getParameter("id"));
        %>
    <td height="50">TXN_ID::*</td>
    <td><%=request.getParameter("id")+"95126"+DBJ.dblayer.getScalar("select count(*) from transaction where bookingid="+request.getParameter("id")) %>
    <input id="ORDER_ID" tabindex="1" maxlength="20" size="20" name="ORDER_ID" autocomplete="off" value="ORDS_<%=request.getParameter("id")+"9"+DBJ.dblayer.getScalar("select count(*) from transaction where bookingid="+request.getParameter("id")) %>">    
    </td>
    <input type="hidden" id="CUST_ID" name="CUST_ID" value="<%=session.getAttribute("customerid")%>">
        <input type="hidden" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail">
    
           <input type="hidden" id="CHANNEL_ID" tabindex="4" maxlength="12" size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
         
    <tr>       
      <td height="50">Enter Amount</td>
      <td><input type="number" title="TXN_AMOUNT" value="<%=request.getParameter("left")%>" max="<%=request.getParameter("left")%>" name="TXN_AMOUNT" id="TXN_AMOUNT"></td>
    </tr>
    <tr>
        <td height="53" colspan="2"><center><input type="submit" value="Pay">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="cancel" onclick="location.href='customerShowcurrentbooking.jsp'" ></center></td>
    </tr>
  </table>
    </form>
<%@include file="customerfooter.jsp" %>