<%@page import="java.sql.*"%>
<%@include file="adminheader.jsp" %>
 <!--  <form name="frm" action="adminreviewtour.jsp" method="post">
       <center>
           <input type="radio" name="r1" value="title"<%=(request.getParameter("src")==null || request.getParameter("r1").equals("title")?"checked":"")%> >Name
           <input type="radio" name="r1" value="departure"<%=(request.getParameter("src")!=null && request.getParameter("r1").equals("departure")?"checked":"")%> >Departure Date
           <input type="radio" name="r1" value="arrival"<%=(request.getParameter("src")!=null && request.getParameter("r1").equals("arrival")?"checked":"") %> > Arrival Date
        </center>
        <br>
        <center>
            <input type="text" name="src" value='<%=request.getParameter("src")==null?"":request.getParameter("src")%>'>
            <input type="Submit" value="Go">
        </center>
   </form>!-->
            <br>
            <div style="overflow-x: auto;width:100% ">
   <table  border="1" >
<%
    String mode;
    String name;
    ResultSet rs;
    if(request.getParameter("src")==null)
        rs=DBJ.dblayer.getResult("select * from tour  order by tourid desc");
     else
        rs=DBJ.dblayer.getResult("select * from tour where"+request.getParameter("r1")+" like '%"+request.getParameter("src")+"%' order by tourid desc");
     
    int a=rs.getMetaData().getColumnCount();
    out.print("<tr bgcolor=#a0a0a0>"); 
    out.print("<th>TOUR ID</th><th>NAME</th><th>DURATION</th><th>COST</th><th>DESTINATION</th><th>DESCRIPTION</th><th>DEPARTURE DATE</th><th>ARRIVAL DATE</th><th>TOTAL SEATS</th><th>ADDED BY</th><th>BOOKING AMOUNT</th><th>LAST DAY TO PAY FULL AMOUNT</th>"+(request.getParameter("id")!=null?"<th>UPDATE</th>":"")+"<th>NUMBER OF TRANSPORT MODE</th><th>SHOW ITENERARY</th><th>BOOKINGS</th><th>UPLOAD IMAGE</td><th>EDIT</th><th>REMOVE</th>");
    int c=1;
    
    while(rs.next()) 
    { 
        name=DBJ.dblayer.getScalar("select name from admins where adminid="+rs.getString(10));
        c++;
        out.print("<tr bgcolor='"+(c%2==0?"#cccccc":"white")+"'>");
        
        if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)))
            out.print("<form name='frm' action='updatetour?id="+request.getParameter("id")+"' method='post'>");
        for(int i=1;i<=a;i++)
            if(i!=10)
            {
                if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)) && i!=1 )
                {
                if(i==5)
                {
                    out.print("<td align='center'><select name='"+rs.getMetaData().getColumnName(i)+"'>");
                    ResultSet ts=DBJ.dblayer.getResult("select placename from place");
                    while(ts.next())
                     {
                         out.print("<option value='"+ts.getString(1)+"'"+(rs.getString(i).equals(ts.getString(1))?"selected":"")+" >"+ts.getString(1)+"</option>");
                     }
                    out.print("</select></td>");
                }
                else
                {
                if(i==6)
                    out.print("<td align='center'><textarea name='description'  value='"+rs.getMetaData().getColumnName(i)+"'>"+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"</textarea></td>");
                else
                    out.print("<td align='center'><input type='"+(i==7 ||i==8||i==12?"Date":"text")+"' value='"+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"' name='"+rs.getMetaData().getColumnName(i)+"'</td>");
                }
                }
                else
                {
                if(i==6)
                    out.print("<td align='center'>"+(rs.getString(i)==null?"":(rs.getString(i).length()>20?rs.getString(i).substring(0,20).toUpperCase():rs.getString(i)))+"</td>");
                else
                    out.print("<td align='center'>"+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"</td>");
                }
            }
               else
                out.print("<td><input type='hidden' name='name' value='"+name+"'>"+name.toUpperCase()+"</td>");
                if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)))
                    out.print("<td><input type='Submit' value='update'> <br><input type='button' value='cancel' onclick=location.href='adminreviewtour.jsp'></td></form>");
                if(request.getParameter("id")!=null && (request.getParameter("id").equals(rs.getString(1))==false))
                    out.print("<td></td>");
        
          String s=DBJ.dblayer.getScalar("select count(modeid) from transportmode where tourid="+rs.getString(1));
          out.print("<td><a href='adminshowtransportmode.jsp?id="+rs.getString(1)+"'>"+s+"</a></td>");
          out.print("<td><a href='showitenerary.jsp?id="+rs.getString(1)+"'>Show</a></td>");
          out.print("<td align='center'><a href='adminshowbooking.jsp?id="+rs.getString(1)+"'>Show Bookings<br>("+DBJ.dblayer.getScalar("select count(bookingid) from booking where tourid="+rs.getString(1))+")</a></td>");
          out.print("<td><a href='uploadtourphoto.jsp?u="+rs.getString(1)+"'><img src='images/upload.png' height='20' width='100%'></a></td><td><a href='adminreviewtour.jsp?id="+rs.getString(1)+"'><img src='images/5.jpg' align='center' width='100%' height='20'></a></td><td><a href='deletetour?id="+rs.getString(1)+"'><img src='images/4.jpg' align='center' width='100%' height='20'></a></td>");
          out.print("</tr>");
    }
    
    %>
       </table>
            </div>

