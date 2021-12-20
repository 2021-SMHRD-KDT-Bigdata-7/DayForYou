package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CommentDAO {
	
	String sql = "";
	int cnt = 0;

	Connection conn = null;
	PreparedStatement psmt = null;
	CommentVO cvo = null;
	ResultSet rs = null;

	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_2_2_1215";
			String dbpw = "smhrd2";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int Commentwrite(int comment_num, int article_seq, String m_id, String comment_date, String comment_content) {
		connection();
		try {

			sql = "insert into tbl_comment values(TBL_COMMENT_SEQ.nextval,?,?,sysdate,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, article_seq);
			psmt.setString(2, m_id);
		

			psmt.setString(3, comment_content);
		

//			psmt.setInt(5, 1); // 글 유효번호	

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt; // 데이터베이스 오류
	}
	// 시퀀스 불러와서 댓글에 넣기
	public CommentVO getComment(int article_seq) {
		
		
		connection();
		try {
		sql = "select * from tbl_comment where article_seq = ?";
			
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setInt(1,article_seq);

		rs = psmt.executeQuery();
		if(rs.next()) {
			cvo = new CommentVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
					 rs.getString(6));
	        String sql2 = "update tbl_comment set article_count = article_count +1  where article_seq=?";
	        psmt = conn.prepareStatement(sql2); 
	        psmt.setInt(1, article_seq);
	        int tt = psmt.executeUpdate();
	       
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}				
		return cvo;
	}
	
	// 모든 댓글 출력
	@SuppressWarnings("null")
	public ArrayList<CommentVO> getAllComment(int article_seq){
		ArrayList<CommentVO> comments = null;
		
		connection();
		
		
		try {
			comments = new ArrayList<>();
			String sql = "select * from tbl_comment where article_seq = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,article_seq);
			rs = psmt.executeQuery();
								
			while(rs.next()){		
	
			cvo = new CommentVO(rs.getInt("comment_num"),
					rs.getInt("article_seq"), 
					rs.getString("m_id"), 
					rs.getString("comment_date"),
					
					rs.getString("comment_content"));
						comments.add(cvo);
			} 
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return comments;
	}
}
