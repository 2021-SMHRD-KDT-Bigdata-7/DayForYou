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
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; // 첫 번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
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

	
	//글쓰기 메소드
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
												// 게시글 번호
			psmt.setInt(1, article_seq); // 글 제목
			psmt.setString(1, article_kind); // 글 제목
			psmt.setString(2, article_subject); // 사용자ID
			psmt.setString(3, article_content); // 글 내용
			psmt.setString(4, m_id);
			psmt.setString(5, article_file1);
			psmt.setString(5, article_file2);
			psmt.setString(6, article_file3);
			psmt.setString(7, article_file4);
			psmt.setString(8, article_file5);
			psmt.setInt(9, article_count);
			
			
//			psmt.setInt(5, 1); // 글 유효번호
		
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt; // 데이터베이스 오류
	}
	
	

	// 게시클 리스트 메소드
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
	// 페이징 처리 메소드
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

			// 3. sql문 준비
			String sql = "insert into web_board values (board_num_seq.nextval,?,?,?,?,sysdate)";

			psmt = conn.prepareStatement(sql);

			// 4. 바인드 변수 채우기
			psmt.setString(1, writer);
			psmt.setString(2, title);
			psmt.setString(3, filename);
			psmt.setString(4, content);

			// 5. 실행
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. 연결 닫아주기
			close();
		}
		return cnt;
	}

//==================================================================================


	public ArrayList<BoardVO> selectBoard() {

		ArrayList<BoardVO> boards = new ArrayList<BoardVO>();

		try {

			BoardDAO();

			// 3. sql문 준비
			String sql = "select * from web_board";

			psmt = conn.prepareStatement(sql);

			
			// 5. 실행
			rs = psmt.executeQuery();

			// 로그인때에는 rs에 딱 1행만 있었음 --> if문 사용
			// 모든 회원정보를 가져옴 --> 몇번 반복해야 될 지 모름
			while (rs.next() == true) {

				// 글번호 작성자 제목 파일이름 내용 날짜
				
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
			// 6. 연결 닫아주기
			close();
		}
		return boards;
	}



}
