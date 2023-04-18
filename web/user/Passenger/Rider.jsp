<!--<div class="container">
    <div class="row">
       
    </div>
</div>-->
<!--<div class="col-md-12 col-lg-6">
    <div class="chart">
        <div class="chart-header">
            <div class="card chard-chart">
                <div class="card-cheader">
                    <div class="row p-2 align-item-center">
                        <div class="col-12 mt-2 text-center">
                            <h5 class="card-title">Rider Activity</h5>
                        </div>
                        <div class="col-lg-12 mt-2 d-flex text-center">
                            <table class="col-lg-12 table align-middle mb-0 bg-white" >
                                <tr>
                                    <th class="col-lg-6">List of Riders</th>
                                    <th class="col-lg-6"><a class="btn btn-warning" href="?page=Rider&table=Active">view</a></th>
                                </tr>
                                <tr class="bg-light">
                                    <th class="col-lg-6">Pending Activation</th>
                                    <th class="col-lg-6"><a class="btn btn-warning" href="?page=Rider&table=Pending">view</a></th>
                                </tr>
                                <tr>
                                    <th class="col-lg-6">Rider Booking</th>
                                    <th class="col-lg-6"><a class="btn btn-warning" href="?page=Rider&table=Booking">view</a></th>
                                </tr>
                                <tr class="bg-light">
                                    <th class="col-lg-6">Blocked Rider  </th>
                                    <th class="col-lg-6"><a class="btn btn-warning" href="?page=Rider&table=Blocked">view</a></th>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
       
    </div>
</div>-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    
<!--    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>-->
    <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarNav">
      <ul class="navbar-nav w-100 d-flex justify-content-evenly">
        <li class="nav-item ">
          <a class="nav-link " id="Active" aria-current="page" href="?page=Rider&table=Active">List of Rides</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="Pending" href="?page=Rider&table=Pending">Pending Activation</a>
        </li>
<!--        <li class="nav-item">
            <a class="nav-link" id="Booking" href="?page=Rider&table=Booking">Rider Booking</a>
        </li>-->
        <li class="nav-item">
            <a class="nav-link" id="Blocked" href="?page=Rider&table=Blocked">Blocked Rides</a>
        </li>
              </ul>
    </div>
  </div>
</nav>


                    <!--he-->
                    <%
           
            if(request.getParameter("table") != null){ 
//            out.println(request.getParameter("?page=Rider&table"));
//          
//            %>
               <!--<div class="box">-->
                   <% pageContext.include("./RiderControl/" + (String) request.getParameter("table") + ".jsp"); %>
                   
               </div>
               <%
            } else {
//                out.print("<h1>PAGE NOT FOUND</h1>");
            }
        %>
              