package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	
	private Connection conn;
	private ResultSet rs;
	PreparedStatement psmt = null;
	
	int cnt = 0;
	public void BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.49:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			
		}
	}
	
	//�ۼ� ���� �޼ҵ�
	public String getReg_date() {
		String sql = "select now()";
		try {
			// ���� ���� �޼ҵ尡 ���Ǳ� ������ ������ �޼ҵ峢�� �����ͺ��̽� ���ٿ� �־
			// ���� ������ �Ͼ�� �ʰ�� 'PreparedStatement'�� ������ �޼ҵ�
			// ������ �ϳ��� �߰��ϵ��� �Ѵ�.
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // �����ͺ��̽� ����
	}
	
	// �Խñ� ��ȣ �ο� �޼ҵ�
	public int getArticle_seq() {
		String sql = "select article_seq from tbi_nea order by article_seq desc";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; // ù ��° �Խù��� ���
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}
	//=========================================================================================	

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

			} catch (Exception e2) {

			}
		}

	
	//�۾��� �޼ҵ�
	public int write(int article_seq, String article_kind, String article_subject, String m_id, String article_file1,String article_file5,String article_file2,String article_file3,String article_file4, String article_content, int article_count) {
		 
		try {
			
			BoardDAO();
			
			String sql = "insert into tbi_nea values(?, ?, ?, ?, sysdate, ?, ?,?, ?,?,?, ?)";
			psmt = conn.prepareStatement(sql);
			System.out.println(psmt);
			System.out.println(article_subject);
			System.out.println(m_id);
			System.out.println(article_file1);
			System.out.println(article_content);
												// �Խñ� ��ȣ
			psmt.setInt(1, article_seq); // �� ����
			psmt.setString(1, article_kind); // �� ����
			psmt.setString(2, article_subject); // �����ID
			psmt.setString(3, article_content); // �� ����
			psmt.setString(4, m_id);
			psmt.setString(5, article_file1);
			psmt.setString(5, article_file2);
			psmt.setString(6, article_file3);
			psmt.setString(7, article_file4);
			psmt.setString(8, article_file5);
			psmt.setInt(9, article_count);
			
			
//			psmt.setInt(5, 1); // �� ��ȿ��ȣ
		
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt; // �����ͺ��̽� ����
	}
	
	

	// �Խ�Ŭ ����Ʈ �޼ҵ�
	public ArrayList<BoardVO> getList(int article_seq){
		String sql = "select * from tbi_nea where article_seq < ? order by article_seq desc limit 10";
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, getArticle_seq() - (article_seq - 1)*10);
			rs = psmt.executeQuery();
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
	// ����¡ ó�� �޼ҵ�
	public boolean nextPage(int article_seq) {
		String sql = "select * from tbi_nea where article_seq < ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, getArticle_seq() - (article_seq - 1)*10);
			rs = psmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public int writeBoard(String writer, String title, String filename, String content) {

		try {

			BoardDAO();

			// 3. sql�� �غ�
			String sql = "insert into web_board values (board_num_seq.nextval,?,?,?,?,sysdate)";

			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			psmt.setString(1, writer);
			psmt.setString(2, title);
			psmt.setString(3, filename);
			psmt.setString(4, content);

			// 5. ����
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. ���� �ݾ��ֱ�
			close();
		}
		return cnt;
	}

//==================================================================================


	public ArrayList<BoardVO> selectBoard() {

		ArrayList<BoardVO> boards = new ArrayList<BoardVO>();

		try {

			BoardDAO();

			// 3. sql�� �غ�
			String sql = "select * from web_board";

			psmt = conn.prepareStatement(sql);

			
			// 5. ����
			rs = psmt.executeQuery();

			// �α��ζ����� rs�� �� 1�ุ �־��� --> if�� ���
			// ��� ȸ�������� ������ --> ��� �ݺ��ؾ� �� �� ��
			while (rs.next() == true) {

				// �۹�ȣ �ۼ��� ���� �����̸� ���� ��¥
				
				int num = rs.getInt(1);
				String writer = rs.getString(2);
				String title = rs.getString(3);
				String filename = rs.getString(4);
				String content = rs.getString(5);
				String day = rs.getString(6);
				
				BoardVO bvo = new BoardVO();
				boards.add(bvo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. ���� �ݾ��ֱ�
			close();
		}
		return boards;
	}



}
