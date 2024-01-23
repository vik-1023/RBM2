
<%@page import="java.sql.ResultSet"%>
<%@page import="db.dbcon"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <style>

            table{
                -webkit-tap-highlight-color: rgba(0,0,0,0);
                -webkit-text-size-adjust: 100%;
                --PhoneInput-color--focus: #03b2cb;
                --PhoneInputInternationalIconPhone-opacity: 0.8;
                --PhoneInputInternationalIconGlobe-opacity: 0.65;
                --PhoneInputCountrySelect-marginRight: 0.35em;
                --PhoneInputCountrySelectArrow-width: 0.3em;
                --PhoneInputCountrySelectArrow-marginLeft: var(--PhoneInputCountrySelect-marginRight);
                --PhoneInputCountrySelectArrow-borderWidth: 1px;
                --PhoneInputCountrySelectArrow-opacity: 0.45;
                --PhoneInputCountrySelectArrow-color: currentColor;
                --PhoneInputCountrySelectArrow-color--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountrySelectArrow-transform: rotate(45deg);
                --PhoneInputCountryFlag-aspectRatio: 1.5;
                --PhoneInputCountryFlag-height: 1em;
                --PhoneInputCountryFlag-borderWidth: 1px;
                --PhoneInputCountryFlag-borderColor: rgba(0,0,0,0.5);
                --PhoneInputCountryFlag-borderColor--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountryFlag-backgroundColor--loading: rgba(0,0,0,0.1);
                font-family: 'Poppins', sans-serif !important;
                font-size: 14px;
                line-height: 1.42857143;
                color: #333;
                width: 100%;
                box-sizing: inherit;
                border-collapse: collapse;
                border-spacing: 0;
                background-color: transparent;
                margin-top: 15px !important;
            }

            thead{
                -webkit-tap-highlight-color: rgba(0,0,0,0);
                -webkit-text-size-adjust: 100%;
                --PhoneInput-color--focus: #03b2cb;
                --PhoneInputInternationalIconPhone-opacity: 0.8;
                --PhoneInputInternationalIconGlobe-opacity: 0.65;
                --PhoneInputCountrySelect-marginRight: 0.35em;
                --PhoneInputCountrySelectArrow-width: 0.3em;
                --PhoneInputCountrySelectArrow-marginLeft: var(--PhoneInputCountrySelect-marginRight);
                --PhoneInputCountrySelectArrow-borderWidth: 1px;
                --PhoneInputCountrySelectArrow-opacity: 0.45;
                --PhoneInputCountrySelectArrow-color: currentColor;
                --PhoneInputCountrySelectArrow-color--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountrySelectArrow-transform: rotate(45deg);
                --PhoneInputCountryFlag-aspectRatio: 1.5;
                --PhoneInputCountryFlag-height: 1em;
                --PhoneInputCountryFlag-borderWidth: 1px;
                --PhoneInputCountryFlag-borderColor: rgba(0,0,0,0.5);
                --PhoneInputCountryFlag-borderColor--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountryFlag-backgroundColor--loading: rgba(0,0,0,0.1);
                font-family: 'Poppins', sans-serif !important;
                font-size: 14px;
                line-height: 1.42857143;
                color: #333;
                border-collapse: collapse;
                border-spacing: 0;
                box-sizing: inherit;
            }
            tr{
                -webkit-tap-highlight-color: rgba(0,0,0,0);
                -webkit-text-size-adjust: 100%;
                --PhoneInput-color--focus: #03b2cb;
                --PhoneInputInternationalIconPhone-opacity: 0.8;
                --PhoneInputInternationalIconGlobe-opacity: 0.65;
                --PhoneInputCountrySelect-marginRight: 0.35em;
                --PhoneInputCountrySelectArrow-width: 0.3em;
                --PhoneInputCountrySelectArrow-marginLeft: var(--PhoneInputCountrySelect-marginRight);
                --PhoneInputCountrySelectArrow-borderWidth: 1px;
                --PhoneInputCountrySelectArrow-opacity: 0.45;
                --PhoneInputCountrySelectArrow-color: currentColor;
                --PhoneInputCountrySelectArrow-color--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountrySelectArrow-transform: rotate(45deg);
                --PhoneInputCountryFlag-aspectRatio: 1.5;
                --PhoneInputCountryFlag-height: 1em;
                --PhoneInputCountryFlag-borderWidth: 1px;
                --PhoneInputCountryFlag-borderColor: rgba(0,0,0,0.5);
                --PhoneInputCountryFlag-borderColor--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountryFlag-backgroundColor--loading: rgba(0,0,0,0.1);
                font-family: 'Poppins', sans-serif !important;
                font-size: 14px;
                line-height: 1.42857143;
                color: #333;
                border-collapse: collapse;
                border-spacing: 0;
                box-sizing: inherit;
            }
            tbody{
                -webkit-tap-highlight-color: rgba(0,0,0,0);
                -webkit-text-size-adjust: 100%;
                --PhoneInput-color--focus: #03b2cb;
                --PhoneInputInternationalIconPhone-opacity: 0.8;
                --PhoneInputInternationalIconGlobe-opacity: 0.65;
                --PhoneInputCountrySelect-marginRight: 0.35em;
                --PhoneInputCountrySelectArrow-width: 0.3em;
                --PhoneInputCountrySelectArrow-marginLeft: var(--PhoneInputCountrySelect-marginRight);
                --PhoneInputCountrySelectArrow-borderWidth: 1px;
                --PhoneInputCountrySelectArrow-opacity: 0.45;
                --PhoneInputCountrySelectArrow-color: currentColor;
                --PhoneInputCountrySelectArrow-color--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountrySelectArrow-transform: rotate(45deg);
                --PhoneInputCountryFlag-aspectRatio: 1.5;
                --PhoneInputCountryFlag-height: 1em;
                --PhoneInputCountryFlag-borderWidth: 1px;
                --PhoneInputCountryFlag-borderColor: rgba(0,0,0,0.5);
                --PhoneInputCountryFlag-borderColor--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountryFlag-backgroundColor--loading: rgba(0,0,0,0.1);
                font-family: 'Poppins', sans-serif !important;
                font-size: 14px;
                line-height: 1.42857143;
                color: #333;
                border-collapse: collapse;
                border-spacing: 0;
                box-sizing: inherit;
            }
            th{
                -webkit-tap-highlight-color: rgba(0,0,0,0);
                -webkit-text-size-adjust: 100%;
                --PhoneInput-color--focus: #03b2cb;
                --PhoneInputInternationalIconPhone-opacity: 0.8;
                --PhoneInputInternationalIconGlobe-opacity: 0.65;
                --PhoneInputCountrySelect-marginRight: 0.35em;
                --PhoneInputCountrySelectArrow-width: 0.3em;
                --PhoneInputCountrySelectArrow-marginLeft: var(--PhoneInputCountrySelect-marginRight);
                --PhoneInputCountrySelectArrow-borderWidth: 1px;
                --PhoneInputCountrySelectArrow-opacity: 0.45;
                --PhoneInputCountrySelectArrow-color: currentColor;
                --PhoneInputCountrySelectArrow-color--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountrySelectArrow-transform: rotate(45deg);
                --PhoneInputCountryFlag-aspectRatio: 1.5;
                --PhoneInputCountryFlag-height: 1em;
                --PhoneInputCountryFlag-borderWidth: 1px;
                --PhoneInputCountryFlag-borderColor: rgba(0,0,0,0.5);
                --PhoneInputCountryFlag-borderColor--focus: var(--PhoneInput-color--focus);
                --PhoneInputCountryFlag-backgroundColor--loading: rgba(0,0,0,0.1);
                font-family: 'Poppins', sans-serif !important;
                font-size: 14px;
                line-height: 1.42857143;
                color: #333;
                border-collapse: collapse;
                border-spacing: 0;
                width: 33%;
                box-sizing: inherit;
                text-align: center !important;
                border-bottom: 1px solid #E0E0E0 !important;
                background-color: rgba(120,125,125,0.20);
                padding: 10px;
                padding-left: 15px !important;
            }
            td{
                    -webkit-tap-highlight-color: rgba(0,0,0,0);
    -webkit-text-size-adjust: 100%;
    --PhoneInput-color--focus: #03b2cb;
    --PhoneInputInternationalIconPhone-opacity: 0.8;
    --PhoneInputInternationalIconGlobe-opacity: 0.65;
    --PhoneInputCountrySelect-marginRight: 0.35em;
    --PhoneInputCountrySelectArrow-width: 0.3em;
    --PhoneInputCountrySelectArrow-marginLeft: var(--PhoneInputCountrySelect-marginRight);
    --PhoneInputCountrySelectArrow-borderWidth: 1px;
    --PhoneInputCountrySelectArrow-opacity: 0.45;
    --PhoneInputCountrySelectArrow-color: currentColor;
    --PhoneInputCountrySelectArrow-color--focus: var(--PhoneInput-color--focus);
    --PhoneInputCountrySelectArrow-transform: rotate(45deg);
    --PhoneInputCountryFlag-aspectRatio: 1.5;
    --PhoneInputCountryFlag-height: 1em;
    --PhoneInputCountryFlag-borderWidth: 1px;
    --PhoneInputCountryFlag-borderColor: rgba(0,0,0,0.5);
    --PhoneInputCountryFlag-borderColor--focus: var(--PhoneInput-color--focus);
    --PhoneInputCountryFlag-backgroundColor--loading: rgba(0,0,0,0.1);
    font-family: 'Poppins', sans-serif !important;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    border-collapse: collapse;
    border-spacing: 0;
    text-align: -webkit-center;
    box-sizing: inherit;
    padding: 10px;
    padding-left: 15px !important;
            }


        </style>

        <Script>
            function GetCount()
            {
                var Phone_Number = document.getElementById("Phone_Number").value;
                

                document.getElementById("pending").innerHTML = "Please wait...";
                document.getElementById("result").innerHTML = "";
                var xmlhttp;

                if (window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                } else
                {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        document.getElementById("pending").innerHTML = "";
                        document.getElementById("result").innerHTML = xmlhttp.responseText;
                    }
                }
                xmlhttp.open("GET", "viewDetail1.jsp?Phone_Number=" + Phone_Number, true);
                xmlhttp.send();
            }



        </Script>

        <Script>
            function GetDelete()
            {
                var id = document.getElementById("id").value;

                document.getElementById("pending").innerHTML = "Please wait...";
                document.getElementById("result1").innerHTML = "";
                var xmlhttp;

                if (window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                } else
                {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        document.getElementById("pending").innerHTML = "";
                        document.getElementById("result1").innerHTML = xmlhttp.responseText;
                    }
                }
                xmlhttp.open("GET", "viewDetail_Delete.jsp?id=" + id, true);
                xmlhttp.send();
            }



        </Script>

        <title>Vi | RBM</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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


    </head>

    <body>
        <%@include file="header.jsp" %>%>

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

            </div>
        </header> End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center">
            <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
                <div class="row justify-content-center">



                    <p><b>Add Test Devices</b></p>
                    <a href="My_Bot.jsp">Go Back</a>
                    <hr>
                    <br><br>
                    <div id="phoneNumbersContainer">
                        <!-- Initial phone number input -->
                        <div class="col-md-12 col-sm-12 phone-n">
                            <div class="phoneNumberForm">
                                <label for="Phone_Number">Primary phone number*</label>
                                <div>
                                    <span class="india">India +91</span>
                                    <input type="tel" class="Phone_Number" name="Phone_Number" id="Phone_Number" maxlength="10">
                                    <input type="button" value="Add" class="btn btn-danger" onclick="GetCount()">&nbsp;<label><div id="pending"></div></label>
                                </div>
                                <p>Before launch, your agent can only send messages to designated test devices.</p>
                                <p>To add a test device, enter the device's phone number, including the country code.</p>

                                <!---------Table-------->
                                <div class="row">
                                    <div class="col-md-12">
                                        <!--  <h3 class="text-center">
                                             Resize the browser screen to see how the table changes
                                         </h3> -->
                                    </div>

                                    <%

                                        dbcon db = new dbcon();
                                        db.getCon("VNS_RCS");
                                        String s = "select * from Test_Device";
                                        ResultSet rs = db.getResult(s);
                                    %>
                              
                                        

                                            <table class="table shadow-lg p-3 mb-5 bg-body rounded">
                                                <thead class="">
                                                    <tr>

                                                        <th scope="col">Phone_Number</th>
                                                        <th scope="col">Status</th>
                                                        <th scope="col">Submitted</th>
                                                        <!--                                                <th scope="col">Action</th>-->
                                                    </tr>
                                                </thead>

                                                <%                 while (rs.next()) {
                                                %>
                                                <tbody>
                                                    <tr>

                                                        <td><%=rs.getString(1)%></td> 
                                                        <td><%=rs.getString(2)%></td>   
                                                        <td><%=rs.getString(3)%></td>        
                                                        <!--                                            <td><input type="button" value="Delete" class="btn btn-danger" id="id" onclick="GetDelete()"></td>-->
                                                    </tr>
                                                </tbody>







                                                <%
                                                    }

                                                %>
                                            </table>
                                      
                                    <center>
<!--                                        <div width="100%" id="pending"></div>-->
                                        <div width="100%" id="result"></div>

                                        <div width="100%" id="pending"></div>
                                        <div width="100%" id="result1"></div>
                                    </center>
                                </div>


                            </div>
                        </div>
                        <!-- Tab One-End--->

                    </div>
                </div>




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

</body>

</html>