<%@include file="adminfooter.jsp" %>



































<!--

   <td colspan="2" valign="top" style="background-color:lightyellow">
<br><br>
<form name="frm" action="adminshowTour.jsp" method="post">
    <center>
        <input type="radio" name="r1" value="name" <%= (request.getParameter("src")==null || request.getParameter("r1").equals("name")?"checked":"") %> >Name
       <input type="radio" name="r1" value="departuredate" <%= (request.getParameter("src")!=null && request.getParameter("r1").equals("departuredate")?"checked":"") %> >Departure Date
       <input type="radio" name="r1" value="arrivaldate" <%= (request.getParameter("src")!=null && request.getParameter("r1").equals("arrivaldate")?"checked":"") %> >Arrival Date
    </center>
    <br>
    <center><input type="text" name="src" value="<%= (request.getParameter("src")==null?"":request.getParameter("src")) %>">
        <input type="submit" value="GO"></center>
</form>
<br>
<div style="overflow-x:auto;width:100%"  >
<table border="1" align="center">
    <
        String mode="";
        ResultSet rs;
        if(request.getParameter("src")==null)
            rs=DBH.Dblayer.getResult("select * from tour order by tourid desc");
        else
             rs=DBH.Dblayer.getResult("select * from tour where "+request.getParameter("r1")+" like '%"+request.getParameter("src")+"%' order by tourid desc");
        int a=rs.getMetaData().getColumnCount();
        out.print("<tr bgcolor='#a0a0a0' >");
        out.print("<th>TOUR ID</th><th>NAME</th><th>DURATION</th><th>COST</th><th>DESTINATION</th><th>DESCRIPTION</th><th>DEPARTURE DATE</th><th>ARRIVAL DATE</th><th>TOTAL SEATS</th><th>BOOKING AMOUNT</th><th>LAST DAY TO PAY FULL AMOUNT</th>"+(request.getParameter("id")!=null?"<th>Update</th>":"")+"<th>NUMBER OF TRANSPORT MODE</th><th>SHOW ITENERARY</th><th>BOOKINGS</th><th>UPLOAD IMAGE</td><th>EDIT</th><th>REMOVE</th>");
        out.print("</tr>");
        int c=1;
        while(rs.next())
        {
            c++;
            mode=DBH.Dblayer.getScalar("select count(*) from transportmode where tourid="+rs.getString(1));
            out.print("<tr style='background-color:"+(c%2==0?"white":"#cccccc")+"' >");
            if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)))
                out.print("<form name='frm' action='updatetour?id="+request.getParameter("id")+"' method='post'>");
            for(int i=1;i<=a;i++)
                    if(i!=10)
                    {
                        if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)) &&i!=1)
                        {
                            if(i==5)
                            {
                                out.print("<td align='center'><select name='"+rs.getMetaData().getColumnName(i)+"'>");
                                ResultSet ts=DBH.Dblayer.getResult("select name from place");
                                while(ts.next())
                                    out.print("<option value='"+ts.getString(1)+"'"+(rs.getString(i).equals(ts.getString(1))?"selected":"")+" >"+ts.getString(1)+"</option>");
                                
                                out.print("</select></td>");
                            }
                            else
                            {
                                if(i==6)
                                    out.print("<td align='center'><textarea name='"+rs.getMetaData().getColumnName(i)+"'>"+(rs.getString(i)==null?"":rs.getString(i))+"</textarea></td>");
                                else
                                    out.print("<td align='center'><input type='"+(i==7||i==8||i==12?"date":"text")+"' value='"+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"' name='"+rs.getMetaData().getColumnName(i)+"'></td>");
                            }
                        }
                        else
                        {
                            if(i==6)
                                out.print("<td align='center'>"+(rs.getString(i)==null?"":(rs.getString(i).length()>20?rs.getString(i).substring(0,20).toUpperCase():rs.getString(i)))+"</td>");
                            else
                                out.print("<td align='center'>"+(rs.getString(i)==null?"":rs.getString(i).toUpperCase())+"</td>");
                        }
                    }
            if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)))
                out.print("<td><input type='submit' value='Update'><br><input type='button' value='Cancel' onclick=location.href='adminshowTour.jsp'></td></form>");
                                                                                                                                                                             if(request.getParameter("id")!=null && (request.getParameter("id").equals(rs.getString(1))==false))
                out.print("<td></td>");
            out.print("<td align='center'><a href='adminshowTransportmode.jsp?id="+rs.getString(1)+"'>"+mode+"</a></td>");
            out.print("<td align='center'><a href='adminshowItenerary.jsp?id="+rs.getString(1)+"'>Show Itenerary</a></td>");
            out.print("<td align='center'><a href='adminShowbooking.jsp?id="+rs.getString(1)+"'>Show Bookings<br>("+DBH.Dblayer.getScalar("select count(bookingid) from booking where tourid="+rs.getString(1))+")</a></td>");
            out.print("<td align='center'><a href='adminuploadTourimage.jsp?id="+rs.getString(1)+"'>Upload Tour Image</a></td><td align='center'><a href='adminshowTour.jsp?id="+rs.getString(1)+"'><img src='image/edit.jpg' height='25' width='50'></a></td><td align='center'><a href='#'><img src='image/delete.jpg' height='25' width='50'></a></td>");
            out.print("</tr>");
        }
    %>
</table>
</div>