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
import model.shopVO;

@WebServlet("/shop_delete")
public class shop_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 받아올 파라미터들을 인코딩
		request.setCharacterEncoding("euc-kr");

		// 1. 파라미터 수집
		// 이메일 --->세션영역에 저장되어있는 vo가 가지고잇음
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo) session.getAttribute("vo");
		shopVO svo = new shopVO();

		String m_id = vo.getId();

		int shop_seq = Integer.parseInt(request.getParameter("shop_seq"));

		// DAO 객체 생성
		DAO dao = new DAO();

		// DAO의 update메서드 사용
		int cnt = dao.shop_delete(shop_seq);

		if (cnt > 0) {
			System.out.println("삭제성공");

			response.sendRedirect("shopadmin_yesno.jsp");

		} else {
			System.out.println("수정 실패");
			response.sendRedirect("shopadmin_yesno.jsp");
		}
	}

}
