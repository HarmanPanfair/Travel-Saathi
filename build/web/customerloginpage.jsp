<%-- 
    Document   : customerloginpage
    Created on : 15 Mar, 2018, 1:14:15 PM
    Author     : IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <title>Travel Sathi</title>
        	<meta charset="utf-8">
               <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
         <%
                if(request.getParameter("p")!=null)
                {
                    out.print("<script language='javascript' > window.alert('invalid email or password');</script>");
                }
                if(session.getAttribute("customereml")!=null)
                 response.sendRedirect((request.getParameter("id")==null?"customerloggedin.jsp":"customerbooktour.jsp?id="+request.getParameter("id")));
            %>
 <body style=" background-color: white">
                      <img src="images/main.jpg" width="100%" height="200">
                      <h1 align="left" valign="top"><a href="index.jsp"><img src="images/home.png" height="35" width="40"></a></h1>
                      <h2 align="center">CUSTOMER LOGIN</h2>
                         
                
          
	  
          <form class="form" action="customerchecklogin<%=(request.getParameter("id")==null?"":"?id="+request.getParameter("id"))%>" method="post" >
              <table align='center' border='0' height='150' width='250'>	
                  <tr>
                      <td>EMAIL</td>
                      <td><input type="email" name="t1"  required></td>
                  </tr>
                  <tr>
                      <td>PASSWORD</td>
                      <td><input type="password" name="t2"  required></td>
                  </tr>
                  <tr>
                      <td align='center' colspan='2'><input type="submit" name="b1" value="login"><br>
                          <a href="newcustomer.jsp"><font color="black">Don't have an Account? <b>Sign Up<b></font></a></td>
                  </tr>
               
                                    </table>
           </form>
         </body>
</html>
