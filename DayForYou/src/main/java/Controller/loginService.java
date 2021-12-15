package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO;
import model.MemberVo;

@WebServlet("/loginService")
public class loginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		DAO dao = new DAO();
		MemberVo vo = dao.login(id, pw);	
	

		if (vo != null) {
			System.out.println("로그인 성공" + vo.getId());
			
			HttpSession session = request.getSession();
			session.removeAttribute("vo");
			session.setAttribute("vo", vo);			
			
			response.sendRedirect("main.jsp");
			
		} else {
			Cookie cookie = new Cookie("error_id", URLEncoder.encode(id,"UTF-8"));
			response.addCookie(cookie);
			
			response.sendRedirect("login_error.jsp");			
		}

	}

}
