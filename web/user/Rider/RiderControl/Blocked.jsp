<%@page import="java.sql.*" %>
<div class="col-md-12 col-lg-12 mt-3">
    <div class="chart">
        <div class="chart-header">
            <div class="card chard-chart" style="overflow-y:auto; overflow-x: hidden;  height:600px">
                <div class="card-cheader">
                    <div class="row p-2 align-item-center">
                        <div class="col-12  mt-2 text-center">
                            <h5 class="card-title">Deny Rides</h5>
                        </div>
                        <div class="col-lg-12  mt-2 d-flex text-center">
                            
                                  <div class="container">
                                <table class="table align-middle mb-0 bg-white">
                                    <tr class="bg-light">
                                        <!--<td>Name</td>-->
                                         <th>Name</th>
                                        <th>email</th>
                                        <th>Contact</th>
                                        <th colspan="2">Travel city</th>
                                        <th colspan="2">Date</th>
                                        <th>Status</th>
                                        <!--<th>Action</th>-->
                                    </tr>
                   

                            <%
         
                                   try{
                                   int c=0;
                                   String email =(String) session.getAttribute("email");
//                                    out.println(email);
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texi","root","");
                                  
                                    String finde = "SELECT * from registeration where email=?";
                                    PreparedStatement pst = con.prepareStatement(finde);
                                    pst.setString(1, email);
                    //                pst.setString(2, admin);
                                    ResultSet rs2 = pst.executeQuery();

                                    while (rs2.next()) {
                    //                      new Login(rs.getInt("id"));
                                             c = rs2.getInt("id");

                                    }
                                  
                                  
                                  String qry = "SELECT * FROM booking WHERE status=\"Deny\" and email=? ";
                                  PreparedStatement ppst = con.prepareStatement(qry);
                                  ppst.setString(1,email);
                                  ResultSet data = ppst.executeQuery();
                           
                                    if(!data.next()){
                                    %>
                                    <tr>
                                        <td colspan="5"><h3 style="color: red">There is Nothing to Show</h3></td>

                                    </tr>
                                    <%
                            } else {
                                while(data.next()){
                                    %>
                                    <tr>

                                        <td><%=data.getString("name")%></td>
                                        <td><%=data.getString("email")%></td>
                                        <td><%=data.getString("contact")%></td>
                                        <td><%=data.getString("starting1")%></td>
                                        <td><%=data.getString("ending")%></td>
                                        <td><%=data.getString("startdate")%></td>
                                        <td><%=data.getString("enddate")%></td>
                                        <td> <span class="badge badge-danger rounded-pill d-inline p-2" style="font-size: .8em;"><%=data.getString("status")%></span></td>
                                        <!--<td><span class="badge badge-danger rounded-pill d-inline p-2" style="font-size: .8em; cursor: pointer;"><a href="./RiderControl/Deny.jsp?id=<%=data.getInt("id")%>"> Cancel </a></span> </td>-->


                                    </tr>

                                    <%
                                }
                                    %>

                                </table>
                            </div>

                            <%

                        }
        
                    }catch(Exception e){
                        out.println("ERROR "+e);
                    }
                            %>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>