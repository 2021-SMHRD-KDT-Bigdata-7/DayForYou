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

@WebServlet("/shop_update")
public class shop_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo) session.getAttribute("vo");

		shopVO svo = new shopVO();
		
		String m_id = vo.getId();
		
		int shop_seq = Integer.parseInt(request.getParameter("shop_seq"));
		String goods_name = request.getParameter("goods_name");
		String goods_category = request.getParameter("goods_category");
		String goods_point = request.getParameter("goods_point");
		
		DAO dao = new DAO();
		
		int cnt = dao.shop_update(shop_seq, goods_name, goods_category, goods_point);
		
		
		if(cnt > 0) {
			System.out.println("수정성공");
			response.sendRedirect("shopadmin.jsp");
	        
		}else {
			System.out.println("수정실패");
			response.sendRedirect("goodsupdate.jsp");
		}
		
		
	}
	
	}


