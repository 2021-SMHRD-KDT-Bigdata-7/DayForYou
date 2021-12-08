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



@WebServlet("/JoinSerice")
public class JoinSerice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 request.setCharacterEncoding("euc-kr");

	      // 1. �Ķ���� ����
	      String id = request.getParameter("id");
	      String pw = request.getParameter("pw");
	      String name = request.getParameter("name");
	      String nick = request.getParameter("nick");
	      String phone = request.getParameter("phone");
	      String email = request.getParameter("email");
	      String birthdate = request.getParameter("brithdate");
	      String gender = request.getParameter("gender");
	      String job = request.getParameter("job");
	      String address = request.getParameter("address");
	      
	      // DAO ��ü ����
	     DAO dao = new DAO();
	      
	      // DAO�� Join�޼��� ���
	      int cnt = dao.Join(id, pw, name, nick, phone, email, birthdate, gender,job,address );
	      
	      if(cnt > 0) {            
	         request.setAttribute("vo",new MemberVo(id, pw,name,nick, phone, email, birthdate, gender, job, address));
	         RequestDispatcher rd = request.getRequestDispatcher("join_success.jsp");
	         rd.forward(request, response);
	         response.sendRedirect("main.jsp");
	      }
	      
	      if(cnt > 0) {
	         System.out.println("ȸ������ ����");
	         // join_success.jsp
	      }else {
	         System.out.println("ȸ������ ����");
	      }

		
		
	}

}
