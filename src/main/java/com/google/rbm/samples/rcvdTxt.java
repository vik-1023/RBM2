package com.google.rbm.samples;


import db.dbcon;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Admin
 */
public class rcvdTxt {
    public int saveMessage(String message) {
        String user = "Bob";
        dbcon db = new dbcon();
        db.getCon("VNS_RCS");
        
        String msg = "INSERT INTO chatp (User, Msg, S_R) VALUES ('" + user + "', '" + message + "', 'R');";
        
        int rs = db.setUpdate(msg);
        System.out.print("DB entered");
        
        return rs;
    }
}
