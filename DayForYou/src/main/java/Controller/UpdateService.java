package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVo;
import model.UpdateDAO;


@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		
		// 이메일 --> 세션영역에 저장되어있는 vo
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo)session.getAttribute("vo");
		
		String m_id = vo.getId();
		
		// form 태그 이용해서 보냄 -> request.getParameter
		String m_pwd = request.getParameter("m_pwd");
		String m_name = request.getParameter("m_name");
		String m_nick = request.getParameter("m_nick");
		String m_phone = request.getParameter("m_phone");
		String m_email = request.getParameter("m_email");
		String m_birthdate = request.getParameter("m_birthdate");
		String m_gender = request.getParameter("m_gender");
		String m_job = request.getParameter("m_job");
		String m_addr = request.getParameter("m_addr");
		
		UpdateDAO dao = new UpdateDAO();


		// 쿼리 실행 결과(executeUpdate) : int타입, 성공한 행의 수
		int cnt = dao.mupdate(vo.getId(), m_pwd, m_name, m_nick, m_phone, m_email, m_birthdate, m_gender, m_job, m_addr);
		
		
		
		if(cnt > 0) {
			System.out.println("회원정보 수정 성공!");
			vo = new MemberVo(m_id, m_pwd, m_name, m_nick, m_phone, m_email, m_birthdate, m_gender, m_job, m_addr);
			session.removeAttribute("vo");
			
			// 같은 이름으로 다른 데이터를 집어 넣으면 덮어쓰기 된다
			session.setAttribute("vo", vo);
	        
		}else {
			System.out.println("회원정보 수정 실패...");
		}
		
		// 페이지 이동
		response.sendRedirect("mypage.html");
	}

}
