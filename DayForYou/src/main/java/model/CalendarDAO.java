package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CalendarDAO {
	
	CalendarVO cvo = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;

	// DB ����
	
	public void connection() {
		try {
			// JDBC
			// 1. ���� �ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. ���� ��ü ����
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// DB ���� ����
	
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
	
	// ���� ����
	
	public int todo_Input(String todo_subject, String todo_cate, 
						  String todo_sdate, String todo_edate, 
						  String todo_content, String reg_date, String m_id,
						  String todo_check) {

		// try��
		// JDBC �ڵ�� ������ �´��� ������ �߻��ϴ� ����ó�� �ʿ�.
		try {

			connection();

			// 3. sql�� �غ�
			String sql = "insert into tbl_todo values (?,?,?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			psmt.setString(1, todo_subject);//seq x
			psmt.setString(2, todo_cate);
			psmt.setString(3, todo_sdate);
			psmt.setString(4, todo_edate);
			psmt.setString(5, todo_content);
			psmt.setString(6, reg_date);
			psmt.setString(7, m_id);
			psmt.setString(8, todo_check);

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
	
	// ���� Ȯ��
	
	public ArrayList<CalendarVO> todo_select() {

		ArrayList<CalendarVO> todo = new ArrayList<CalendarVO>();
		
		try {

			connection();

			// 3. sql�� �غ�
			String sql = "select * from tbl_todo";

			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			

			// 5. ����
			rs = psmt.executeQuery();

			if (rs.next() == true) {

				int u_todo_seq = rs.getInt(1);
				String u_todo_subject = rs.getString(2);
				String u_todo_cate = rs.getString(3);
				String u_todo_sdate = rs.getString(4);
				String u_todo_edate = rs.getString(5);
				String u_todo_content = rs.getString(6);
				String u_reg_date = rs.getString(7);
				String u_m_id = rs.getString(8);
				String u_todo_check = rs.getString(9); //�Ϸ�����

				// select���� ����� ��� VO��ü�� �����
				cvo = new CalendarVO(u_todo_seq, u_todo_subject, u_todo_cate, 
									u_todo_sdate, u_todo_edate,u_todo_content, 
									u_reg_date, u_m_id, u_todo_check);

				todo.add(cvo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. ���� �ݾ��ֱ�
			close();
		}
		return todo;

	}
	
	// ���� ����
	
	public int Todo_update(int todo_seq, String todo_subject, String todo_cate, 
						   String todo_sdate, String todo_edate, 
						   String todo_content, String reg_date, String m_id,
						   String todo_check) {

		// try��
		// JDBC �ڵ�� ������ �´��� ������ �߻��ϴ� ����ó�� �ʿ�.
		try {

			connection();

			// 3. sql�� �غ�
			String sql = "update tbl_todo set todo_subject =? , todo_cate = ?, \r\n"
					+ "						  todo_sdate =?, todo_edate = ?, \r\n"
					+ "						  todo_content = ?, reg_date = ?, m_id = ?,\r\n"
					+ "						  todo_check = ? where todo_seq = ?";

			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			psmt.setString(1, todo_subject);//seq x
			psmt.setString(2, todo_cate);
			psmt.setString(3, todo_sdate);
			psmt.setString(4, todo_edate);
			psmt.setString(5, todo_content);
			psmt.setString(6, reg_date);
			psmt.setString(7, m_id);
			psmt.setString(8, todo_check);
			psmt.setInt(9, todo_seq);
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

	// ���� ����

	public int Todo_delete(int todo_seq) {
		
		try {

			connection();

			// 3. sql�� �غ�
			String sql = "delete from tbl_todo where todo_seq = ?";

			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			psmt.setInt(1, todo_seq);

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

}
