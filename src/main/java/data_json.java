/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import db.dbcon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/**
 *
 * @author Admin
 */
public class data_json extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet data_json</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet data_json at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String key1 = request.getParameter("key1");
        String key2 = request.getParameter("key2");
        String values = "Mango";
        dbcon db = new dbcon();

        db.getCon("VNS_RCS");

        String mssidn = "sdbhdh";
        String Json_Data_rcv = "{\n"
                + "   \"contentMessage\":{\n"
                + "      \"contentInfo\":{\n"
                + "         \"fileUrl\": \"" + key1 + "\"\n"
                + "      }\n"
                + "   }\n"
                + "}";

        String data = "INSERT INTO All_Data (mssidn, Json_data) VALUES ('" + mssidn + "', CAST('" + Json_Data_rcv + "' AS JSON));";

        int rowsAffected = db.setUpdate(data);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String Template = request.getParameter("Template");
        String brand_val = request.getParameter("brand_val");
        String BotList = request.getParameter("BotList");
        String title = request.getParameter("title");
        String Description = request.getParameter("Description");
        String URL = request.getParameter("URL");
        String URLSugestion1I = request.getParameter("URLSugestion1I");
        String URLSuggestion_Postback = request.getParameter("URLSuggestion_Postback");
        String Mobile = request.getParameter("Mobile");
        String URLimg = request.getParameter("URLimg");
        String Dial = request.getParameter("Dial");
        String Sugestion2I = request.getParameter("Sugestion2I");
        String Suggestion_Postback2 = request.getParameter("Suggestion_Postback2");
        String URLsuggestion1 = request.getParameter("URLsuggestion1");
        String Jsondata = "N/A";
        String API_Response = "N/A";
        String TextMsg = request.getParameter("TextMsg");
        String Template_val = request.getParameter("Template_val");
        String botId = "N/A";
        dbcon db = new dbcon();
        db.getCon("VNS_RCS");
        System.out.println("connection failed db");
        String BotID = "select botId from  bbrcd where Bot like '" + BotList + "';";
        ResultSet rs = db.getResult(BotID);

        try {
            if (rs.next()) {

                botId = rs.getString("botId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(data_json.class.getName()).log(Level.SEVERE, null, ex);
        }

        String Json_Data_rcv = "{\n"
                + "  \"name\": \"" + Template + "\",\n"
                + "  \"type\": \"text_message\",\n"
                + "  \"textMessageContent\": \"" + title + "\",\n"
                + "  \"botId\": \"" + Description + "\",\n"
                + "  \"suggestions\": [\n"
                + "    {\n"
                + "      \"suggestionType\": \"url_action\",\n"
                + "      \"url\": \"" + URLsuggestion1 + "\",\n"
                + "      \"displayText\": \"" + URLSugestion1I + "\",\n"
                + "      \"postback\": \"" + URLSuggestion_Postback + "\"\n"
                + "    },\n"
                + "    {\n"
                + "      \"suggestionType\": \"dialer_action\",\n"
                + "      \"phoneNumber\":  \"" + Mobile + "\",\n"
                + "      \"displayText\": \"" + Sugestion2I + "\",\n"
                + "      \"postback\": \"" + Suggestion_Postback2 + "\"\n"
                + "    }\n"
                + "  ]\n"
                + "}";

        String Json_Data_Txt = "{\n"
                + "\"name\": \"" + Template + "\",\n"
                + "\"type\": \"text_message\",\n"
                + "\"textMessageContent\": \"" + TextMsg + "\"\n"
                + "}";

        if (Template_val.equals("Rich Card")) {
            Jsondata = Json_Data_rcv;
        } else if (Template_val.equals("Text")) {
            Jsondata = Json_Data_Txt;
        }

        String Acess_Token = Generate_token();
        API_Response = MsgSendApi(Acess_Token, Jsondata);

        String data = "INSERT INTO all_data (Bot_name, Brand, Template, Json) VALUES ('" + BotList + "', '" + brand_val + "', '" + Template + "', CAST('" + Jsondata + "' AS JSON))";
//out.println("data" + data);

        int rowsAffected = db.setUpdate(data); // Handle exception

        if (API_Response.contains("templateModel")) {
            out.print("Template Registred");
        } else if (API_Response.contains("error")) {
            out.print("Failed" + API_Response);

        } else {
            out.println(" Unknown Error");
        }

//        if (rowsAffected ==1) {
//            out.println("succ");
//
//        }else{
//            out.println("Request Submitted Successfully !!");
//        }
        db.closeConection();

    }

    static String Generate_token() throws IOException {
        String accessToken = "N/A";
        try {
            OkHttpClient client = new OkHttpClient().newBuilder()
                    .build();
            MediaType mediaType = MediaType.parse("text/plain");
            RequestBody body = RequestBody.create(mediaType, "");
            Request request = new Request.Builder()
                    .url("https://auth.virtuosorbm.com/oauth2/token?grant_type=client_credentials")
                    .method("POST", body)
                    .addHeader("Authorization", "Basic YzNWemFHbHNZbWhoY25ScFFIWnBjblIxYjNOdmJtVjBjMjltZEM1amIyMDp6eGN2Ym5t")
                    .build();
            Response response = client.newCall(request).execute();
            String resp = response.body().string();
            System.out.println(resp);

            ObjectMapper objectMapper = new ObjectMapper();
            try {
                JsonNode jsonNode = objectMapper.readTree(resp);

                // Extract access token value
                accessToken = jsonNode.get("access_token").asText();

                // Print the access token value
                System.out.println("Access Token: " + accessToken);

            } catch (IOException ex) {
                Logger.getLogger(data_json.class.getName()).log(Level.SEVERE, null, ex);
            }

        } catch (IOException ex) {
            Logger.getLogger(data_json.class.getName()).log(Level.SEVERE, null, ex);
        }
        //  String API_RSP = MsgSendApi(accessToken , Jsondata);
        // System.out.println(API_RSP);
        return accessToken;
    }

    static String MsgSendApi(String Token, String MessageJson) throws IOException {

        OkHttpClient client = new OkHttpClient().newBuilder()
                .build();
        MediaType mediaType = MediaType.parse("text/plain");
        RequestBody body = new MultipartBody.Builder().setType(MultipartBody.FORM)
                .addFormDataPart("rich_template_data", MessageJson).build();
        Request request = new Request.Builder()
                .url("https://api.virtuosorbm.com/directory/secure/api/v1/bots/QZnH0S9fAywNbEET/templates")
                .method("POST", body)
                .addHeader("Authorization", "Bearer " + Token)
                .build();
        Response response = client.newCall(request).execute();

        String resp = response.body().string();
        System.out.println(resp);

        return resp;

    }
    // Handle success or failure

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
