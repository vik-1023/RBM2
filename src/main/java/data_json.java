/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

 

import db.dbcon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

        dbcon db = new dbcon();
        db.getCon("VNS_RCS");
         System.out.println("connection failed db");

String Json_Data_rcv = "{\n"
        + "   \"contentMessage\":{\n"
        + "      \"richCard\":{\n"
        + "         \"standaloneCard\":{\n"
        + "            \"cardContent\":{\n"
        + "               \"media\":{\n"
        + "                  \"contentInfo\":{\n"
        + "                     \"fileUrl\":\"" + URLimg + "\",\n"
        + "                     \"forceRefresh\":false,\n"
        + "                     \"thumbnailUrl\":\"" + URLimg + "\"\n"
        + "                  },\n"
        + "                  \"height\":\"MEDIUM\"\n"
        + "               },\n"
        + "               \"title\":\"" + title + "\",\n"
        + "               \"description\":\"" + Description + "\",\n"
        + "               \"suggestions\":[\n"
        + "                  {\n"
        + "                     \"action\":{\n"
        + "                        \"text\":\"" + URLSugestion1I + "\",\n"
        + "                        \"postbackData\":\"" + URLSuggestion_Postback + "\",\n"
        + "                        \"openUrlAction\":{\n"
        + "                           \"url\":\"" + URLsuggestion1 + "\"\n"
        + "                        }\n"
        + "                     }\n"
        + "                  },\n"
        + "                  {\n"
        + "                     \"dialAction\": {\n"
        + "                        \"phoneNumber\": \"" + Mobile + "\"\n"
        + "                     }\n"
        + "                  }\n"
        + "               ]\n"
        + "            },\n"
        + "            \"thumbnailImageAlignment\":\"LEFT\",\n"
        + "            \"cardOrientation\":\"VERTICAL\"\n"
        + "         }\n"
        + "      },\n"
        + "      \"suggestions\":[\n"
        + "         {\n"
        + "            \"reply\": {\n"
        + "               \"text\":\"Know more\",\n"
        + "               \"postbackData\":\"user_query\"\n"
        + "            }\n"
        + "         }\n"
        + "      ]\n"
        + "   }\n"
        + "}";

String data = "INSERT INTO all_data (Bot_name, Brand, Template, Json) VALUES ('" + BotList + "', '" + brand_val + "', '" + Template + "', CAST('" + Json_Data_rcv + "' AS JSON))";
//out.println("data" + data);

int rowsAffected = db.setUpdate(data); // Handle exception

//out.println(rowsAffected);

if(rowsAffected==1){
    out.println("succ");
    
}
  db.closeConection();

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
