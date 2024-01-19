<%-- 
    Document   : campaign_resp
    Created on : Jan 18, 2024, 12:06:21 PM
    Author     : pc-15
--%>

<%@page import="java.io.File"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.dbcon"%>
<%@page import="okhttp3.Response"%>
<%@page import="okhttp3.Request"%>
<%@page import="okhttp3.RequestBody"%>
<%@page import="okhttp3.Request"%>
<%@page import="okhttp3.MediaType"%>
<%@page import="okhttp3.OkHttpClient"%>
<%@page import="java.util.ArrayList"%>
<%@page import="servlet.CampaignHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String msisdns = request.getParameter("msisdns");
            ArrayList<String> ar = new CampaignHelper().validate_data(msisdns, out);

            String bot = request.getParameter("bot");

            String Template = request.getParameter("Template");

            dbcon db = new dbcon();
            db.getCon("VNS_RCS");
            String sql = "select botId from Brand_Bot_Details where Bot='" + bot + "'";
            System.out.println("Exeuting:" + sql);
            ResultSet rs = db.getResult(sql);
            String botId = "";
            if (rs.next()) {
                botId = rs.getString(1);
            }

            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            MediaType mediaType = MediaType.parse("text/plain");
            RequestBody body = RequestBody.create(mediaType, "");
            sql = "select CAST(AES_DECRYPT(additional_value,GoogleId) as CHAR) from Brand_Bot_Details where botId='" + botId + "'";
            System.out.println("Exeuting:" + sql);
            rs = db.getResult(sql);
            String password = "";
            if (rs.next()) {
                password = rs.getString(1);
            }

            String AUTH_SEPARATOR = ":";
            String secretKey = botId
                    + AUTH_SEPARATOR
                    + password;
            byte[] tokenBytes = secretKey.getBytes();
            String token64 = Base64.getEncoder().encodeToString(tokenBytes);
            Request req = new Request.Builder()
                    .url("https://auth.virtuosorbm.com/oauth2/token?grant_type=client_credentials")
                    .method("POST", body)
                    .addHeader("Authorization", "Basic " + token64)
                    .build();
            Response resp = client.newCall(req).execute();
            String rsp = resp.body().string();

            JSONObject jSONObject = new JSONObject(rsp.trim());
            String toke = "eyJraWQiOiJhOTdjZjU5NS1hZmE5LTQ2ODktYjVlYi0yYjg4NDVjZTMwNDgiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJRWm5IMFM5ZkF5d05iRUVUIiwiYXVkIjoiUVpuSDBTOWZBeXdOYkVFVCIsIm5iZiI6MTcwNTU3Njc4MSwiaXNzIjoiaHR0cDovLzEyNy4wLjAuMTo4MDIyL3dlYi1zZXJ2aWNlczIiLCJleHAiOjE3MDU1Nzk3ODEsImlhdCI6MTcwNTU3Njc4MSwianRpIjoiYmJjNjgyYTYtMDA5YS00ZDg0LTlmYjgtY2I5MDc4ZWI5NmFhIiwiYXV0aG9yaXRpZXMiOltdfQ.OhxbUzShkDihSYoKh_yn04u0lYMM-p2lv-4ov16ZDM8vLSYbk1v5WQm97Ti1gBt8R2mEsksBM2-_-AyWBGBc-pIPEnPg47oZkt6myfNqHsMVq2FfWrxZS8wEzJlmlRyaRpUQ0dCOSKou16BWK2uDk7nkFMUuC3NOrGgPMxmdI_Xq4xPLNX9f1dLH91RiWRGOobxOM_g0Wwdmz8p7N_mqfMVR5FrY6tqs0_JcdXzYf_5LwvJ9TdQ5al5KiGalydnLB-chCJx2uhtKGOuI_EUa-4Nhv5I9WLW4TUsWTiDi7PfmHhh2c0gmpTbIOMUiSXMxkXc0yttqAEaz70xEkQaehA";

            if (jSONObject.has("access_token")) {
                toke = jSONObject.getString("access_token");
            }

            toke = (String) jSONObject.get("access_token");
            System.out.println(rsp);

            for (String msisdn : ar) {

                client = new OkHttpClient().newBuilder()
                        .build();
                mediaType = MediaType.parse("text/plain");
                body = RequestBody.create(mediaType, "{\r\n   \"contentMessage\":{\r\n      \"templateMessage\":{ \r\n          \"templateCode\":\"" + Template + "\"\r\n      }    \r\n   }\r\n}");
                req = new Request.Builder()
                        .url("https://api.virtuosorbm.com/v1/phones/" + msisdn + "/agentMessages/async?botId=" + botId)
                        .method("POST", body)
                        .addHeader("Content-Type", "text/plain")
                        .addHeader("Authorization", "Bearer " + toke)
                        .build();
                resp = client.newCall(req).execute();
                String json = resp.body().string();

                JSONObject jobj = new JSONObject(json);
                System.out.println(json);
                if (jobj.has("sendTime")) {

                    if (jobj.has("name")) {

                        out.println("Sent SuccessFully!!" + jobj.getString("sendTime"));
                        String name = jobj.getString("name");
                        name = name.substring(name.indexOf("/") + 1);

                        System.out.println(name);
                        name = name.substring(0, name.indexOf("/"));
                        out.println("To Number:" + name);
                    } else {
                        out.println("Failed!!!" + jobj.getString("sendTime"));
                        if (jobj.has("eventType")) {
                         out.println("EventType:"+jobj.getString("eventType"));
                        }
                         if (jobj.has("reason")) {
                         out.println("Reason:"+jobj.getString("reason"));
                        }
                    }

                }else{
                 out.println("Failed Unknown error!!!");
            }

                out.println();
            }

        %>
    </body>
</html>
