<%-- 
    Document   : index
    Created on : 7 Dec, 2023, 8:09:58 PM
    Author     : Admin
--%>
<%--<%@include file="session.jsp" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RCS</title>
        <%@include file="common_jcb/jcb.jsp"%>
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

        <style>
            .c-f{
               
                text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
                margin-top: 70px;
            }
            div.card {

                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                text-align: center;
                 color: white;
            }


        </style>
    </head>
    <body>
        <div style="">
             <%@include file="header.jsp" %>
        </div>
       
        <div class="container-fluid c-f">
            <div class="row">
                <div class="col col-3 mt-3">
                    <div class="card">
                        <div class="card-header bg-primary text-center">
                            <h3>Send Tester Invite</h3> 
                        </div>
                        <div class="card-body">
                            <form class="form-group" action="send_Tester_Invite" method="post">
                                <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile">
                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="getData()">Submit</button>
                                </div>
                                <div id="test" class="mt-3 text-center">

                                </div>

                            </form> 
                        </div>
                    </div>

                    <div class="card mt-3">
                        <div class="card-header bg-secondary text-center">
                            <h3>Send Text</h3> 
                        </div>
                        <div class="card-body">
                            <form class="form-group">
                                <input type="text" class="form-control" id="mobile2" name="mobile2" placeholder="Enter Mobile">
                                <input type="text" class="form-control mt-3" id="text" name="text" placeholder="Enter message">

                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="getMsg()">Submit</button>
                                </div>
                                <div id="test3" class="mt-3 text-center">

                                </div>

                            </form> 
                        </div>
                    </div>

                    <div class="card mt-3">
                        <div class="card-header bg-success text-center">
                            <h3>Suggested replies</h3> 
                            <div id="test7">

                            </div>
                        </div>
                        <div class="card-body">
                            <form class="form-group">
                                <input type="text" class="form-control" id="Sugg_Rep_Mob" name="Sugg_Rep_Mob" placeholder="Enter Mobile"required>
                                <input type="text" class="form-control mt-3" id="Sugg_Rep1" name="Sugg_Rep1" placeholder="Enter Suggestion 1"required>
                                <input type="text" class="form-control mt-3" id="Sugg_Rep2" name="Sugg_Rep2" placeholder="Enter Suggestion 2"required>
                                <input type="text" class="form-control mt-3" id="Suggestion_Message" name="Suggestion_Message" placeholder="Enter Suggestion_Message" required>

                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="Sugg_Rep()">Submit</button>
                                </div>
                                <div id="test6" class="mt-3 text-center">

                                </div>

                            </form> 
                        </div>
                    </div>


                    <div class="card mt-3 mb-5">
                        <div class="card-header bg-danger text-center">
                            <h3>View A location</h3> 
                            <div id="test9">

                            </div>
                        </div>
                        <div class="card-body">
                            <form class="form-group">
                                <input type="text" class="form-control" id="location_Mob" name="location_Mob" placeholder="Enter Mobile"required>
                                <input type="text" class="form-control mt-3" id="setLocation" name="setLocation" placeholder="Set Location"required>
                                <input type="text" class="form-control mt-3" id="viewMap" name="viewMap" placeholder="View Location"required>
                                <input type="text" class="form-control mt-3" id="setMessage" name="setMessage" placeholder="Enter Text" required>

                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="viewLocation()">Submit</button>
                                </div>
                                <div id="test6" class="mt-3 text-center">

                                </div>

                            </form> 
                        </div>
                    </div>

                </div>

                <div class="col col-6 mt-3">
                    <div class="card">
                        <div class="card-header bg-warning text-center">
                            <h3>Rich card carousels</h3> 
                        </div>
                        <div class="card-body">
                            <form class="form-group">
                                <input type="text" class="form-control mt-2" id="mobile1" name="mobile1" placeholder="Enter Mobile">
                                <input type="text" class="form-control mt-2" id="c1" name="c1" placeholder="Enter Suggestion1">
                                <input type="text" class="form-control mt-2" id="Title1" name="Title1" placeholder="Enter Title1">
                                <textarea type="text" class="form-control mt-2" id="d1" name="d1" placeholder="Enter description1"></textarea>
                                <input type="text" class="form-control mt-2" id="caredImage1" name="caredImage1" placeholder="Enter caredImageUrl_1">

                                <input type="text" class="form-control mt-2" id="c2" name="c2" placeholder="Enter Suggestion2">
                                <input type="text" class="form-control mt-2" id="Title2" name="Title2" placeholder="Enter Title2">
                                <textarea type="text" class="form-control mt-2" id="d2" name="d2" placeholder="Enter description2"></textarea>
                                <input type="text" class="form-control mt-2" id="caredImage2" name="caredImage2" placeholder="Enter caredImageUrl_2">


                                <input type="text" class="form-control mt-2" id="c3" name="c3" placeholder="Enter Suggestion3">
                                <input type="text" class="form-control mt-2" id="Title3" name="Title3" placeholder="Enter Title3">
                                <textarea type="text" class="form-control mt-2" id="d3" name="d3" placeholder="Enter description3"></textarea>
                                <input type="text" class="form-control mt-3" id="caredImage3" name="caredImage3" placeholder="Enter caredImageUrl_3">


                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="getCarousels()">Submit</button>
                                </div>
                                <div id="test1" class="mt-3 text-center">

                                </div>

                            </form> 
                        </div>
                    </div>


                    <div class="card mt-3 mb-3">
                        <div class="card-header bg-info text-center">
                            <h3>Dial a number</h3> 
                            <div id="test8">

                            </div>
                        </div>
                        <div class="card-body">
                            <form class="form-group">
                                <input type="text" class="form-control mt-2" id="set_number" name="set_number" placeholder="Enter Mobile">
                                <input type="text" class="form-control mt-2" id="dial_number" name="dial_number" placeholder="Enter Dial Number">
                                <input type="text" class="form-control mt-2" id="setText" name="setText" placeholder="Call..">
                                <input type="text" class="form-control mt-2" id="setMessage" name="setMessage" placeholder="Set Message">
                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="dialNumber()">Submit</button>
                                </div>

                            </form> 
                        </div>
                    </div> 


                    <div class="card mt-3 mb-3">
                        <div class="card-header bg-warning text-center">
                            <h3>Open a URL</h3> 
                            <div id="test11">
                            </div>
                        </div>
                        <div class="card-body">
                            <form class="form-group">
                                <input type="text" class="form-control mt-2" id="set_number_url" name="set_number_url" placeholder="Enter Mobile">
                                <input type="text" class="form-control mt-2" id="setUrl" name="setUrl" placeholder="Enter Url">
                                <input type="text" class="form-control mt-2" id="setText1" name="setText1" placeholder="Enter Url Name">
                                <input type="text" class="form-control mt-2" id="sendTextMessage" name="sendTextMessage" placeholder="Enter About Url">
                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="openUrl()">Submit</button>
                                </div>

                            </form> 
                        </div>
                    </div> 
                </div>
                <div class="col col-3 mt-3">
                    <div class="card">
                        <div class="card-header bg-dark text-center">
                            <h3>Send Rich Card</h3> 
                            <div id="test5">

                            </div>
                        </div>
                        <div class="card-body">
                            <form class="form-group">
                                <input type="text" class="form-control mt-2" id="mobile_richcard" name="mobile_richcard" placeholder="Enter Mobile">
                                <input type="text" class="form-control mt-2" id="url_richcard" name="url_richcard" placeholder="Enter Url_richcard">
                                <input type="text" class="form-control mt-2" id="suggestion1_richcard" name="suggestion1_richcard" placeholder="Enter Suggestion1">
                                <input type="text" class="form-control mt-2" id="suggestion2_richcard" name="suggestion2_richcard" placeholder="Enter Suggestion2">
                                <input type="text" class="form-control mt-2" id="title_richcard" name="title_richcard" placeholder="Enter Title">
                                <textarea type="text" class="form-control mt-2" id="description_richcard" name="description_richcard" placeholder="Enter description"></textarea>
                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="getRichCard()">Submit</button>
                                </div>

                            </form> 
                        </div>
                    </div> 

                    <div class="card mt-3">
                        <div class="card-header bg-warning text-center">
                            <h3>Create a calendar event</h3> 
                            <div id="test6">

                            </div>
                        </div>
                        <div class="card-body">
                            <form class="form-group">
                                <input type="text" class="form-control mt-2" id="mobile_calendar" name="mobile_calendar" placeholder="Enter Mobile">
                                <input type="text" class="form-control mt-2" id="calendarTitle" name="calendarTitle" placeholder="calendarTitle">
                                <textarea type="text" class="form-control mt-2" id="calendarDesc" name="calendarDesc" placeholder="Enter description"></textarea>
                                <input type="datetime-local" class="form-control mt-2" id="startTime" name="startTime" placeholder="StartTime">
                                <input type="datetime-local" class="form-control mt-2" id="setEndTime" name="setEndTime" placeholder="setEndTime">
                                <input type="text" class="form-control mt-2" id="setText" name="setText" placeholder="setText">
                                <input type="text" class="form-control mt-2" id="messageText" name="messageText" placeholder="messageText">
                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="getCalendar()">Submit</button>
                                </div>

                            </form> 
                        </div>
                    </div> 
                    <div class="card mt-3 mb-3">
                        <div class="card-header bg-warning text-center">
                            <h3>Share A location</h3> 
                            <div id="test10">

                            </div>
                        </div>
                        <div class="card-body">
                            <form class="form-group">
                                <input type="text" class="form-control mt-2" id="share_Location_number" name="share_Location_number" placeholder="Enter Mobile">
                                <input type="text" class="form-control mt-2" id="share_Location" name="share_Location" placeholder="Enter Location">
                                <input type="text" class="form-control mt-2" id="setText_Location" name="setText_Location" placeholder="Enter text">
                                <div class="mt-3 text-center">
                                    <button type="button" class="btn btn-outline-primary" onclick="shareLocation()">Submit</button>
                                </div>

                            </form> 
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
