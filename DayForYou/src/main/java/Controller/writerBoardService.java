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
		// workspace -> 아파치 톰캣 업로드(폴더들의 위치들이 바뀜)
		// 저장할 경로
		
		String savePath = request.getServletContext().getRealPath("img1");
		
		// 최대 파일 크기 (단위 : byte) : 5mb
		int maxSize = 5*1024*1024;
		// 인코딩 타입.
		String encoding = "euc-kr";
		
		// request를 대신해서 받아온 데이터를 정제해줄 MultipartRequest 객체.
		
		MultipartRequest multi = new MultipartRequest(request,
                savePath,
                maxSize,
                encoding,
                new DefaultFileRenamePolicy());

		
		// 파라미터 수집
		// 파일을 가져올 때는 getFilesystemName("name값.")
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
		
		// DAO메소드 사용 web_board테이블에 저장
		BoardDAO dao = new BoardDAO();
		
		System.out.println(article_subject);
		System.out.println(m_id);
		System.out.println(article_file1);
		System.out.println(article_content);
		System.out.println(article_count);
		// 메소드 사용 
		int cnt = dao.write(article_seq, article_kind, article_subject, m_id, article_file1,article_file2, article_file3, article_file4, article_file5,   article_content, article_count);
		
		if(cnt > 0) {
			System.out.println("게시글 작성 완료.");
			
			// 1. request의 영역에 file의 정보를 가지고 이동 -> VO를 이용하여 묶음
			// 기존의 BoardVO 생성자는 매개변수로 6가지를 모드 받았음
			// 지금 담아갈것은 4가지 밖에 없음 --> 생성자 메소드를 만들어주면 됨.
			request.setAttribute("bvo", new BoardVO(article_kind, article_subject, m_id, article_file1, article_content, article_count));
			
			// request영역에 데이터를 저장해서 이동하려면 >> forward방식
			RequestDispatcher rd = request.getRequestDispatcher("Board_view.jsp");
			rd.forward(request, response);
			
		} else {
			System.out.println("게시글 작성 실패.");
		}
	
	}

}
