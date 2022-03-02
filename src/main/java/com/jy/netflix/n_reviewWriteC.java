package com.jy.netflix;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

@WebServlet("/n_reviewWriteC")
public class n_reviewWriteC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
		
		
		request.setAttribute("contentPage", "netflix/n_cate_reviewWrite.jsp" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
		
		n_reviewDAO.getNrdao().n_regReview(request);
		
		n_reviewDAO.getNrdao().n_reviewAll(request);
		
		n_reviewDAO.getNrdao().n_paging(1, request);
		
		request.setAttribute("contentPage", "netflix/n_cate_review.jsp" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	
	
	}

}
