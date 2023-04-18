<%-- 
    Document   : CarOrder
    Created on : Apr 8, 2023, 9:41:55 AM
    Author     : Mr. Mittal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
        <style>
            .card-registration .select-input.form-control[readonly]:not([disabled]) {
        font-size: 1rem;
        line-height: 2.15;
        padding-left: .75em;
        padding-right: .75em;
        }
        .card-registration .select-arrow {
        top: 13px;
        }
        </style>
    </head>
    <body>
        <%
            String id =request.getParameter("id");
            String carname =request.getParameter("carname");
//            out.println(id);
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Texi","root","");
            
        
        %>
        <%@include file="include/navbar.jsp" %>
        
        
        
        <section class="">
  <div class="container  ">
    <div class="row d-flex justify-content-center align-items-center ">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
              <div class="col-xl-6 d-none d-xl-block" >
              <img style="height: 100vh; width: 90%" src="https://e1.pxfuel.com/desktop-wallpaper/87/622/desktop-wallpaper-pin-de-carhub-en-audi-r8-2020.jpg"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
              
            <div class="col-xl-6">
            <form action="BookingFilter" method="post">
                  
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Cab Booking</h3>

                 <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input type="text" id="form3Example1m" value="<%=id%>" name="riderid" class="form-control form-control-lg" readonly />
                      <label class="form-label" for="form3Example1m">Rider id</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input type="text" id="form3Example1n" name="last" value="<%=carname%>" class="form-control form-control-lg" readonly />
                      <label class="form-label" for="form3Example1n">Car Name</label>
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-12 mb-4">
                    <div class="form-outline">
                        <input type="text" id="name" name="name" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1m">First name</label>
                    </div>
                  </div>
<!--                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input type="text" id="form3Example1n" name="last" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1n">Last name</label>
                    </div>
                  </div>-->
                </div>
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input type="text" id="starting" name="starting" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1m">From</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input type="text" id="ending" name="ending" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1n">To</label>
                    </div>
                  </div>
                </div>

               

                
                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="gender"
                      value="Female" />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="gender"
                      value="Male" />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="radio" name="gender" id="gender"
                      value="Other" />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>

                <div class="row">
                  <div class="col-md-12 col-lg-12 mb-4">

                      <select class="select" id="members" name="members">
                      <option value="">Total Persons</option>
                      <option value="1"> 1</option>
                      <option value="2"> 2</option>
                      <option value="3"> 3</option>
                      <option value="4"> 4</option>
                      <option value="5"> 5</option>
                      <option value="6"> 6</option>
                      <option value="7"> 7</option>
                    </select>

                  </div>
                 
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                        <label   for="datepicker">Start Date</label>
                    <div class="form-outline">
                        <input type="text" id="datepicker" name="startDate" class="form-control form-control-lg" />
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                        <label  for="datepicker2">End Date</label>
                    <div class="form-outline">
                        <input type="text" id="datepicker2" name="endDate" class="form-control form-control-lg" />
                    </div>
                  </div>
                </div>
                
                

                <div class="form-outline mb-4">
                    <input type="number" id="contact" name="contact" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example90">Contact Number</label>
                </div>
<!--                <div class="form-outline mb-4">
                    <input type="text" id="city" name="city" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example90">Where are you from</label>
                </div>-->
<!--
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example99" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example99">Course</label>
                </div>-->

                <div class="form-outline mb-4">
                    <input type="email" id="email" name="email" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example97">Email ID</label>
                </div>
                            <div id="show"></div>

                <div class="d-flex justify-content-end pt-3 " id="hide">
                  <!--<button type="button" class="btn btn-light btn-lg">Reset all</button>-->
                  <button type="button" id="search" class="btn btn-warning btn-lg ms-2">Submit</button>
                </div>

              </div>
            </div>
          </form>
              
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
        
        <!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
></script>
       <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
       <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>

<script>
    
    
     $("#search").click(function() {
         var email = $("#email").val();
//         var name = $("#name").val();
//         var contact = $("#contact").val();
//         var starting = $("#starting").val();
//         var ending = $("#ending").val();
//         var startDate = $("#datepicker").val();
//         var endDate = $("#datepicker2").val();
//         var members = $("#members").val();
//         var create = $("#create").val();
//         var already = $("#already").val();

         $.ajax({
            url: "ControlBooking",
            type: 'POST',
            data: {email:email},
            success: function(data) {
             
                 $('#show').html(data);
//                 $('#hide').hide();

            }
        });
//    if(already){
//         $.ajax({
//                        url: "ControlBooking",
//                        type: 'POST',
//                        data: {msg: "done" , email:email, name:name , contact:contact, starting:starting, ending:ending , startDate: startDate , endDate: endDate, members:members  },
//                        success: function(data) {
//
//                             $('#show').html(data);
//            //                 $('#hide').hide();
//                            if(data){
//
//
//                            }
//
//                        }
//                    });
//    }else if(create){
//        
//         $.ajax({
//                        url: "ControlBooking",
//                        type: 'POST',
//                        data: {msg: "false" , email:email, name:name , contact:contact, starting:starting, ending:ending , startDate: startDate , endDate: endDate, members:members  },
//                        success: function(data) {
//
//                             $('#show').html(data);
//            //                 $('#hide').hide();
//                            if(data){
//
//
//                            }
//
//                        }
//                    });
//        
//        
//    }
//    
});
    
    
    
   $(function() {
        var date = new Date();
        var currentMonth = date.getMonth();
        var currentDate = date.getDate();
        var currentYear = date.getFullYear();
        $('#datepicker').datepicker({
        minDate: new Date(currentYear, currentMonth, currentDate)
        });
        $('#datepicker2').datepicker({
        minDate: new Date(currentYear, currentMonth, currentDate)
        });
    });
    
    $('#form3Example9').val();
//    let d = document.getElementById("form3Example9").value;
    console.log($('#form3Example9').val());
    
</script>
    </body>
</html>
