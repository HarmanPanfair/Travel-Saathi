
<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Travel Sathi</title>
    </head>
    <body>
        <%
           if(session.getAttribute("customereml")==null)
                  response.sendRedirect("index.jsp?c=exp");
           else
           {
        %>
        <table width="100%"  border="1" cellspacing="0" cellpading="0" class="table">
            <tr>
                <td colspan="2" align="center">
                    <img src="images/main.jpg" width='100%' height='200'>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table width="100%"  style="background-color:lightpink">
                        <tr>
                            <td width="200">
                               Welcome <b><%=session.getAttribute("customername").toString().toUpperCase() %></b> 
                            </td>
                            <td width="1100">
                                <a href="customerloggedin.jsp">Home/Tours</a>
                            </td>
                            <td align="right" >
                                <a href="customerlogout"><img src="images/logout.png" height="30" width="90"></a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr height="400">
                <td width="200"  style="background-color:whitesmoke " valign="top" align="center"  >
                    <img src="images/customerphoto/<%=session.getAttribute("customerid")%>.jpg" width="100" height="100">
                    <br>
                    <a href="customerchangephoto.jsp">Change picture</a>
                    <hr><a href="customerprofile.jsp">Customer Profile</a>
                    <hr><a href="customershowcurrentbooking.jsp">Current Booking</a>
                    <hr><a href="customershowbookinghistory.jsp">Booking History</a>
                    <hr><a href="customershowtransactionhistory.jsp">Transaction History</a>
                    <hr>
                       </td>
                       <%}%>  <td align="center"  valign="top">