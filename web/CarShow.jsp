<%-- 
    Document   : CarShow
    Created on : Apr 7, 2023, 4:53:53 PM
    Author     : Mr. Mittal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="css/style.css" />
        <!--<link rel="stylesheet" href="WEB-INF/fontawesome-free-5.15.3-web/css/all.min.css" />-->
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
            rel="stylesheet"
            />
        
        <title>JSP Page</title>
    </head>
    <body>
        
         <%
             
            String city= request.getParameter("city");
            String owner = request.getParameter("owner");
//            out.println(owner);
//            out.println(city);
            int c=0;
            PreparedStatement pst=null;
            PreparedStatement pst2=null;
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texi","root","");
            if(owner!=""){
                String finde = "SELECT * from registeration where email=?";
//                out.println(owner);
//            out.println(city);
                pst = con.prepareStatement(finde);
                pst.setString(1, owner);
//                pst.setString(2, admin);
                ResultSet rs2 = pst.executeQuery();
                
                while (rs2.next()) {
//                      new Login(rs.getInt("id"));
                         c = rs2.getInt("id");
//                         out.println(c);
                         }
//                         out.println(c);
                String find ="SELECT * From registeration WHERE type=\"Rider\" and city=? and userfor=?";
                pst2 = con.prepareStatement(find);
                pst2.setString(1, city);
                pst2.setInt(2,c);
             }else{
//             out.println(owner);
//            out.println(city);
            String find ="SELECT * From registeration WHERE type=\"Rider\" and city=?";
            pst2 = con.prepareStatement(find);
                                    pst2.setString(1, city);
             }
                    //                pst.setString(2, admin);
              
                                    ResultSet rs = pst2.executeQuery();
//                                   
                                    
         %>
         <div class="main-tariff  p-0" style="">
            <!-- comment<h1><span></span></h1> -->      
            <div class="inner-tarrif col-12 ">
                
                
                <%
                   // out.println(c); 
                    if(!rs.next()){
                                    %>
                                    <h3 style="color: red">There is Nothing to Show</h3>
                                    <%
                                        }
                                        else{
                    while (rs.next()){
                %>
                <div class="tarrif-container col-lg-3" >
                    <div class="inner-box">
                        
                        
                        <img src="images/image1.png" alt="" />
                        <h2>Driver Name:- <%=rs.getString("name")%></h2>
                        <h2>Car Name:- <%=rs.getString("carname")%></h2>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat
                            illum officia fugiat, autem facere iste repellendus omnis nemo
                            dolore
                        </p>
                        <h3>price:- <%=rs.getString("price")%> rs.</h3>
                        <a href="CarOrder.jsp?id=<%=rs.getString("transid")%>&carname=<%=rs.getString("carname")%>">order now</a>
                    </div>
                </div>
                <%}
}%>
               
            </div>
        </div>
    </body>
</html>
