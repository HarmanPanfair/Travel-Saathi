<%@include file="customerheader.jsp" %>
<h2 align='left' valign='top'><a href='customershowbookinghistory.jsp'><img src='images/11.jpg' height="25" width="40"></a></h2>
<h2 align='center'>REVIEW TOUR</h2>
<form name='frm' action='customeraddreview' method='get'>
    <table border='0' align='center' cellspacing='2'>
        <tr>
            <td>
                Description:
            </td>
            <td>
                <textarea name='desc' cols='20' rows="2" required></textarea><br><br>
            </td>
        </tr>
        <tr>
            <td>Rating:</td>
            <td>
                <script language="javascript">
                    rating=0;
                    
                    function stars(n)
                    {
                        for(i=1;i<=n;i++)
               document.getElementById("s"+i).src="images/star.png";
             for(i=n+1;i<=5;i++)
             document.getElementById("s"+i).src="images/starkhali.png";
           return n; 
          }
          
          function readystar(n)
          {
            ratings=n;
            document.getElementById("rate").value=n;
            stars(n);
          }
          </script>
          
       <%
          for(int i=1;i<=5;i++)  
            out.print("<img src='images/starkhali.png' id='s"+i+"' width='20' height='20' onmouseover='stars("+i+")' onclick='readystar("+i+")' >"); 
       %>
       <input type='hidden' name='rating' id='rate' value='0'>
       <input type='hidden' name='tourid' value='<%=request.getParameter("id")%>'>
      <br><br>  </td>
    </tr>
    <tr>
        <td colspan="2"><center><input type="submit" value="Rate"></center></td>
    </tr>
    <tr>
        <td colspan="2" style="color:red"><center>
    </center></td>
    </tr>
        
    </table>
    
    
    
    
    
</form>

<%@include file="customerfooter.jsp" %>