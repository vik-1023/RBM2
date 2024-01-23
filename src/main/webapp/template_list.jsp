<%-- 
    Document   : add_template
    Created on : 23 Jan, 2024, 11:59:27 AM
    Author     : VNS
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.dbcon"%>
<%@include file="session.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Add Templates</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css" integrity="sha384-BY+fdrpOd3gfeRvTSMT+VUZmA728cfF9Z2G42xpaRkUGu2i3DyzpTURDo5A6CaLK" crossorigin="anonymous">
        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style24.css" rel="stylesheet">
        <script>
          function search_template() {
  let input = document.getElementById('gsearch').value
  input = input.toLowerCase();
  let x = document.getElementsByClassName('list_template');
 
  for (i = 0; i < x.length; i++) {
    if (!x[i].innerHTML.toLowerCase().includes(input)) {
      x[i].style.display = "none";
    }
    else {
      x[i].style.display = "list-item";
    }
  }
}
        </script>
    </head>
    <body>
      <%@include file="header.jsp" %>  
        <!-- ======= Header ======= -->
<!--        <header id="header" class="fixed-top">
            <div class="container d-flex align-items-center justify-content-between">
                <h1 class="logo"><a href="index.html"><img src="assets/img/logo.png"></a></h1>
                 Uncomment below if you prefer to use an image logo 
                 <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a class="nav-link scrollto active" href="#hero">MY BOTS</a></li>
                        <li><a class="nav-link scrollto" href="#about">MY BRANDS</a></li>
                        <li><a class="nav-link scrollto" href="#services">MY CAMPAIGNS</a></li>
                        <li><a class="nav-link scrollto o" href="#portfolio">API</a></li>
                        <li><a class="nav-link scrollto" href="#team">MY BILLING</a></li>

                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav> .navbar 
                <div class="dropdown">
                    <button class="btn btn-secondary1 dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="assets/img/profile_img.png">
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </div>
            </div>
        </header> End Header -->
        <%
            String botname = request.getParameter("botname");
            botname = "Bulksms";
            dbcon db = new dbcon();
            db.getCon("VNS_RCS");

        %>
        <section class="top-space1">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <h1 class="vi">View  Templates</h1>
                        <p><b>Bot Name :</b> <%=botname%></p>
                        <p><b>Brand Name : </b>Virtuoso Netsoft Private Limited</p>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <a class="back" href="">Go Back</a>
                    </div>
                    <hr>

                    <!--                    <div class="col-md-3">
                                            <label for="gsearch">Search Template:</label>
                                            <select name="pets" id="pet-select">
                                                <option value="">Please choose an option</option>
                                                <option value="dog">Dog</option>
                                                <option value="cat">Cat</option>
                                                <option value="hamster">Hamster</option>
                                                <option value="parrot">Parrot</option>
                                                <option value="spider">Spider</option>
                                                <option value="goldfish">Goldfish</option>
                                            </select>
                                        </div>-->

                    <div class="col-md-3 form">
                        <label for="gsearch">Search Template:</label>
                        <input type="search" id="gsearch"  placeholder="Search" onkeyup="search_template()"  name="gsearch" class="form-control">
                    </div>


                    <div class="col-md-3">
                        <button type="button" class="btn btn-primary2" data-mdb-toggle="button" data-mdb-button-init data-mdb-ripple-init autocomplete="off"> + Add Template </button>

                    </div>

                    <div class="col-md-3">
                        <button type="button" class="btn btn-primary2" data-mdb-toggle="button" data-mdb-button-init data-mdb-ripple-init autocomplete="off"> API Document </button>
                    </div>
                       <div class="col-md-3">
                        <button type="button" class="btn btn-primary2" data-mdb-toggle="button" data-mdb-button-init data-mdb-ripple-init autocomplete="off"> API Document </button>
                    </div>
                    

                </div>
            </div>
        </section>



        <!-- ======= Hero Section ======= -->
        <section id="hero1" class="d-flex align-items-right pt-0">
            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="row justify-content-right">

                    <!-- <div class="col-md-6 col-sm-6 col-xs-12">
                         <label class="s_bot" for="search">My Campaigns</label>
                        </div>
                        
                          <div class="col-md-6 col-sm-6 col-xs-12 ">
                          <button type="button" class="btn btn-primary" data-mdb-toggle="button" data-mdb-button-init data-mdb-ripple-init autocomplete="off"> + Add New Campaign</button>
                           </div> -->



                    <div class="col-md-12 col-sm-12 colxs-12 table-responsive">

                        <div class="main-table">
                            <table class="table">
                                <thead class="table-top">
                                    <tr class="bg-color">
                                        <th scope="col">Templates Submitted</th>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                        <th scope="col"></th>
                                        <th scope="col"></th>

                                    </tr>
                                </thead>
                                <tbody class="table-data">

                                    <tr>
                                        <th scope="row">Template Name</th>
                                        <td><b>Industry Type</b></td>
                                        <td><b>Status</b></td>
                                        <!-- <td><b>Action</b></td> -->

                                    </tr>
                                    <%
                                        String getTemplate_sql = "select Template,Brand,status from all_data where Bot_name like'Bulksms%' and status='True'";
                                        ResultSet rs = db.getResult(getTemplate_sql);
                                        while (rs.next()) {
                                            String status = rs.getString(3);
                                            if (status.equalsIgnoreCase("true")) {
                                                status = "Enabled";
                                            }
                                    %>
                                    <tr class="list_template">
                                        <th scope="row"><span class="name-img"><img src="assets/img/table-img.jpg"><%=rs.getString(1)%></span></th> 
                                        <td><%=rs.getString(2)%></td>
                                        <td><span class="Creation"><%=status%></span></td>
                                        <!-- <td><span class="view">View Details</span></td> -->

                                    </tr>

                                    <%

                                        }
                                        db.closeConection();
                                    %>


                                </tbody> 
                            </table>
                        </div>
                    </div>
                </div>
                <!--  <div class="text-center">
                   <a href="#about" class="btn-get-started scrollto">Get Started</a>
                 </div>
                -->

            </div>
        </section><!-- End Hero -->









        <!-- ======= Footer ======= -->
        <footer id="footer">



            <div class="container d-md-flex py-4">

                <div class="me-md-auto text-center text-md-start">
                    <div class="copyright">
                        &copy; Copyright <strong><span>OnePage</span></strong>. All Rights Reserved
                    </div>

                </div>
                <div class="social-links text-center text-md-right pt-3 pt-md-0">
                    <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                    <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                    <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                </div>
            </div>
        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
        <style>
            
            
        </style>
    </body>

</html>