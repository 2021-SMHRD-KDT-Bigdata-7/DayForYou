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

@WebServlet("/shop_insert")
public class shop_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo) session.getAttribute("vo");

		shopVO svo = new shopVO();
		
		String m_id = vo.getId();
		
		int shop_seq = Integer.parseInt(request.getParameter("shop_seq"));
		String goods_name = request.getParameter("goods_name");
		String goods_category = request.getParameter("goods_category");
		String goods_point = request.getParameter("goods_point");
		
		DAO dao = new DAO();
		
		
	}

}
