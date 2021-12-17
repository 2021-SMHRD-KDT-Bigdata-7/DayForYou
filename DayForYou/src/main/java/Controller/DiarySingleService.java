package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.diaryVO;


@WebServlet("/DiarySingleService")
public class DiarySingleService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				// 1. 파라미터 수집 
				// 쿼리스트링의 키값을 getParameter의 매개변수로 넣어줌
				int diary_seq = Integer.parseInt(request.getParameter("diary_seq"));
				// 2. DAO 객체 생성
				DAO dao = new DAO();
				
				// 3. dao의 메서드
				// delete from web_member where email=?
				// psmt.delete -> executeUpdate(); , return int(성공한 행의 수) = 메서드의 리턴값
				diaryVO dv = dao.DiaryJoin(diary_seq);
				
				if(dv != null) {
					System.out.println("성공");
				// 페이지 이동
					
					request.setAttribute("dv", dv);
					
					
					// request영역에 데이터를 저장해서 이동하려면 >> forward 
					RequestDispatcher rd = request.getRequestDispatcher("Diarydeep.jsp");
					rd.forward(request, response);		
				
				}else {
					System.out.println("실패");
				}
	}

}
