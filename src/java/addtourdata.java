/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author IT
 */
public class addtourdata extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        HttpSession session=request.getSession();
        PrintWriter out=response.getWriter();
          String title=request.getParameter("title");
        String dest=request.getParameter("dest");
        String duration=request.getParameter("days")+"days,"+request.getParameter("nights")+"nights";
        String cost=request.getParameter("cost");
        String departure=request.getParameter("departure");
        String arrival=request.getParameter("arrival");
        String seats=request.getParameter("seats");
        String addedby=""+session.getAttribute("id");
        String minba=request.getParameter("minba");
        String ldtpfa=request.getParameter("ldtpfa");
        String desc=request.getParameter("desc");
        DBJ.dblayer.executeq("insert into tour(title,duration,cost,destination,description,departure,arrival,seats,addedby,minba,ldtpfa)values('"+title+"','"+duration+"','"+cost+"','"+dest+"','"+desc+"','"+departure+"','"+arrival+"','"+seats+"','"+addedby+"','"+minba+"','"+ldtpfa+"')");
    //    out.print("insert into tour(title,duration,cost,destination,description,departure,arrival,seats,addedby,minba,ldtpfa)values('"+title+"','"+duration+"','"+cost+"','"+dest+"','"+desc+"','"+departure+"','"+arrival+"','"+seats+"','"+addedby+"','"+minba+"','"+ldtpfa+"')");
       duration=duration.substring(0,duration.indexOf("d"));
        String tourid=DBJ.dblayer.getScalar("select max(tourid) from tour");
        for(int i=1;i<=Integer.parseInt(duration);i++)   
         DBJ.dblayer.executeq("insert into itenerary values('"+tourid+"','"+i+"','','')");
         response.sendRedirect("adminaddtransportmode.jsp?id="+tourid);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addtourdata.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addtourdata.class.getName()).log(Level.SEVERE, null, ex);
        }
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
