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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mr. Mittal
 */
public class Control extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
           
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String type = request.getParameter("type");
            String password = request.getParameter("password");
            String city = request.getParameter("city");
            String code = request.getParameter("code");
            String carname = request.getParameter("carname");
            String carnum = request.getParameter("carnum");
            float price = Float.parseFloat(request.getParameter("price"));
            
            JavaDataBeans jdb= new JavaDataBeans();
            jdb.setCity(city);
            jdb.setName(name);
            jdb.setEmail(email);
            jdb.setType(type);
            jdb.setPassword(password);
            jdb.setCode(code);
            jdb.setCarName(carname);
            jdb.setCarNum(carnum);
            jdb.setPrice(price);
            
            String a = jdb.getName();
            String b=jdb.getEmail();
            String c= jdb.getType();
            String d = jdb.getPassword();
            String e = jdb.getCity();
            String f = jdb.getCode();
            String g = jdb.getCarName();
            String h = jdb.getCarNum();
            float i = jdb.getPrice();
            
//            Boolean checkUserData = jdb.userCheck();
            InsertData in = new InsertData();
//            out.println(a+b+c+d+e+f);
            int res = in.savedetails(a,b,c,d,e,f,g,h,i);
//            out.print(res);
            if(res==1){
//                out.print(res);
//                RequestDispatcher rd = request.getRequestDispatcher("SignIn.jsp?msg=ok");
//                rd.forward(request, response);
                   response.sendRedirect("SignIn.jsp?msg=ok");
//                  
            }else{
//                RequestDispatcher rd = request.getRequestDispatcher("SignIn.jsp?msg=no");
//                rd.forward(request, response);
                response.sendRedirect("SignIn.jsp?msg=No");
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
            Logger.getLogger(Control.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Control.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Control.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Control.class.getName()).log(Level.SEVERE, null, ex);
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
