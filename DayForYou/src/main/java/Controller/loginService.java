package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO;
import model.MemberVo;



@WebServlet("/login")
public class loginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		DAO dao = new DAO();
		MemberVo vo=dao.login(email, pw);
		
		
		if (vo !=null) {
			System.out.print("로그인 성공");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("vo", vo);
			
		}else {
			System.out.print("로그인 실패");
		}
		response.sendRedirect("index.html");
		 
		
	}

}
