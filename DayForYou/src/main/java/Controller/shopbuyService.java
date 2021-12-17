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
	      MemberVo mv = (MemberVo)session.getAttribute("vo");
	      DAO dao = new DAO();
	      shopVO  svo = new shopVO();
	      
	      
	    
	      String id =mv.getId();
	      
	      int cnt = 0;
	      int user_point = mv.getPoint();
	      int goods_point = Integer.parseInt(request.getParameter("goods_point"));
	      
	      if(user_point >= goods_point) {
	    	  user_point =- goods_point;
	    	  cnt = dao.shopbuy(id, user_point);	
	    	  if(cnt >0) {
	    		  System.out.println("DB변경 성공");
	    	  }else {
	    		  System.out.println("DB변경 실패");
	    	  }
	    	  
	      }else {
	    	  System.out.println("잔액부족");		      
	      }
	      response.sendRedirect("shop.jsp");
	       
	     /* if(cnt>svo.getGoods_point()) {
	    	 HttpSession session = request.getSession();
	         
	    	 System.out.println("구입성공");
	         
	         session.setAttribute("vo",new MemberVo(vo.getId(),vo.getPoint()));
	         
	         response.sendRedirect("main.jsp");
	         
	      }else {
	         System.out.println("구입실패");
	         response.sendRedirect("shop.jsp");
	      }
		*/
		
		
	}

}
