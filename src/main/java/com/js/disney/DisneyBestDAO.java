package com.js.disney;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.jh.login.Account;
import com.jh.login.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class DisneyBestDAO {
	
	private ArrayList<DisneyBest> scenes;
	
	private static final DisneyBestDAO DBDAO = new DisneyBestDAO();
	
	private DisneyBestDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static DisneyBestDAO getDbdao() {
		return DBDAO;
	}

	

	public void paging(int page, HttpServletRequest request) {
		
		request.setAttribute("curPageNo", page);
		
				// 전체 페이지 수 계산
				int cnt = 5; // 한 페이지 당 보여줄 데이터 수
				int total = scenes.size(); // 전체 데이터 개수
				
				int pageCount = (int) Math.ceil((double)total / cnt);
				request.setAttribute("pageCount", pageCount);
				
				int start =  (page - 1) * cnt + 1;
				
				int end = (page == pageCount) ? total : start + cnt - 1;
				
				ArrayList<DisneyBest> items = new ArrayList<DisneyBest>();
				
				// 배열은 0부터 시작. 0을 시작으로 맞춤.
				for (int i = start - 1; i < end; i++) {
					
//					System.out.println(movies.get(i));
//					System.out.println(i);
					
					items.add(scenes.get(i));
				}
				
				request.setAttribute("scenes", items);
		
		
	}
	
	

	public void regBest(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into disney_best values (disney_best_seq.nextval, ?, ?, ?, ?, sysdate)";
		
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String path = request.getSession().getServletContext().getRealPath("image");
//			System.out.println(path);
			
			MultipartRequest mr = new MultipartRequest(request, path, 32*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			
			pstmt.setString(1, mr.getParameter("title"));
			pstmt.setString(2, mr.getFilesystemName("scene"));
			pstmt.setString(3, mr.getParameter("text"));
			pstmt.setString(4, a.getId());
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("등록 성공");
			} else {
				System.out.println("등록 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB서버 에러");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}



	public void showBest(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from disney_best order by d_date desc";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			scenes = new ArrayList<DisneyBest>();
			
			DisneyBest b = null;
			
			while (rs.next()) {
				b = new DisneyBest();
				
				b.setNo(rs.getInt("d_no"));
				b.setTitle(rs.getString("d_title"));
				b.setScene(rs.getString("d_scene"));
				b.setText(rs.getString("d_text"));
				b.setWriter(rs.getString("d_writer"));
				b.setDate(rs.getDate("d_date"));
				
				scenes.add(b);
			}
			
			request.setAttribute("scenes", scenes);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}


	public void deleteBest(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete disney_best where d_no = ?";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, request.getParameter("no"));
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("삭제 성공");
			} else {
				System.out.println("삭제 성공");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB서버 에러");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}
	

	public void getBest(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from disney_best where d_no = ?";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, request.getParameter("no"));
			
			rs = pstmt.executeQuery();
			
			DisneyBest b = null;
			
			if (rs.next()) {
				b = new DisneyBest();
				b.setDate(rs.getDate("d_date"));
				b.setNo(rs.getInt("d_no"));
				b.setScene(rs.getString("d_scene"));
				b.setText(rs.getString("d_text"));
				b.setWriter(rs.getString("d_writer"));
				b.setTitle(rs.getString("d_title"));
				
				request.setAttribute("b", b);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
	

	public void updateBest(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		 
		String sql = "update disney_best set d_title = ?, d_scene = ?, d_text = ?, d_date = sysdate where d_no = ?";
		
		try {
			
			request.setCharacterEncoding("UTF-8");
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String path = request.getSession().getServletContext().getRealPath("image");
			System.out.println(path);
			
			MultipartRequest mr = new MultipartRequest(request, path, 32*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			
			pstmt.setString(1, mr.getParameter("title"));
			
			if (mr.getFilesystemName("scene2") == null) {
				pstmt.setString(2, mr.getParameter("scene1"));
			} else {
				pstmt.setString(2, mr.getFilesystemName("scene2"));
				String delFile = path + "/" +  mr.getParameter("scene1");
				java.io.File f = new java.io.File(delFile);
				f.delete();
			}
			
			pstmt.setString(3, mr.getParameter("text"));
			pstmt.setString(4, mr.getParameter("no"));
			
//			System.out.println(mr.getParameter("title"));
//			System.out.println(mr.getParameter("scene"));
//			System.out.println(mr.getParameter("text"));
//			System.out.println(mr.getParameter("no"));
			
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공");
			} else {
				System.out.println("수정 실패");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
		
	}
	
	
}
