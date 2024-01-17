<%-- 
    Document   : Api
    Created on : 9 Jan, 2024, 10:18:52 AM
    Author     : Admin
--%>
<%@include file="session.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>API</title>
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

        <%@include file="common_jcb/jcb.jsp"%>
        <style>
            .scrollbar-ripe-malinka::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);
                background-color: #F5F5F5;
                border-radius: 10px;
            }

            .scrollbar-ripe-malinka::-webkit-scrollbar {
                width: 5px;
                background-color: #fbfff0;
            }

            .scrollbar-ripe-malinka::-webkit-scrollbar-thumb {
                border-radius: 10px;
                -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);
                background-image: -webkit-linear-gradient(330deg, #f093fb 0%, #f5576c 100%);
                background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);
            }





            .square::-webkit-scrollbar-track {
                border-radius: 0 !important;
            }

            .square::-webkit-scrollbar-thumb {
                border-radius: 0 !important;
            }

            .thin::-webkit-scrollbar {
                width: 6px;
            }

            .example-1 {
                position: relative;
                overflow-y: scroll;
                height: 600px;
            }
            .text-red{
                color: red;
            }

            #hr-line{
                border: 1px solid red;
                width: 100%;
            }
        </style>


    </head>
    <body>
        
         <%@include file="header.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col col-md-4 ">
                    <div class="card mt-3 example-1 scrollbar-ripe-malinka">
                        <div class="card-body"id="section1">
                            <div class="input-group">
                                <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />&nbsp;&nbsp;&nbsp;
                                <button type="button" class="btn btn-outline-primary" data-mdb-ripple-init>search</button>
                            </div>

                            <div class="heading mt-5" >
                                <a class="" href="#a1"><h5 class="mt-2">Overview</h5></a><br>
                                <a class="" href="#a2"><h5>API Servers</h5></a><br>
                                <a class="" href="#a3"><h5>Authentication</h5></a>
                            </div>
                            <div class="" style="margin-left: 250px;">
                                <h5>OPERATIONS</h5>
                            </div>
                            <hr>
                            <div class="Token">
                                <a class="" href="#a4"><h5>Get Access Token</h5></a>

                                <p>Get access token required for RCS-API calls</p>
                            </div>
                            <div class="Send">
                                <h5>GOOGLE APIs | Send Messages</h5> 
                                <p>This is the API used to send messages to users</p>
                                <p>This is the new version of messaging API, which gives better throughput.</p>
                            </div>
                            <div class="Status">
                                <h5>GOOGLE APIs | Message Status</h5> 
                                <p>Send read notification or typing indication to users</p>
                                <p>Revoke a message sent by bot</p>
                            </div>
                            <div class="files">
                                <h5>GOOGLE APIs | Files</h5> 
                                <p>This is the API to upload a file to the CDN of the VNS RBM platform</p>

                            </div>
                            <div class="Capability">
                                <h5>GOOGLE APIs | Capability Check</h5> 
                                <p>This is the API to get the RCS capability of the given user's device</p>

                            </div>
                            <div class="Tester">
                                <h5>GOOGLE APIs | Tester Invite</h5> 
                                <p>This API allows the developer to send an invite to a recipient RCS enabled user</p>

                            </div>
                            <div class="Bulk">
                                <h5>Bulk Capability Check</h5> 
                                <p>This is the API which returns RBM enabled users from the given list of users.</p>

                            </div>
                            <div class="Webhook">
                                <h5>Webhook</h5> 
                                <p>This is the callback API exposed by the developer's bot. All P2A traffic (event and user messages) will be sent here</p>

                            </div>
                            <div class="Template">
                                <h5>What is a Rich Template</h5> 
                                <p>What is a Rich Template</p>
                                <p>Rich Notification API</p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col col-md-8">
                    <div class="card mt-3 example-1 scrollbar-ripe-malinka">
                        <div class="card-body">
                            <div id="a1">
                                <h5>VNS RBM APIs 1.0</h5>
                                <p id="#a1">
                                    VNS RBM APIs platform provides GOOGLE Chatbot MaaP APIs as per GOOGLE MaaP Chatbot API specifications and GOOGLE specific APIs as per GOOGLE API specifications, to extend any bot’s services to multiple MaaP platforms with ease. Register a bot on the RCS-APIs Platform and send messages to a phone on any supported network via the RCS-APIs Platform.RCS APIs are REST-style HTTP APIs and, receive and return JSON data. A JSON request is sent to an HTTP API endpoint.
                                    To access GOOGLE Chatbot MaaP APIs of the VNS RBM platform, an access token with ‘Chatbot-message’ scope needs to be provided.
                                    To access the GOOGLE style APIs, please refer to the sections below titled "GOOGLE APIs | ..."

                                    VNS RBM MaaP also provides GOOGLE specific APIs as per GOOGLE RBM standard specifications for the ease of use for developers and brands. This comes handy for a developer or brand who has already integrated with GOOGLE RBM APIs earlier, and now wants to integrate with a non-GOOGLE MaaP. With these APIs, they can seamlessly integrate with VNS RBM platform's GOOGLE Specific API's (even for non-GOOGLE MaaPs) with minor changes, since the API request and response payload will be same as per GOOGLE standards. .
                                    To access GOOGLE APIs of the VNS RBM platform, an access token with ‘Chatbot-message’ and ‘google’ scope needs to be provided.
                                    To access the GOOGLE style APIs, please refer to the sections below titled "GOOGLE APIs | ..."
                                </p>
                            </div>

                            <div  id="a2"class="form-check">
                                <h5>API SERVER</h5>
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    <p>api.virtuosorbm.com</p>
                                </label>
                                <p class="text-red">SELECTED:api.virtuosorbm.com</p>
                            </div>


                            <div class="row" id="a3">
                                <div>
                                    <h5 class="mt-5">AUTHENTICATION</h5>
                                </div>
                                <div class="col col-12">


                                    <div class="card">
                                        <div class="card-body">
                                            <form class="form-group">
                                                <h5>HTTP Bearer</h5>
                                                <p>Set the token obtained from <a><a href="url" target="target">GET Access Token</a> API.</p>
                                                <p>Send Authorization in header containing the word Bearer followed by a space and a Token String.</p>
                                                <input type="text" name="api_token" id="api_token" class="" placeholder="api-token">
                                                &nbsp;&nbsp;<label><button type="button" class="btn btn-danger">SET</button></label>
                                                <hr>
                                                <h5>HTTP Basic</h5>
                                                <p>Provide the client_id and client_secret in Basic Auth to get access token(Bearer) needed for API calls.</p>
                                                <p>Send Authorization in header containing the word Basic followed by a space and a base64 encoded string of username:password.</p>
                                                <input type="text" name="username" id="username" class="" placeholder="username">
                                                &nbsp;&nbsp;
                                                <input type="text" name="password" id="password" class="" placeholder="password">

                                                &nbsp;&nbsp; <a href="#test"><label><button type="button" class="btn btn-danger" onclick="getMsg()">SET</button></label></a>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="hr" id="hr-line">

                            <div>
                                <h2>GET ACCESS TOKEN</h2>
                            </div>
                            <hr class="mt-5">

                            <div id="a4">
                                <h3>Get access token required for RCS-API calls</h3>
                                <p>POST http://auth.virtuosorbm.com/</p>
                                <p>
                                    The APIs are secured by the VNS RBM Auth2 SSO service. To access GOOGLE APIs of the RCS APIs platform, an access token with Chatbot-message scope needs to be provided. To get the token, the clientId and client_secret should be sent in the Authorization header as Basic authentication (base64 encoded).
                                </p>
                                <p>Authorize-> BasicAuth, provide credentials:</p>
                                <div class="row">
                                    <div class="col col-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <p> Username:client_id
                                                </p>
                                                <p> Password:client_secret</p>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>

                            <div class="mt-2">
                                <h3>REQUEST</h3>

                            </div>
                            <div class="mt-5">
                                <h4>QUERY-STRING PARAMETERS</h4>
                                <div class="row">
                                    <div class="col col-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <form>
                                                    <label>grant_type<br>
                                                        string</label>
                                                    <input type="text" id="grant_type" name="grant_type">
                                                    &nbsp; &nbsp;<label><b>Default:</b> client_credentials</label>
                                                    <p>	
                                                        supported grant_type - client_credentials</p>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="mt-5">
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>http://auth.virtuosorbm.com/ - access token endpoint</option>
                                </select>
                            </div>
                            <div class="mt-2">
                                <p><b>API Server</b>
                                    http://auth.virtuosorbm.com/</p>
                                <p><b>Authentication</b>
                                    <span style="color:red;">No API key applied</span></p>
                                <div>
                                    <button class="btn btn-danger">FILL EXAMPLE</button>
                                    <button class="btn btn-danger">CLEAR</button>
                                    <button class="btn btn-danger"> TRY</button>
                                    <button class="btn btn-danger"> CLEAR RESPONSE</button>

                                </div>
                                <div class="mt-3">
                                    <p>Response Status: 401</p>
                                    <button class="btn btn">RESPONSE</button>
                                    <button class="btn btn">RESPONSE HEADERS</button>
                                    <button class="btn btn"> CURL</button>

                                </div>
                                <div class="row">
                                    <div class="col col-12">
                                        <div class="card mt-3">
                                            <div class="card-body">
                                                <div id="test">

                                                </div>

                                                <button class="btn btn-danger" style="margin-left: 700px;">COPY</button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <hr class="hr" id="hr-line">

                            <div>
                                <h4>GOOGLE APIS | SEND MESSAGES</h4>
                                <hr class="mt-3">

                                <h4>This is the new version of messaging API, which gives better throughput.</h4>
                                <p><b>POST</b>/v1/phones/{contactId}/agentMessages/async</p>
                                <p>This is the API used to send messages to users. VNS RBM API supports various types of message that can be sent to users, including text message, file message, richcard, richcard carousel and suggested chip list.</p>
                                <p>
                                    In addition to the RCS messages, any template added and approved on Developer portal can be sent on this endpoint. Please note that only template messages from the brand will be allowed outside of a conversation.Please refer to Templates and Rich Notification APIs section for more details.                                    </p>
                                <p>
                                    In addition to the RCS messages, any template added and approved on Developer portal can be sent on this endpoint. Please note that only template messages from the brand will be allowed outside of a conversation.Please refer to Templates and Rich Notification APIs section for more details.
                                </p>
                                <p>

                                    This messaging API gives better throughput compared to the existing API and all clients are recommended to start using the same. Apart from the better throughput, there will be a change in the API response in case of message failure. Only pending event and validation errors will be sent as API response, any other errors (billing failure, number not found, etc...) will be sent as a failure event on the agent’s callback URL.
                                </p>
                                <h3>REQUEST</h3>
                                <h5>PATH PARAMETERS</h5>
                            </div>

                            <div class="row">
                                <div class="col col-12">
                                    <form class="form-group">
                                        <div class="card">
                                            <div class="card-body">

                                                <label>*contactId
                                                    string</label> <input type="text" id="contactId" class="form-control"  name="contactId" placeholder="+14251234567">
                                                <p><b>	
                                                        user contact is MSISDN in canonical format.</b></p>
                                                <p><b>Example:</b> +14251234567</p>






                                            </div>
                                        </div>

                                        <h4 class="mt-3">QUERY-STRING PARAMETERS</h4>

                                        <div class="card">
                                            <div class="card-body">
                                                <label>messageId
                                                    string</label>
                                                <input type="text" id="msgId" class="form-control" name="msgId"placeholder="078b93f0-a4f7-4a49-9128-9cfbbdecbc0">
                                                <p><b>unique messageId.</b></p>
                                                <p><b>Example:</b> 078b93f0-a4f7-4a49-9128-9cfbbdecbc0</p>
                                                <hr>
                                                <label>*botId
                                                    string</label>
                                                <input type="text" id="botId" class="form-control" name="botId"placeholder="AGeCe4BMDXPH2rOC">
                                                <p><b>botId provided by VNS RBM platform.</b></p>
                                                <p><b>Example:</b>AGeCe4BMDXPH2rOC</p>
                                                <hr>
                                                <label>doCapCheck
                                                    boolean</label>
                                                <input type="text" id="doCapCheck"  class="form-control" name="doCapCheck"placeholder="true">
                                                <p><b>	
                                                        This is an optional parameter. When this parameter is set RCS capability check will be done before sending the message.</b></p>
                                                <p>value:- true or false</p>
                                                <p><b>Example:</b>true</p>

                                            </div>


                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="">
                                <p><b>REQUEST BODY
                                        *</b>
                                    application/json</p>
                                <p>
                                    One and only one textMessage, fileMessage, audioMessage, geolocationPushMessage, or richcardMessage can be used if sending messages to users. SuggestedChipList can be used together with any of the message being sent. The developer shall provide userContact to send messages.
                                </p>

                                <h4>Examples:</h4>
                            </div>
                        </div>



                        <div class="col col-12">
                            <div class="card">
                                <div class="card-body" style="background-color: #66666642;">
                                    <h4>1.Template</h4>
                                    <pre id="jsonContent"></pre>


                                </div>

                            </div>
                            <div class="card mt-3">
                                <div class="card-body"style="background-color: #66666642;">
                                    <h4>2.Send text message</h4>
                                    <pre id="jsonContent1"></pre>


                                </div>

                            </div>
                            <div class="card mt-3">
                                <div class="card-body"style="background-color: #66666642;">
                                    <h4>3. Text message with suggestions</h4>
                                    <pre id="jsonContent3"></pre>


                                </div>

                            </div>
                            <div class="card mt-3">
                                <div class="card-body"style="background-color: #66666642;">
                                    <h4>4. File message with URL</h4>
                                    <pre id="jsonContent4"></pre>


                                </div>

                            </div>
                            <div class="card mt-3">
                                <div class="card-body"style="background-color: #66666642;">
                                    <h4>5. File message with ID (uploaded file)</h4>
                                    <pre id="jsonContent5"></pre>


                                </div>

                            </div>
                            <div class="card mt-3">
                                <div class="card-body"style="background-color: #66666642;">
                                    <h4>6. Richcard</h4>
                                    <pre id="jsonContent6"></pre>


                                </div>

                            </div>
                            <div class="card mt-3">
                                <div class="card-body"style="background-color: #66666642;">
                                    <h4>7. Richcard Carousel</h4>
                                    <pre id="jsonContent7"></pre>


                                </div>

                            </div>
                        </div>

                        <div>
                            <ul>
                                <li><a href="#home">Home</a></li>
                                <li><a href="#news">News</a></li>
                            </ul>
                        </div>



                    </div>


                </div>

            </div> 
        </div>


        <script>
            // Your JSON object
            var jsonData = {
                "contentMessage": {
                    "templateMessage": {
                        "templateCode": "template_123",
                        "customParams": "{\"name:\":\"Vi\"}"
                    }
                }
            };

            // Convert JSON to string and display in HTML
            var jsonString = JSON.stringify(jsonData, null, 2);
            document.getElementById('jsonContent').textContent = jsonString;

        </script>
        <script>
            // Your JSON object
            var jsonData = {
                "contentMessage": {
                    "text": "Welcome to RCS chat!"
                }
            };

            // Convert JSON to string and display in HTML
            var jsonString = JSON.stringify(jsonData, null, 2);
            document.getElementById('jsonContent1').textContent = jsonString;

        </script>
        <script>
            // Your JSON object
            var jsonData = {
                "contentMessage": {
                    "text": "Welcome to RCS chat!",
                    "suggestions": [
                        {
                            "reply": {
                                "text": "what is RCS?",
                                "postbackData": "user_reply_what_is_rcs"
                            }
                        },
                        {
                            "action": {
                                "text": "visit our website",
                                "postbackData": "user_action_open_url",
                                "openUrlAction": {
                                    "url": "https://vnsrbm.in/"
                                }
                            }
                        }
                    ]
                }
            };

            // Convert JSON to string and display in HTML
            var jsonString = JSON.stringify(jsonData, null, 2);
            document.getElementById('jsonContent3').textContent = jsonString;

        </script>
        <script>
            // Your JSON object
            var jsonData = {
                "contentMessage": {
                    "contentInfo": {
                        "fileUrl": "https://storage.googleapis.com/kitchen-sink-sample-images/cute-dog.jpg"
                    }
                }
            };

            // Convert JSON to string and display in HTML
            var jsonString = JSON.stringify(jsonData, null, 2);
            document.getElementById('jsonContent4').textContent = jsonString;


        </script>
        <script>
            // Your JSON object
            var jsonData = {
                "contentMessage": {
                    "fileName": "VLXtA7s35cGmyq6g9TcqCSEn2Uqi9QLR"
                }
            };

            // Convert JSON to string and display in HTML
            var jsonString = JSON.stringify(jsonData, null, 2);
            document.getElementById('jsonContent5').textContent = jsonString;

        </script>
        <script>
            // Your JSON object
            var jsonData = {
                "contentMessage": {
                    "richCard": {
                        "standaloneCard": {
                            "cardContent": {
                                "media": {
                                    "contentInfo": {
                                        "fileUrl": "https://storage.googleapis.com/kitchen-sink-sample-images/cute-dog.jpg",
                                        "forceRefresh": false,
                                        "thumbnailUrl": "https://storage.googleapis.com/kitchen-sink-sample-images/cute-dog.jpg"
                                    },
                                    "height": "MEDIUM"
                                },
                                "title": "Celebrity",
                                "suggestions": [
                                    {
                                        "reply": {
                                            "text": "Like",
                                            "postbackData": "user_like"
                                        }
                                    }
                                ]
                            },
                            "thumbnailImageAlignment": "LEFT",
                            "cardOrientation": "VERTICAL"
                        }
                    },
                    "suggestions": [
                        {
                            "reply": {
                                "text": "Know more",
                                "postbackData": "user_query"
                            }
                        }
                    ]
                }
            };

            // Convert JSON to string and display in HTML
            var jsonString = JSON.stringify(jsonData, null, 2);
            document.getElementById('jsonContent6').textContent = jsonString;


        </script>

        <script>
            // Your JSON object
            var jsonData = {
                "contentMessage": {
                    "richCard": {
                        "carouselCard": {
                            "cardWidth": "MEDIUM",
                            "cardContents": [
                                {
                                    "title": "This is the first rich card in a carousel.",
                                    "description": "This is the description of the rich card.",
                                    "media": {
                                        "height": "SHORT",
                                        "contentInfo": {
                                            "fileUrl": "https://storage.googleapis.com/kitchen-sink-sample-images/cute-dog.jpg",
                                            "forceRefresh": false
                                        }
                                    }
                                },
                                {
                                    "title": "This is the second rich card in a carousel.",
                                    "media": {
                                        "height": "SHORT",
                                        "contentInfo": {
                                            "fileUrl": "https://www.google.com/logos/doodles/2015/googles-new-logo-5078286822539264.3-hp2x.gif",
                                            "forceRefresh": false
                                        }
                                    }
                                }
                            ]
                        }
                    }
                }
            };

            // Convert JSON to string and display in HTML
            var jsonString = JSON.stringify(jsonData, null, 2);
            document.getElementById('jsonContent7').textContent = jsonString;






        </script>

        <script>


            function getMsg() {


                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;
                var grant_type = document.getElementById("grant_type").value;

                if (grant_type == null || grant_type == undefined || grant_type == "") {
                    alert("Please enter grant_type ")
                    return;
                }

//                var  data = new FormData();
//                data.append("username", username);
//                data.append("password", password);


                document.getElementById("test").innerHTML = "Please wait ....";
                var url = "TokenServlet?grant_type=" + grant_type + "&username=" + username + "&password=" + password;
                var xhr = new XMLHttpRequest();

                xhr.open("get", url, true);
                //   xhr.setRequestHeader('Content-type', 'text/plain');

                xhr.onload = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        document.getElementById("test").innerHTML = this.responseText;
                    }



                },
                        xhr.send();
            }
        </script>
    </body>
</html>
