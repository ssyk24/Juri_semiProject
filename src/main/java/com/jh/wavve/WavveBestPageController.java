package com.jh.wavve;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;


@WebServlet("/WavveBestPageController")
public class WavveBestPageController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int p = Integer.parseInt(request.getParameter("p"));
		
		AccountDAO.loginCheck(request);
		WavveBestDAO.getWbdao().getAllBest(request);
		WavveBestDAO.getWbdao().paging(p, request);
		
		request.setAttribute("contentPage", "wavee/wavee_best.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
