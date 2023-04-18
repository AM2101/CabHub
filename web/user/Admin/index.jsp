<%-- 
    Document   : Admin
    Created on : Mar 29, 2023, 8:21:34 AM
    Author     : Mr. Mittal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../../css/AdminDashboard.css" />
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

    </head>
    <body>
        <%
            response.setHeader("Cache-control", "no-cache");
            response.setHeader("Cache-control", "no-store");
            response.setHeader("pragma", "no-cache");
            response.setHeader("Expires", "0");
        %>
        <%
            int c=0;
        String email =(String) session.getAttribute("email");
        if(email==null){
        response.sendRedirect("../../Login.jsp?error=done");
    }
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Texi","root","");
                String finde = "SELECT * from registeration where email=?";
                PreparedStatement pst = con.prepareStatement(finde);
                pst.setString(1, email);
//                pst.setString(2, admin);
                ResultSet rs2 = pst.executeQuery();
                
                while (rs2.next()) {
//                      new Login(rs.getInt("id"));
                         c = rs2.getInt("id");
         
                }
        %>



        <!--<h1>Hello Admin</h1>-->
        <!--Main Navigation-->
        <header>
            <!-- Sidebar -->
            <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-light">
                <div id="myDIV" class="position-sticky">
                    <div  class="list-group list-group-flush mx-3 mt-4">
                        <a href="?page=Dashboard" class="list-group-item list-group-item-action py-2 mt-3 ripple " id="Dashboard" aria-current="true">
                            <i class="fas fa-tachometer-alt fa-fw me-3"></i><span>Main dashboard</span>
                        </a>
                        <a href="?page=Passenger" id="Passenger" class="list-group-item list-group-item-action py-2 mt-3 ripple">
                            <i class="fas fa-chart-area fa-fw me-3"></i><span>Passenger</span>
                        </a>
                        <a href="?page=Rider" id="Rider" class="list-group-item list-group-item-action py-2 mt-3 ripple"><i
                                class="fas fa-lock fa-fw me-3"></i><span>Rider</span></a>
                        <a href="#" class="list-group-item list-group-item-action py-2 mt-3 ripple"><i
                                class="fas fa-chart-line fa-fw me-3"></i><span>Booking</span></a>
                        <a href="#" class="list-group-item list-group-item-action py-2 mt-3 ripple">
                            <i class="fas fa-chart-pie fa-fw me-3"></i><span>Inqueary</span>
                        </a>
                        <a href="#" class="list-group-item list-group-item-action py-2 mt-3 ripple"><i
                                class="fas fa-chart-bar fa-fw me-3"></i><span>Mail</span></a>
                        <a href="#" class="list-group-item  list-group-item-action py-2 mt-3 ripple"><i
                                class="fas fa-globe fa-fw me-3"></i><span>Income</span></a>
                        <!--        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
                                    class="fas fa-building fa-fw me-3"></i><span>Partners</span></a>
                                <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
                                    class="fas fa-calendar fa-fw me-3"></i><span>Calendar</span></a>
                                <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
                                    class="fas fa-users fa-fw me-3"></i><span>Users</span></a>
                                <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
                                    class="fas fa-money-bill fa-fw me-3"></i><span>Sales</span></a>-->
                    </div>
                </div>
            </nav>
            <!-- Sidebar -->

            <!-- Navbar -->
            <nav id="main-navbar" class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
                <!-- Container wrapper -->
                <div class="container-fluid">
                    <!-- Toggle button -->
                    <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#sidebarMenu"
                            aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-bars"></i>
                    </button>

                    <!-- Brand -->
                    <a class="navbar-brand" href="#">
                        <img src="../../images/CabHUB.png" height="25" alt="Logo"
                             loading="lazy" />
                    </a>
                    <!-- Search form -->
                    <form class="d-none d-md-flex m-5 input-group w-50 my-auto">
                        <input autocomplete="off" type="search" class="form-control rounded px-2"
                               placeholder='Search' style="min-width: 225px;" />
                        <span class="input-group-text border-0"><i class="fas fa-search" style="cursor:pointer"></i></span>
                    </form>

                    <!-- Right links -->
                    <ul class="navbar-nav ms-auto d-flex flex-row">
                        <!-- Notification dropdown -->
                        <li class="nav-item dropdown">
                            <a class="nav-link me-3 me-lg-0 dropdown-toggle hidden-arrow" href="#" id="navbarDropdownMenuLink"
                               role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-bell"></i>
                                <span class="badge rounded-pill badge-notification bg-danger">1</span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
                                <li>
                                    <a class="dropdown-item" href="#">Some news</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">Another news</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </li>
                            </ul>
                        </li>

                        <!-- Icon -->
                        <li class="nav-item">
                            <a class="nav-link me-3 me-lg-0" href="#">
                                <i class="fas fa-fill-drip"></i>
                            </a>
                        </li>
                        <!-- Icon -->
                        <li class="nav-item me-3 me-lg-0">
                            <a class="nav-link" href="#">
                                <i class="fab fa-github"></i>
                            </a>
                        </li>

                        <!-- Icon dropdown -->
                        <li class="nav-item dropdown">
                            <a class="nav-link me-3 me-lg-0 dropdown-toggle hidden-arrow" href="#" id="navbarDropdown"
                               role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                                <i class="united kingdom flag m-0"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <li>
                                    <a class="dropdown-item" href="#"><i class="united kingdom flag"></i>English
                                        <i class="fa fa-check text-success ms-2"></i></a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-poland flag"></i>Polski</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-china flag"></i>中文</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-japan flag"></i>日本語</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-germany flag"></i>Deutsch</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-france flag"></i>Français</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-spain flag"></i>Español</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-russia flag"></i>Русский</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#"><i class="flag-portugal flag"></i>Português</a>
                                </li>
                            </ul>
                        </li>

                        <!-- Avatar -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center" href="#"
                               id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                                <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img (31).webp" class="rounded-circle"
                                     height="22" alt="Avatar" loading="lazy" />
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
                                <li>
                                    <a class="dropdown-item" href="#">My profile</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">Settings</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="../../Logout.jsp">Logout</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- Container wrapper -->
            </nav>
            <!-- Navbar -->
        </header>
        <!--Main Navigation-->

        <!--Main layout-->
        <main style="margin-top: 58px;">
            <div class="container pt-4">

                <%
            if(request.getParameter("page") != null){   
          
                %>
                <div class="box">
                    <% pageContext.include("./" + (String) request.getParameter("page") + ".jsp"); %>
                </div>
                <%
             } else {
                 out.print("<h1>PAGE NOT FOUND</h1>");
             }
                %>
            </div>
        </main>
        <!--Main layout-->



        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>
        <script>

            const params = new URLSearchParams(window.location.search);

            const name = params.get("page");
            const table = params.get('table');

            var element = document.getElementById(name);
            var element2 = document.getElementById(table);
            element.classList.add("active");
            element2.classList.add("active");
        </script>
    </body>
</html>
