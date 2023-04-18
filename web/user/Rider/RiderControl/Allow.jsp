
<%-- 
    Document   : Allow
    Created on : Mar 17, 2023, 8:27:46 AM
    Author     : Mr. Mittal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
        String ids = request.getParameter("id");
//        out.println(ids);
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texi","root","");
        String qry = "UPDATE booking SET status = \"Active\" WHERE id= "+ids;
        PreparedStatement ppst = con.prepareStatement(qry);
//        ResultSet data = ppst.executeQuery();
        int nb = ppst.executeUpdate();
                if (nb == 1) {
                   %>
            <script>
//                alert("ID password invalid");
                window.location.href = "../?page=Rider&table=Pending&msg=allow";
                </script>
            <%
            }else{
                   %>
            <script>
                alert("Not Update");
                window.location.href = "./?page=Rider&table=Pending&msg=error";
                </script>
            <%
            }
        }catch(Exception e){
        out.println("ERROR "+e);
    }
        %>
    </body>
</html>
