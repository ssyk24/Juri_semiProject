package com.jy.netflix;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jh.login.AccountDAO;

@WebServlet("/n_recommendC")
public class n_recommendC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//일을 시켜야한다.
		//무슨일? DB를 연결해서 리뷰게시판과 추천작을 연동하여 작품 등수 실시간 변화 기능구현
		//로그인 후 게시물 관람가능한 기능
		AccountDAO.loginCheck(request);
		n_recommendDAO.allMovie(request);
		request.setAttribute("contentPage", "netflix/n_cate_recommend.jsp" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
