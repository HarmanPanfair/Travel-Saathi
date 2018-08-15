/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author IT
 */
public class updatetour extends HttpServlet {

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
        String title=request.getParameter("title");
        String duration=request.getParameter("duration");
        String dest=request.getParameter("destination");
        String cost=request.getParameter("cost");
        String seats=request.getParameter("seats");
        String arrival=request.getParameter("arrival");
        String departure=request.getParameter("departure");
        String addedby=request.getParameter("name");
        String minba=request.getParameter("minba");
        String ldtpfa=request.getParameter("ldtpfa");
        String desc=request.getParameter("description");
        DBJ.dblayer.executeq("update tour set title='"+title+"',duration='"+duration+"',cost='"+cost+"',destination='"+dest+"',seats='"+seats+"',arrival='"+arrival+"' ,departure='"+departure+"',ldtpfa='"+ldtpfa+"',minba='"+minba+"',description='"+desc+"' where tourid="+request.getParameter("id"));
     // out.print("update tour set title='"+title+"',duration='"+duration+"',cost='"+cost+"',destination='"+dest+"',seats='"+seats+"',arrival='"+arrival+"' ,departure='"+departure+"',ldtpfa='"+ldtpfa+"',minba='"+minba+"',description='"+desc+"'  where tourid="+request.getParameter("id"));
        response.sendRedirect("adminreviewtour.jsp");
    
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
