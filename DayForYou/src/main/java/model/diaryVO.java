package model;

public class diaryVO {
	//�ϱ� ���̺�
	
	//�ϱ� ����(PK)
	private int diary_seq;
	
	//�ϱ� ����
	private String diary_subject;
	
	//���� ��¥
	private String diary_date;
	//�ϱ� ����
	private String diary_content;
	
	//�ϱ� ����1
	private String diary_file1;
	
	//�ϱ� ����2
	private String diary_file2;
	
	//����� ���̵�(FK)
	private String m_id;
	
	//��� ����
	private String reg_date;

	public diaryVO(int diary_seq, String diary_subject, String diary_date, String diary_content, String diary_file1,
			String diary_file2, String m_id, String reg_date) {
		super();
		this.diary_seq = diary_seq;
		this.diary_subject = diary_subject;
		this.diary_date = diary_date;
		this.diary_content = diary_content;
		this.diary_file1 = diary_file1;
		this.diary_file2 = diary_file2;
		this.m_id = m_id;
		this.reg_date = reg_date;
	}

	public diaryVO(String diary_subject, String diary_content, String diary_file1) {
		this.diary_subject = diary_subject;
		this.diary_content = diary_content;
		this.diary_file1 = diary_file1;
	}

	public int getDiary_seq() {
		return diary_seq;
	}

	public void setDiary_seq(int diary_seq) {
		this.diary_seq = diary_seq;
	}

	public String getDiary_subject() {
		return diary_subject;
	}

	public void setDiary_subject(String diary_subject) {
		this.diary_subject = diary_subject;
	}

	public String getDiary_date() {
		return diary_date;
	}

	public void setDiary_date(String diary_date) {
		this.diary_date = diary_date;
	}

	public String getDiary_content() {
		return diary_content;
	}

	public void setDiary_content(String diary_content) {
		this.diary_content = diary_content;
	}

	public String getDiary_file1() {
		return diary_file1;
	}

	public void setDiary_file1(String diary_file1) {
		this.diary_file1 = diary_file1;
	}

	public String getDiary_file2() {
		return diary_file2;
	}

	public void setDiary_file2(String diary_file2) {
		this.diary_file2 = diary_file2;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	
	
}



