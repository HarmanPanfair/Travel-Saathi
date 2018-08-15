<%-- S
    Document   : adminloginpage
    Created on : 8 Mar, 2018, 12:35:43 PM
    Author     : IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <title>Travel Sathi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
     <%
                if(request.getParameter("p")!=null)
                {
                    out.print("<script language='javascript' > window.alert('invalid email or password');</script>");
                }
            %>
            <body style=" background-color: white " >
                      <img src="images/main.jpg" width="100%" height="200">
                      <h1 align="left" valign="top"><a href="index.jsp"><img src="images/home.png" height="35" width="40"></a></h1>
                      <h2 align="center">ADMIN LOGIN</h2>
                      
					
                
         
                  
          <form class="form" action="checklogin" method="post" >
              <table border="0" align="center" width="250" height="150">
                  <tr>
                      <td>EMAIL</td>
                      <td><input type="email" name="t1" required=""></td>
                  </tr>
                  <tr>
                      <td>PASSWORD</td>
                      <td><input type="password" name="t2"  required=""></td>
                  </tr>
                  <tr>
                      <td colspan="2" align="center"><input type="submit" name="b1" value="Login"></td>
                  </tr>
              </table>   
           </form>
		
                     
            
    </body>
</html>
