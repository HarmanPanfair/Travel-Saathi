<%-- 
    Document   : newcustomer
    Created on : 26 Mar, 2018, 7:08:04 PM
    Author     : IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        
        
        <title>Travel Sathi</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
    </head>
        <body style=" background-color: white">
                     <img src="images/main.jpg" width="100%" height="200">
                      <h1 align="left" valign="top"><a href="index.jsp"><img src="images/home.png" height="35" width="40"></a></h1>
                      <h2 align="center">REGISTRATION FORM</h2>
                
            
                    <form  action="addcustomer" method="get">
                        <table align="center"  style="background-color: white" cellspacing="0" cellpadding="0" width='250' >
                <tr>
                    <th>Name</th>
                    <td><input type="text" name="t1" required></td>
                </tr>
                <tr>
                    <th>DOB</th>
                    <td><input type="date" name="t10"   ></td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td><select name="s1">
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><input type="email" name="t8" required></td>
                </tr>
                 <tr>
                    <th>Phone No.</th>
                    <td><input type="text" name="t7" required></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><input type="text" name="t2" required></td>
                </tr><tr>
                    <th>City</th>
                    <td><input type="text" name="t3" required></td>
                </tr><tr>
                    <th>State</th>
                    <td><input type="text" name="t4" required></td>
                </tr><tr>
                    <th>Country</th>
                    <td><input type="text" name="t5" required></td>
                </tr><tr>
                    <th>Pincode</th>
                    <td><input type="text" name="t6" required></td>
                </tr>
               
                
                    <td colspan="2"><center><input type="submit" name="b1" value="Submit" class="">&nbsp;<input type="reset" name="t1"  value="Reset" > </center></td>
                </tr>
                <tr><td colspan="2"><center>
                <%
                    if(request.getParameter("p")!=null)
                    out.print("Customer Added");
                    %>
                </center></td></tr>
               </table>
               </form>
                
                       
    </body>
</html>
