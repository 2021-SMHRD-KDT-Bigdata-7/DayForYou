package model;

//import java.util.Date;

public class CalendarVO {
	
	private int todo_seq;
	private String todo_subject;
	private String todo_content;
	private String todo_date;
	private String reg_date;
	private String m_id;
//?	private boolean allDay = false;
	
//=======================
	
	public CalendarVO(int todo_seq, String todo_subject, String todo_content, String todo_date, String reg_date,
			String m_id) {
		super();
		this.todo_seq = todo_seq;
		this.todo_subject = todo_subject;
		this.todo_content = todo_content;
		this.todo_date = todo_date;
		this.reg_date = reg_date;
		this.m_id = m_id;
	}
	
//=======================
	
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

	public String getTodo_content() {
		return todo_content;
	}

	public void setTodo_content(String todo_content) {
		this.todo_content = todo_content;
	}

	public String getTodo_date() {
		return todo_date;
	}

	public void setTodo_date(String todo_date) {
		this.todo_date = todo_date;
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

//=======================
	
	

}
