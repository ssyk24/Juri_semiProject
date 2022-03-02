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
				System.out.println("등록 성공");
				request.setAttribute("reg", "회원가입 성공!");
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
	
	
	//업뎃 기능이 수행되면 값이 실려있을거고, 아니면 값이 없을꺼임
	String idd = (String) request.getAttribute("idd");
	String pww = (String) request.getAttribute("pww");
	
	if (idd != null) {
		userID = idd;
		userPW = pww;
	}
	
	// 2.DB랑 비교 (아직 개발 안됨) - 가데이터 처리
	
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
				
				//값이 여러개니까 뭉쳐서 보내자 
				Account a = new Account();
				a.setName(rs.getString("l_name"));
				a.setId(rs.getString("l_id"));
				a.setPw(rs.getString("l_pw"));

				
				
				HttpSession hs = request.getSession();
				hs.setAttribute("accountInfo", a);
				hs.setMaxInactiveInterval(10);
			
				
				request.setAttribute("a",a);
				
				request.setAttribute("r", "로그인 성공!");
				
			}else {
				
				request.setAttribute("r", "비밀번호 오류!");
		}
		}else {
			request.setAttribute("r", "존재하지 않는 회원입니다.");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		DBManager.close(con, pstmt, rs);
	}
	
	
	
	
}

public static void logout(HttpServletRequest request) {
	// 로그아웃
	// 세션을 죽이자.
	
	
	HttpSession hs = request.getSession();
	hs.setAttribute("accountInfo",null);
	
	
	
	
	
}

}
