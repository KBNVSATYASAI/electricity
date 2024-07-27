package com.project;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserRegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
      
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Fullname = request.getParameter("fullname");
        String ElectricID = request.getParameter("ElectricityID");
        String password = request.getParameter("password");
        long contact = Long.parseLong(request.getParameter("contact"));
        String address = request.getParameter("address");
        Connection conn = null;
        CallableStatement stmtUser = null;
        CallableStatement stmtBilling = null;
        
        try {
            String jdbcURL = "jdbc:mysql://localhost:3306/project";
            String dbUser = "root";
            String dbPassword = "Balu@123"; 
            conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            
            // Start transaction
            conn.setAutoCommit(false);
            
            // Insert into user_table
            stmtUser = conn.prepareCall("INSERT INTO user_table VALUES (?, ?, ?, ?, ?)");
            stmtUser.setString(1, Fullname);
            stmtUser.setString(2, ElectricID);
            stmtUser.setString(3, password);
            stmtUser.setLong(4, contact);
            stmtUser.setString(5, address);
            stmtUser.executeUpdate();
            
            // Insert into billing_table
            stmtBilling = conn.prepareCall("INSERT INTO billing VALUES (?, ?, ?)");
            stmtBilling.setString(1, ElectricID);
            stmtBilling.setString(2, Fullname);
            stmtBilling.setDouble(3, 0.0);
            stmtBilling.executeUpdate();
            
            // Commit transaction
            conn.commit();
            
            request.setAttribute("message", "Registration successful!");
        } catch (SQLException e) {
            try {
                if (conn != null) {
                    conn.rollback(); // Rollback transaction on error
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            request.setAttribute("message", "Database error: " + e.getMessage());
        } finally {
            try {
                if (stmtUser != null) {
                    stmtUser.close();
                }
                if (stmtBilling != null) {
                    stmtBilling.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
        dispatcher.forward(request, response);
    }
}






/*
package com.project;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserRegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
      
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Fullname = request.getParameter("fullname");
        String ElectricID = request.getParameter("ElectricityID");
        String password = request.getParameter("password");
        long contact = Long.parseLong(request.getParameter("contact"));
        String address = request.getParameter("address");
        Connection conn = null;
        CallableStatement stmtUser = null;
        CallableStatement stmtBilling = null;
        
        try {
            String jdbcURL = "jdbc:mysql://localhost:3306/project";
            String dbUser = "root";
            String dbPassword = "56105610"; 
            conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            
            // Start transaction
            conn.setAutoCommit(false);
            
            // Insert into user_table
            stmtUser = conn.prepareCall("INSERT INTO user_table VALUES (?, ?, ?, ?, ?)");
            stmtUser.setString(1, Fullname);
            stmtUser.setString(2, ElectricID);
            stmtUser.setString(3, password);
            stmtUser.setLong(4, contact);
            stmtUser.setString(5, address);
            stmtUser.executeUpdate();
            
            // Insert into billing_table
            stmtBilling = conn.prepareCall("INSERT INTO billing VALUES (?, ?, ?)");
            stmtBilling.setString(1, ElectricID);
            stmtBilling.setString(2, Fullname);
            stmtBilling.setDouble(3, 0.0);
            stmtBilling.executeUpdate();
            
            // Commit transaction
            conn.commit();
            
            request.setAttribute("message", "Registration successful!");
        } catch (SQLException e) {
            try {
                if (conn != null) {
                    conn.rollback(); // Rollback transaction on error
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            request.setAttribute("message", "Database error: " + e.getMessage());
        } finally {
            try {
                if (stmtUser != null) {
                    stmtUser.close();
                }
                if (stmtBilling != null) {
                    stmtBilling.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
        dispatcher.forward(request, response);
    }
}*/