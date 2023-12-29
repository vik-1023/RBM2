

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="common_js_css_bootstrap/comman_js_css.jsp" %>
         <script src="Js/script.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-2"></div>
                <div class="col-lg-6 col-md-8 login-box mb-5">
                    <div class="col-lg-12 login-key">
                        <i class="fa fa-key" aria-hidden="true"></i>
                    </div>
                    <div class="col-lg-12 login-title text-center mt-">
                        USER LOGIN
                    </div>
                    <center>
                        <div id="loader" style="display: none;">
                            <div class="loading d-flex justify-content-center" >
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </center>

                    <div id="test" style="color: white" class="mt-3">

                    </div>

                    <div class="col-lg-12 login-form">
                        <div class="col-lg-12 login-form">
                            <form enctype="multipart/form-data" method="post" action="telegramLoginServlet">
                                <div class="form-group">
                                    <label class="form-control-label text-white">USERNAME</label>
                                    <input type="text" class="form-control" name="username" id="username">
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label text-white">PASSWORD</label>
                                    <input type="password" class="form-control" name="password" id="password">
                                </div>

                                <div class="row">


                                    <div class="col-lg-6">
                                        <div class="form-group btn-outline-warning"style="max-width: 150px;">
                                            <select class="form-control  btn-outline-success " id="otpType">
                                                <option   value="email">EMAIL</option>
                                                <option  value="telegram">TELEGRAM</option>
                                            </select> 
                                        </div>    
                                    </div> 

                                    <div class="col-lg-6 login-btm login-button">
                                        <button type="button" class="btn btn-outline-primary" name="sendOtp" id="sendOtp" onclick="OtpBtnClick()">Send Otp</button>
                                        <button class="buttonload" id="loading" style="display:none;" >
                                            <i class="fa fa-spinner fa-spin"></i>Please Wait...
                                        </button>
                                    </div>


                                </div>



                                <div class="form-group" id="otp" style="display: none">
                                    <label class="form-control-label text-white"  >Enter OTP</label>
                                    <input  type="text" class="form-control" name="OtpInpt" id="OtpInpt">
                                </div>


                        </div>


                        <div class="col-lg-12 loginbttm ml-5" id="submitt" style="display:none;">
                            <div class="col-lg-12 login-btm login-button form-group">
                                <button type="button" class="btn btn-outline-primary form-control" id="submitBtn" name="submitBtn" onclick="loginbtnClick()">Submit</button>
                            </div>
                        </div>


                        </form>
                    </div>
                </div>

            </div>
            
            
            
        <script src="Js/script.js" type="text/javascript"></script>     
    </body>
   
</html>
