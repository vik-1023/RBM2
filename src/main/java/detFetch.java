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
public class detFetch extends HttpServlet {

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
            out.println("<title>Servlet detFetch</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet detFetch at " + request.getContextPath() + "</h1>");
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
         String Bot="N/A";
          String Brand=request.getParameter("brand");
       
        
           String all_data = "    select Bot from bbrcd where Brand like '"+Brand+"';;";
        dbcon db = new dbcon();
          db.getCon("VNS_RCS");
        ResultSet rs = db.getResult(all_data);
          JSONArray jsonArray = new JSONArray();
            JSONObject obj = new JSONObject();
         try {
            while (rs.next()) {

                Bot = rs.getString("Bot");
                 
                
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
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("application/json");
    PrintWriter out = response.getWriter();

    try {
        String allDataQuery = "SELECT distinct(Brand) FROM bbrcd;";
        dbcon db = new dbcon();
        db.getCon("VNS_RCS");

        ResultSet rs = db.getResult(allDataQuery);
        JSONArray jsonArray = new JSONArray();

        while (rs.next()) {
            jsonArray.put(rs.getString("Brand"));
        }

        JSONObject resultObj = new JSONObject();
        resultObj.put("Array1", jsonArray);

        out.print(resultObj.toString());
           db.closeConection();
    } catch (Exception ex) {
        ex.printStackTrace(); // Log the exception
        out.print("{\"error\": \"An error occurred while processing the request.\"}");
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
    } 

}
