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
		String sql = "select m_id from tbi_nea order by m_id desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; // ù ��° �Խù��� ���
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}
	
	//�۾��� �޼ҵ�
	public int write(String article_subject, String m_id, String article_content) {
		String sql = "insert into tbi_nea values(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getArticle_seq()); // �Խñ� ��ȣ
			pstmt.setString(2, article_subject); // �� ����
			pstmt.setString(3,m_id); // �����ID
			pstmt.setString(4,getReg_date()); // �ۼ�����
			pstmt.setString(5,article_content); // �� ����
			pstmt.setInt(6, 1); // ���� ��ȿ��ȣ
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1; // �����ͺ��̽� ����
	}
	
	// ����¡ ó�� �޼ҵ�
	public boolean nextPage(int pageNumber) {
		String sql = "select * from tbi_nea where m_id < ? and ";
		return false;
	}
	
}
