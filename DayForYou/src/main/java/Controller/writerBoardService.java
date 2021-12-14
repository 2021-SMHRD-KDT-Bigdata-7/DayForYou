package Controller;

import java.io.IOException;

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




@WebServlet("/writerBoardService")
public class writerBoardService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		//request.getServletContext();
		// workspace -> ����ġ ��Ĺ ���ε�(�������� ��ġ���� �ٲ�)
		// ������ ���
		
		String savePath = request.getServletContext().getRealPath("img1");
		
		// �ִ� ���� ũ�� (���� : byte) : 5mb
		int maxSize = 5*1024*1024;
		// ���ڵ� Ÿ��.
		String encoding = "euc-kr";
		
		// request�� ����ؼ� �޾ƿ� �����͸� �������� MultipartRequest ��ü.
		
		MultipartRequest multi = new MultipartRequest(request,
                savePath,
                maxSize,
                encoding,
                new DefaultFileRenamePolicy());

		
		// �Ķ���� ����
		// ������ ������ ���� getFilesystemName("name��.")
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		String article_kind = multi.getParameter("article_kind");
		String article_subject = multi.getParameter("article_subject");
		String article_content = multi.getParameter("article_content");
		String m_id = multi.getParameter("m_id");
		String article_file1 = multi.getParameter("article_file1");
		String article_file2 = null;
		String article_file3 = null;
		String article_file4 = null;
		String article_file5 = null;
		int article_count = Integer.parseInt(request.getParameter("article_count"));
		
		// DAO�޼ҵ� ��� web_board���̺� ����
		BoardDAO dao = new BoardDAO();
		
		System.out.println(article_subject);
		System.out.println(m_id);
		System.out.println(article_file1);
		System.out.println(article_content);
		System.out.println(article_count);
		// �޼ҵ� ��� 
		int cnt = dao.write(article_seq, article_kind, article_subject, m_id, article_file1,article_file2, article_file3, article_file4, article_file5,   article_content, article_count);
		
		if(cnt > 0) {
			System.out.println("�Խñ� �ۼ� �Ϸ�.");
			
			// 1. request�� ������ file�� ������ ������ �̵� -> VO�� �̿��Ͽ� ����
			// ������ BoardVO �����ڴ� �Ű������� 6������ ��� �޾���
			// ���� ��ư����� 4���� �ۿ� ���� --> ������ �޼ҵ带 ������ָ� ��.
			request.setAttribute("bvo", new BoardVO(article_kind, article_subject, m_id, article_file1, article_content, article_count));
			
			// request������ �����͸� �����ؼ� �̵��Ϸ��� >> forward���
			RequestDispatcher rd = request.getRequestDispatcher("Board_view.jsp");
			rd.forward(request, response);
			
		} else {
			System.out.println("�Խñ� �ۼ� ����.");
		}
	
	}

}
