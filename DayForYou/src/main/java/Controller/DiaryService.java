package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.DAO;
import model.diaryVO;

/**
 * Servlet implementation class DiaryService
 */
@WebServlet("/DiaryService")
public class DiaryService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getServletContext();
				// work space > 아파치톰캣 업로드(폴더의 위치들이 바뀜)
				// 저장할 경로 
				String savePath = request.getServletContext().getRealPath("img");
				
				// 최대 파일크기(단위 : byte) : 5Mb
				int maxSize = 5*1024*1024;
				
				// 인코딩 타입
				String encoding = "euc-kr";
				
				// request를 대신해서 받아온 데이터를 정제해 줄 MultipartRequest 객체
				MultipartRequest multi = new MultipartRequest(request,
																savePath, 
																maxSize,
																encoding,
																new DefaultFileRenamePolicy());
				// 파라미터 수집
				// MultipartRequest 객체로부터 파라미터 수집
//				int diary_seq = Integer.parseInt(multi.getParameter("diary_seq"));
				String diary_subject = multi.getParameter("diary_subject");
				String diary_date = multi.getParameter("diary_date");
				String diary_content = multi.getParameter("diary_content");
				
				// 파일 이름을 가져올 때는 
				// getFilesystemName("name값")
				// 한글 이름을 인식 못하는 경우
//				String diary_file1 = URLEncoder.encode(multi.getFilesystemName("diary_file1"), "euc-kr");

//				String diary_file2 = multi.getFilesystemName("diary_file2");
				//임의로 null을 줌. 아래 한 줄"String diary_file2 = null;" 은 지워두됨.
				String diary_file2 = null;
				String reg_date = multi.getParameter("reg_date");
				
				// 이미지 이름들
				String image_name = multi.getParameter("images");
				String[] images = image_name.split("/"); 
				
				String imageNames = "";
				for(int i = 0; i < images.length; i++) {
					// 하나하나 URL 인코딩
					if(i == 0) {
						imageNames += URLEncoder.encode(images[i], "euc-kr");
					}else {
						imageNames += "/";
						imageNames += URLEncoder.encode(images[i], "euc-kr");
					}
					
				}
				
				//로그인 완성되면 이거 아래로 쓰기
//				HttpSession session = request.getSession();
//				MemberVo vo = (MemberVo) session.getAttribute("vo");
//				String m_id = vo.getId();
				
				//이거 아래는 임의로 줌.
				String m_id = "m_id 01";
				
				// DAO 메서드 사용해서 Diarylist 테이블에 저장
				DAO dao = new DAO();
				int cnt = dao.diarylist(diary_subject, diary_date, diary_content, imageNames,diary_file2, m_id);
				
				
				if(cnt > 0) {
					System.out.println("일기 업로드 성공!");
						
					request.setAttribute("dvo", new diaryVO(diary_subject, diary_content, imageNames));
					
					// request영역에 데이터를 저장해서 이동하려면 >> forward 
					RequestDispatcher rd = request.getRequestDispatcher("Diarylist.jsp");
					rd.forward(request, response);			
					
				}else {
					System.out.println("일기 업로드 실패...");
				}
				
				
				
			}
	

}
