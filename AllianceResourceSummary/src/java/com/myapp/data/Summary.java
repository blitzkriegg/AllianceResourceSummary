/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.data;

import java.sql.ResultSet;

/**
 *
 * @author Carl
 */
public class Summary {
    private static int numOfEmployees;             // Total employee count
    private static int countPH;                    // Philippines/Local business unit count
    private static int countJP;                    // JPIndependent business unit count
    private static int countAl;                    // Alliance business unit count
    private static int countRoW;                   // Rest of the World business unit count

    static {
        try {
            setNumOfEmployees();
            setCountPH();
            setCountJP();
            setCountAl();
            setCountRoW();
        } catch (Exception ex) {
            System.out.println("Initialization Error");
        }
    }
    
    public static int getNumOfEmployees() {
        return numOfEmployees;
    }

    private static void setNumOfEmployees() throws Exception {
        String sql= "SELECT Count(*) AS count FROM employee";
        ResultSet rs = Database.doQuery(sql);
        rs.next();
        numOfEmployees = rs.getInt("count");
    }

    public static int getCountPH() {
        return countPH;
    }

    private static void setCountPH() throws Exception {
        String sql= "SELECT Count(*) AS count FROM employee where BusinessUnit = 'Local'";
        ResultSet rs = Database.doQuery(sql);
        rs.next();
        countPH = rs.getInt("count");
    }

    public static int getCountJP() {
        return countJP;
    }

    private static void setCountJP() throws Exception {
        String sql= "SELECT Count(*) AS count FROM employee where BusinessUnit = 'JPIndependent'";
        ResultSet rs = Database.doQuery(sql);
        rs.next();
        countJP = rs.getInt("count");
    }

    public static int getCountAl() {
        return countAl;
    }

    private static void setCountAl() throws Exception {
        String sql= "SELECT Count(*) AS count FROM employee where BusinessUnit = 'Alliance'";
        ResultSet rs = Database.doQuery(sql);
        rs.next();
        countAl = rs.getInt("count");
    }

    public static int getCountRoW() {
        return countRoW;
    }

    private static void setCountRoW() throws Exception {
        String sql= "SELECT Count(*) AS count FROM employee where BusinessUnit = 'ROW'";
        ResultSet rs = Database.doQuery(sql);
        rs.next();
        countRoW = rs.getInt("count");
    }
    
}
