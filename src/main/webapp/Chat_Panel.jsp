<!DOCTYPE html>
<html lang="en">
   
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>RCS BOT</title>
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
   <link href="assets/css/css_inder.css" rel="stylesheet" type="text/css"/>
 
  <!-- Template Main CSS File -->
  <link href="assets/css/style24.css" rel="stylesheet">
 <script src="assets/js/chatpanel.js" type="text/javascript"></script>
  
</head>

<body>

  <!-- ======= Header ======= -->
<!--  <header id="header" class="fixed-top">
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
<%@include file="header.jsp" %>

  <!-- ======= Hero Section ======= -->
  <section style="background-color: #eee;">
  <div class="container py-5">

    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-12 col-xl-">

        <div class="card">
          <div class="card-header d-flex justify-content-between align-items-center p-3"
            style="border-top: 4px solid #cccccc;">
            <h5 class="mb-0">Chat messages</h5>
            <div class="d-flex flex-row align-items-center">
              <span class="badge bg-warning me-3">20</span>
              <i class="fas fa-minus me-3 text-muted fa-xs"></i>
              <i class="fas fa-comments me-3 text-muted fa-xs"></i>
              <i class="fas fa-times text-muted fa-xs"></i>
            </div>
          </div>
          
            <div  class="chatBox" id="chatBox" >
                 
          <div id="list" class="card-body" data-mdb-perfect-scrollbar="true" style="position: relative; height: 400px">
<!--            <div class="clientSideDiv" id="clientSideDiv">
              <div class="d-flex justify-content-between">
              <p class="small mb-1"  id="Name"> </p>
              <p class="small mb-1 text-muted" id="Time">  </p>
            </div>
            <div class="d-flex flex-row justify-content-start" id="FullDiv">
             <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                alt="avatar 1" style="width: 45px; height: 100%; ">
              <div id="div">
                <p class="small p-2 ms-3 mb-3 rounded-3" style="background-color: #f5f6f7;" id="textmsg"> sd</p>
              </div>
            </div>
          
            </div>  
              <br>-->
   </div>
          </div>
          <div class="card-footer text-muted d-flex justify-content-start align-items-center p-3">
            <div class="input-group mb-0">
              <input type="text" class="form-control" placeholder="Type message"
                aria-label="Recipient's username" id="messageInput" aria-describedby="button-addon2" />
              <button onclick="Send_DB()" class="btn btn-warning" type="button" id="button-addon2" style="padding-top: .55rem;">
                Submit
              </button>
               <button onclick="recMsg_D()" class="btn btn-warning" type="button" id="recMsg" style="padding-top: .55rem;"  hidden>
                   
                Refresh
              </button>
              
               <button onclick="loadChat()" class="btn btn-warning"  type="button" id="reload" style="padding-top: .55rem;" hidden>
                   
               reload
              </button>
              <button onclick="Test()" class="btn btn-warning"  type="button" id="Test" style="padding-top: .55rem;"  hidden>
                   
               Test
              </button>
              
        
             
            </div>
          </div>
       

      </div>
    </div>

  </div>
</section>


  



    

    
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