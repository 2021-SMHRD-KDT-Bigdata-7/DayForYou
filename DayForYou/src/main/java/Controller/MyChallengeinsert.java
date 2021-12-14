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
		// 2. DAO 객체 생성
		DAO dao = new DAO();
		int seq = dao.ChallengeCheck(chal_seq);
		System.out.println(seq);
		if( seq== 999999) {
			System.out.println("성공");
		// 페이지 이동
//			request.setAttribute("zvo", );
			
			// request영역에 데이터를 저장해서 이동하려면 >> forward 
			RequestDispatcher rd = request.getRequestDispatcher("ChallengeSingledeep.jsp");
			rd.forward(request, response);		
		
		}else {
			System.out.println("실패");
		}
	
	}

}
