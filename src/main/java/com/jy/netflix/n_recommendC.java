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
	
		//���� ���Ѿ��Ѵ�.
		//������? DB�� �����ؼ� ����Խ��ǰ� ��õ���� �����Ͽ� ��ǰ ��� �ǽð� ��ȭ ��ɱ���
		//�α��� �� �Խù� ���������� ���
		AccountDAO.loginCheck(request);
		n_recommendDAO.allMovie(request);
		request.setAttribute("contentPage", "netflix/n_cate_recommend.jsp" );
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
