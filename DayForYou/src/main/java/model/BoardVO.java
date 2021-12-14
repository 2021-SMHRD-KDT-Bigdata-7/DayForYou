package model;

public class BoardVO {
	
	
	private int article_seq;
	private String article_kind;
	private String article_subject;
	private String article_content;
	private String reg_date;
	private String m_id;
	private String article_file1;
	private String article_file2;
	private int article_count;
	
	public BoardVO() {}
	
	public BoardVO(int article_seq, String article_kind, String article_subject, String article_content, String reg_date,
			String m_id, String article_file1, String article_file2, int article_count) {
		super();
		this.article_seq = article_seq;
		this.article_kind = article_kind;
		this.article_subject = article_subject;
		this.article_content = article_content;
		this.reg_date = reg_date;
		this.m_id = m_id;
		this.article_file1 = article_file1;
		this.article_file2 = article_file2;
		this.article_count = article_count;
	}
	
	public BoardVO(String article_kind, String article_subject, String m_id, String article_file1,
			String article_content, int article_count) {
		this.article_kind = article_kind;
		this.article_subject = article_subject;
		this.m_id = m_id;
		this.article_file1 = article_file1;
		this.article_content = article_content;
		this.article_count = article_count;
	}

	public int getArticle_seq() {
		return article_seq;
	}
	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}
	public String getArticle_kind() {
		return article_kind;
	}
	public void setArticle_kind(String article_kind) {
		this.article_kind = article_kind;
	}
	public String getArticle_subject() {
		return article_subject;
	}
	public void setArticle_subject(String article_subject) {
		this.article_subject = article_subject;
	}
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getArticle_file1() {
		return article_file1;
	}
	public void setArticle_file1(String article_file1) {
		this.article_file1 = article_file1;
	}
	public String getArticle_file2() {
		return article_file2;
	}
	public void setArticle_file2(String article_file2) {
		this.article_file2 = article_file2;
	}
	public int getArticle_count() {
		return article_count;
	}
	public void setArticle_count(int article_count) {
		this.article_count = article_count;
	}
	
	
}
