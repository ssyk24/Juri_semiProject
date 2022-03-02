package com.jh.wavve;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

/**
 * Servlet implementation class WavveBestRegC
 */
@WebServlet("/WavveBestRegC")
public class WavveBestRegC extends HttpServlet {
	
       
   
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "wavee/wavee_best_reg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		WavveBestDAO.bestReg(request);
		WavveBestDAO.getWbdao().getAllBest(request);
		WavveBestDAO.getWbdao().paging(1, request);
		request.setAttribute("contentPage", "wavee/wavee_best.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
