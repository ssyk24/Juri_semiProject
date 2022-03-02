package com.dh.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/WatchaBestScenePagingC")
public class WatchaBestScenePagingC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.jh.login.AccountDAO.loginCheck(request);
		int p = Integer.parseInt(request.getParameter("p"));
		WatchaMainDAO.getWmdao().getAllBestScene(request);
		WatchaMainDAO.getWmdao().watchaBestScenePaging(p, request);
				
		request.setAttribute("contentPage", "watcha_jsp/watchaBestSceneBoard.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
