 


<%

   HttpSession s3= request.getSession(false);
    String username = null;

    username = (String) s3.getAttribute("Dusername");

    if (username == null) {
        // No valid username found, and not on the login page, redirect to login page
        response.sendRedirect("Login");
    }

%>


