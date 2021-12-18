package Controller;

import java.io.IOException;
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


@WebServlet("/myCaldel")
public class myCaledel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		CalendarDAO cdao = new CalendarDAO();
	

		MemberVo vo = (MemberVo) session.getAttribute("vo");
		CalendarVO cvo = (CalendarVO) request.getAttribute("cvo");

		int todo_seq = Integer.parseInt(request.getParameter("todo_seq"));
		String m_id = request.getParameter(vo.getId());

		int cnt = cdao.Todo_delete(todo_seq, vo.getId());

		if (cnt > 0) {
			System.out.println("캘린더 삭제성공");			

		} else {
			System.out.println("캘린더 삭제 실패");
			
		}
	}
			
}


