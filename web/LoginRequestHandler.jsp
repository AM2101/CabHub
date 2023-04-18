<%-- 
    Document   : LoginRequestHandler
    Created on : Mar 29, 2023, 9:04:05 PM
    Author     : Mr. Mittal
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>-->
<%@page import="com.dao.LoginData" %>
<jsp:useBean id="obj" class="com.bean.LoginBean" scope="session" />
<jsp:setProperty property="*" name="obj" />


<%
//    int status = LoginData.loginCheck(obj);
//    if(status == 1 ){
//        session.setAttribute("email",obj.getEmail());
//        out.prinln(obj.setType());
//        response.sendRedirect("./user/Admin/index.jsp?page=Dashboard");
//    }else{
//            response.sendRedirect("./Login.jsp?error=false");
//    }
%>

<%
    String status = LoginData.loginCheck(obj);
    if(status.equals("0") ){
        response.sendRedirect("./Login.jsp?error="+status);
        //session.setAttribute("email",obj.getEmail());
        
//        out.prinln(obj.setType());
        //response.sendRedirect("./user/Admin/index.jsp?page="+status);
    }else{
            session.setAttribute("email",obj.getEmail());
                    out.println(status);
                    if(status.equals("Rider")){
//                        RequestDispatcher rd = request.getRequestDispatcher("./user/Rider.jsp");
//                        rd.forward(request, response);
                          response.sendRedirect("./user/Rider/index.jsp?page=Dashboard");
                    }else if(status.equals("Passenger")){
//                        RequestDispatcher rd = request.getRequestDispatcher("./user/Passenger.jsp");
//                        rd.forward(request, response);
                          response.sendRedirect("./user/Passenger/index.jsp?page=Dashboard");
                    }else if(status.equals("Admin")){
//                        RequestDispatcher rd = request.getRequestDispatcher("./user/Admin.jsp");
//                        rd.forward(request, response);
                          response.sendRedirect("./user/Admin/index.jsp?page=Dashboard");
                                       
                }
                
           // response.sendRedirect("./Login.jsp?error="+status);
//        out.prinln(obj.setType());
//        response.sendRedirect("./user/Admin/index.jsp?page="+status);
    }
%>