package com.jh.wavve;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.jh.login.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



public class WavveBestDAO {

private ArrayList<Best> bests;

private static final WavveBestDAO WBDAO = new WavveBestDAO();

public WavveBestDAO() {
	// TODO Auto-generated constructor stub
}


	
	
public static WavveBestDAO getWbdao() {
	return WBDAO;
}




public void paging(int page,HttpServletRequest request) {
		
		
		
		request.setAttribute("curPageNo", page);
			
			//전체페이지 수 계산
		int cnt = 3; //한페이지당 보여줄 개수
		int total = bests.size(); //총 데이터 개수
			
		int pageCount = (int)Math.ceil((double)total / cnt); 
		request.setAttribute("pageCount", pageCount);
			
		int start = total - (cnt * (page - 1));
			
		int end = (page == pageCount) ? -1 : start - (cnt + 1);	
			
			
		ArrayList<Best> items = new ArrayList<Best>();
		for (int i = start-1; i > end; i--) {
			items.add(bests.get(i));
		}
		
		request.setAttribute("bests", items);
		
		} 
	
	
	
	
	
	
	
	
	
	public static void bestReg(HttpServletRequest request) {
		Connection con =null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "insert into wavve_best values(wavve_best_seq.nextval,?,?,?,sysdate,?)";
			pstmt = con.prepareStatement(sql);

			
			String path = request.getSession().getServletContext().getRealPath("bestimg");
			int size = 30*1024*1024;
			System.out.println(path);
			MultipartRequest mr = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
			String title = mr.getParameter("title");
			String story = mr.getParameter("story");
			String img = mr.getFilesystemName("img");
			String writer = mr.getParameter("writer");
			
			System.out.println(title);
			System.out.println(img);
			System.out.println(story);
			System.out.println(writer);
			
			pstmt.setString(1, title);
			pstmt.setString(2, story);
			pstmt.setString(3, img);
			pstmt.setString(4, writer);
			
			if(pstmt.executeUpdate() == 1) {
				System.out.println("등록 성공");
				
			}
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

	public void getAllBest(HttpServletRequest request) {
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from wavve_best order by wb_date ";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			bests = new ArrayList<Best>();
			Best b = null;
			while (rs.next()) {
				//bean을 떠올려
				b = new Best();
				b.setB_no(rs.getInt("wb_no"));
				b.setB_name(rs.getString("wb_title"));
				b.setB_txt(rs.getString("wb_txt"));
				b.setB_img(rs.getString("wb_img"));
				b.setB_writer(rs.getString("wb_writer"));
				b.setDate(rs.getDate("wb_date"));
				
				bests.add(b);
				
			}
			request.setAttribute("bests", bests);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static void bestDel(HttpServletRequest request) {
		
		Connection con =null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "delete wavve_best where wb_no = ?";
			pstmt = con.prepareStatement(sql);

			String no = request.getParameter("no");

			
			
			System.out.println(no);
			
			pstmt.setString(1, no);
			
			if(pstmt.executeUpdate() == 1) {
				System.out.println("삭제 성공");
				request.setAttribute("r", "삭제 성공!");
			}
			else {
				request.setAttribute("r", "삭제 실패!");
			}
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

}
