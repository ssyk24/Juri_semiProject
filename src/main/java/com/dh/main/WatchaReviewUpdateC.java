package com.dh.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

@WebServlet("/WatchaReviewUpdateC")
public class WatchaReviewUpdateC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		//WatchaMainDAO.getReview(request);
		WatchaMainDAO.getWmdao().getReview(request);
		request.setAttribute("contentPage", "watcha_jsp/watchaReviewUpdate.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		//WatchaMainDAO.updateReview(request);
		WatchaMainDAO.getWmdao().updateReview(request);
		//WatchaMainDAO.getAllReview(request);
		WatchaMainDAO.getWmdao().getAllReview(request);
		WatchaMainDAO.getWmdao().watchaReviewPaging(1, request);
		request.setAttribute("contentPage", "watcha_jsp/watchaReviewBoard.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
