package com.js.disney;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.jh.login.DBManager;

public class DisneyRecommandDAO {
	
private ArrayList<DisneyReview> reviews;
	
	private static final DisneyRecommandDAO DRDAO = new DisneyRecommandDAO();
	
	private DisneyRecommandDAO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public static DisneyRecommandDAO getDrdao() {
		return DRDAO;
	}
	
	
	
	
	public void paging(int page, HttpServletRequest request) {
		
		request.setAttribute("curPageNo", page);
		
		// 전체 페이지 수 계산
				int cnt = 10; // 한 페이지 당 보여줄 데이터 수
				int total = reviews.size(); // 전체 데이터 개수
				
				
				if (total != 0) {
					
				
				int pageCount = (int) Math.ceil((double)total / cnt);
				request.setAttribute("pageCount", pageCount);
				
				int start =  (page - 1) * cnt + 1;
				int end = (page == pageCount) ? total : start + cnt - 1;
				
//				// 페이지 블록 - jsp에 식
				int totalBlcok = pageCount / 10;
				int curBlock = (page - 1) / 10 + 1;
				int startBlcok = (curBlock - 1) * 10 + 1;
				int endBlcok = startBlcok + 10 - 1;
				
					request.setAttribute("curBlock", curBlock);
					request.setAttribute("startBlcok", startBlcok);
					request.setAttribute("endBlcok", endBlcok);
//		
				ArrayList<DisneyReview> items = new ArrayList<DisneyReview>();
				
				// 배열은 0부터 시작. 0을 시작으로 맞춤.
				for (int i = start - 1; i < end; i++) {
					
//					System.out.println(movies.get(i));
//					System.out.println(i);
					
					items.add(reviews.get(i));
					
				}
				
					request.setAttribute("reviews", items);

				
				}
				
				
	}
	
	

	public void recomandDetail(HttpServletRequest request) {
		
		request.setAttribute("val", request.getParameter("val"));
		
	}

	
	public void toReview(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from disney_review where d_movietitle like '%'||?||'%' order by d_date desc";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, request.getParameter("title"));
			
			rs = pstmt.executeQuery();
			
			reviews = new ArrayList<DisneyReview>();
			DisneyReview r = null;
			
			while (rs.next()) {
				r = new DisneyReview();
				r.setNo(rs.getInt("d_no"));
				r.setGenre(rs.getString("d_genre"));
				r.setTitle(rs.getString("d_title"));
				r.setWriter(rs.getString("d_writer"));
				r.setDate(rs.getDate("d_date"));
				r.setMovie_title(rs.getString("d_movietitle"));
				r.setScore(rs.getString("d_score"));
				
				reviews.add(r);
			}
			
				request.setAttribute("reviews", reviews);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	
	
	
}
