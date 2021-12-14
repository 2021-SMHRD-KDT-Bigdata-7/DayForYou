package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;

@WebServlet("/MyChallengeinsert")
public class MyChallengeinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int chal_seq = Integer.parseInt(request.getParameter("chal_seq"));
		// 2. DAO ��ü ����
		DAO dao = new DAO();
		int seq = dao.ChallengeCheck(chal_seq);
		System.out.println(seq);
		if( seq== 999999) {
			System.out.println("����");
		// ������ �̵�
//			request.setAttribute("zvo", );
			
			// request������ �����͸� �����ؼ� �̵��Ϸ��� >> forward 
			RequestDispatcher rd = request.getRequestDispatcher("ChallengeSingledeep.jsp");
			rd.forward(request, response);		
		
		}else {
			System.out.println("����");
		}
	
	}

}
