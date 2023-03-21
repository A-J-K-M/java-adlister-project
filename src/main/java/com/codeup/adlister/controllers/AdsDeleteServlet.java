package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.ListAdsDao;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ads/delete")
public class AdsDeleteServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get the ID of the ad to be deleted from the request parameter
        int adId = Integer.parseInt(request.getParameter("adId"));

        // Delete the ad from the database or storage
        boolean isDeleted = DaoFactory.deleteAd(adId); // Assuming AdDAO is your data access object class

        // Redirect the user to the ads page with a success or error message
        if (isDeleted) {
            response.sendRedirect(request.getContextPath() + "/ads?success=Ad+deleted+successfully");
        } else {
            response.sendRedirect(request.getContextPath() + "/ads?error=Failed+to+delete+ad");
        }
    }


    }





