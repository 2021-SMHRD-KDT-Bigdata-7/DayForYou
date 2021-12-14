package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.MyChallengeVO;

@WebServlet("/MyChallengeinsert")
public class MyChallengeinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int chal_seq = Integer.parseInt(request.getParameter("chal_seq"));
		// 2. DAO 객체 생성
		DAO dao = new DAO();
		MyChallengeVO mvo = dao.MyVOChallengeinsert(chal_seq);
		int cnt =dao.MyChallengeinsert(mvo.getChal_seq(),mvo.getChal_s_date(),mvo.getChal_e_date(),mvo.getChal_time(),mvo.getMy_chal_memo(),mvo.getM_id(),mvo.getChal_pic1());
		System.out.println(mvo);
		
		if(cnt > 0) {
			System.out.println("mychall에 넣는거 성공");
			response.sendRedirect("main.html");
		
		}else {
			System.out.println("mychall에 넣는거 실패");
		}
	}

}
