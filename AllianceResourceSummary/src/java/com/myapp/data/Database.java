/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Carl
 */
public class Database {
    //database credentials
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost/alliance rms";
    private static final String USER = "root";
    private static final String PASS = "";
    private static Connection conn = null;
    private static Statement stmt = null;
    
    public Database(){
    }
        
    public static ResultSet doQuery(String sql){
        ResultSet rs=null;
        dbConnect();
        try{
            rs = stmt.executeQuery(sql);
        } catch(SQLException se){
            se.printStackTrace();
        }
        dbClose();
        return rs;
    }
    
    public static void dbConnect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Connecting to a selected database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            System.out.println("Connected database successfully...");
        } catch(SQLException se) {
            se.printStackTrace();
        } catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public static void dbClose(){
        try {
                if (stmt != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
    }  
}
