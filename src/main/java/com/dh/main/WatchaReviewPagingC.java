package com.dh.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

@WebServlet("/WatchaReviewPagingC")
public class WatchaReviewPagingC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		int p = Integer.parseInt(request.getParameter("p"));
		WatchaMainDAO.getWmdao().getAllReview(request);
		WatchaMainDAO.getWmdao().watchaReviewPaging(p, request);
				
		request.setAttribute("contentPage", "watcha_jsp/watchaReviewBoard.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
