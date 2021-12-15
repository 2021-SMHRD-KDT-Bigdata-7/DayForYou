package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO;
import model.MemberVo;
import model.MyChallengeVO;

@WebServlet("/Mychallengepage")
public class Mychallengepage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo) session.getAttribute("vo");
		DAO dao = new DAO();
		// SelectAll()�� ArrayList<MemberVO>����
		System.out.println(vo.getId());
		ArrayList<MyChallengeVO> mvo = dao.MychallengeSelectAll(vo.getId());

		if (mvo != null) {
			System.out.println("��ȸ ����");
			// request������ attribute �߰�
			request.setAttribute("mvo", mvo);
			RequestDispatcher rd = request.getRequestDispatcher("mychallenge.jsp");
			rd.forward(request, response);

		} else {
			System.out.println("��ȸ ����");
		}

	}

}
