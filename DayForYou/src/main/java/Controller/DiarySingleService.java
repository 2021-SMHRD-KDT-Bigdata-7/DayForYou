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
				// 1. �Ķ���� ���� 
				// ������Ʈ���� Ű���� getParameter�� �Ű������� �־���
				int diary_seq = Integer.parseInt(request.getParameter("diary_seq"));
				// 2. DAO ��ü ����
				DAO dao = new DAO();
				
				// 3. dao�� �޼���
				// delete from web_member where email=?
				// psmt.delete -> executeUpdate(); , return int(������ ���� ��) = �޼����� ���ϰ�
				diaryVO dv = dao.DiaryJoin(diary_seq);
				
				if(dv != null) {
					System.out.println("����");
				// ������ �̵�
					
					request.setAttribute("dv", dv);
					
					
					// request������ �����͸� �����ؼ� �̵��Ϸ��� >> forward 
					RequestDispatcher rd = request.getRequestDispatcher("Diarydeep.jsp");
					rd.forward(request, response);		
				
				}else {
					System.out.println("����");
				}
	}

}
