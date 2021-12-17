package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO;
import model.DiaryDAO;
import model.MemberVo;
import model.diaryVO;
import model.shopVO;

@WebServlet("/diaryDelete")
public class diaryDelete extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("euc-kr");

		
		HttpSession session = request.getSession();

		
		DAO dao = new DAO();
		DiaryDAO ddao = new DiaryDAO();

		MemberVo vo = (MemberVo) session.getAttribute("vo");
		diaryVO dvo = (diaryVO) request.getAttribute("dvo");

		int diary_seq = Integer.parseInt(request.getParameter("diary_seq"));

		int cnt = ddao.diaryDelete(diary_seq);

		if (cnt > 0) {
			System.out.println("일기삭제성공!");

			response.sendRedirect("Diarylist.jsp");

		} else {
			System.out.println("일기삭제실패..");
			response.sendRedirect("Diarylist.jsp");
		}
	}
	

}
