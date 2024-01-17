/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
 

import db.dbcon;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Admin
 */
public class ChatPBck extends HttpServlet {

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
            out.println("<title>Servlet ChatPBck</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChatPBck at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();
        String Time = "N/A";
        String Msg = "N/A";
        String User = "N/A";
        String S_R = "N/A";
        String Msg_ID = "N/A";

        String all_data = "select Time,User,Msg,Msg_ID,Status,S_R from  chatp  where S_R like 'R' order by Time desc;";
        dbcon db = new dbcon();
        db.getCon("VNS_RCS");
        ResultSet rs = db.getResult(all_data);

        JSONObject recObj = new JSONObject();

       

        try {
            if (rs.next()) {

                Time = rs.getString("Time");
                Msg = rs.getString("Msg");
                User = rs.getString("User");
                Msg_ID = rs.getString("Msg_ID");
                S_R = rs.getString("S_R");

                recObj.put("Time", Time);
                recObj.put("S_R", S_R);

                recObj.put("Msg", Msg);
                recObj.put("User", User);
                recObj.put("Msg_ID", Msg_ID);

            }
             HttpSession s = request.getSession(false);

        String PMSG_ID = (String) s.getAttribute("PMSG_ID");

            if ((PMSG_ID.equals(Msg_ID))) {

                out.print("alreadySentMessage" + PMSG_ID + "Msg_ID" + Msg_ID);

            } else {
                s = request.getSession(true);
                s.setAttribute("PMSG_ID", Msg_ID);
            
                out.print("Sent" + recObj);

            }

        } catch (SQLException ex) {
            Logger.getLogger(ChatPBck.class.getName()).log(Level.SEVERE, null, ex);
            out.print("Error");
        }

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

        String Time = null;
        String Msg = null;
        String Msg_ID = null;
        String User = null;
        String S_R = null;
        String RMsg_ID = null;

        dbcon db = new dbcon();
        db.getCon("VNS_RCS");
        String all_data = "select Time,User,Msg,Msg_ID,Status,S_R from chatp order by Time asc;";

        ResultSet rs = db.getResult(all_data);

        List<JSONObject> jsonObjects = new ArrayList<>();

        // Create and add JSON objects to the list
        try {
            while (rs.next()) {
                JSONObject jsonObject1 = new JSONObject();

                Time = rs.getString("Time");
                Msg = rs.getString("Msg");
                User = rs.getString("User");
                Msg_ID = rs.getString("Msg_ID");
                
                S_R = rs.getString("S_R");
                if(S_R.equals("R")){
                    RMsg_ID=Msg_ID;
                }

                jsonObject1.put("Time", Time);
                jsonObject1.put("S_R", S_R);

                jsonObject1.put("Msg", Msg);
                jsonObject1.put("User", User);
                jsonObject1.put("Msg_ID", Msg_ID);
                jsonObjects.add(jsonObject1);
//                      System.out.println("Json obj"+jsonObject1);
            }
            HttpSession s = request.getSession();
            s.setAttribute("PMSG_ID", RMsg_ID);
            out.println("list" + jsonObjects);

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        }

    }

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
