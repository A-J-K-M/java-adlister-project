package com.codeup.adlister.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteUser")
public class DeleteUserServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get the user id from the request parameter
        int userId = Integer.parseInt(request.getParameter("username"));

        // delete the user from the database
        deleteUserFromDatabase(userId);

        request.getRequestDispatcher("/WEB-INF/login.jsp")
                .forward(request, response);

    }

    private void deleteUserFromDatabase(int userId) {
        String jdbcUrl = "jdbc:mysql://localhost/adlister_project_db";


        try {
            Connection connection = DriverManager.getConnection(jdbcUrl , "root", "codeup");

            // create a prepared statement to delete the user with the given id
            PreparedStatement ps = connection.prepareStatement("DELETE FROM users WHERE id = ?");
            ps.setInt(1, userId);

            // execute the delete statement
            ps.executeUpdate();

            // close the prepared statement and database connection
            ps.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
