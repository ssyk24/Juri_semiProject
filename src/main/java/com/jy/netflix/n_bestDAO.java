package com.jy.netflix;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.jh.login.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class n_bestDAO {
	
	private ArrayList<n_best> n_bestScenes;
	
	private static final n_bestDAO NRDAO = new n_bestDAO();
	
	public n_bestDAO() {
	}

	public static n_bestDAO getNrdao() {
		return NRDAO;
	}

	public void n_regBest(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = DBManager.connect();
			String sql = "insert into netflix_best values(netflix_best_seq.nextval, ?, ?, ?, ?, sysdate) ";
			pstmt = con.prepareStatement(sql);

			String path = request.getSession().getServletContext().getRealPath("img");
			System.out.println(path);
			MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());

			String n_writer = mr.getParameter("n_bestWWriter");
			String n_movietitle = mr.getParameter("n_bestWTitle");
			n_movietitle = n_movietitle.replace("\r\n", "<br>");
			String n_txt = mr.getParameter("n_bestWTxt");
			String n_img = mr.getFilesystemName("n_bestWFile");

			pstmt.setString(1, n_writer);
			pstmt.setString(2, n_movietitle);
			pstmt.setString(3, n_txt);
			pstmt.setString(4, n_img);

			System.out.println(n_writer);
			System.out.println(n_movietitle);
			System.out.println(n_txt);
			System.out.println(n_img);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("등록 성공");
			} else {
				System.out.println("등록 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 서버 문제!");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public void n_getAllBest(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			String sql = "select * from netflix_best order by n_date";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			n_bestScenes = new ArrayList<n_best>();

			n_best b = null;

			while (rs.next()) {
				b = new n_best();
				b.setN_no(rs.getInt("n_no"));
				b.setN_writer(rs.getString("n_writer"));
				b.setN_movietitle(rs.getString("n_movietitle"));
				b.setN_txt(rs.getString("n_txt"));
				b.setN_img(rs.getString("n_img"));
				b.setN_date(rs.getDate("n_date"));

				n_bestScenes.add(b);
			}

			request.setAttribute("n_bestScenes", n_bestScenes);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 서버 문제");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public void n_deleteBest(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBManager.connect();
			String sql = "delete from netflix_best where n_no = ?";
			pstmt = con.prepareStatement(sql);

			int n_no = Integer.parseInt(request.getParameter("n_no"));
			pstmt.setInt(1, n_no);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("삭제 성공!");
			} else {
				System.out.println("삭제 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB서버 문제");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public void n_editBest(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();

			String sql = "update netflix_best set n_writer = ?, n_movietitle = ?, n_txt = ?, n_img = ?, n_date = sysdate where n_no = ?";
			pstmt = con.prepareStatement(sql);

			String path = request.getSession().getServletContext().getRealPath("img");
			System.out.println(path);
			MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());
			
			String n_bestWWriter = mr.getParameter("n_bestWWriter");
			System.out.println(n_bestWWriter);
			
			String n_bestWTitle = mr.getParameter("n_bestWTitle");
			System.out.println(n_bestWTitle);

			String n_bestWTxt = mr.getParameter("n_bestWTxt");
			n_bestWTxt = n_bestWTxt.replace("\r\n", "<br>");
			System.out.println(n_bestWTxt);
			
			String n_bestWFile = mr.getFilesystemName("n_bestWFile");
			System.out.println(n_bestWFile);
			
			String n_no = mr.getParameter("n_no");
			System.out.println(n_no);
			
			pstmt.setString(1, n_bestWWriter);
			pstmt.setString(2, n_bestWTitle);

			pstmt.setString(3, n_bestWTxt);

			pstmt.setString(4, n_bestWFile);
			pstmt.setString(5, n_no);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공");
			} else {
				System.out.println("수정 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB서버 문제");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public void n_getBest(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();
			String sql = "select * from netflix_best where n_no = ?";
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, request.getParameter("n_no"));
			rs = pstmt.executeQuery();

			n_best b = null;

			if (rs.next()) {
				b = new n_best();
				b.setN_no(rs.getInt("n_no"));
				b.setN_writer(rs.getString("n_writer"));
				b.setN_movietitle(rs.getString("n_movietitle"));
				b.setN_txt(rs.getString("n_txt"));
				b.setN_img(rs.getString("n_img"));
				b.setN_date(rs.getDate("n_date"));

				request.setAttribute("n_bestScene", b);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("db서버문제");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public void n_searchBest(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String n_bSearchSelect = request.getParameter("n_bSearchSelect");
		String n_bestSearch = request.getParameter("n_bestSearch");
		
		try {
			
			con = DBManager.connect();
			
			
			if (n_bSearchSelect.equals("n_bSearchAll")) {
				String sql = "select * from netflix_best where (n_movietitle || n_txt) like '%'||?||'%'";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, n_bestSearch);
				
				System.out.println(n_bestSearch);
				
			} else if (n_bSearchSelect.equals("n_bSearchMovieTitle")) {
				String sql = "select * from netflix_best where n_movietitle like '%'||?||'%'";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, n_bestSearch);
				
				System.out.println(n_bestSearch);
				
			} else if (n_bSearchSelect.equals("n_bSearchStory")) {
				String sql = "select * from netflix_best where n_txt like '%'||?||'%'";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, n_bestSearch);
				
				System.out.println(n_bestSearch);
			}
			rs = pstmt.executeQuery();
			
			
			n_bestScenes = new ArrayList<n_best>();
			n_best n = null;
			
			while (rs.next()) {
				n = new n_best();
				n.setN_no(rs.getInt("n_no"));
				n.setN_writer(rs.getString("n_writer"));
				n.setN_movietitle(rs.getString("n_movietitle"));
				n.setN_txt(rs.getString("n_txt"));
				n.setN_img(rs.getString("n_img"));
				n.setN_date(rs.getDate("n_date"));
				
				n_bestScenes.add(n);
			}
			
			System.out.println(n_bestScenes.size());
			
			request.setAttribute("n_bestScenes", n_bestScenes);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB서버 문제");
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	
	public void n_pagingBest(int page, HttpServletRequest request) {
		
		request.setAttribute("curPageNo", page); //View에서 사용하기위해 setAttribute
		
		int cnt = 3; //한페이지당 보여줄 개수
		int total = n_bestScenes.size(); //총 데이터 개수
		
		// 총페이지수
		int pageCount = (int) Math.ceil((double)total / cnt);
		request.setAttribute("pageCount", pageCount); //View에서 사용
		
		//시작데이터
		int start = total - (cnt * (page- 1));
		
		//끝데이터
		int end = (page == pageCount) ? -1 : start- (3 + 1);
		
		//이제 명장면 3개를 가지고 올 것
		//명장면를 실어주고 
		ArrayList<n_best> items = new ArrayList<n_best>();
		
		for (int i = start-1; i > end; i--) {
			
			if(n_bestScenes.size()==0) {
				request.setAttribute("resultNone", "명장면이 없습니다😭");
			}else {
			items.add(n_bestScenes.get(i));
			}
		}
		
		request.setAttribute("n_bestScenes", items);
	}
	
	
	
	

}
