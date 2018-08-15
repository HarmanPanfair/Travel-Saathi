<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>
<%
Enumeration<String> paramNames = request.getParameterNames();

Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();
String paytmChecksum =  "";
while(paramNames.hasMoreElements()) {
	String paramName = (String)paramNames.nextElement();
	if(paramName.equals("CHECKSUMHASH")){
		paytmChecksum = mapData.get(paramName)[0];
	}else{
		parameters.put(paramName,mapData.get(paramName)[0]);
	}
}
boolean isValideChecksum = false;
String outputHTML="";
try{
	isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum("JFs#E!HpB7J3jm0z",parameters,paytmChecksum);
	if(isValideChecksum && parameters.containsKey("RESPCODE")){
		if(parameters.get("RESPCODE").equals("01")){
			outputHTML = parameters.toString();
		}else{
			outputHTML="<b>Payment Failed.</b>";
		}
	}else{
		outputHTML="<b>Checksum mismatched.</b>";
	}
}catch(Exception e){
	outputHTML=e.toString();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel_Sathi</title>
</head>
<body>
    <table border="1">
    <%
        Object [] names=parameters.keySet().toArray();
        Object [] values=parameters.values().toArray();
        
 for(int i=0;i<names.length;i++)
 out.print("<tr><td><b>"+names[i]+"</b></td><td>"+values[i]+"</td></tr>");
 
    %>
    </table>
   <% 
   String q="insert into paytmtxn(customerid,bankname,currency,gatewayname,mid,orderid,paymentmode,respcode,respmsg,status,txnamount,txndate,paytmtxnid) values('"+session.getAttribute("customerid")+"','"+values[0]+"','"+values[2]+"','"+values[3]+"','"+values[4]+"','"+values[5]+"','"+values[6]+"','"+values[7]+"','"+values[8]+"','"+values[9]+"','"+values[10]+"','"+values[11]+"','"+values[12]+"')";
   DBJ.dblayer.executeq(q); 
  // out.print("insert into paytmtxn(customerid,bankname,currency,gatewayname,mid,orderid,paymentmode,respcode,respmsg,status,txnamount,txndate,paytmtxnid) values('"+session.getAttribute("customerid")+"','"+values[0]+"','"+values[2]+"','"+values[3]+"','"+values[4]+"','"+values[5]+"','"+values[6]+"','"+values[7]+"','"+values[8]+"','"+values[9]+"','"+values[10]+"','"+values[11]+"','"+values[12]+"')");
   response.sendRedirect("customerloggedin.jsp");
   %>
   <%//=outputHTML%>
</body>
</html>