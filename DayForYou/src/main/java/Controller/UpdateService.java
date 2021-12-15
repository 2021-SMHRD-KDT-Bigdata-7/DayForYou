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
		
		// �̸��� --> ���ǿ����� ����Ǿ��ִ� vo
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo)session.getAttribute("vo");
		
		String m_id = vo.getId();
		
		// form �±� �̿��ؼ� ���� -> request.getParameter
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


		// ���� ���� ���(executeUpdate) : intŸ��, ������ ���� ��
		int cnt = dao.mupdate(vo.getId(), m_pwd, m_name, m_nick, m_phone, m_email, m_birthdate, m_gender, m_job, m_addr);
		
		
		
		if(cnt > 0) {
			System.out.println("ȸ������ ���� ����!");
			vo = new MemberVo(m_id, m_pwd, m_name, m_nick, m_phone, m_email, m_birthdate, m_gender, m_job, m_addr);
			session.removeAttribute("vo");
			
			// ���� �̸����� �ٸ� �����͸� ���� ������ ����� �ȴ�
			session.setAttribute("vo", vo);
	        
		}else {
			System.out.println("ȸ������ ���� ����...");
		}
		
		// ������ �̵�
		response.sendRedirect("mypage.html");
	}

}
