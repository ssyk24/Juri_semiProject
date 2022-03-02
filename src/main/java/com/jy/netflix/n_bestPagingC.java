package com.jy.netflix;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

@WebServlet("/n_bestPagingC")
public class n_bestPagingC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		AccountDAO.loginCheck(request);
		
		int n_p = Integer.parseInt(request.getParameter("n_p"));
		
		n_bestDAO n_b = n_bestDAO.getNrdao();
		n_b.n_getAllBest(request);
		n_b.n_pagingBest(n_p, request);
		
		request.setAttribute("contentPage", "netflix/n_cate_best.jsp" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
	}

}
