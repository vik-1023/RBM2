/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import db.dbcon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Admin
 */
public class campDrop extends HttpServlet {

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
            out.println("<title>Servlet campDrop</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet campDrop at " + request.getContextPath() + "</h1>");
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
         String Bot_Name="N/A";
           String Brand=request.getParameter("brand");
        
           String all_data = "  select distinct(Bot_name) from all_data where Brand like '"+Brand+"' and status='true';";
        dbcon db = new dbcon();
          db.getCon("VNS_RCS");
           System.out.println("connection failed db");
        ResultSet rs = db.getResult(all_data);
          JSONArray jsonArray = new JSONArray();
            JSONObject obj = new JSONObject();
         try {
            while (rs.next()) {

                Bot_Name = rs.getString("Bot_Name");
                 
                
                   jsonArray.put(rs.getString(1));
            }
          obj.put("Array1", jsonArray);
            out.print(obj);
 
        db.closeConection();
 
    }catch(Exception ex){
        
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
         String Template="N/A";
           String bot=request.getParameter("bot");
        
           String all_data = "  select Template from all_data where Bot_name like '"+bot+"' and status='true';";
         //  out.println(all_data);
        dbcon db = new dbcon();
          db.getCon("VNS_RCS");
        ResultSet rs = db.getResult(all_data);
          JSONArray jsonArray = new JSONArray();
            JSONObject obj = new JSONObject();
         try {
            while (rs.next()) {

                Template = rs.getString("Template");
                 
                
                   jsonArray.put(rs.getString(1));
            }
          obj.put("Array1", jsonArray);
            out.print(obj);
 
          db.closeConection();
 
    }catch(Exception ex){
        
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
