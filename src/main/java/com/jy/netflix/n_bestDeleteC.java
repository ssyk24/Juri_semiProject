package com.jy.netflix;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

@WebServlet("/n_bestDeleteC")
public class n_bestDeleteC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
		
		n_bestDAO.getNrdao().n_deleteBest(request);
		n_bestDAO.getNrdao().n_getAllBest(request);
		n_bestDAO.getNrdao().n_pagingBest(1, request);
		
		request.setAttribute("contentPage", "netflix/n_cate_best.jsp" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
