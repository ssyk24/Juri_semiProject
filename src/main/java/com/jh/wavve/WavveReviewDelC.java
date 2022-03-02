package com.jh.wavve;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;


@WebServlet("/WavveReviewDelC")
public class WavveReviewDelC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		WavveReviewDAO.deleteReview(request);
		WavveReviewDAO.getWrdao().getAllReview(request);
		WavveReviewDAO.getWrdao().paging(1, request);
		request.setAttribute("contentPage", "wavee/wavee_review.jsp");	
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
