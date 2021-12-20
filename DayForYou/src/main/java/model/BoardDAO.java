package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {

	String sql = "";
	int cnt = 0;

	Connection conn = null;
	PreparedStatement psmt = null;
	BoardVO vo = null;
	ResultSet rs = null;

	public void connection() {
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

	// 게시물 목록(리스트)
	public String getReg_date() {
		connection();
		try {
			// 여러 개의 메소드가 사용되기 때문에 각각의 메소드끼리 데이터베이스 접근에 있어서
			// 서로 마찰이 일어나지 않고록 'PreparedStatement'는 각각의 메소드
			// 내에서 하나씩 추가하도록 한다.
			sql = "select * from tbl_nea order by article_seq desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if (rs.next() == true) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // 데이터베이스 오류
	}

	// 게시글 내용 작성 메소드
	public int Boardwrite(int article_seq, String article_kind, String article_subject, String article_content,
			String reg_date, String m_id, String article_file1, String article_file2, String article_file3,
			String article_file4, String article_file5, String article_pwd, int article_count) {
		connection();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫 번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	// =========================================================================================

	// 글쓰기 메소드
	public int write(String article_kind, String article_subject, String article_content, String m_id,
			String article_file1, String article_file2, String article_file3, String article_file4,
			String article_file5, String article_pwd, int article_count) {
		connection();
		try {

			sql = "insert into tbl_nea values(TBL_NEA_SEQ.nextval,?,?,?,sysdate,?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, article_kind);
			psmt.setString(2, article_subject);
			psmt.setString(3, article_content);

			psmt.setString(4, m_id);
			psmt.setString(5, article_file1);
			psmt.setString(6, article_file2);
			psmt.setString(7, article_file3);
			psmt.setString(8, article_file4);
			psmt.setString(9, article_file5);
			psmt.setString(10, article_pwd);
			psmt.setInt(11, article_count);

//			psmt.setInt(5, 1); // 글 유효번호	

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt; // 데이터베이스 오류
	}

	// 글 비밀번호 가져오는 메소드
	public String getPassword(int article_seq) {
		connection();
		String sql = "select article_pwd from tbl_nea where article_seq=?";
		String pw = "";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, article_seq);
			rs = psmt.executeQuery();

			if (rs.next()) {
				pw = rs.getString(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return pw;
	}

	// 글 수정하는 메소드
	public int updateBoard(int article_seq, String m_id, String article_pwd, String article_subject,
			String article_kind, String article_content) {
		int cnt = 0;
		connection();

		sql = "update tbl_nea set m_id=?, article_subject=?, article_content=? where article_seq=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, m_id);
			psmt.setString(2, article_subject);
			psmt.setString(3, article_content);
			psmt.setInt(4, article_seq);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	// 글 수정 전 확인하는 메소드
	public int selectupdate(int article_seq) {

		int cnt = 0;
		connection();

		sql = "select * from tbl_nea where article_seq=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, article_seq);

			rs = psmt.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	//게시글 삭제 메소드
	
	public int deleteBoard(int article_seq) {
		
		connection();
		try {
		sql="delete from tbl_nea where article_seq=?";
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, article_seq);
		cnt = psmt.executeUpdate();
		
		if(rs.next()) {
			String sql2 = "delete from tbl_comment where article_seq=?";
	        psmt = conn.prepareStatement(sql2); 
	        psmt.setInt(1, article_seq);
	        int tt = psmt.executeUpdate();
	       
		}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
	}
	// 보드 하나 출력
	public BoardVO getBoard(int article_seq) {
		BoardVO bvo = null;
		
		connection();
		try {
		sql = "select * from tbl_nea where article_seq = ?";
			
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setInt(1,article_seq);

		rs = psmt.executeQuery();
		if(rs.next()) {
			bvo = new BoardVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
					rs.getString(5), rs.getString(6), rs.getString(7),rs.getString(8),
					rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getInt(13));
	        String sql2 = "update tbl_nea set article_count = article_count +1  where article_seq=?";
	        psmt = conn.prepareStatement(sql2); 
	        psmt.setInt(1, article_seq);
	        int tt = psmt.executeUpdate();
	       
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}				
		return bvo;
	}
	
	// 모든 보드 출력
	@SuppressWarnings("null")
	public ArrayList<BoardVO> getAllBoard(){
		ArrayList<BoardVO> boards = null;
		
		connection();
		
		
		try {
			boards = new ArrayList<>();
			String sql = "select * from tbl_nea order by article_seq desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
								
			while(rs.next()){		
	
			vo = new BoardVO(rs.getInt("article_seq"),
					rs.getString("article_kind"), 
					rs.getString("article_subject"),
					rs.getString("article_content"),
					rs.getString("reg_date"),
					rs.getString("m_id"),
					rs.getString("article_file1"),
					rs.getString("article_file2"),
					rs.getString("article_file3"),
					rs.getString("article_file4"),
					rs.getString("article_file5"),
					rs.getString("article_pwd"),
					rs.getInt("article_count"));
						boards.add(vo);
			
			} 
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return boards;
	}

//===========================================================================
//	public ArrayList<BoardVO> (int article_seq) {
//		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
//
//		try {
//
//			connection();
//			
//			// 3. sql문 준비
//			String sql = "select * from tbl_nea where article_seq=?";
//
//			psmt = conn.prepareStatement(sql);
//
//			// 5. 실행
//			psmt.setInt(1, article_seq);
//			rs = psmt.executeQuery();
//
//			// 로그인때에는 rs에 딱 1행만 있었음 --> if문 사용
//			// 모든 회원정보를 가져옴 --> 몇번 반복해야 될 지 모름
//			while (rs.next() == true) {
//
//				int article_seq = rs.getInt(1);
//				String m_id = rs.getString(2);
//				String article_pwd = rs.getString(3);
//				String article_subject = rs.getString(4);
//				String article_kind = rs.getString(5);
//				String article_content = rs.getString(6);
//
//				// select문의 결과를 묶어서 VO객체로 만들기
//				vo = new BoardVO(article_seq, m_id, article_pwd, article_subject,article_kind,article_content);
//				// rs로부터 가져온 한 행의 정보를 ArrayList에 추가
//				list.add(vo);
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			// 6. 연결 닫아주기
//			close();
//		}
//		return list;
//	}

	public BoardVO getBoardInformation(int article_seq) {

		connection();
		sql = "select * from tbl_nea where article_seq=?";
		try {
			PreparedStatement psmt = conn.prepareStatement(sql);

			psmt.setInt(1, article_seq);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				int dbArticle_seq = rs.getInt("article_seq");
				String dbArticle_kind = rs.getString("article_kind");
				String dbArticle_subject = rs.getString("article_subject");
				String dbArticle_content = rs.getString("article_content");
				String dbM_id = rs.getString("m_id");
				String dbArticle_pwd = rs.getString("article_pwd");

				vo = new BoardVO(dbArticle_seq, dbArticle_kind, dbArticle_subject, dbArticle_content, dbM_id,
						dbArticle_pwd);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return vo;
	}

}
