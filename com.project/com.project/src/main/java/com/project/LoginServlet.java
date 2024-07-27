package com.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Types;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String electricityId = request.getParameter("electricity_id");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        Connection conn = null;
        CallableStatement stmt = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            String jdbcURL = "jdbc:mysql://localhost:3306/project";
            String dbUser = "root";
            String dbPassword = "Balu@123"; 
            conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            if ("user".equals(role)) {
                stmt = conn.prepareCall("{call UserLoginProcedure(?, ?, ?)}");
            } else if ("admin".equals(role)) {
                stmt = conn.prepareCall("{call AdminLoginProcedure(?, ?, ?)}");
            } else {
                throw new ServletException("Invalid role specified.");
            }
            stmt.setString(1, electricityId);
            stmt.setString(2, password);
            stmt.registerOutParameter(3, Types.INTEGER);
            stmt.execute();
            int result_count = stmt.getInt(3);

            if (result_count == 1) {
                // Redirect based on the role
                if ("admin".equals(role)) {
                    response.sendRedirect("adminhome.jsp");
                } else {
                    response.sendRedirect("home.jsp");
                }
            } else {
                // Stay on the login page and show an error message
                response.setContentType("text/html");
                try (PrintWriter pw = response.getWriter()) {
                    pw.print("<p style='color:red;'>Login Failed. Please check your credentials.</p>");
                    pw.print("<a href='login.jsp'>Back to Login</a>");
                }
            }
        } catch (ClassNotFoundException e) {
            throw new ServletException("JDBC Driver not found: " + e.getMessage(), e);
        } catch (SQLException e) {
            throw new ServletException("Database error: " + e.getMessage(), e);
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new ServletException("Error closing database resources: " + e.getMessage(), e);
            }
        }
    }
}
