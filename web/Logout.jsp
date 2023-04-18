<%-- 
    Document   : Logout
    Created on : Mar 29, 2023, 9:50:50 PM
    Author     : Mr. Mittal
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
        <%
//    resonse.setHeader("pragma", "no-cache");
//    resonse.setHeader("Cache-Control", "no-store");
//    resonse.setHeader("Expires", "0");
//    resonse.setDateHeader("Expires", -1);
    session.invalidate();
    response.sendRedirect("Login.jsp");
    
    %>
    </body>
</html>

