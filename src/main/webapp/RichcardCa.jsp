

<%@include file="session.jsp" %>

<!DOCTYPE html>
<html>

    <head>

        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Campaign Page</title>
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

        <!-- Template Main CSS File -->
        <link href="assets/css/style24.css" rel="stylesheet">

        <!-- slider stylesheet -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="my_Camp_Data/css/bootstrap.css" />
        <!-- font awesome style -->
        <link rel="stylesheet" type="text/css" href="my_Camp_Data/css/font-awesome.min.css" />

        <style>

            .card {
                /* Add shadows to create the "card" effect */
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.1s;
                border-radius: 5px;
            }

            /* On mouse-over, add a deeper shadow */
            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

            /* Add some padding inside the card container */
            .cardcontent {
                padding: 2px 16px;
            }

        </style>
        <script >function GetBot() {

                // Log that the function has started
                var brand = document.getElementById('brand_val').value;








                var url = "detFetch?brand=" + brand;

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



            function senderID() {

                var BotList = document.getElementById("BotList").value;
                var senderIDPhone = document.getElementById("senderIDPhone");
                senderIDPhone.innerHTML = BotList;


            }

            function Text_MSG() {

                var txtFeild = document.getElementById("txtFeild").value;
                var txtFeildPhn = document.getElementById("txtFeildPhn");
                txtFeildPhn.innerHTML = txtFeild;


            }


            var switchStatus = false;

            function toggle_Schedule() {
                var togBtn = document.getElementById('togBtn');

                if (togBtn.firstElementChild.checked) {
                    switchStatus = true;
                    var myElement = document.getElementById('calndr');

                    // Change the display style to inline
                    myElement.style.display = 'inline';
                } else {
                    switchStatus = false;
                    var myElement = document.getElementById('calndr');

                    // Change the display style to inline
                    myElement.style.display = 'none';
                }
            }


            function ChnageTitle() {

                var title = document.getElementById("title").value;
                var title_mobile = document.getElementById("title_mobile");
                title_mobile.innerHTML = title;


            }

            function descriptionChange() {
                var Description = document.getElementById("Description").value;
                var description_mobile = document.getElementById("description_mobile");
            
                // Replace spaces with non-breaking spaces
                Description = Description.replace(/ /g, '&nbsp;');
            
                // Replace newlines with <br> tags
                Description = Description.replace(/\n/g, '<br>');
            
                description_mobile.innerHTML = Description;
            }

            function Sugestion1IF() {


                var Sugestion1I = document.getElementById("Sugestion1I").value;
                var suggestion1M = document.getElementById("suggestion1M");
                suggestion1M.innerHTML = Sugestion1I;


            }

            function Sugestion2IF() {
                var Sugestion2I = document.getElementById("Sugestion2I").value;
                var Sugestion2M = document.getElementById("Sugestion2M");
                Sugestion2M.innerHTML = Sugestion2I;


            }

            function updateImage() {
                // Get the URL entered by the user
                var imageURL = document.getElementById("URLimg").value;

                // Update the src attribute of the img tag
                document.getElementById("dynamicImage").src = imageURL;
            }


            function submitForm() {

                var Template = document.getElementById("Template").value;

                var brand_val = document.getElementById("brand_val").value;


                var BotList = document.getElementById("BotList").value;





                var title = document.getElementById("title").value;


                var Description = document.getElementById("Description").value;


                var URL = document.getElementById("URL").value;

                var URLSugestion1I = document.getElementById("Sugestion1I").value;


                var URLSuggestion_Postback = document.getElementById("Suggestion_Postback").value;
                var URLsuggestion1 = document.getElementById("URLsuggestion1").value;


                var URLimg = document.getElementById("URLimg").value;


                var Dial = document.getElementById("Dial").value;


                var Sugestion2I = document.getElementById("Sugestion2I").value;


                var Suggestion_Postback2 = document.getElementById("Suggestion_Postback2").value;



                var Mobile = document.getElementById("Mobile").value;
                
                    var Template_val = document.getElementById('Template_val').value;
                    var TextMsg = document.getElementById('TextMsg').value;











                var http = new XMLHttpRequest();

                var url = 'data_json';
                var params = 'Template=' + encodeURIComponent(Template) + '&brand_val=' + encodeURIComponent(brand_val) + '&BotList=' + encodeURIComponent(BotList) +
                        '&title=' + encodeURIComponent(title) + '&Description=' + encodeURIComponent(Description) +
                        '&URL=' + encodeURIComponent(URL) +
                        '&URLSugestion1I=' + encodeURIComponent(URLSugestion1I) + '&URLSuggestion_Postback=' + encodeURIComponent(URLSuggestion_Postback) + '&URLimg=' + encodeURIComponent(URLimg) +
                        '&Dial=' + encodeURIComponent(Dial) + '&Sugestion2I=' + encodeURIComponent(Sugestion2I) + '&Suggestion_Postback2=' + encodeURIComponent(Suggestion_Postback2) +
                        '&Mobile=' + encodeURIComponent(Mobile) + '&URLsuggestion1=' + encodeURIComponent(URLsuggestion1)+ '&Template_val=' + encodeURIComponent(Template_val)+ '&TextMsg=' + encodeURIComponent(TextMsg);

                http.open('POST', url, true);

                // Set the Content-type header
                http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                document.getElementById("rslt").innerHTML="Please Wait....";

                http.onreadystatechange = function () {

                    if (http.readyState == 4 && http.status == 200) {
                        // Handle the response
                    //    console.log(http.responseText);
                        //  alert(http.responseText);
                      
                          
                             alert(http.responseText);
                             
                            location.reload();
                       



                    }
                    
                }

                // Send the request with the parameters
                http.send(params);




            }
            
            
             function doubleCheck() {
    if (confirm("Are You Really Want To Submit ?")) {
         submitForm();
    }
}


            window.onload = BrandDetail;

            function BrandDetail() {

                // Log that the function has started
                var url = "detFetch";

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
										GetBot();
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

            function TemplateChange() {

                var Template_val = document.getElementById('Template_val').value;

                var Msg_area = document.getElementById('Msg_area');
                var Msg_area_RC = document.getElementById('Msg_area_RC');
                var Msg_area_RC_M = document.getElementById('Msg_area_RC_M');
                var Msg_area_M = document.getElementById('Msg_area_M');
                if (Template_val == 'Text') {

                    Msg_area.style.display = "inline";
                    Msg_area_RC.style.display = "none";
                    Msg_area_M.style.display = "inline";
                    Msg_area_RC_M.style.display = "none";
                } else if (Template_val == 'Rich Card') {

                    Msg_area_RC.style.display = "inline";
                    Msg_area.style.display = "none";
                    Msg_area_M.style.display = "none";
                    Msg_area_RC_M.style.display = "inline";
                } else if (Template_val == 'none') {
                    Msg_area_RC.style.display = "none";
                    Msg_area.style.display = "none";
                    Msg_area_M.style.display = "none";
                    Msg_area_RC_M.style.display = "none";

                }
            }
            
             function TextMsg_F(){
                 var TextMsg = document.getElementById("TextMsg").value;
                var TextMsg_M = document.getElementById("TextMsg_M");
                TextMsg_M.innerHTML = TextMsg.replaceAll("\n","<br>");
                 
             }
             
             
              function test(){
                   var Template_val = document.getElementById('Template_val').value;
                    var TextMsg = document.getElementById('TextMsg').value;
                    alert("TextMsg"+TextMsg);
                     alert("Template_val"+Template_val);
                    
                  
                  
              }




        </script>
        <!-- Custom styles for this template -->
        <link href="my_Camp_Data/css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="my_Camp_Data/css/responsive.css" rel="stylesheet" />

    </head>

    <body>
        <div class="hero_area">
            <!-- header section strats -->
            <header class="header_section">
                <%@include file="header.jsp" %>
            </header>
            <!-- end header section -->
        </div>

        <!-- service section -->

        <section class="service_section layout_padding">
            <div class="container ">
                <div class="heading_container heading_center">
                    <h2>  </h2>
                </div>
                <div class="row">
                    <div class="col-sm-9 col-md-9">
                        <form>
                            <div class="row">
                                <div class="col-md-6"  >
                                    <div class="form-group">
                                        <label for="email"  >Template Name/Code:</label>
                                        <input id="Template" type="email" class="form-control"  >
                                    </div>
                                </div>

                                <div class="col-md-6">   
                                    <div class="form-group">
                                        <label for="email" id="Template" >Template Type </label>
                                        <select  oninput="TemplateChange()"  name="One" class="form-select" id="Template_val" >
                                            <option  value="none" >-None-</option>
                                            <option  value="Text" >Text</option>
                                            <option  value="Rich Card" >Rich Card</option>



                                        </select>
                                    </div>
                                </div>


                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email" id="Brnddrp" >Brand:</label>
                                        <select    onclick="GetBot()"  name="One" class="form-select" id="brand_val">


                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label for="email" id="Botdrp" >Bot:</label>
                                        <select name="One" class="form-select"   onclick="senderID()"  id="BotList">
                                            <option  value="None" >None</option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" hidden>
                                <label for="myfile" hidden>Select a file:</label>
                                <input type="file" id="myfile" name="myfile">
                            </div>
                            <div class="row">
                                <!-- Rectangular switch -->
                                <div class="col-md-6" hidden>
                                    <select name="One" class="form-control">
                                        <option value="Rich_Card">Rich Card</option>
                                        <option value="Text">Text</option>

                                    </select>
                                </div>

                                <div class="col-md-6 mt-10" hidden>
                                    <label for="myfile"> Remove Duplicate</label>
                                    <!-- Rounded switch -->
                                    <label class="switch">
                                        <input id="RemoveDuplicate" type="checkbox">
                                        <span class="slider round"></span>
                                    </label>
                                </div>
                            </div>
                            <div name="Msg_area_RC" id="Msg_area_RC" class="card" style="display:none;" >
                                <div class="cardcontent">

                                    <div class="form-group">
                                        <label for="email"  >Image Link</label>
                                        <input  type="email" class="form-control" placeholder="https://" id="URLimg" oninput="updateImage()">
                                    </div>

                                    <div class="form-group">
                                        <label for="email" >Title</label>
                                        <input type="email" oninput="ChnageTitle()" id ="title"class="form-control" >
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Description</label>
                                        <textarea   oninput="descriptionChange()" id="Description"class="form-control" placeholder="Your Text Message" style="height:140px;"></textarea>
                                    </div>

                                </div>

                                <div name="suggeston1" class="card" >


                                    <div class="row cardcontent" >

                                        <label style="margin-top: 5px" for="row">Suggestion #1 (URL Type)</label>

                                        <div class="col-md-2">
                                            <select  id="URL" name="One" class="form-select">

                                                <option value="URL">URL</option>


                                            </select>
                                        </div><!-- comment -->
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Suggestion Text"  id="Sugestion1I" oninput="Sugestion1IF()">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Suggestion Postback" id="Suggestion_Postback">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" id="URLsuggestion1" placeholder="URL/URI to open (e.g.:https://www.virtuosorbm.com)" class="form-control" >
                                            </div>

                                        </div>

                                    </div>
                                </div>
                                <br>

                                <div name="suggeston1" class="card" >


                                    <div class="row cardcontent" >

                                        <label style="margin-top: 5px" for="row">Suggestion #2 (Dialer Type)</label>
                                        <div class="col-md-2">

                                            <select  id ="Dial" name="One" class="form-select">


                                                <option value="Dial">Dial</option>

                                            </select>
                                        </div><!-- comment -->
                                        <div class="col-md-3">
                                            <div class="form-group">

                                                <input type="email" class="form-control" placeholder="Suggestion Text" oninput="Sugestion2IF()" id="Sugestion2I">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Suggestion Postback" id="Suggestion_Postback2">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Mobile Number (e.g.:+918888888888)" id="Mobile">
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div name="Msg_area" id="Msg_area" style="display:  none;">

                                <div class="form-group">
                                    <label for="email">Text Message</label>
                                    <textarea  oninput="TextMsg_F()"    id="TextMsg" class="form-control" placeholder="Your Text Message" style="height:260px;"  required></textarea>
                                </div>


                            </div>

                            <div class="col-md-6 mt-10" hidden>
                                <label for="myfile"> Schedule </label>
                                <!-- Rounded switch -->
                                <label class="switch" id="togBtn" onclick="toggle_Schedule()">
                                    <input  id="CalndrBTN" type="checkbox">
                                    <span class="slider round"></span>
                                </label>
                            </div>

                            <div class="form-group" id="calndr" style="display:  none;">
                                <label for="email">Calendar:</label>
                                <br>
                                <input   id="Calendar" type="datetime-local" id="birthdaytime" name="birthdaytime" class="form-control">
                            </div>

                            <div class="btn-box" onclick="doubleCheck()">
                                <a >
                                    Submit
                                </a>
                                
                            </div>
                            <div style="margin-top: 20px;" for="email" id="rslt" ></div>
<!--                                                        <div class="btn-box" onclick="test()">
                                                            <a >
                                                                test
                                                            </a>
                                                        </div>-->






                        </form>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <div class="phone-graphic"><div class="phone-case">
                                <div class="phone-container-outer">
                                    <div class="phone-container-inner">
                                        <div class="phone-header">
                                            <center>      
                                                <!-- <p class="phone-header-time">1:02</p> -->
                                                <!--  <p class="phone-header-icons"><span class="material-icons">signal_cellular_alt</span> <span class="material-icons">wifi</span> <span class="material-icons battery">battery_std</span></p> -->
                                                <div class="contact-image">  <img src="my_Camp_Data/images/logo.png" style="width:100%  ; padding-left: 8px;
                                                    padding-right: 8px;"> </div>
                                                <p class="contact-phone" id="senderIDPhone" style="text-align:center;">VNS</p> </center>
                                        </div>
                                        <div class="phone-messages">


                                            <div class="img-box" id="Msg_area_RC_M" style="display:  none;">
                                                <img id="dynamicImage" style="width:100%"  >
                                                <div class="inner-space"></div>
                                                <span class="sell" id="title_mobile"> </span>

                                                <text id="description_mobile" style="margin-left: 4px; display: block;  word-wrap: break-word;font-size: 14px"></text>
                                                <br>
                                                <span class="g1" id="suggestion1MD" ><img src="my_Camp_Data/images/globe.png" style="width:10%"><b class="sell-n" id="suggestion1M"></b></span>
                                                <hr class="top-space">
                                                <span class="g2" ><img src="my_Camp_Data/images/call.png" style="width:10%"><b id="Sugestion2M" class="sell-n"></b></span>

                                            </div>

                                            <div class="img-box"  id="Msg_area_M" style="display:  none;">

                                                <div id="TextMsg_M">
 
                                                </div>

                                            </div>
                                            <!--  <div class="message message-you">
                                               <img src="images/bg-img2.jpg" style="width:100%">
                                                        <p>What is your price range?</p>
                                             </div> -->
                                            <!--    <div class="message message-contact">
                                                 <img src="images/bg-img3.jpg" style="width:100%">
                                                     <p>What is your price range?</p>
                                                         
                                               </div> -->
                                            <!-- <div class="message message-you">
                                              <p>$10,500</p>
                                            </div> -->
                                            <!--  <div class="message message-contact">
                                              <img src="images/bg-img.png" style="width:50%">
                                              </div> -->

                                        </div>
                                        <div class="phone-footer">
                                            <div class="phone-footer-icons"><!-- <span class="material-icons">photo_camera</span> --></div>
                                            <div class="phone-footer-input">
                                                <p>Text Message</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- <div style="margin-bottom:30px;" class="text-center"><a id="refreshButton" href="" class="btn btn-primary">Restart Animation</a></div>
                                </div> -->

                    </div>

                </div>
            </div>
        </section>

        <!-- end service section -->

        <!-- info section -->




        <!-- end info_section -->

        <!-- footer section -->

        <!-- footer section -->
        <script>
            $("#refreshButton").on("click", function () {
                location.reload();
            });

        </script>
        <script src="my_Camp_Data/js/jquery-3.4.1.min.js"></script>
        <script src="my_Camp_Data/js/bootstrap.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
        </script>
        <script src="my_Camp_Data/js/custom.js"></script>
        <!-- Google Map -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
        <!-- End Google Map -->


    </body>

</html>