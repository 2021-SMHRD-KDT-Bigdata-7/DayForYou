package Controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.BoardDAO;
import model.BoardVO;
import model.MemberVo;

@WebServlet("/writerBoardService")
public class writerBoardService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		String m_id = request.getParameter("m_id");
		String article_pwd = request.getParameter("article_pwd");
		String article_subject = request.getParameter("article_subject");
		String article_kind = request.getParameter("article_kind");
		String article_content = request.getParameter("article_content");
		String article_file1 = null;
		String article_file2 = null;
		String article_file3 = null;
		String article_file4 = null;
		String article_file5 = null;
		int article_count = 0;

		BoardDAO dao = new BoardDAO();

		int cnt = dao.write(article_kind, article_subject, article_content, m_id, article_file1, article_file2,
				article_file3, article_file4, article_file5, article_pwd, article_count);

		if (cnt > 0) {
			System.out.println("게시판 작성 성공");
			response.sendRedirect("1_list.jsp");
		} else {
			System.out.println("게시판 작성 실패");
		}
	}
}
