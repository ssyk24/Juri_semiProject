package com.js.disney;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

@WebServlet("/DisneyReviewRegC")
public class DisneyReviewRegC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "disney_jsp/disney_review_reg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		AccountDAO.loginCheck(request);
		DisneyReviewDAO.getDrdao().regReview(request);
		DisneyReviewDAO.getDrdao().showReview(request);
		DisneyReviewDAO.getDrdao().paging(1, request);
		request.setAttribute("contentPage", "disney_jsp/disney_review.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
