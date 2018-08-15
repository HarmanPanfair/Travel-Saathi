<%-- 
    Document   : header.jsp
    Created on : 5 Mar, 2018, 9:41:28 PM
    Author     : IT
--%>

<%@page  language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Travel Sathi</title>
                <meta charset="utf-8">
                
    </head>
    <%
           if(session.getAttribute("eml")==null)
               response.sendRedirect("index.jsp?s=exp");
           else
           {
        %>
     <body style=" background-color: white">
         <table width="100%"  border="1" cellspacing="0" cellpading="0" class="table">
            <tr>
                <td colspan="2">
                    <img src="images/main.jpg" width="100%" height="200">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table width="100%"  style="background-color:lightpink">
                        <tr>
                            <td width="200">
                               Welcome <b><%=session.getAttribute("name").toString().toUpperCase() %></b> 
                            </td>
                            <td width="1100">
                                <a href="loggedin.jsp">Home</a>
                            </td>
                            <td align="right">
                                <a href="logout.jsp"><img src="images/logout.png" width='90' height="30"></a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr height="400">
                <td width="200" style="background-color: whitesmoke" valign="top" align="center">
                    <img src="images/adminphoto/<%=session.getAttribute("id")%>.jpg" width="100" height="100">
                    <br><a href="adminchangephoto.jsp">Change picture</a>
                    <hr><a href="adminreviewcustomer.jsp">Review Customer</a>
                    <hr><a href="adminaddplaces.jsp">Add Place</a>
                    <hr><a href="adminaddtour.jsp">Add Tour</a>
                    <hr><a href="adminreviewtour.jsp">Review Tour</a>
          <% } %>    </td>
         
         <td align="center" valign="top" >