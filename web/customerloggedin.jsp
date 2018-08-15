<%@include file="customerheader.jsp" %>
<table>
<%           
                    try{
                    ResultSet rs=DBJ.dblayer.getResult("select * from tour where departure>=Now()  order by departure desc");
                    int i=0;
                    while(rs.next())
                    {
                        if(rs==null||rs.equals(""))
                        {
                            out.print("<h1>CURRENTLY NO TOUR IS ADDED</h1>");
                        }
                        else
                     {
                      i++;
                      if(i>3){
                          out.print("</tr><tr>");
                      i=0;
                      } 
                      
                     out.print("<td Style='color:green'>"+rs.getString(2).toUpperCase()+"<br><img src='images/tourphoto/"+rs.getString(1)+".jpg' height=400 width=300><br><a href='customerloginpage.jsp?id="+rs.getString(1)+"'><img src='images/book.gif' height=50 width=100></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='detailpage.jsp?id="+rs.getString(1)+"'><img src='images/details.png' height=50 width=100></a><br><font color=red>Price:"+rs.getString(4)+"</font>");
                    }
                    }
                    }catch(Exception ex)
                    {
                        out.print("error"+ex);
                    }
                    
%>

</table>
<%@include file="customerfooter.jsp" %>