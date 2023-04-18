/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.logging.Level;
import java.util.logging.Logger;
import static jdk.internal.util.StaticProperty.userName;

/**
 *
 * @author Mr. Mittal
 */
public class BookingFilter extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Texi","root","");
        try ( PrintWriter out = response.getWriter()) {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
            LocalDateTime now = LocalDateTime.now();
            /* TODO output your page here. You may use following sample code. */
            String msg = request.getParameter("msg");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String city = request.getParameter("city");
            String contact = request.getParameter("contact");
            String password = request.getParameter("password");
            String starting = request.getParameter("starting");
            String ending  = request.getParameter("ending");
            String startDate = request.getParameter("startDate");
            String riderid = request.getParameter("riderid");
            String endDate = request.getParameter("endDate");
            int members = Integer.parseInt(request.getParameter("members"));
            String type="Passenger";
            String num = "";
            int c =0;
            String carname="";
            String carnum="";
            float price=(float) 0.0;
//            out.println(msg + name + email + contact + password + starting + ending + startDate + endDate + members);
            
            if(msg.equals("no")){
                num = "Pa"+dtf.format(now);
                try {
                    String qry = "INSERT INTO registeration(transid,name,email,type,city,password,userfor,carname,carnumber,price) values (?,?,?,?,?,?,?,?,?,?)";
                    PreparedStatement ppst = con.prepareStatement(qry);
                    
                    ppst.setString(1, num);
                    ppst.setString(2,name);
                    ppst.setString(3,email);
                    ppst.setString(4,type);
                    ppst.setString(5,city);
                    ppst.setString(6,password);
                    ppst.setInt(7,c);
                    ppst.setString(8,carname);
                    ppst.setString(9,carnum);
                    ppst.setFloat(10,price);
        
//                    ResultSet rs = ppst.executeQuery();
                    
                    
        int i = ppst.executeUpdate();
       
        if(i==1){
            out.println("done");
        } else {
            out.println("not done");
        }
                    
                } catch (Exception e) {
                    out.println(e);
                }
                
            }
            
            if(msg.equals("yes")){
                 String find = "SELECT * from registeration where email=?";
                PreparedStatement pst2 = con.prepareStatement(find);
                pst2.setString(1, email);
                ResultSet rs = pst2.executeQuery();
                if (rs.next()) {
                num = rs.getString("transid");
                }
            }
                
                try {
                    
                    
                    String qry = "INSERT INTO booking(passengerid,name,email,contact,starting1,ending,startdate,enddate,riderid,members) VALUES (?,?,?,?,?,?,?,?,?,?)";
                    PreparedStatement ppst = con.prepareStatement(qry);
                    out.println(num+msg + name + email + contact + password + starting + ending + startDate + endDate + members +riderid);
                    ppst.setString(1,num);
                    ppst.setString(2,name);
                    ppst.setString(3,email);
                    ppst.setString(4,contact);
                    ppst.setString(5,starting);
                    ppst.setString(6,ending);
                    ppst.setString(7,startDate);
                    ppst.setString(8,endDate);
                    ppst.setString(9,riderid);
                    ppst.setInt(10,members);
        
//                    ResultSet rs = ppst.executeQuery();
                    
                    
        int i = ppst.executeUpdate();
       
        if(i==1){
            out.println("done");
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            response.sendRedirect("./user/Passenger/index.jsp?msg=dashboard");
//            RequestDispatcher dispatcher = request.getRequestDispatcher("./user/Passenger/index.jsp?msg=dashboard");
//            dispatcher.forward(request, response);
        } else {
            out.println("not done");
        }
                    
                } catch (Exception e) {
                    out.println(e);
                }

            
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BookingFilter.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(BookingFilter.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BookingFilter.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(BookingFilter.class.getName()).log(Level.SEVERE, null, ex);
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
