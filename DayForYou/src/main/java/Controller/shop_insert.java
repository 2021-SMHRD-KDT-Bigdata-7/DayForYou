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
		
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo) session.getAttribute("vo");
	
		String m_id = vo.getId();
				
		String goods_name = request.getParameter("goods_name");
		String goods_category = request.getParameter("goods_catagory");
		int goods_point = Integer.parseInt(request.getParameter("goods_point"));
		
		DAO dao = new DAO();
		
		int cnt = dao.shop_insert(goods_name, goods_category, goods_point, m_id);
		
		
		if(cnt > 0) {
			System.out.println("추가 성공");
		
	        response.sendRedirect("shopadmin.jsp");
		}else {
			System.out.println("추가 실패");
			
			response.sendRedirect("goodsadd.jsp");
		}
		
	
		
	}
		
			
		
	

}
