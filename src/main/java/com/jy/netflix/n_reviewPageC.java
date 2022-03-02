package com.jy.netflix;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

@WebServlet("/n_reviewPageC")
public class n_reviewPageC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
		
		int n_p = Integer.parseInt(request.getParameter("n_p"));
		
		n_reviewDAO n = n_reviewDAO.getNrdao();
		n.n_reviewAll(request);
		n.n_paging(n_p, request);
		
		request.setAttribute("contentPage", "netflix/n_cate_review.jsp" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
