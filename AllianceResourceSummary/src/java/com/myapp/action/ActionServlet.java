/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.action;

import java.io.IOException;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.myapp.data.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Michael
 */
public class ActionServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

    
    public ActionServlet() {
        // TODO Auto-generated constructor stub
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Database database = new Database();
        Employee employee = new Employee();
        String json=null;
        try {
            database.dbConnect();
            json = new Gson().toJson(employee.getEmployeeInfo('1'));
            response.setContentType("application/json");  
            response.setCharacterEncoding("UTF-8"); 
            response.getWriter().write(json); 
                 
        } catch (SQLException ex) {
            Logger.getLogger(ActionServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ActionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
 }

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request, response);
    }

}