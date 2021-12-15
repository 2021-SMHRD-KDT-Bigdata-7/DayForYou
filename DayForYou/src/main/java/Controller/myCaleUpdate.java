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

@WebServlet("/myCaleUpdate")
public class myCaleUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		
		MemberVo vo = (MemberVo)session.getAttribute("vo");

		String m_id = vo.getId();
		String todo_title = request.getParameter("title");
		String[] todo_allday = request.getParameterValues("allday");
		String todo_cate = request.getParameter("cate");
		String todo_sdate = request.getParameter("sdate");
		String todo_edate = request.getParameter("edate");
		
		
		System.out.println(todo_title);
		System.out.println(todo_allday[0]);
		System.out.println(todo_cate);
		System.out.println(todo_sdate);
		System.out.println(todo_edate);
		System.out.println(m_id);
				
		// 수정해야 할건 CVO인데??? 일단 멤버VO는 닉네임을 불러와야하니까 불러왔고 CVO는??
		CalendarVO cvo = new CalendarVO(vo.getId(), todo_allday[0] ,todo_cate, todo_sdate, todo_edate );
		
		CalendarDAO cdao = new CalendarDAO();

		int cnt = cdao.Todo_update(0, todo_title, todo_cate, todo_sdate, todo_edate, m_id, todo_allday[0]);

		if (cnt > 0) {
			System.out.println("캘린더 수정 완료");
			cvo = new CalendarVO(m_id, todo_title, todo_allday[0], todo_cate, todo_sdate, todo_edate);
			request.setAttribute("cvo", new CalendarVO(todo_title, todo_allday[0], todo_cate, todo_sdate, todo_edate));
			RequestDispatcher rd = request.getRequestDispatcher("myCalendar.jsp");
			rd.forward(request, response);

		} else {
			System.out.println("캘린더 수정 실패");
			response.sendRedirect("myCalendar.jsp");
		}

	}

}
