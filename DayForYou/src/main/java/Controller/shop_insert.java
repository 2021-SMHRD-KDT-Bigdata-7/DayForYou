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
import model.shopVO;

@WebServlet("/shop_insert")
public class shop_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		

		
		String ca = request.getParameter("ca");
		String gn = request.getParameter("gn");
		int gp = Integer.parseInt( request.getParameter("gp"));
		
		
		
		DAO dao = new DAO();
		MemberVo vo = new MemberVo();
		
		int cnt = dao.shop_insert(ca, gn, gp, vo.getId());
		
		
		if(cnt > 0) {
			request.setAttribute("shvo",new shopVO(gn,ca,gp));
			
			RequestDispatcher rd = request.getRequestDispatcher("shopadd.jsp");
	        rd.forward(request, response);
			System.out.println("추가 성공");
			
	        
		}else {
			System.out.println("추가 실패");
			response.sendRedirect("shopadmin.jsp");
		}
		
		// 페이지 이동
	}
		
			
		
	

}
