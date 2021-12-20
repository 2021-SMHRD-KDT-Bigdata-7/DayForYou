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
import model.MyChallengeVO;

@WebServlet("/MyChallengeinsert")
public class MyChallengeinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo) session.getAttribute("vo");
		int chal_seq = Integer.parseInt(request.getParameter("chal_seq"));
		String chal_time="";
		String my_chal_memo="";
		int chal_num=0;//챌린지 횟수 넣을곳
		// 2. DAO 객체 생성
		DAO dao = new DAO();
//		MyChallengeVO mvo = dao.MyVOChallengeinsert(chal_seq);
		int cnt =dao.MyChallengeinsert(chal_seq,vo.getId(),chal_time,my_chal_memo,chal_num);
		
		if(cnt > 0) {
			System.out.println("mychall에 넣는거 성공");
			response.sendRedirect("main.jsp");
		
		}else {
			System.out.println("mychall에 넣는거 실패");
		}
	}

}
