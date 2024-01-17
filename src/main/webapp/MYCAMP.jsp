<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>My Campaigns</title>
    <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
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
  <meta content="" name="description">
  <meta content="" name="keywords">
  <script >
      
      
       window.onload=BrandDetail;
  
 function BrandDetail() {
 
    // Log that the function has started
 var url = "BrandDrop";
 
    var xhr = new XMLHttpRequest();
 
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
  
            if (xhr.status === 200) {
                try {
                    // Log that JSON parsing is about to start
                   

                    var responseText = xhr.responseText;
                  
                    if (responseText) {
                        
                        const myJSON = JSON.parse(responseText);
                        if (myJSON.Array1) {
                            
                        
                           

                            Drp_val_jsn_call_brand(myJSON.Array1);
                        } else {
                            console.error("JSON structure is not as expected:", myJSON);

                        }
                    } else {
                        console.error("Empty response text");

                    }
                    // Log that JSON parsing is completed
                   
                } catch (error) {
                    console.error("Error parsing JSON:", error);

                }
            } else {
                console.error("Request failed with status:", xhr.status);

            }
            // Log that the function has completed
           
        }
    };

    xhr.open("GET", url, true);
    xhr.send();
}


function Drp_val_jsn_call_brand(Drp_val_jsn) {
    

    // Log that the function has started
 


    var dropdown = document.getElementById('brand_val');
    dropdown.innerHTML = ''; // Clear existing options

    for (var i = 0; i < Drp_val_jsn.length; i++) {
        var opt = Drp_val_jsn[i];

        var el = document.createElement("option");
        el.textContent = opt;
        el.value = opt;

        dropdown.appendChild(el);
    }
    // Log that the function has completed
   
}
      function getBot() {
 
    // Log that the function has started
   var brand= document.getElementById("brand_val").value;
    

    

    var url = "campDrop?brand="+brand;
 
    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
  
            if (xhr.status === 200) {
                try {
                    // Log that JSON parsing is about to start
                   

                    var responseText = xhr.responseText;
                    if (responseText) {
                        
                        const myJSON = JSON.parse(responseText);
                        if (myJSON.Array1) {
                            
                        
                           

                            Drp_val_jsn_call_bot(myJSON.Array1);
                        } else {
                            console.error("JSON structure is not as expected:", myJSON);

                        }
                    } else {
                        console.error("Empty response text");

                    }
                    // Log that JSON parsing is completed
                   
                } catch (error) {
                    console.error("Error parsing JSON:", error);

                }
            } else {
                console.error("Request failed with status:", xhr.status);

            }
            // Log that the function has completed
           
        }
    };

    xhr.open("GET", url, true);
    xhr.send();
}


function Drp_val_jsn_call_bot(Drp_val_jsn) {
    

    // Log that the function has started
 


    var dropdown = document.getElementById('BotList');
    dropdown.innerHTML = ''; // Clear existing options

    for (var i = 0; i < Drp_val_jsn.length; i++) {
        var opt = Drp_val_jsn[i];

        var el = document.createElement("option");
        el.textContent = opt;
        el.value = opt;

        dropdown.appendChild(el);
    }
    // Log that the function has completed
   
}

function GetTemplate(){
 
    
      // Log that the function has started
   var bot= document.getElementById("BotList").value;
 
    

    

    var url = "campDrop?bot="+bot;
 
    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
  
            if (xhr.status === 200) {
                try {
                    // Log that JSON parsing is about to start
                   

                    var responseText = xhr.responseText;
                     
 
                    if (responseText) {
                        
                        const myJSON = JSON.parse(responseText);
                        if (myJSON.Array1) {
                            
                        
                           

                            Drp_val_jsn_call_template(myJSON.Array1);
                        } else {
                            console.error("JSON structure is not as expected:", myJSON);

                        }
                    } else {
                        console.error("Empty response text");

                    }
                    // Log that JSON parsing is completed
                   
                } catch (error) {
                    console.error("Error parsing JSON:", error);

                }
            } else {
                console.error("Request failed with status:", xhr.status);

            }
            // Log that the function has completed
           
        }
    };


    xhr.open("POST", url, true);
    xhr.send();
    
    
}

