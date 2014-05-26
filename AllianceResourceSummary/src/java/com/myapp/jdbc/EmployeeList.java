/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.jdbc;

/**
 *
 * @author Michael
 */
import java.sql.*;

public class EmployeeList {
// JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/alliance rms";
    //  Database credentials
    static final String USER = "root";
    static final String PASS = "";

    public static void getEmployeeList() {
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            String sql = "SELECT EmpIDNum, FirstName, MiddleName, LastName, BusinessUnit FROM employee";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("EmpIDNum");
                String first = rs.getString("FirstName");
                String middle = rs.getString("MiddleName");
                String last = rs.getString("LastName");
                String bunit = rs.getString("BusinessUnit");
            }
            rs.close();
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
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
            }//end finally try
        }//end try
    }
    
    public static void getEmployeeInfo(int employeeid) {
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            String sql = "SELECT EmpIDNum, FirstName, MiddleName, LastName, BusinessUnit, DateHired, YearsITIndustry, CollegeSchool1, CollegeCourse1, CollegeYear, JobTitles, NRIBatch  FROM employee  where EmpIDNum='"+employeeid+"'";
            ResultSet rs = stmt.executeQuery(sql);

            int id = rs.getInt("EmpIDNum");
            String first = rs.getString("FirstName");
            String middle = rs.getString("MiddleName");
            String last = rs.getString("LastName");
            String bunit = rs.getString("BusinessUnit");
            Date hired = rs.getDate("DateHired");
            String college = rs.getString("CollegeSchool1");
            String course = rs.getString("CollegeCourse1");
            int collegeYear = rs.getInt("CollegeYear");
            String jobTitles = rs.getString("JobTitles");
            int NRIBatch = rs.getInt("NRIBatch");

            rs.close();
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
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
            }//end finally try
        }//end try
    }
}