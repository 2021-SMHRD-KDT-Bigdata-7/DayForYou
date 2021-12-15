package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardVO;

@WebServlet("/updateBoardService")
public class updateBoardService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));

		BoardDAO dao = new BoardDAO();
		BoardVO bvo = dao.getBoardInformation(article_seq);
		
		if(bvo != null) {			
			request.setAttribute("bvo", bvo);
			RequestDispatcher rd = request.getRequestDispatcher("1_updateForm.jsp");
			rd.forward(request, response);
		}else {
			System.out.println("bvo가 null입니다.");
		}
	}

}
