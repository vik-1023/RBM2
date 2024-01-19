/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.jsp.JspWriter;

/**
 *
 * @author pc-15
 */
public class CampaignHelper {

    public ArrayList<String> validate_data(String data, JspWriter out) {
        ArrayList<String> ar = new ArrayList<String>();
        String newdata = "";
        int invalid = 0;
        int valid = 0;
        System.out.println("Data:" + data);
        data = data.replaceAll(" ", ",").trim();
        data = data.replaceAll("\\r\\n|\\r|\\n", ",");
        data = data.replaceAll("\\n", ",");
        if (data.startsWith(",")) {
            data = data.replaceFirst(",", "");
        }
        if (data.endsWith(",")) {
            data = data.substring(0, data.lastIndexOf(","));
        }
        System.out.println("Data:" + data);
        String msisdn[] = data.split(",");
        for (int i = 0; i < msisdn.length; i++) {
            String ms = "";
            
            if (msisdn[i].length() == 10) {
                ms = "+91" + msisdn[i];
                ar.add(ms);
                valid++;
            } else if (msisdn[i].length() == 12 && msisdn[i].startsWith("91")) {
                ms = "+" + msisdn[i];
                ar.add(ms);
                valid++;
            } else if (msisdn[i].length() == 13 && msisdn[i].startsWith("+91")) {
                ms = msisdn[i];
                ar.add(ms);
                
            } else {
                
                invalid++;
            }
            
            
            
            newdata = newdata + "," + ms;
            newdata= newdata.replaceAll(",,", ",");
        }
        // out.println("Valid Entries:" + valid);
        //  out.println("Invalid Entries:" + valid);
        if (newdata.startsWith(",")) {
            newdata = newdata.replaceFirst(",", "");
        }
        if (newdata.endsWith(",")) {
            newdata = newdata.substring(0, newdata.lastIndexOf(","));
        }
        String sb = data;
        if (sb.startsWith(",")) {
            sb = sb.replaceFirst(",", "");
        }
        if (sb.trim().length() > 0) {
            
            
        }

        return ar;
    }
}
