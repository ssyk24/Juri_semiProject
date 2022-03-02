package com.dh.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/WatchaBestSceneDelC")
public class WatchaBestSceneDelC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.jh.login.AccountDAO.loginCheck(request);
		//WatchaMainDAO.bestSceneDel(request);
		//WatchaMainDAO.getAllBestScene(request);
		WatchaMainDAO.getWmdao().bestSceneDel(request);
		WatchaMainDAO.getWmdao().getAllBestScene(request);
		WatchaMainDAO.getWmdao().watchaBestScenePaging(1, request);
		
		
	request.setAttribute("contentPage","watcha_jsp/watchaBestSceneBoard.jsp");
	request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
