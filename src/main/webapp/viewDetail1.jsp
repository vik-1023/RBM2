<%-- 
    Document   : viewDetail1
    Created on : Jan 15, 2024, 7:00:57 PM
    Author     : Dell
--%>


<%@page import="RMB.rbmClasses"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.dbcon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String Phone_Number=request.getParameter("Phone_Number");
			Phone_Number="+91"+Phone_Number;
        dbcon db=new dbcon();
        rbmClasses rb=new rbmClasses();
        rb.sendInvite(Phone_Number);

		
try{
        
        db.getCon("VNS_RCS");
       String s = "INSERT INTO Test_Device (Phone_Number, Status, Submitted) VALUES ('" + Phone_Number + "', 'Pending', NOW())";

        db.setUpdate(s);
        }catch(Exception e){
        e.printStackTrace();
        }finally{
     db.closeConection();
        }
            %>
</html>
