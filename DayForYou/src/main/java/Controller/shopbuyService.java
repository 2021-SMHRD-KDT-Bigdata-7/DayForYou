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

	     
	      
	    
	      MemberVo vo = new MemberVo();
	    
	      
	    
	      String id =vo.getId();
	      int point = Integer.parseInt(request.getParameter("point"));
	      

	   
	      DAO dao = new DAO();
	      shopVO  svo = new shopVO();
	      
	     
	      
	      int cnt = dao.shopbuy(vo.getId(), vo.getPoint());
	      
	       
	      if(cnt>0) {
	    	 HttpSession session = request.getSession();
	         
	    	 System.out.println("구입성공");
	         
	         session.setAttribute("vo",new MemberVo(vo.getId(),vo.getPoint()));
	         
	         response.sendRedirect("main.jsp");
	         
	      }else {
	         System.out.println("구입실패");
	         response.sendRedirect("shop.jsp");
	      }
		
		
		
	}

}