function Drp_val_jsn_call_template(Drp_val_jsn) {
    

    // Log that the function has started
 

    var dropdown = document.getElementById('TemplateList');
    dropdown.innerHTML = ''; // Clear existing options

    for (var i = 0; i < Drp_val_jsn.length; i++) {
        var opt = Drp_val_jsn[i];

        var el = document.createElement("option");
        el.textContent = opt;
        el.value = opt;

        dropdown.appendChild(el);
    }
    // Log that the function has completed
   
}
  </script>
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

  
</head>
 <%@include file="header.jsp" %>
<body>
 
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
 
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero1" class="d-flex align-items-right">
    <div class="container" data-aos="fade-up" data-aos-delay="100">
      <div class="row justify-content-right">
	 
	    <div class="col-md-6 col-sm-6 col-xs-12">
		 <label class="s_bot" for="search">My Campaigns</label>
		</div>
		
		 <div class="row">
    
    <div class="col-sm-4 col-md-4 mt-10">
    <label for="brand_val" class="form-label">Brands</label>
      <select id="brand_val" onclick="getBot()" class="form-select">
        <option>None</option>
      
      </select>
   </div>
    <div class="col-sm-4 col-md-4 mt-10">
    <label for="disabledSelect" class="form-label">Bots</label>
      <select id="BotList" onclick="GetTemplate()"  class="form-select">
        <option>None</option>
      </select>
   </div>
                     
                       <div class="col-sm-4 col-md-4 mt-10">
    <label for="disabledSelect" class="form-label">Template</label>
      <select id="TemplateList" class="form-select">
        <option>None</option>
      </select>
   </div>
                     
                     
                       <div class="form-group"  >
		  <label for="myfile"  >Select a file:</label>
          <input type="file" id="myfile" name="myfile">
          </div>
   
     
    <div class="col-sm-4 col-md-4 mt-10">
    <button    GetTemplate type="submit" class="btn btn-primary1" >Submit </button> 
   </div>
    </div>
		 
		   
	      <!--<div class="col-md-12 col-sm-12 colxs-12 table-responsive">
	  
		<div class="main-table">
     <table class="table">
		  <thead class="table-top">
			<tr class="bg-color">
			  <th scope="col">Brands Submitted</th>
			  <th scope="col"></th>
			  <th scope="col"></th>
			  <th scope="col"></th>
			   <th scope="col"></th>
			
			</tr>
		  </thead>
		  <tbody class="table-data">
			<tr>
			  <th scope="row">Brand Name</th>
			  <td><b>Industry Type</b></td>
			 
			  <td><b>Status</b></td>
			   <td><b>Action</b></td>
			    
			</tr>
			<tr>
			  <th scope="row"><span class="name-img"><img src="assets/img/table-img.jpg">Name</span></th> 
			  <td>Virtuoso Netsoft</td>
			  <td><span class="Creation">Creation Rejected</span></td>
			   <td><span class="view">View Details</span></td>
			   
			</tr>
		<tr>
			  <th scope="row"><span class="name-img"><img src="assets/img/table-img.jpg">Name</span></th> 
			  <td>Virtuoso Netsoft</td>
			  <td><span class="Creation">Creation Rejected</span></td>
			   <td><span class="view">View Details</span></td>
			   
			</tr>
			<tr>
			  <th scope="row"><span class="name-img"><img src="assets/img/table-img.jpg">Name</span></th> 
			  <td>Virtuoso Netsoft</td>
			  <td><span class="Creation">Creation Rejected</span></td>
			   <td><span class="view">View Details</span></td>
			   
			</tr>
			<tr>
			  <th scope="row"><span class="name-img"><img src="assets/img/table-img.jpg">Name</span></th> 
			  <td>Virtuoso Netsoft</td>
			  <td><span class="Creation">Creation Rejected</span></td>
			   <td><span class="view">View Details</span></td>
			   
			</tr>
			<tr>
			  <th scope="row"><span class="name-img"><img src="assets/img/table-img.jpg">Name</span></th> 
			  <td>Virtuoso Netsoft</td>
			  <td><span class="Creation">Creation Rejected</span></td>
			   <td><span class="view">View Details</span></td>
			   
			</tr>
		  </tbody> -->
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

</body>

</html>