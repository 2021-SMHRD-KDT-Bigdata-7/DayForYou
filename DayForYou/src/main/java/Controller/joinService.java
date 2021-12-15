package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.MemberVo;



@WebServlet("/joinService")
public class joinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 request.setCharacterEncoding("EUC-KR");

	     
	      String id = request.getParameter("id");
	      String pw = request.getParameter("pw");
	      String name = request.getParameter("name");
	      String nick = request.getParameter("nick");
	      String phone = request.getParameter("phone");
	      String email = request.getParameter("email");
	      String birthday = request.getParameter("birthday");
	      String gender = request.getParameter("gender");
	      String job = request.getParameter("job");
	      String address = request.getParameter("address");
	      
	     DAO dao = new DAO();
	      
	      
	      int cnt = dao.Join(id, pw, name, nick, phone, email, birthday, gender,job,address );
	      
	      if(cnt > 0) {            
	         request.setAttribute("vo",new MemberVo(id, pw,name,nick, phone, email, birthday, gender, job, address));
	         RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	         rd.forward(request, response);
	         response.sendRedirect("loginService");
	      }
	      
	      if(cnt > 0) {
	         System.out.println("회원가입 성공");
	       
	      }else {
	         System.out.println("회원가입 실패");
	         response.sendRedirect("join.jsp");
	      }

		
		
	}

}
