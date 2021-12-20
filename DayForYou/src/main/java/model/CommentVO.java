package model;

public class CommentVO {

	private int comment_num;
	private int article_seq;
	private String m_id;
	private String comment_date;
	
	private String comment_content;
	
	public CommentVO() {}
	
	public CommentVO(int comment_num, int article_seq, String m_id, String comment_date, 
			String comment_content) {
		super();
		this.comment_num = comment_num;
		this.article_seq = article_seq;
		this.m_id = m_id;
		this.comment_date = comment_date;
		
		this.comment_content = comment_content;
	}
	
	 
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public int getArticle_seq() {
		return article_seq;
	}
	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}

	public String getComment_content() {
		return comment_content;
	}
	public void setComment_conter(String comment_content) {
		this.comment_content = comment_content;
	}
	
}
