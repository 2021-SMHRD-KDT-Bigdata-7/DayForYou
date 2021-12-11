package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.DAO;
import model.MemberVo;
import model.diaryVO;

/**
 * Servlet implementation class DiaryService
 */
@WebServlet("/DiaryService")
public class DiaryService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getServletContext();
				// work space > ����ġ��Ĺ ���ε�(������ ��ġ���� �ٲ�)
				// ������ ��� 
				String savePath = request.getServletContext().getRealPath("img");
				
				// �ִ� ����ũ��(���� : byte) : 5Mb
				int maxSize = 5*1024*1024;
				
				// ���ڵ� Ÿ��
				String encoding = "utf-8";
				
				// request�� ����ؼ� �޾ƿ� �����͸� ������ �� MultipartRequest ��ü
				MultipartRequest multi = new MultipartRequest(request,
																savePath, 
																maxSize,
																encoding,
																new DefaultFileRenamePolicy());
				// �Ķ���� ����
				// MultipartRequest ��ü�κ��� �Ķ���� ����
//				int diary_seq = Integer.parseInt(multi.getParameter("diary_seq"));
				String diary_subject = multi.getParameter("diary_subject");
				String diary_date = multi.getParameter("diary_date");
				String diary_content = multi.getParameter("diary_content");
				
				// ���� �̸��� ������ ���� 
				// getFilesystemName("name��")
				// �ѱ� �̸��� �ν� ���ϴ� ���
//				String diary_file1 = URLEncoder.encode(multi.getFilesystemName("diary_file1"), "euc-kr");

//				String diary_file2 = multi.getFilesystemName("diary_file2");
				//���Ƿ� null�� ��. �Ʒ� �� ��"String diary_file2 = null;" �� �����ε�.
				String diary_file2 = null;			
				
				// �̹��� �̸���
				String image_name = multi.getParameter("images");
				String[] images = image_name.split("/"); 
				
				String imageNames = "";
				for(int i = 0; i < images.length; i++) {
					// �ϳ��ϳ� URL ���ڵ�
					if(i == 0) {
						imageNames += URLEncoder.encode(images[i], "euc-kr");
					}else {
						imageNames += "/";
						imageNames += URLEncoder.encode(images[i], "euc-kr");
					}
					
				}			
				String m_id = multi.getParameter("m_id");				 
			
				
				//�̰� �Ʒ��� ���Ƿ� ��.
//				String m_id = "hyein";
				
				// DAO �޼��� ����ؼ� Diarylist ���̺� ����
				DAO dao = new DAO();			
				int cnt = dao.diarylist(diary_subject, diary_date, diary_content, imageNames,diary_file2, m_id);
				
				
				if(cnt > 0) {
					System.out.println("�ϱ� ���ε� ����!");
						
					request.setAttribute("dvo", new diaryVO(diary_subject, diary_content, imageNames));
					
					// request������ �����͸� �����ؼ� �̵��Ϸ��� >> forward 
					RequestDispatcher rd = request.getRequestDispatcher("Diarylist.jsp");
					rd.forward(request, response);			
					
				}else {				
					System.out.println("�ϱ� ���ε� ����...");
				}
				
				
				
			}
	

}
