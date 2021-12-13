package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.challengeBoardVO;
import model.diaryVO;


@WebServlet("/ChallengeSingleService")
public class ChallengeSingleService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				// 1. �Ķ���� ���� 
				// ������Ʈ���� Ű���� getParameter�� �Ű������� �־���
				int chal_seq = Integer.parseInt(request.getParameter("chal_seq"));
				// 2. DAO ��ü ����
				DAO dao = new DAO();
				
				// 3. dao�� �޼���
				// delete from web_member where email=?
				// psmt.delete -> executeUpdate(); , return int(������ ���� ��) = �޼����� ���ϰ�
				challengeBoardVO zvo = dao.ChallengeSingleService(chal_seq);
				if(zvo != null) {
					System.out.println("����");
				// ������ �̵�
					
					request.setAttribute("zvo", zvo);
					
					// request������ �����͸� �����ؼ� �̵��Ϸ��� >> forward 
					RequestDispatcher rd = request.getRequestDispatcher("ChallengeSingledeep.jsp");
					rd.forward(request, response);		
				
				}else {
					System.out.println("����");
//					System.out.println(zvo.getChalSeq());
				}
	}

}
