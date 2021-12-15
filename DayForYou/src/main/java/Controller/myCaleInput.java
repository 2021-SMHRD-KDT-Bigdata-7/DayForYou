package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CalendarDAO;
import model.CalendarVO;
import model.DAO;
import model.MemberVo;

@WebServlet("/myCaleInput")
public class myCaleInput extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		request.setCharacterEncoding("EUC-KR");
		
		String todo_title = request.getParameter("title");
		String[] todo_allday = request.getParameterValues("allday");
		String todo_cate = request.getParameter("cate");
		String todo_sdate = request.getParameter("sdate");
		String todo_edate = request.getParameter("edate");
		//String m_id = request.getParameter("vo");
		String m_id = "a";
		
		System.out.println(todo_title);
		System.out.println(todo_allday[0]);
		System.out.println(todo_cate);
		System.out.println(todo_sdate);
		System.out.println(todo_edate);
		System.out.println(m_id);
				
		CalendarDAO cdao = new CalendarDAO();

		int cnt = cdao.todo_Input(todo_title, todo_cate, todo_sdate, todo_edate, m_id, todo_allday[0]);

		if (cnt > 0) {
			request.setAttribute("cvo", new CalendarVO(todo_title, todo_allday[0], todo_cate, todo_sdate, todo_edate));
			RequestDispatcher rd = request.getRequestDispatcher("myCalendar.jsp");
			rd.forward(request, response);
		}

		if (cnt > 0) {
			System.out.println("Ķ���� ��� �Ϸ�");

		} else {
			System.out.println("Ķ���� ��� ����");
		}

	}

}