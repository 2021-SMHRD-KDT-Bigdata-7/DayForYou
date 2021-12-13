package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.49:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//작성 일자 메소드
	public String getReg_date() {
		String sql = "select now()";
		try {
			// 여러 개의 메소드가 사용되기 때문에 각각의 메소드끼리 데이터베이스 접근에 있어서
			// 서로 마찰이 일어나지 않고록 'PreparedStatement'는 각각의 메소드
			// 내에서 하나씩 추가하도록 한다.
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // 데이터베이스 오류
	}
	
	// 게시글 번호 부여 메소드
	public int getArticle_seq() {
		String sql = "select article_seq from tbi_nea order by article_seq desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; // 첫 번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	//글쓰기 메소드
	public int write(String article_subject, String m_id, String article_content) {
		String sql = "insert into tbi_nea values(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getArticle_seq()); // 게시글 번호
			pstmt.setString(2, article_subject); // 글 제목
			pstmt.setString(3,m_id); // 사용자ID
			pstmt.setString(4,getReg_date()); // 작성일자
			pstmt.setString(5,article_content); // 글 내용
			pstmt.setInt(6, 1); // 글의 유효번호
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1; // 데이터베이스 오류
	}
	
	// 게시클 리스트 메소드
	public ArrayList<BoardVO> getList(int article_seq){
		String sql = "select * from tbi_nea where article_seq < ? order by article_seq desc limit 10";
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getArticle_seq() - (article_seq - 1)*10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setArticle_seq(rs.getInt(1));
				vo.setArticle_subject(rs.getString(2));
				vo.setM_id(rs.getString(3));
				vo.setReg_date(rs.getString(4));
				vo.setArticle_content(rs.getString(5));
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	// 페이징 처리 메소드
	public boolean nextPage(int article_seq) {
		String sql = "select * from tbi_nea where article_seq < ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getArticle_seq() - (article_seq - 1)*10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
