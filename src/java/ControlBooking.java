/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Mr. Mittal
 */
public class ControlBooking extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String email = request.getParameter("email");
            
//            String date = request.getParameter("start");
//            out.print(date);
             Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Texi","root","");
        
        String find = "SELECT * from registeration where type=\"Passenger\" and email=?";
            PreparedStatement pst2 = con.prepareStatement(find);
            pst2.setString(1, email);
            ResultSet rs = pst2.executeQuery();
            if (rs.next()) {
                out.print("<span class=\" text-success\">This Email is already registered please enter password!</span>"
                        + "<div class=\"form-outline mt-3 mb-4\" id=\"show\">\n" +
"                    <input type=\"password\" id=\"already\" name=\"password\" class=\"form-control form-control-lg\" />\n" +
"                    <input type=\"text\" id=\"already\" name=\"msg\" class=\"form-control form-control-lg d-none\" value=\"yes\" />\n" +
"                  <label class=\"form-label\" for=\"form3Example97\">Password</label>\n" +
"                </div>"
                        + "<div class=\"d-flex justify-content-end pt-3\">\n" +
"                       <input type=\"submit\" id=\"search\" class=\"btn btn-warning btn-lg ms-2\">\n" +
"                </div>");
                
                
                
//                response.sendRedirect("./Alert.java?msg=yes");
            }else{
                out.print("<span class=\"text-danger\">This Email is not registered please generate a password to login</span>"
                        + "<div class=\"form-outline mt-3 mb-4\" id=\"show\">\n" +
"                    <input type=\"password\" id=\"create\" name=\"password\" class=\"form-control form-control-lg \" />\n" +
"                    <input type=\"text\" id=\"create\" name=\"msg\" class=\"form-control form-control-lg d-none\" value=\"no\" />\n" +
"                  <label class=\"form-label\" for=\"form3Example97\">Password</label>\n" +
"                </div>"
                        + "<div class=\"d-flex justify-content-end pt-3\">\n" +
                  
"                  <input type=\"submit\" id=\"search\" class=\"btn btn-warning btn-lg ms-2\"> \n" +
"                </div>");
//                response.sendRedirect("./Alert?msg=no");
            }
            
            
        } catch (Exception e) {
            out.println(e);
        }
        
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
