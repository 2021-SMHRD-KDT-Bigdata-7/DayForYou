package model;

//import java.util.Date;

public class CalenderVO {

	private int todo_seq;
	private String todo_subject;
	private String todo_cate;
	private String todo_sdate;
	private String todo_edate;
	private String todo_content;
	private String reg_date;
	private String m_id;
	private String todo_check;
//?	private boolean allDay = false;

//=====»ý¼ºÀÚ.======

	public CalenderVO(int todo_seq, String todo_subject, String todo_cate, String todo_sdate, String todo_edate,
			String todo_content, String reg_date, String m_id, String todo_check) {
		super();
		this.todo_seq = todo_seq;
		this.todo_subject = todo_subject;
		this.todo_cate = todo_cate;
		this.todo_sdate = todo_sdate;
		this.todo_edate = todo_edate;
		this.todo_content = todo_content;
		this.reg_date = reg_date;
		this.m_id = m_id;
		this.todo_check = todo_check;
	}

	public CalenderVO(String todo_subject, String todo_cate, String todo_sdate, String todo_edate, String todo_content,
			String reg_date, String m_id, String todo_check) {
		super();
		this.todo_subject = todo_subject;
		this.todo_cate = todo_cate;
		this.todo_sdate = todo_sdate;
		this.todo_edate = todo_edate;
		this.todo_content = todo_content;
		this.reg_date = reg_date;
		this.m_id = m_id;
		this.todo_check = todo_check;
	}

//=====Getter/Setter===== 
	
	public int getTodo_seq() {
		return todo_seq;
	}

	public void setTodo_seq(int todo_seq) {
		this.todo_seq = todo_seq;
	}

	public String getTodo_subject() {
		return todo_subject;
	}

	public void setTodo_subject(String todo_subject) {
		this.todo_subject = todo_subject;
	}

	public String getTodo_cate() {
		return todo_cate;
	}

	public void setTodo_cate(String todo_cate) {
		this.todo_cate = todo_cate;
	}

	public String getTodo_sdate() {
		return todo_sdate;
	}

	public void setTodo_sdate(String todo_sdate) {
		this.todo_sdate = todo_sdate;
	}

	public String getTodo_edate() {
		return todo_edate;
	}

	public void setTodo_edate(String todo_edate) {
		this.todo_edate = todo_edate;
	}

	public String getTodo_content() {
		return todo_content;
	}

	public void setTodo_content(String todo_content) {
		this.todo_content = todo_content;
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

	public String getTodo_check() {
		return todo_check;
	}

	public void setTodo_check(String todo_check) {
		this.todo_check = todo_check;
	}


//=======================

}
