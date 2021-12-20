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

	// �Խù� ���(����Ʈ)
	public String getReg_date() {
		connection();
		try {
			// ���� ���� �޼ҵ尡 ���Ǳ� ������ ������ �޼ҵ峢�� �����ͺ��̽� ���ٿ� �־
			// ���� ������ �Ͼ�� �ʰ�� 'PreparedStatement'�� ������ �޼ҵ�
			// ������ �ϳ��� �߰��ϵ��� �Ѵ�.
			sql = "select * from tbl_nea order by article_seq desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if (rs.next() == true) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // �����ͺ��̽� ����
	}

	// �Խñ� ���� �ۼ� �޼ҵ�
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
			return 1; // ù ��° �Խù��� ���
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}
	// =========================================================================================

	// �۾��� �޼ҵ�
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

//			psmt.setInt(5, 1); // �� ��ȿ��ȣ	

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt; // �����ͺ��̽� ����
	}

	// �� ��й�ȣ �������� �޼ҵ�
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

	// �� �����ϴ� �޼ҵ�
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

	// �� ���� �� Ȯ���ϴ� �޼ҵ�
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
	
	//�Խñ� ���� �޼ҵ�
	
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
	// ���� �ϳ� ���
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
	
	// ��� ���� ���
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
//			// 3. sql�� �غ�
//			String sql = "select * from tbl_nea where article_seq=?";
//
//			psmt = conn.prepareStatement(sql);
//
//			// 5. ����
//			psmt.setInt(1, article_seq);
//			rs = psmt.executeQuery();
//
//			// �α��ζ����� rs�� �� 1�ุ �־��� --> if�� ���
//			// ��� ȸ�������� ������ --> ��� �ݺ��ؾ� �� �� ��
//			while (rs.next() == true) {
//
//				int article_seq = rs.getInt(1);
//				String m_id = rs.getString(2);
//				String article_pwd = rs.getString(3);
//				String article_subject = rs.getString(4);
//				String article_kind = rs.getString(5);
//				String article_content = rs.getString(6);
//
//				// select���� ����� ��� VO��ü�� �����
//				vo = new BoardVO(article_seq, m_id, article_pwd, article_subject,article_kind,article_content);
//				// rs�κ��� ������ �� ���� ������ ArrayList�� �߰�
//				list.add(vo);
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			// 6. ���� �ݾ��ֱ�
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
