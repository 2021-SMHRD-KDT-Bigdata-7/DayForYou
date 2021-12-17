package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO;
import model.MemberVo;
import model.myDailyVO;

/**
 * Servlet implementation class myDailyChallenge
 */
@WebServlet("/myDailyChallenge")
public class myDailyChallenge extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int chal_seq = Integer.parseInt(request.getParameter("chal_seq"));
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo) session.getAttribute("vo");
	
		System.out.println("myDailyChallenge chal_seq="+chal_seq);
		System.out.println("myDailyChallenge vo="+vo.getId());
		DAO dao = new DAO();
		// 3. dao의 메서드
		// delete from web_member where email=?
		// psmt.delete -> executeUpdate(); , return int(성공한 행의 수) = 메서드의 리턴값
		myDailyVO mdvo = dao.myDailyChallengeCheck(vo.getId(), chal_seq);
		
		if(mdvo != null) {
		// 페이지 이동
			request.setAttribute("mdvo", mdvo);
			
			// request영역에 데이터를 저장해서 이동하려면 >> forward 
			RequestDispatcher rd = request.getRequestDispatcher("myDailyChallenge.jsp");
			rd.forward(request, response);		
			System.out.println("myDailyChallenge.jsp로 보내기 성공");
		
		}else {
			System.out.println("myDailyChallenge.jsp로 보내기 실패");
		}
	}

}
