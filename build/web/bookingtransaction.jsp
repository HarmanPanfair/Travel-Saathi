<%@include file="customerheader.jsp" %>
<h2 align="center" valign="top">Transaction</h2>
<form action="booktour" method="post">
<table border="0" valign="top" cellspacing="2" >
            <input type='hidden' name='tourid' value='<%=request.getParameter("tourid")%>'>
            <input type='hidden' name='seats' value='<%=request.getParameter("seats")%>'>
            <input type='hidden' name='modeid' value='<%=request.getParameter("modeid")%>'>
            <input type="hidden" name="customerid" value="<%=session.getAttribute("customerid")%>">
            <input type='hidden' name='amount' value='<%=request.getParameter("amount")%>'>
    <tr>
        <td>Total Amount</td>
        <td style="color: red">
        <%
            try
             {
               out.print(Double.parseDouble(DBJ.dblayer.getScalar("select priceoftransport from transportmode where modeid="+request.getParameter("modeid")))*Double.parseDouble(request.getParameter("seats"))+(Double.parseDouble(DBJ.dblayer.getScalar("select cost from tour where tourid="+request.getParameter("tourid")))*Double.parseDouble(request.getParameter("seats"))));
             }
            catch(Exception ex)
             {
               out.print("error"+ex);
             }
        %>
    
        </td>
    </tr>
    <tr>       
        <td>Amount</td>
        <td style="color:red">
           <%=request.getParameter("amount")%>
        </td>
    </tr>
    <tr>
      <td height="50">Mode Of Payment</td>
      <td>
          <select name="paymentmode" id='p1'>
              <option value="select" selected >Select</option>
              <option value="Cash">Cash</option>
              <option value="Debitcard/Mastercard">Debitcard/Mastercard</option>
              <option value="NetBanking">Net Banking</option>
              <option value="Paytm">Paytm</option>
          </select>
      </td>
    </tr>
    <tr>
        <td height="50">Description</td>
        <td>
            <textarea name="desc" cols="20" rows="2"></textarea>
        </td>
    </tr>
    <tr>
        <td height="53" colspan="2"><center><input type="submit" onclick="xyz()" value="Pay">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="cancel" onclick="location.href='customerbooktour.jsp?id=<%=request.getParameter("tourid")%>'" ></center></td>
    </tr>
</table>
    <script lang='javascript'>
    function xyz()
    {
     if(document.getElementById("p1").value == "Paytm")
     {
         document.forms[0].action="TxnTest.jsp" ; 
         document.forms[0].submit();
     }
    }
    
    </script>
        
</form>
<%@include file="customerfooter.jsp" %>