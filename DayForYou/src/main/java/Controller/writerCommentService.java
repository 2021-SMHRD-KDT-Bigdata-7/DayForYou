package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.CommentDAO;
import model.CommentVO;

/**
 * Servlet implementation class writerCommentService
 */
@WebServlet("/writerCommentService")
public class writerCommentService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		int comment_num = 0;
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		
		String m_id = request.getParameter("m_id");
		String comment_date = null;
		
		String comment_content = request.getParameter("comment_content");
		
		CommentDAO cdao = new CommentDAO();

		int cnt = cdao.Commentwrite(comment_num, article_seq, m_id, comment_date,  comment_content);

		if (cnt > 0) {
			System.out.println("댓글 작성 성공");
			
			request.setAttribute("article_seq", article_seq);
			RequestDispatcher rd = request.getRequestDispatcher("1_content.jsp");
			rd.forward(request, response);
			
			//response.sendRedirect("1_content.jsp");
		} else {
			System.out.println("댓글 작성 실패");
		}	
		}

}
