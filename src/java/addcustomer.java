/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author IT
 */
public class addcustomer extends HttpServlet {

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
        PrintWriter out=response.getWriter();
        Random r=new Random();
        int p=r.nextInt(999999)+100000;
        
        DBJ.dblayer.executeq("insert into customers(name,dob,gender,address,city,state,country,pincode,phoneno,email,password)values('"+request.getParameter("t1")+"','"+request.getParameter("t10")+"','"+request.getParameter("s1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"','"+request.getParameter("t6")+"','"+request.getParameter("t7")+"','"+request.getParameter("t8")+"','"+p+"')");
     //  out.print("insert into customers(name,dob,gender,address,city,state,country,pincode,phoneno,email,password)values('"+request.getParameter("t1")+"','"+request.getParameter("t10")+"','"+request.getParameter("s1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"','"+request.getParameter("t6")+"','"+request.getParameter("t7")+"','"+request.getParameter("t8")+"','"+p+"')");    
    //   communicator.communicate.sendSMS(request.getParameter("t7"),"Password:"+p,"harmanpreet7200@gmail.com","harman2871");
       communicator.communicate.sendMail(request.getParameter("t8"),"TravelSaathi","Password:"+p,"harmanpreet7200@gmail.com","8427997200");
       out.print("<html><head><title>Travel Saathi</title><body><img src='images/main.jpg' width='100%' height='200'><h4 align=\"left\"><a href=\"customerloginpage.jsp\"><font color='black'><u>CUSTOMER LOGIN</u> </font></a></h4><br><br><br><h2 align='center'><p>YOUR PASSWORD IS SENT ON YOUR EMAIL AND PHONE NUMBER.</p></h2> </body></head></html>");
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
