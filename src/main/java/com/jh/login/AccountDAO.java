package com.jh.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.jh.login.Account;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AccountDAO {

	public static void loginCheck(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		hs.setMaxInactiveInterval(10*60);
		
		Account a = (Account) hs.getAttribute("accountInfo");
		
		if(a == null) {
			request.setAttribute("loginPage", "login/login.jsp");
		}else {
			request.setAttribute("loginPage", "login/loginOK.jsp");
			
		}
	}	

	
public static void reg(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		
		
		
		try {
			con = DBManager.connect();
			String sql = "insert into joori_account values (?,?,?)";
			pstmt = con.prepareStatement(sql);
			
			String path = request.getSession().getServletContext().getRealPath("file");
			System.out.println(path);
			MultipartRequest mr = new MultipartRequest(request, path,
					31457280,"utf-8",new DefaultFileRenamePolicy());
						
			String name = mr.getParameter("name");
			String id = mr.getParameter("id");
			String pw = mr.getParameter("pw");

			
			
			
			System.out.println(id);
			System.out.println(pw);
			System.out.println(name);
	
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
	
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("��� ����");
				request.setAttribute("reg", "ȸ������ ����!");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
	}

public static void login(HttpServletRequest request) {
	
	String userID = request.getParameter("id");
	String userPW = request.getParameter("pw");
	
	
	//���� ����� ����Ǹ� ���� �Ƿ������Ű�, �ƴϸ� ���� ��������
	String idd = (String) request.getAttribute("idd");
	String pww = (String) request.getAttribute("pww");
	
	if (idd != null) {
		userID = idd;
		userPW = pww;
	}
	
	// 2.DB�� �� (���� ���� �ȵ�) - �������� ó��
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = DBManager.connect();
		String sql = "select * from joori_account where l_id = ?";
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, userID);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			String dbPW = rs.getString("l_pw");
			
			if (userPW.equals(dbPW)) {
				
				//���� �������ϱ� ���ļ� ������ 
				Account a = new Account();
				a.setName(rs.getString("l_name"));
				a.setId(rs.getString("l_id"));
				a.setPw(rs.getString("l_pw"));

				
				
				HttpSession hs = request.getSession();
				hs.setAttribute("accountInfo", a);
				hs.setMaxInactiveInterval(10);
			
				
				request.setAttribute("a",a);
				
				request.setAttribute("r", "�α��� ����!");
				
			}else {
				
				request.setAttribute("r", "��й�ȣ ����!");
		}
		}else {
			request.setAttribute("r", "�������� �ʴ� ȸ���Դϴ�.");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		DBManager.close(con, pstmt, rs);
	}
	
	
	
	
}

public static void logout(HttpServletRequest request) {
	// �α׾ƿ�
	// ������ ������.
	
	
	HttpSession hs = request.getSession();
	hs.setAttribute("accountInfo",null);
	
	
	
	
	
}

}
