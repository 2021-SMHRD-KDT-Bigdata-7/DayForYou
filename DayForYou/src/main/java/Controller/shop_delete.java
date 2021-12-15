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
		// 0. �޾ƿ� �Ķ���͵��� ���ڵ�
		request.setCharacterEncoding("euc-kr");

		// 1. �Ķ���� ����
		// �̸��� --->���ǿ����� ����Ǿ��ִ� vo�� ����������
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo) session.getAttribute("vo");
		shopVO svo = new shopVO();

		String m_id = vo.getId();

		int shop_seq = Integer.parseInt(request.getParameter("shop_seq"));

		// DAO ��ü ����
		DAO dao = new DAO();

		// DAO�� update�޼��� ���
		int cnt = dao.shop_delete(shop_seq);

		if (cnt > 0) {
			System.out.println("��������");

			response.sendRedirect("shopadmin_yesno.jsp");

		} else {
			System.out.println("���� ����");
			response.sendRedirect("shopadmin_yesno.jsp");
		}
	}

}
