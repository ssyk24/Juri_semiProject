package com.jy.netflix;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;
@WebServlet("/n_reviewEditC")
public class n_reviewEditC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
		
		n_reviewDAO.getNrdao().n_getreview(request);
		
		request.setAttribute("contentPage", "netflix/n_cate_reviewEdit.jsp" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
	
		n_reviewDAO.getNrdao().n_editReview(request);
		
		n_reviewDAO.getNrdao().n_getreview(request);
		
		n_reviewDAO.getNrdao().n_paging(1, request);
		
		
		request.setAttribute("contentPage", "netflix/n_cate_reviewWriteDetail.jsp" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

}
