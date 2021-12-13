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

@WebServlet("/shopbuyService")
public class shopbuyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
	
	      request.setCharacterEncoding("euc-kr");

	     
	      HttpSession session = request.getSession();
	    MemberVo vo = (MemberVo)session.getAttribute("vo");
	    System.out.println(vo);
	    
	      String id =vo.getId();
	      int point = Integer.parseInt(request.getParameter("point"));
	      

	   
	      DAO dao = new DAO();
	      shopVO  svo = new shopVO();
	      

	      int cnt = dao.shopbuy(id, point);
	      
	      
	      if(vo.getPoint() > svo.getGoods_point()) {
	         System.out.println("구입성공");
	         response.sendRedirect("main.jsp");
	         
	         session.setAttribute("vo",new MemberVo(id,point));
	         
	         
	      }else {
	         System.out.println("구입실패");
	         response.sendRedirect("shop.jsp");
	      }
		
		
		
	}

}
