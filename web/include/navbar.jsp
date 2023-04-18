<%-- 
    Document   : navbar
    Created on : Mar 28, 2023, 9:08:24 PM
    Author     : Mr. Mittal
--%>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark w-10" >
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp"><img src="./images/CabHUB.png" alt=""></a>
                <button 
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars" style="font-size: 1.8em;"></i>
                </button>
                 <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarRightAlignExample">
      <!-- Left links -->
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="./Login.jsp">Login</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="./SignIn.jsp"
            >SignIn</a
          >
        </li>
      </ul>
      <!-- Left links -->
    </div>
            </div>
        </nav>
