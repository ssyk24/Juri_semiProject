package com.dh.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

@WebServlet("/WatchaReviewRegC")
public class WatchaReviewRegC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		//WatchaMainDAO.reviewReg(request);
		WatchaMainDAO.getWmdao().reviewReg(request);
		//WatchaMainDAO.getAllReview(request);
		WatchaMainDAO.getWmdao().getAllReview(request);
		WatchaMainDAO.getWmdao().watchaReviewPaging(1, request);
		request.setAttribute("contentPage", "watcha_jsp/watchaReviewBoard.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
