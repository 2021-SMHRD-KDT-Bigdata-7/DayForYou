package model;

import java.util.ArrayList;

public class CalendarVO {

	private int Todo_seq;
	private String Todo_title;
	private String Todo_cate;
	private String Todo_sdate;
	private String Todo_edate;
	private String Reg_date;
	private String m_id;
	private int Todo_allday;
	
//=====»ý¼ºÀÚ.======
	
	public CalendarVO(int todo_seq, String todo_title, String todo_cate, String todo_sdate, String todo_edate,
			String reg_date, String m_id, int todo_allday) {
		super();
		Todo_seq = todo_seq;
		Todo_title = todo_title;
		Todo_cate = todo_cate;
		Todo_sdate = todo_sdate;
		Todo_edate = todo_edate;
		Reg_date = reg_date;
		this.m_id = m_id;
		Todo_allday = todo_allday;
	}
	

public CalendarVO(String todo_title, int todo_allday, String todo_cate, String todo_sdate, String todo_edate) {
	super();
	Todo_title = todo_title;
	Todo_cate = todo_cate; 
	Todo_sdate = todo_sdate;
	Todo_edate = todo_edate;
	Todo_allday = todo_allday;
}

	public CalendarVO(String m_id, String todo_title, String todo_allday, String todo_cate, String todo_sdate,
		String todo_edate) {
	// TODO Auto-generated constructor stub
	}

//=====Getter/Setter===== 

	public int getTodo_seq() {
		return Todo_seq;
	}

	public void setTodo_seq(int todo_seq) {
		Todo_seq = todo_seq;
	}

	public String getTodo_title() {
		return Todo_title;
	}

	public void setTodo_title(String todo_title) {
		Todo_title = todo_title;
	}

	public String getTodo_cate() {
		return Todo_cate;
	}

	public void setTodo_cate(String todo_cate) {
		Todo_cate = todo_cate;
	}

	public String getTodo_sdate() {
		return Todo_sdate;
	}

	public void setTodo_sdate(String todo_sdate) {
		Todo_sdate = todo_sdate;
	}

	public String getTodo_edate() {
		return Todo_edate;
	}

	public void setTodo_edate(String todo_edate) {
		Todo_edate = todo_edate;
	}

	public String getReg_date() {
		return Reg_date;
	}

	public void setReg_date(String reg_date) {
		Reg_date = reg_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getTodo_allday() {
		return Todo_allday;
	}

	public void setTodo_allday(int todo_allday) {
		Todo_allday = todo_allday;
	}

	
	

	




//=======================

}
