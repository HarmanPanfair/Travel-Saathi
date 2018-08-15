/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author IT
 */
public class booktour extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
         HttpSession session=request.getSession();
         String tourid=request.getParameter("tourid");
         String customerid=request.getParameter("customerid");
         String seats=request.getParameter("seats");
         String amount=request.getParameter("amount");
         String paymentmode=request.getParameter("paymentmode");
         String desc=request.getParameter("desc");
         String modeid=request.getParameter("modeid");
         Double totalamount=(Double.parseDouble(DBJ.dblayer.getScalar("select priceoftransport from transportmode where modeid="+modeid))*Double.parseDouble(seats))+(Double.parseDouble(DBJ.dblayer.getScalar("select cost from tour where tourid="+tourid))*Double.parseDouble(seats));
         String status=(Double.parseDouble(amount)>=totalamount?"confirmed":"pending");      
         String q="insert into booking(tourid,modeid,dateofbooking,customerid,noofseats,amountpaid,totalamount,status,lock)values('"+tourid+"','"+modeid+"',now(),'"+customerid+"','"+seats+"','"+amount+"','"+totalamount+"','"+status+"','0')";
         DBJ.dblayer.executeq(q);
         String bookingid=DBJ.dblayer.getScalar("select max(bookingid) from booking where customerid="+request.getParameter("customerid"));
         String s="insert into transaction(customerid,amountpaid,datetimeoftransaction,bookingid,description,modeofpayment)values('"+customerid+"','"+amount+"',now(),'"+bookingid+"','"+desc+"','"+paymentmode+"')";
         DBJ.dblayer.executeq(s);
         for(int i=1;i<=Integer.parseInt(seats);i++)
        DBJ.dblayer.executeq("insert into touristinfo(bookingid,touristname,age,gender,lock)values('"+bookingid+"','','0','','0')");
     //    out.print("insert into booking(tourid,modeid,dateofbooking,customerid,noofseats,amountpaid,totalamount,status)values('"+tourid+"','"+modeid+"',now(),'"+customerid+"','"+seats+"','"+amount+"','"+totalamount+"','"+status+"')");
     //   out.print("insert into transaction(customerid,amountpaid,datetimeoftransaction,bookingid,description,modeofpayment)values('"+customerid+"','"+amount+"',now(),'"+bookingid+"','"+desc+"','"+paymentmode+"')");
     //    out.print("insert into touristinfo(bookingid,touristname,age,gender)values('"+bookingid+"','','','')");
    
         response.sendRedirect("customershowtouristinfo.jsp?p=4&id="+bookingid);
        
                 
                 
                 
                 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
