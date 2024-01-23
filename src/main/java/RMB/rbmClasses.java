package RMB;

import db.dbcon;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONObject;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Admin
 */
public class rbmClasses {

    public static final String AUTH_SEPARATOR = ":";
    public static String token = "";

    public String tokenGenerate(String id,String secret) {

        try {

            String secretKey = id
                    + AUTH_SEPARATOR
                    + secret;
            byte[] tokenBytes = secretKey.getBytes();
            String token64 = Base64.getEncoder().withoutPadding().encodeToString(tokenBytes);
            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            MediaType mediaType = MediaType.parse("text/plain");
            RequestBody body = RequestBody.create(mediaType, "");
            Request request = new Request.Builder()
                    .url("https://auth.virtuosorbm.com/oauth2/token?grant_type=client_credentials")
                    .method("POST", body)
                    .addHeader("Authorization", "Basic " + token64)
                    .build();
            Response response = client.newCall(request).execute();
            String res = response.body().string();
            JSONObject jobj = new JSONObject(res);
            if (jobj.has("access_token")) {
                token = jobj.getString("access_token");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return token;

    }

    String ApiToken = this.token;

    public void sendInvite(String num) {
        try {
            dbcon db = new dbcon();
            db.getCon("VNS_RCS");
            String sql = "select botId,CAST(AES_DECRYPT(additional_value,GoogleId) as CHAR) from Brand_Bot_Details where Bot='Bulksms';";
            ResultSet rs = db.getResult(sql);
            String id = "";
            String secret = "";
            if (rs.next()) {
                id = rs.getString(1);
                secret = rs.getString(2);
            } else {
                System.out.println("Unknown Bot !!!");
                
            }
            
            String token = new rbmClasses().tokenGenerate(id,secret);
            
            try {
                OkHttpClient client = new OkHttpClient().newBuilder()
                        .build();
                MediaType mediaType = MediaType.parse("application/json");
               RequestBody body = RequestBody.create(mediaType, "");
               Request request = new Request.Builder()
                        .url("https://api.virtuosorbm.com/v1/phones/+91" + num + "/testers?botId="+id)
                        .method("POST", body)
                        .addHeader("Content-Type", "application/json")
                        .addHeader("Authorization", "Bearer " + token)
                        //.addHeader("Cookie", "AWSALB=lZ3XF+1H0uyInYHhMEyYnCZFXcLeqUydoAwww/5l1m+9hmv7H+01ViwW3OFbDL5PDeRmRj8e89ShdWGvMYvQoPceKfJWCB+lxHPj7iJPWATRkzOiCJtNggWxuzdD; AWSALBCORS=lZ3XF+1H0uyInYHhMEyYnCZFXcLeqUydoAwww/5l1m+9hmv7H+01ViwW3OFbDL5PDeRmRj8e89ShdWGvMYvQoPceKfJWCB+lxHPj7iJPWATRkzOiCJtNggWxuzdD")
                        .build();
                Response response = client.newCall(request).execute();
                System.out.println(response.body().string());
                System.out.println(response);
            } catch (Exception e) {
                e.printStackTrace();
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(rbmClasses.class.getName()).log(Level.SEVERE, null, ex);

        }

    }

    public void sendText(String num, String msg) {

        System.out.println(msg);
        try {
            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            MediaType mediaType = MediaType.parse("application/json");
            RequestBody body = RequestBody.create(mediaType, "{\r\n   \"contentMessage\":{\r\n      \"text\":\"" + msg + "\"\r\n   }\r\n}");
            Request request = new Request.Builder()
                    .url("https://api.virbm.in/rcs/v1/phones/+91" + num + "/agentMessages/async?botId=QZnH0S9fAywNbEET&doCapCheck=true")
                    .method("POST", body)
                    .addHeader("Content-Type", "application/json")
                    .addHeader("Authorization", "Bearer " + ApiToken)
                    //.addHeader("Cookie", "AWSALB=wCOwcwckLVZ8DWIWpKF9eyrnd7epKdfzYX3Do7K8Zj32XJHYMAUGHak3LolD3EYq2cz3senkR3e42YRGmYEOydq+VGF7VHJ9UaDnPVWH5RnK4sRgVIcBYmX76or4; AWSALBCORS=wCOwcwckLVZ8DWIWpKF9eyrnd7epKdfzYX3Do7K8Zj32XJHYMAUGHak3LolD3EYq2cz3senkR3e42YRGmYEOydq+VGF7VHJ9UaDnPVWH5RnK4sRgVIcBYmX76or4")
                    .build();
            Response response = client.newCall(request).execute();
            System.out.println(response.body().string());
            System.out.println(response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void suggestionsReply(String num, String text1, String text2, String text3, String url) {
        try {
            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            MediaType mediaType = MediaType.parse("application/json");
            RequestBody body = RequestBody.create(mediaType, "{\r\n   \"contentMessage\":{\r\n      \"text\":\"" + text1 + "\",\r\n      \"suggestions\":[\r\n         {\r\n            \"reply\":{\r\n               \"text\":\"" + text2 + "\",\r\n               \"postbackData\":\"user_reply_what_is_rcs\"\r\n            }\r\n         },\r\n         {\r\n            \"action\":{\r\n               \"text\":\"" + text2 + "\",\r\n               \"postbackData\":\"user_action_open_url\",\r\n               \"openUrlAction\":{\r\n                  \"url\":\"" + url + "\"\r\n               }\r\n            }\r\n         }\r\n      ]\r\n   }\r\n}");
            Request request = new Request.Builder()
                    .url("https://api.virbm.in/rcs/v1/phones/+91" + num + "/agentMessages/async?botId=QZnH0S9fAywNbEET&doCapCheck=true")
                    .method("POST", body)
                    .addHeader("Content-Type", "application/json")
                    .addHeader("Authorization", "Bearer " + ApiToken)
                    //.addHeader("Cookie", "AWSALB=hr1D7AZ9XFe+dlg/3XwtGolaPvnKOo6yD0NyLIieJ59Qf+xOG6w+cjaOOwR1QP7Q436gy0lqQ1fYJiKMTRKGRZe66DaCADtvP/xRdLfOa74+q1/tRtk67n78Lq5W; AWSALBCORS=hr1D7AZ9XFe+dlg/3XwtGolaPvnKOo6yD0NyLIieJ59Qf+xOG6w+cjaOOwR1QP7Q436gy0lqQ1fYJiKMTRKGRZe66DaCADtvP/xRdLfOa74+q1/tRtk67n78Lq5W")
                    .build();
            Response response = client.newCall(request).execute();
            System.out.println(response.body().string());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void sendUrl(String num, String url) {
        try {
            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            MediaType mediaType = MediaType.parse("application/json");
            RequestBody body = RequestBody.create(mediaType, "{\r\n   \"contentMessage\":{\r\n      \"contentInfo\":{\r\n         \"fileUrl\":\"" + url + "\"\r\n      }\r\n   }\r\n}");
            Request request = new Request.Builder()
                    .url("https://api.virbm.in/rcs/v1/phones/+91" + num + "/agentMessages/async?botId=QZnH0S9fAywNbEET&doCapCheck=true")
                    .method("POST", body)
                    .addHeader("Content-Type", "application/json")
                    .addHeader("Authorization", "Bearer " + ApiToken)
                    //.addHeader("Cookie", "AWSALB=jBIEOrCQ5pkT7nkwGxOsjNwv53ocIeofS0g47Tb47d1hCZ9BVXlt9dwaSQvsHFUm6vdNwaR6sz5yp8hNJwJeWfjiYp0Onhtn9TYZBFVjPnFeB2hul+nSZWbALuVa; AWSALBCORS=jBIEOrCQ5pkT7nkwGxOsjNwv53ocIeofS0g47Tb47d1hCZ9BVXlt9dwaSQvsHFUm6vdNwaR6sz5yp8hNJwJeWfjiYp0Onhtn9TYZBFVjPnFeB2hul+nSZWbALuVa")
                    .build();
            Response response = client.newCall(request).execute();
            System.out.println(response.body().string());
            System.out.println(response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void richCard(String num, String url, String action_url1, String title, String desc, String action1, String contact_us, String contact_us_num, String chat) {
        try {
            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            MediaType mediaType = MediaType.parse("application/json");
            RequestBody body = RequestBody.create(mediaType, "{\n"
                    + "    \"contentMessage\": {\n"
                    + "        \"richCard\": {\n"
                    + "            \"standaloneCard\": {\n"
                    + "                \"cardContent\": {\n"
                    + "                    \"description\": \"" + desc + "\",\n"
                    + "                    \"media\": {\n"
                    + "                        \"contentInfo\": {\n"
                    + "                            \"fileUrl\": \"" + url + "\"\n"
                    + "                        },\n"
                    + "                        \"height\": \"MEDIUM\"\n"
                    + "                    },\n"
                    + "                    \"title\": \"" + title + "\",\n"
                    + "                    \"suggestions\": [\n"
                    + "                        {\n"
                    + "                            \"action\": {\n"
                    + "                                \"text\": \"" + action1 + "\",\n"
                    + "                                \"postbackData\": \"https://virtuosonetsoft.com/\",\n"
                    + "                                \"openUrlAction\": {\n"
                    + "                                    \"url\": \"" + action_url1 + "\"\n"
                    + "                                }\n"
                    + "                            }\n"
                    + "                        },\n"
                    + "                        {\n"
                    + "                            \"action\": {\n"
                    + "                                \"text\": \"" + contact_us + "\",\n"
                    + "                                \"postbackData\": \"" + contact_us + "\",\n"
                    + "                                \"dialAction\": {\n"
                    + "                                    \"phoneNumber\": \"+91" + contact_us_num + "\"\n"
                    + "                                }\n"
                    + "                            }\n"
                    + "                        },\n"
                    + "                        {\n"
                    + "                            \"reply\": {\n"
                    + "                                \"text\": \"" + chat + "\",\n"
                    + "                                \"postbackData\": \"Hello\"\n"
                    + "                            }\n"
                    + "                        }\n"
                    + "                    ]\n"
                    + "                },\n"
                    + "                \"cardOrientation\": \"VERTICAL\"\n"
                    + "            }\n"
                    + "        }\n"
                    + "    }\n"
                    + "}");

            Request request = new Request.Builder()
                    .url("https://api.virbm.in/rcs/v1/phones/+91" + num + "/agentMessages/async?botId=QZnH0S9fAywNbEET")
                    .method("POST", body)
                    .addHeader("Content-Type", "application/json")
                    .addHeader("Authorization", "Bearer " + ApiToken)
                    // .addHeader("Cookie", "AWSALB=p+tzfA5FsFO1TIpxi1qcyGOTu9dUhTsY5jX37pMnYLEGPpGKBCsDfNYWTcL+ZDJzMZZ8YhoFvSub5wTZcu9d+ofDF4zvKwfGfBqEWfalRDjgZGnk2HUQYuzFlV/p; AWSALBCORS=p+tzfA5FsFO1TIpxi1qcyGOTu9dUhTsY5jX37pMnYLEGPpGKBCsDfNYWTcL+ZDJzMZZ8YhoFvSub5wTZcu9d+ofDF4zvKwfGfBqEWfalRDjgZGnk2HUQYuzFlV/p")
                    .build();
            Response response = client.newCall(request).execute();

            System.out.println(response.body().string());
            System.out.println(response.body().string());
            System.out.println(response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void richcardCarousel(String num, String title, String desc, String url, String title1, String url1) {

        try {
            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            MediaType mediaType = MediaType.parse("application/json");
            RequestBody body = RequestBody.create(mediaType, "{\r\n   \"contentMessage\":{\r\n      \"richCard\":{\r\n         \"carouselCard\":{\r\n            \"cardWidth\":\"MEDIUM\",\r\n            \"cardContents\":[\r\n               {\r\n                  \"title\":\'" + title + "',\r\n                  \"description\":\'" + desc + "',\r\n                  \"media\":{\r\n                     \"height\":\"SHORT\",\r\n                     \"contentInfo\":{\r\n                        \"fileUrl\":\'" + url + "',\r\n                        \"forceRefresh\":false\r\n                     }\r\n                  }\r\n               },\r\n               {\r\n                  \"title\":\'" + title1 + "',\r\n                  \"media\":{\r\n                     \"height\":\"SHORT\",\r\n                     \"contentInfo\":{\r\n                        \"fileUrl\":\'" + url1 + "',\r\n                        \"forceRefresh\":false\r\n                     }\r\n                  }\r\n               }\r\n            ]\r\n         }\r\n      }\r\n   }\r\n}");
            Request request = new Request.Builder()
                    .url("https://api.virbm.in/rcs/v1/phones/+91" + num + "/agentMessages?messageId=078b93f0-a4f7-4a49-9128-9cfbbdecbc0&botId=cQNtL2S2giu4oU3D&doCapCheck=true")
                    .method("POST", body)
                    .addHeader("Content-Type", "application/json")
                    .addHeader("Authorization", "Bearer " + ApiToken)
                    //  .addHeader("Cookie", "AWSALB=jHYZiAcievWerxavCe4a3DWr7Gs4B9edX13X9MrUJgiNvScEMF21KprDO7UJnudKsPMAJh8GNkzIh/5vHkEFBXVE2F0CxdX8udxzhA40Vm2JYBakqF94+r09QNdR; AWSALBCORS=jHYZiAcievWerxavCe4a3DWr7Gs4B9edX13X9MrUJgiNvScEMF21KprDO7UJnudKsPMAJh8GNkzIh/5vHkEFBXVE2F0CxdX8udxzhA40Vm2JYBakqF94+r09QNdR")
                    .build();
            Response response = client.newCall(request).execute();
            System.out.println(response.body().string());
            System.out.println(response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {

        String num = "6392100079";
        String title = "dsgvd";
        String title1 = "dsgvd";
        String text = "hyy how are you";
        String text1 = "hyy how are you";
        String text2 = "hyy how are you";
        String desc = "hyy how are you";
        String text3 = "hyy how are you";
        String url = "https://directory.virbm.in/rcsbotdirectory/rcs_message/media/C9Z7QNQJ11AIJNYS7HCX.png";
        String url1 = "https://zestinsolutions.com/about";
        String thumbnilUrl = "https://zestinsolutions.com/about";
        String msg = "hyy how are you";
        String action1 = "Visit Website";
        String action_url1 = "https://virtuosonetsoft.com";
        String contact_us = "contact us";
        String contact_us_num = "6392100079";
        String chat = "chat with us";

        rbmClasses invite = new rbmClasses();
        //invite.sendInvite(num);

        //invite.sendText(num, msg);
        //invite.suggestionsReply(num, text1, text2, text3, url);
        //invite.sendUrl(num, url);
        //invite.richCard(num, url, action_url1, title, desc, action1,contact_us,contact_us_num,chat);
//        invite.richcardCarousel(num, title, desc, url, title1, url1);
    }

}
